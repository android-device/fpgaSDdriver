library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity setToSpi is
port (
	CS: out STD_LOGIC;
	MOSI: out STD_LOGIC;
	pin1: out STD_LOGIC;
	pin5: out STD_LOGIC
);
end setToSpi;

architecture setToSpi of setToSpi is
signal initialized: STD_LOGIC;
begin
	process(initialized)
	begin
		for counter in 0 to 78 loop
			CS <= '0';
			pin5 <= '0';
			MOSI <= '1';
			pin1 <= '1';
		end loop;
		initialized <= '1';
	end process;
end setToSpi;