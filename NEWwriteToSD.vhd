--writeToSD
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity writeData is
	port(
		dataTransferred: in STD_LOGIC;
	
		SD_DAT: in STD_LOGIC;	--MISO
		CLOCK_25: in STD_LOGIC;
		DATA: in STD_LOGIC_VECTOR (24 downto 0);	--Data to write
		SD_CLK: out STD_LOGIC;	--CLK
		SD_DAT3: out STD_LOGIC := '1';	--CS
		SD_CMD: out STD_LOGIC := '1';	--MOSI
		
		pin1: out STD_LOGIC;	--MOSI
		pin5: out STD_LOGIC;	--CS
		pin7: out STD_LOGIC := SD_DAT;	--MISO
		ledr: out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000";
		ledg: out STD_LOGIC_VECTOR(8 downto 0) := "111111111"
	);
end writeData;

architecture writeData of writeData is
signal sdV2Compliant: boolean := false;
signal replyStarted: boolean := false;

signal counter: integer := 0;
signal bitNum: integer := 47;

signal responseFromSD: STD_LOGIC_VECTOR(39 downto 0) := (others => '1');

signal bitsGathered: integer := 0;
signal dataGathered: STD_LOGIC_VECTOR(4095 downto 0);

signal state: integer := 0;

signal commandSent: boolean := false;
--States:
	--0: Feeds the clock
	--1: Set spi mode
	--2: Read spi response
	--3: Check V2 Compatibility
	--4: Check V2 Reply
	--5: Not compliant with V2, check DE2 compatibility
	--6: Not compliant with V2, read DE2 compatibility reply
	--7: Prepare for Data input: CMD55
	--8: Read CMD55 reply
	--9: Send CMD41
	--10: Read CMD41 reply
	--11: Gather Data to write
	--12: CMD24 prepare to write data
	--13: Read CMD24 reply
	--14: write data
	--15: read end data response
	--16: clear previous data, and prepare to read more data

constant cmd0:   STD_LOGIC_VECTOR(47 downto 0) := x"400000000095";--"0100 0000 0000 0000 0000 0000 0000 0000 0000 0000 1001 0101";--
constant cmd8:   STD_LOGIC_VECTOR(47 downto 0) := x"48000001AA0F";--"0100 1000 0000 0000 0000 0000 0000 0001 1010 1010 0000 1111";--
constant cmd58: STD_LOGIC_VECTOR(47 downto 0) := x"7A00000000FD";--"011110100000000000000000000000000000000011111101";--
constant cmd55: STD_LOGIC_VECTOR(47 downto 0) := x"770000000065";--"011101110000000000000000000000000000000001100101";--
constant cmd41: STD_LOGIC_VECTOR(47 downto 0) := x"6900000000E5";--"011010010000000000000000000000000000000011100101";--
constant cmd50: STD_LOGIC_VECTOR(47 downto 0) := x"5000000200FF";
signal 	 cmd24: STD_LOGIC_VECTOR(47 downto 0) := x"5800000000FF";--"010110000000000000000000000000000000000011111111";

constant dataStart: STD_LOGIC_VECTOR(27 downto 0) := x"00000FE";--"11111110";
signal currentAddress: integer := 0;
signal currentAddressLogic: STD_LOGIC_VECTOR(31 downto 0) := x"00000000";

begin
	SD_CLK <= CLOCK_25;
	pin7 <= SD_DAT;	--SD output to scope
	
	process(CLOCK_25)
	variable bitVerify: integer;
	
	begin
	if(rising_edge(CLOCK_25)) then
		
		--ledr(state) <= '1';	--Show current state on DE2
		ledg(1) <= '1';
		
		case state is
		
			---------------------------------------------------------------------------------
			--Initialize clock
			when 0 =>
				--ledr <= (others => '0');	--Reset States
				--ledr(state) <= '1';
				
				if not (counter = 80) then	--Send 80 clock pulses to the SD card
					SD_DAT3 <= '0';	--Card Select
					pin5 <= '0';	--CS on Scope
					SD_CMD <= '1';
					pin1 <= '1';
					counter <= counter + 1;
				else	--Proceed to state 1
					ledr(state) <= '1';
					commandSent <= false;	--No commands have been sent
					bitNum <= 47;																											--bitNum is 47
					state <= 1;
					counter <= 0;
				end if;
			
			---------------------------------------------------------------------------------
			--Set SD to spi mode, CMD0
			when 1=>
				if not(commandSent) then
					SD_CMD <= cmd0(bitNum);	--Starts at 47
					pin1 <= cmd0(bitNum);
					bitNum <= bitNum -1;	--Ends at 0
					if bitNum = 0 then																									--BitNum is 0
						commandSent <= true;	--Finished command
					end if;
				else
					--Read response and check for errors
					if not(replyStarted) then
						if SD_DAT = '0' then
							replyStarted <= true;	--Card lowers MISO line when reply starts
						end if;
						if counter = 80 then	--If card doesn't reply after 80 clock cycles, restart initialization
							state <= 0;
							counter <= 0;
						end if;
						counter <= counter + 1;
					
					else
						if not(bitNum = 47) then	--Collect 48 bit response
							SD_CMD<='1';
							pin1 <= '1';
							responseFromSD(bitNum) <= SD_DAT;
							bitNum <= bitNum + 1;
						else																															--BitNum is 47
							SD_CMD<='1';
							pin1 <= '1';
							responseFromSD(bitNum) <= SD_DAT;
							counter <= 0;
							commandSent <= false;	--Reset to send next command
							
							--Verify first 8 bits of response and repeat initialization if necessary
							for bitVerify in 0 to 5 loop
								if not(responseFromSD(bitVerify) = '0') then
									state <= 0;
								end if;
							end loop;
							replyStarted <= false;	--Reset to read next reply
							if not(state = 0) then
								state <= 2;	--Proceed to state 2
							end if;
						end if;
					end if;
				end if;
				
				---------------------------------------------------------------------------------
				--Send command to check V2 compatibility
				when 2 =>
					if not(commandSent) then
						ledr <= (others => '0');
						SD_CMD <= cmd8(bitNum);
						pin1 <= cmd8(bitNum);
						bitNum <= bitNum -1;
						if bitNum = 0 then																								--BitNum is 0
							ledr(bitNum) <= '1';
							commandSent <= true;
						end if;
					else
						--Check V2 compliant reply
						if not(replyStarted) then
							if SD_DAT = '0' then
								replyStarted <= true;
								bitNum <= 0;
								--ledr(bitNum) <= '1';
							end if;
							if counter = 180 then
								bitNum <= 0;
								counter <= 0;
								state <= 0;
							end if;
							counter <= counter + 1;
						else
							if not(bitNum = 47) then
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								bitNum <= bitNum + 1;
							else																														--bitNum is 47
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								counter <= 0;
								replyStarted <= false;
								commandSent <= false;
								
								if responseFromSD(4) = '0' then
									sdV2Compliant <= true;
									if responseFromSD(31) = '1' then	--Incompatible Voltage
										ledr <= (others => '0');
										ledr(17 downto 0) <= responseFromSD(17 downto 0);
										ledg <= (others => '1');
										state <= 72;
									else
										state <= 4;	--V2 Compliant, skip DE2 compatibility check
									end if;
								else
									sdV2Compliant <= false;
									state <= 3;	--Not V2 compliant, check DE2 compatibility
								end if;
							end if;	--Read response
						end if;
					end if;

					---------------------------------------------------------------------------------
					--Not compliant with V2, verify the DE2 is supported; send command
					when 3 =>
						if not(commandSent) then
							SD_CMD <= cmd58(bitNum);
							pin1 <= cmd58(bitNum);
							bitNum <= bitNum -1;
							if bitNum = 0 then																							--BitNum is 0
								commandSent <= true;
							end if;
						else
							--Not compliant with V2, verify the DE2 is supported; read reply
							if not(replyStarted) then
								if SD_DAT = '0' then
									replyStarted <= true;
								end if;
								if counter = 180 then
									state <= 2;
									counter <= 0;
								end if;
								counter <= counter + 1;
							else
								if not(bitNum = 47) then
									SD_CMD<='1';
									pin1 <= '1';
									responseFromSD(bitNum) <= SD_DAT;
									bitNum <= bitNum + 1;
								else																													--BitNum is 47
									SD_CMD<='1';
									pin1 <= '1';
									responseFromSD(bitNum) <= SD_DAT;
									replyStarted <= false;
									counter <= 0;
									commandSent <= false;
									if responseFromSD(19) = '0' then	--Incompatible Voltage
										ledr <= (others => '0');
										ledr(17 downto 0) <= responseFromSD(26 downto 9);
										--ledr <= (others => '0');
										ledg <= (others => '1');
										state <= 72;
									else
										state <= 4;
									end if;
								end if;
							end if;
						end if;

				---------------------------------------------------------------------------------
				--Send CMD55
				when 4 =>
					if not(commandSent) then
						SD_CMD <= cmd55(bitNum);
						pin1 <= cmd55(bitNum);
						bitNum <= bitNum -1;
						if bitNum = 0 then																								--BitNum is 0
							commandSent <= true;
						end if;
					else
						--Read Reply
						--state <= 8;
						if not(replyStarted) then
							if SD_DAT = '0' then
								replyStarted <= true;
							end if;
							if counter = 180 then
								state <= 3;
								counter <= 0;
							end if;
							counter <= counter + 1;
						else
							if not(bitNum = 47) then
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								bitNum <= bitNum + 1;
							else																														--bitNum is 47
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								replyStarted <= false;
								counter <= 0;
								commandSent <= false;
								state <= 5;
							end if;	--Read response
						end if;
					end if;
					
				---------------------------------------------------------------------------------
				--Send ACMD41
				when 5 =>
					if not(commandSent) then
						SD_CMD <= cmd41(bitNum);
						pin1 <= cmd41(bitNum);
						bitNum <= bitNum -1;
						if bitNum = 0 then																								--BitNum is 0
							commandSent <= true;
						end if;
					else
						--Read reply
						if not(replyStarted) then
							if SD_DAT = '0' then
								replyStarted <= true;
							end if;
							if counter = 180 then
								state <= 4;
								counter <= 0;
							end if;
							counter <= counter + 1;
						else
							if not(bitNum = 47) then
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								bitNum <= bitNum + 1;
							else																														--BitNum is 47
								SD_CMD<='1';
								pin1 <= '1';
								replyStarted <= false;
								responseFromSD(bitNum) <= SD_DAT;
								counter <= 0;
								commandSent <= false;
								if not(responseFromSD(6) = '0') then
									state <= 4;
								else
									state <= 6;
								end if;
							end if;	--Read response
						end if;
					end if;
				
				---------------------------------------------------------------------------------
				--Set block size to 512 Bytes
				when 6 =>
					if not(commandSent) then
						SD_CMD <= cmd50(bitNum);
						pin1 <= cmd50(bitNum);
						bitNum <= bitNum -1;
						if bitNum = 0 then																								--BitNum is 0
							commandSent <= true;
						end if;
					else
						--Read Reply
						if not(replyStarted) then
							if SD_DAT = '0' then
								replyStarted <= true;
							end if;
							if counter = 180 then
								state <= 5;
								counter <= 0;
							end if;
							counter <= counter + 1;
						else
							if not(bitNum = 47) then
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								bitNum <= bitNum + 1;
							else																														--BitNum is 47
								SD_CMD<='1';
								pin1 <= '1';
								replyStarted <= false;
								responseFromSD(bitNum) <= SD_DAT;
								counter <= 0;
								state <= 7;
							end if;	--Read response
						end if;
					end if;
				
				---------------------------------------------------------------------------------
				--Collect 512 bytes of data
				when 7 =>
					if dataTransferred = '1' then	--Data is being sent from the ADC
						if not(bitsGathered > 4074) then	--Add data, 25 bits at a time
							dataGathered(bitsGathered+24 downto bitsGathered) <= DATA(24 downto 0);	--Append new data to array
							bitsGathered <= bitsGathered + 25;	--Current bit location
						else
							dataGathered(4095 downto 4075) <= (others => '0');	--The last 21 bits are all zero
							bitsGathered <= 0;	--Reset bits gathered
							state <= 8;
						end if;
					end if;
					
				---------------------------------------------------------------------------------
				--Send CMD24
				when 8 =>
					if not(commandSent) then
						SD_CMD <= cmd24(bitNum);
						pin1 <= cmd24(bitNum);
						bitNum <= bitNum -1;
						if bitNum = 0 then																								--BitNum is 0
							commandSent <= true;
						end if;
					else
						if not(replyStarted) then
							if SD_DAT = '0' then
								replyStarted <= true;
							end if;
						else
							if not(bitNum = 47) then
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								bitNum <= bitNum + 1;
							else																														--BitNum is 47
								SD_CMD<='1';
								pin1 <= '1';
								responseFromSD(bitNum) <= SD_DAT;
								counter <= 0;
								replyStarted <= false;
								bitNum <= 0;																									--BitNum is 0
								if		not(responseFromSD(6) = '0')
										and not(responseFromSD(5) = '0')
										and not(responseFromSD(4) = '0')
										and not(responseFromSD(3) = '0')
										and not(responseFromSD(2) = '0')
										and not(responseFromSD(1) = '0')
										and not(responseFromSD(0) = '0')
											then
										state <= 7;	--Loop this section until the first 8 bits of the card's reply are all low
									else
										state <= 9;	--Frist 8 bits are low, proceed to next stage
								end if;
							end if;	--Read response
						end if;
					end if;
				
				---------------------------------------------------------------------------------
				--Send Data
				--Green leds are used to troubleshoot this section
				when 9 =>
					ledg(5) <= '1';
					if not(commandSent) then
						SD_CMD <= dataStart(bitNum);
						pin1 <= dataStart(bitNum);
						ledg(8) <= '1';
						if bitNum = 28 then																								--BitNum is 28
							commandSent <= true;
						end if;
					else
						if not(bitsGathered > 4094) then	--Send all 4095 bits of data, once per clock cycle
							SD_CMD <= dataGathered(bitsGathered);
							pin1 <= dataGathered(bitsGathered);
							bitsGathered <= bitsGathered + 1;
							ledg(7) <= '1';
						else
							bitNum <= 0;																										--BitNum is 0
							ledg(6) <= '1';
							if not(replyStarted) then
								if SD_DAT = '0' then
									replyStarted <= true;
								end if;
							else
								if not(bitNum = 47) then
									SD_CMD<='1';
									pin1 <= '1';
									responseFromSD(bitNum) <= SD_DAT;
									bitNum <= bitNum + 1;
								else																													--bitNum is 47
									if SD_DAT= '0' then 
										SD_CMD<='1';
										pin1 <= '1';
										responseFromSD(bitNum) <= SD_DAT;
										counter <= 0;
										replyStarted <= false;
										state <= 10;
									end if;
								end if;	--Read response
							end if;
						end if;
					end if;
						
					---------------------------------------------------------------------------------
					--Reset gathered data array
					when 10 =>
						dataGathered <= (others => '0');
						state <= 11;
						currentAddress <= currentAddress + 512;	--determine next address sector
						currentAddressLogic <= std_logic_vector(to_unsigned(currentAddress,32));	--Convert next address to binary
						for i in 8 to 39 loop
							cmd24(i) <= currentAddressLogic(i-8);	--Place current address in cmd24, replacing the old address
						end loop;
						
				when others =>
					
				end case;
	end if;	--Clock if
	end process;
end writeData;