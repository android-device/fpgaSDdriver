--Clock Divider
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clkDivider is
port(
	CLOCK_50: in STD_LOGIC;
	reset: in STD_LOGIC;
	CLOCK_25K: out STD_LOGIC
);
end clkDivider;

architecture clkDivider of clkDivider is
signal tempClk: STD_LOGIC;
signal counter: integer range 0 to 99 := 0;
begin
	process(CLOCK_50, reset)
	begin
		if (reset = '1') then
			tempClk <= '0';
			counter <= 0;
		else if rising_edge(CLOCK_50) then
			if (counter = 99) then
				tempClk <= not(tempClk);
				counter <= 0;
			end if;
			counter <= counter + 1;
		end if;
	end if;
	end process;
	CLOCK_25K <= tempClk;
end clkDivider;