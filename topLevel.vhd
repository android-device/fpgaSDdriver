--TopLevel
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity writeToSD is
	port(
		CLOCK_50: in STD_LOGIC;
		SD_DAT: in STD_LOGIC;	--Result of data input
		SD_CLK: out STD_LOGIC;
		SD_DAT3: out STD_LOGIC;
		SD_CMD: out STD_LOGIC;
		gpio_1: out STD_LOGIC_VECTOR(9 downto 1);
		ledr: out STD_LOGIC_VECTOR(17 downto 0);
		ledg: out STD_LOGIC_VECTOR(8 downto 0);
		key: in STD_LOGIC_VECTOR(3 downto 0)
	);
end writeToSD;

architecture writeToSD of writeToSD is
	component writeData is
		port(
			dataTransferred: in STD_LOGIC;
		
			SD_DAT: in STD_LOGIC;
			CLOCK_25: in STD_LOGIC;
			DATA: in STD_LOGIC_VECTOR (24 downto 0);	--Data to write
			SD_CLK: out STD_LOGIC;
			SD_DAT3: out STD_LOGIC;
			SD_CMD: out STD_LOGIC;
			
			pin1: out STD_LOGIC;
			pin5: out STD_LOGIC;
			pin7: out STD_LOGIC;
			ledr: out STD_LOGIC_VECTOR(17 downto 0);
			ledg: out STD_LOGIC_VECTOR(8 downto 0)
		);
	end component;
	
	component clkDivider is
		port(
			CLOCK_50: in STD_LOGIC;
			reset: in STD_LOGIC;
			CLOCK_25K: out STD_LOGIC
		);
	end component;
	
	signal CLOCK_25: STD_LOGIC;
	signal result: STD_LOGIC;
	signal reset: STD_LOGIC := '0';
	signal DATA: STD_LOGIC_VECTOR (24 downto 0);
--------------
	begin
		reset <= '0';
		DATA <= "0000000000000000000000000";
		clkDiv: clkDivider
			port map(
				CLOCK_50, reset, CLOCK_25
			);
			wrtSD: writeData
			port map(
				'1', SD_DAT, CLOCK_25, DATA, SD_CLK, SD_DAT3, SD_CMD, gpio_1(1), gpio_1(5), gpio_1(7), ledr(17 downto 0)
			);
		gpio_1(9) <= CLOCK_50;
		gpio_1(3) <= CLOCK_25;
end writeToSD;