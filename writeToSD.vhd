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
		ledg: out STD_LOGIC_VECTOR(8 downto 0) := "000000000"
	);
end writeData;

architecture writeData of writeData is
signal replyStarted: boolean := false;

shared variable counter: integer range 0 to 180 := 0;
shared variable bitNum: integer := 47;

shared variable responseFromSD: STD_LOGIC_VECTOR(39 downto 0) := (others => '1');

shared variable bitsGathered: integer := 21;
shared variable dataGathered: STD_LOGIC_VECTOR(4095 downto 0);

shared variable state: integer := 0;

signal commandSent: boolean := false;

constant cmd0:   STD_LOGIC_VECTOR(47 downto 0) := x"400000000095";--"0100 0000 0000 0000 0000 0000 0000 0000 0000 0000 1001 0101";--
constant cmd55: STD_LOGIC_VECTOR(47 downto 0) := x"770000000065";--"011101110000000000000000000000000000000001100101";--
constant cmd41: STD_LOGIC_VECTOR(47 downto 0) := x"6900000000E5";--"011010010000000000000000000000000000000011100101";--
signal cmd24: STD_LOGIC_VECTOR(47 downto 0) := x"5800000000FF";--"010110000000000000000000000000000000000011111111";

shared variable currentAddress: STD_LOGIC_VECTOR(31 downto 0) := x"00000100";
constant addressIncrement: STD_LOGIC_VECTOR(31 downto 0) := x"00000100";
shared variable expectedResponse: STD_LOGIC_VECTOR(6 downto 0) := "0000001";

begin
	SD_CLK <= CLOCK_25;
	pin7 <= SD_DAT;	--SD output to scope
	
	process(CLOCK_25)
	
	begin
	if(rising_edge(CLOCK_25)) then
		
		ledr(state) <= '1';	--Show current state on DE2
		counter := counter + 1;
		
		case state is
		
			---------------------------------------------------------------------------------
			--Initialize clock
			when 0 =>
				ledr <= (others => '0');	--Reset States
				SD_DAT3 <= '0';	--Card Select
				SD_CMD <= '1';
				if counter = 80 then	--Send 80 clock pulses to the SD card
					ledr(state) <= '1';
					commandSent <= false;	--No commands have been sent
					bitNum := 47;																											--bitNum is 47
					state := 1;
					counter := 0;
					replyStarted <= false;
					dataGathered(21 downto 0) := "0000000000000011111110";
				end if;
			
			---------------------------------------------------------------------------------
			--Set SD to spi mode, CMD0
			when 1=>
				expectedResponse := "1000000";
				if not(commandSent) then
					SD_CMD <= cmd0(bitNum);	--Starts at 47
					if not(bitNum =0) then
						bitNum := bitNum -1;
					else																															--BitNum is 0
						commandSent <= true;
						counter := 0;
					end if;
				end if;
				
				---------------------------------------------------------------------------------
				--Send CMD55
				when 2 =>
					expectedResponse := "0000000";
					if not(commandSent) then
						SD_CMD <= cmd55(bitNum);
						if not(bitNum =0) then
							bitNum := bitNum -1;
						else																															--BitNum is 0
							commandSent <= true;
							counter := 0;
							bitNum := 0;
						end if;
					end if;
					
				---------------------------------------------------------------------------------
				--Send ACMD41
				when 3 =>
					if not(commandSent) then
						SD_CMD <= cmd41(bitNum);
						if not(bitNum =0) then
							bitNum := bitNum -1;
						else																															--BitNum is 0
							commandSent <= true;
							counter := 0;
						end if;
					end if;
				
				---------------------------------------------------------------------------------
				--Collect 512 bytes of data
				when 4 =>
					ledr(17 downto 5) <= "0000000000000";
					if not(bitsGathered < 4095) then	--Add data, 25 bits at a time
						if dataTransferred = '1' then	--Data is being sent from the ADC, ONLY KEEP HIGH FOR A SINGLE CLOCK CYCLE TO AVOID DUPLICATIONS
							dataGathered(bitsGathered+24 downto bitsGathered) := DATA(24 downto 0);	--Append new data to array
							bitsGathered := bitsGathered + 25;	--Current bit location
						end if;
					else
						bitsGathered := 0;	--Reset bits gathered
						counter := 0;
						state := 5;
					end if;
					
				---------------------------------------------------------------------------------
				--Send CMD24
				when 5 =>
					if not(commandSent) then
						SD_CMD <= cmd24(bitNum);
						if not(bitNum =0) then
							bitNum := bitNum -1;
						else																															--BitNum is 0
							commandSent <= true;
							counter := 0;
						end if;
					end if;
				
				---------------------------------------------------------------------------------
				--Send Data
				when 6 =>
					if not(commandSent) then
						SD_CMD <= dataGathered(bitsGathered);
						bitsGathered := bitsGathered + 1;
							if bitsGathered > 4094 then	--Send all 4095 bits of data, once per clock cycle
								commandSent <= true;
								SD_CMD <= '0';
							end if;
					end if;
						
					---------------------------------------------------------------------------------
					--Reset gathered data array
					when 7 =>
						bitsGathered := 21;
						state := 4;
						counter := 0;
						currentAddress := std_logic_vector(unsigned(currentAddress) + unsigned(addressIncrement));
						cmd24(39 downto 8) <= currentAddress(31 downto 0);	--Place current address in cmd24, replacing the old address
						
				when others =>
					
				end case;
				
				if commandSent then
					if not(replyStarted) then
						if SD_DAT = '0' then
							replyStarted <= true;	--Card lowers MISO line when reply starts
							SD_CMD<='1';
						end if;
						if counter = 180 then
							commandSent <= false;
							bitNum := 47;
							--ledr(state) <= '1';
							--ledr(17) <= '1';
						end if;
					else
						if bitNum < 47 then	--Collect 48 bit response
							responseFromSD(bitNum) := SD_DAT;
							bitNum := bitNum + 1;
						else																															--BitNum is 47
							responseFromSD(bitNum) := SD_DAT;
							commandSent <= false;	--Reset to send next command
							replyStarted <= false;	--Reset to read next reply
							--Verify first 8 bits of response and repeat initialization if necessary
							if responseFromSD(6 downto 0) = expectedResponse(6 downto 0) or state = 2 or state = 6 then
								state := state + 1;	--Proceed to next state
								--ledr(17 downto 7) <= (others => '0');
							else
								if not(state = 5) then
									state := state - 1;
								else
									if responseFromSD(1) = '1' then
										currentAddress := std_logic_vector(unsigned(currentAddress) + unsigned(addressIncrement));
										--ledr(11) <= '1';
										cmd24(39 downto 8) <= currentAddress(31 downto 0);	--Place current address in cmd24, replacing the old address
									end if;
								end if;
							end if;
							
						end if;
					end if;
				end if;
				
	end if;	--Clock if
	end process;
end writeData;