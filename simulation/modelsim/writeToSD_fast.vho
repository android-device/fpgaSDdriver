-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/19/2014 18:46:18"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	writeToSD IS
    PORT (
	CLOCK_50 : IN std_logic;
	SD_DAT : IN std_logic;
	SD_CLK : OUT std_logic;
	SD_DAT3 : OUT std_logic;
	SD_CMD : OUT std_logic;
	gpio_1 : OUT std_logic_vector(9 DOWNTO 1);
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	ledg : OUT std_logic_vector(8 DOWNTO 0);
	key : IN std_logic_vector(3 DOWNTO 0)
	);
END writeToSD;

-- Design Ports Information
-- SD_CLK	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_DAT3	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CMD	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[7]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[8]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gpio_1[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_DAT	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF writeToSD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SD_DAT : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_SD_DAT3 : std_logic;
SIGNAL ww_SD_CMD : std_logic;
SIGNAL ww_gpio_1 : std_logic_vector(9 DOWNTO 1);
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDiv|tempClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wrtSD|Add4~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~4_combout\ : std_logic;
SIGNAL \wrtSD|Add4~6_combout\ : std_logic;
SIGNAL \wrtSD|Add4~10_combout\ : std_logic;
SIGNAL \wrtSD|Add4~48_combout\ : std_logic;
SIGNAL \wrtSD|Add4~61\ : std_logic;
SIGNAL \wrtSD|Add4~62_combout\ : std_logic;
SIGNAL \clkDiv|counter[4]~12_combout\ : std_logic;
SIGNAL \wrtSD|Add1~36_combout\ : std_logic;
SIGNAL \wrtSD|Add1~60_combout\ : std_logic;
SIGNAL \wrtSD|state[6]~50_combout\ : std_logic;
SIGNAL \wrtSD|state[24]~86_combout\ : std_logic;
SIGNAL \wrtSD|state[30]~99\ : std_logic;
SIGNAL \wrtSD|state[31]~100_combout\ : std_logic;
SIGNAL \wrtSD|Add3~2_combout\ : std_logic;
SIGNAL \wrtSD|Add3~8_combout\ : std_logic;
SIGNAL \wrtSD|Add3~14_combout\ : std_logic;
SIGNAL \wrtSD|Add3~32_combout\ : std_logic;
SIGNAL \wrtSD|Add3~44_combout\ : std_logic;
SIGNAL \wrtSD|Add3~56_combout\ : std_logic;
SIGNAL \wrtSD|Add3~58_combout\ : std_logic;
SIGNAL \wrtSD|Add3~61\ : std_logic;
SIGNAL \wrtSD|Add3~62_combout\ : std_logic;
SIGNAL \wrtSD|Add6~0_combout\ : std_logic;
SIGNAL \wrtSD|Add6~2_combout\ : std_logic;
SIGNAL \wrtSD|Add6~6_combout\ : std_logic;
SIGNAL \wrtSD|Add5~0_combout\ : std_logic;
SIGNAL \wrtSD|Add5~1\ : std_logic;
SIGNAL \wrtSD|Add5~2_combout\ : std_logic;
SIGNAL \wrtSD|Add5~3\ : std_logic;
SIGNAL \wrtSD|Add5~4_combout\ : std_logic;
SIGNAL \wrtSD|Add5~5\ : std_logic;
SIGNAL \wrtSD|Add5~6_combout\ : std_logic;
SIGNAL \wrtSD|Add5~7\ : std_logic;
SIGNAL \wrtSD|Add5~8_combout\ : std_logic;
SIGNAL \wrtSD|Add5~9\ : std_logic;
SIGNAL \wrtSD|Add5~10_combout\ : std_logic;
SIGNAL \wrtSD|Add5~11\ : std_logic;
SIGNAL \wrtSD|Add5~12_combout\ : std_logic;
SIGNAL \wrtSD|Add5~13\ : std_logic;
SIGNAL \wrtSD|Add5~14_combout\ : std_logic;
SIGNAL \wrtSD|Add5~15\ : std_logic;
SIGNAL \wrtSD|Add5~16_combout\ : std_logic;
SIGNAL \wrtSD|Add5~17\ : std_logic;
SIGNAL \wrtSD|Add5~18_combout\ : std_logic;
SIGNAL \wrtSD|Add5~19\ : std_logic;
SIGNAL \wrtSD|Add5~20_combout\ : std_logic;
SIGNAL \wrtSD|Add5~21\ : std_logic;
SIGNAL \wrtSD|Add5~22_combout\ : std_logic;
SIGNAL \wrtSD|Add5~23\ : std_logic;
SIGNAL \wrtSD|Add5~24_combout\ : std_logic;
SIGNAL \wrtSD|Add5~25\ : std_logic;
SIGNAL \wrtSD|Add5~26_combout\ : std_logic;
SIGNAL \wrtSD|Add5~27\ : std_logic;
SIGNAL \wrtSD|Add5~28_combout\ : std_logic;
SIGNAL \wrtSD|Add5~29\ : std_logic;
SIGNAL \wrtSD|Add5~30_combout\ : std_logic;
SIGNAL \wrtSD|Add5~31\ : std_logic;
SIGNAL \wrtSD|Add5~32_combout\ : std_logic;
SIGNAL \wrtSD|Add5~33\ : std_logic;
SIGNAL \wrtSD|Add5~34_combout\ : std_logic;
SIGNAL \wrtSD|Add5~35\ : std_logic;
SIGNAL \wrtSD|Add5~36_combout\ : std_logic;
SIGNAL \wrtSD|Add5~37\ : std_logic;
SIGNAL \wrtSD|currentAddress[26]~19_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[25]~20_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[24]~21_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[23]~14_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[22]~7_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[21]~3_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[20]~10_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[19]~12_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[18]~4_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[17]~1_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[16]~8_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[15]~11_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[14]~5_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[13]~0_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[12]~9_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[11]~13_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[10]~6_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[9]~2_combout\ : std_logic;
SIGNAL \wrtSD|Add9~0_combout\ : std_logic;
SIGNAL \wrtSD|Add9~1\ : std_logic;
SIGNAL \wrtSD|Add9~2_combout\ : std_logic;
SIGNAL \wrtSD|Add9~3\ : std_logic;
SIGNAL \wrtSD|Add9~4_combout\ : std_logic;
SIGNAL \wrtSD|Add9~5\ : std_logic;
SIGNAL \wrtSD|Add9~6_combout\ : std_logic;
SIGNAL \wrtSD|Add9~7\ : std_logic;
SIGNAL \wrtSD|Add9~8_combout\ : std_logic;
SIGNAL \wrtSD|Add9~9\ : std_logic;
SIGNAL \wrtSD|Add9~10_combout\ : std_logic;
SIGNAL \wrtSD|Add9~11\ : std_logic;
SIGNAL \wrtSD|Add9~12_combout\ : std_logic;
SIGNAL \wrtSD|Add9~13\ : std_logic;
SIGNAL \wrtSD|Add9~14_combout\ : std_logic;
SIGNAL \wrtSD|Add9~15\ : std_logic;
SIGNAL \wrtSD|Add9~16_combout\ : std_logic;
SIGNAL \wrtSD|Add9~17\ : std_logic;
SIGNAL \wrtSD|Add9~18_combout\ : std_logic;
SIGNAL \wrtSD|Add9~19\ : std_logic;
SIGNAL \wrtSD|Add9~20_combout\ : std_logic;
SIGNAL \wrtSD|Add9~21\ : std_logic;
SIGNAL \wrtSD|Add9~22_combout\ : std_logic;
SIGNAL \wrtSD|Add9~23\ : std_logic;
SIGNAL \wrtSD|Add9~24_combout\ : std_logic;
SIGNAL \wrtSD|Add9~25\ : std_logic;
SIGNAL \wrtSD|Add9~26_combout\ : std_logic;
SIGNAL \wrtSD|Add9~27\ : std_logic;
SIGNAL \wrtSD|Add9~28_combout\ : std_logic;
SIGNAL \wrtSD|Add9~29\ : std_logic;
SIGNAL \wrtSD|Add9~30_combout\ : std_logic;
SIGNAL \wrtSD|Add9~31\ : std_logic;
SIGNAL \wrtSD|Add9~32_combout\ : std_logic;
SIGNAL \wrtSD|Add9~33\ : std_logic;
SIGNAL \wrtSD|Add9~34_combout\ : std_logic;
SIGNAL \wrtSD|Add9~35\ : std_logic;
SIGNAL \wrtSD|Add9~36_combout\ : std_logic;
SIGNAL \wrtSD|Add9~37\ : std_logic;
SIGNAL \wrtSD|Add5~38_combout\ : std_logic;
SIGNAL \wrtSD|Add5~39\ : std_logic;
SIGNAL \wrtSD|currentAddress[27]~22_combout\ : std_logic;
SIGNAL \wrtSD|Add9~38_combout\ : std_logic;
SIGNAL \wrtSD|Add9~39\ : std_logic;
SIGNAL \wrtSD|Add5~40_combout\ : std_logic;
SIGNAL \wrtSD|Add5~41\ : std_logic;
SIGNAL \wrtSD|Add5~42_combout\ : std_logic;
SIGNAL \wrtSD|Add5~43\ : std_logic;
SIGNAL \wrtSD|Add5~44_combout\ : std_logic;
SIGNAL \wrtSD|Add5~45\ : std_logic;
SIGNAL \wrtSD|currentAddress[30]~15_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[29]~16_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[28]~17_combout\ : std_logic;
SIGNAL \wrtSD|Add9~40_combout\ : std_logic;
SIGNAL \wrtSD|Add9~41\ : std_logic;
SIGNAL \wrtSD|Add9~42_combout\ : std_logic;
SIGNAL \wrtSD|Add9~43\ : std_logic;
SIGNAL \wrtSD|Add9~44_combout\ : std_logic;
SIGNAL \wrtSD|Add9~45\ : std_logic;
SIGNAL \wrtSD|Add5~46_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[31]~18_combout\ : std_logic;
SIGNAL \wrtSD|Add9~46_combout\ : std_logic;
SIGNAL \wrtSD|cmd24[16]~0_combout\ : std_logic;
SIGNAL \wrtSD|Add6~12_combout\ : std_logic;
SIGNAL \wrtSD|Add6~14_combout\ : std_logic;
SIGNAL \wrtSD|Add6~22_combout\ : std_logic;
SIGNAL \wrtSD|Add6~24_combout\ : std_logic;
SIGNAL \wrtSD|Add6~32_combout\ : std_logic;
SIGNAL \wrtSD|Add6~34_combout\ : std_logic;
SIGNAL \wrtSD|Add6~36_combout\ : std_logic;
SIGNAL \wrtSD|Add6~38_combout\ : std_logic;
SIGNAL \wrtSD|Add6~40_combout\ : std_logic;
SIGNAL \wrtSD|Add6~42_combout\ : std_logic;
SIGNAL \wrtSD|Add6~48_combout\ : std_logic;
SIGNAL \wrtSD|Add6~50_combout\ : std_logic;
SIGNAL \wrtSD|Add6~54_combout\ : std_logic;
SIGNAL \wrtSD|Add6~56_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~2_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~3_combout\ : std_logic;
SIGNAL \wrtSD|Mux4~0_combout\ : std_logic;
SIGNAL \wrtSD|Mux4~1_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~1_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~6_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~0_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~1_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~2_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~3_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~4_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~5_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~6_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~7_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~8_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~9_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~10_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~11_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~12_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~13_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~14_combout\ : std_logic;
SIGNAL \wrtSD|Mux3~15_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~9_combout\ : std_logic;
SIGNAL \wrtSD|Equal4~0_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~8_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~1_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~4_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~6_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~7_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~3_combout\ : std_logic;
SIGNAL \wrtSD|Equal12~0_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~7_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~0_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~1_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~5_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~7_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~5_combout\ : std_logic;
SIGNAL \wrtSD|state[27]~44_combout\ : std_logic;
SIGNAL \wrtSD|state[27]~45_combout\ : std_logic;
SIGNAL \wrtSD|Selector4106~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4106~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4106~2_combout\ : std_logic;
SIGNAL \wrtSD|bitsGathered[19]~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4229~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4197~1_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[3]~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4197~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4199~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[1]~1_combout\ : std_logic;
SIGNAL \wrtSD|WideOr0~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4198~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[2]~2_combout\ : std_logic;
SIGNAL \wrtSD|WideOr3~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4195~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[5]~3_combout\ : std_logic;
SIGNAL \wrtSD|WideOr4~0_combout\ : std_logic;
SIGNAL \wrtSD|WideOr2~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4196~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[4]~5_combout\ : std_logic;
SIGNAL \wrtSD|Selector4211~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4202~0_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress~23_combout\ : std_logic;
SIGNAL \wrtSD|cmd24~1_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress~24_combout\ : std_logic;
SIGNAL \wrtSD|cmd24~2_combout\ : std_logic;
SIGNAL \wrtSD|cmd24~3_combout\ : std_logic;
SIGNAL \wrtSD|Selector4178~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4176~0_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~13_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~24_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~27_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~34_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress~25_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4134~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4136~4_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[26]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[25]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[20]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[18]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[17]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[11]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[27]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[30]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[29]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[28]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|currentAddress[31]~feeder_combout\ : std_logic;
SIGNAL \wrtSD|cmd24[16]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \clkDiv|counter[1]~6_combout\ : std_logic;
SIGNAL \clkDiv|counter[1]~7\ : std_logic;
SIGNAL \clkDiv|counter[2]~9\ : std_logic;
SIGNAL \clkDiv|counter[3]~10_combout\ : std_logic;
SIGNAL \clkDiv|counter[3]~11\ : std_logic;
SIGNAL \clkDiv|counter[4]~13\ : std_logic;
SIGNAL \clkDiv|counter[5]~14_combout\ : std_logic;
SIGNAL \clkDiv|counter[5]~15\ : std_logic;
SIGNAL \clkDiv|counter[6]~16_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkDiv|counter[2]~8_combout\ : std_logic;
SIGNAL \clkDiv|counter[0]~18_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkDiv|tempClk~0_combout\ : std_logic;
SIGNAL \clkDiv|tempClk~regout\ : std_logic;
SIGNAL \clkDiv|tempClk~clkctrl_outclk\ : std_logic;
SIGNAL \wrtSD|SD_DAT3~0_combout\ : std_logic;
SIGNAL \wrtSD|SD_DAT3~regout\ : std_logic;
SIGNAL \wrtSD|state[0]~36_combout\ : std_logic;
SIGNAL \wrtSD|state[0]~37\ : std_logic;
SIGNAL \wrtSD|state[1]~39\ : std_logic;
SIGNAL \wrtSD|state[2]~41\ : std_logic;
SIGNAL \wrtSD|state[3]~43\ : std_logic;
SIGNAL \wrtSD|state[4]~47\ : std_logic;
SIGNAL \wrtSD|state[5]~49\ : std_logic;
SIGNAL \wrtSD|state[6]~51\ : std_logic;
SIGNAL \wrtSD|state[7]~53\ : std_logic;
SIGNAL \wrtSD|state[8]~55\ : std_logic;
SIGNAL \wrtSD|state[9]~56_combout\ : std_logic;
SIGNAL \wrtSD|Add0~11\ : std_logic;
SIGNAL \wrtSD|Add0~12_combout\ : std_logic;
SIGNAL \wrtSD|Selector4172~1_combout\ : std_logic;
SIGNAL \wrtSD|Add0~13\ : std_logic;
SIGNAL \wrtSD|Add0~14_combout\ : std_logic;
SIGNAL \wrtSD|Selector4171~0_combout\ : std_logic;
SIGNAL \wrtSD|Add0~1\ : std_logic;
SIGNAL \wrtSD|Add0~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4177~0_combout\ : std_logic;
SIGNAL \wrtSD|Add0~3\ : std_logic;
SIGNAL \wrtSD|Add0~4_combout\ : std_logic;
SIGNAL \wrtSD|Add0~0_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~0_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4173~0_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~2_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~3_combout\ : std_logic;
SIGNAL \wrtSD|state[1]~38_combout\ : std_logic;
SIGNAL \wrtSD|Add0~5\ : std_logic;
SIGNAL \wrtSD|Add0~6_combout\ : std_logic;
SIGNAL \wrtSD|Equal0~0_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~9_combout\ : std_logic;
SIGNAL \wrtSD|state[3]~42_combout\ : std_logic;
SIGNAL \wrtSD|state[5]~48_combout\ : std_logic;
SIGNAL \wrtSD|state[4]~46_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~0_combout\ : std_logic;
SIGNAL \wrtSD|state[7]~52_combout\ : std_logic;
SIGNAL \wrtSD|state[8]~54_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~1_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~3_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~4_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4154~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4154~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4169~0_combout\ : std_logic;
SIGNAL \wrtSD|Equal4~1_combout\ : std_logic;
SIGNAL \wrtSD|Equal3~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~2_combout\ : std_logic;
SIGNAL \wrtSD|Add1~1\ : std_logic;
SIGNAL \wrtSD|Add1~3\ : std_logic;
SIGNAL \wrtSD|Add1~5\ : std_logic;
SIGNAL \wrtSD|Add1~7\ : std_logic;
SIGNAL \wrtSD|Add1~8_combout\ : std_logic;
SIGNAL \wrtSD|bitNum[0]~4_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~12_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~39_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~4_combout\ : std_logic;
SIGNAL \wrtSD|Add1~9\ : std_logic;
SIGNAL \wrtSD|Add1~11\ : std_logic;
SIGNAL \wrtSD|Add1~13\ : std_logic;
SIGNAL \wrtSD|Add1~14_combout\ : std_logic;
SIGNAL \wrtSD|Add1~12_combout\ : std_logic;
SIGNAL \wrtSD|Add1~6_combout\ : std_logic;
SIGNAL \wrtSD|Selector4135~4_combout\ : std_logic;
SIGNAL \wrtSD|Add1~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4138~4_combout\ : std_logic;
SIGNAL \wrtSD|Add6~1\ : std_logic;
SIGNAL \wrtSD|Add6~3\ : std_logic;
SIGNAL \wrtSD|Add6~5\ : std_logic;
SIGNAL \wrtSD|Add6~7\ : std_logic;
SIGNAL \wrtSD|Add6~9\ : std_logic;
SIGNAL \wrtSD|Add6~11\ : std_logic;
SIGNAL \wrtSD|Add6~13\ : std_logic;
SIGNAL \wrtSD|Add6~15\ : std_logic;
SIGNAL \wrtSD|Add6~16_combout\ : std_logic;
SIGNAL \wrtSD|Add1~15\ : std_logic;
SIGNAL \wrtSD|Add1~16_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~14_combout\ : std_logic;
SIGNAL \wrtSD|Add1~17\ : std_logic;
SIGNAL \wrtSD|Add1~18_combout\ : std_logic;
SIGNAL \wrtSD|Add6~17\ : std_logic;
SIGNAL \wrtSD|Add6~18_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~15_combout\ : std_logic;
SIGNAL \wrtSD|Add1~19\ : std_logic;
SIGNAL \wrtSD|Add1~20_combout\ : std_logic;
SIGNAL \wrtSD|Add6~19\ : std_logic;
SIGNAL \wrtSD|Add6~20_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~16_combout\ : std_logic;
SIGNAL \wrtSD|Add1~21\ : std_logic;
SIGNAL \wrtSD|Add1~22_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~17_combout\ : std_logic;
SIGNAL \wrtSD|Add1~23\ : std_logic;
SIGNAL \wrtSD|Add1~24_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~18_combout\ : std_logic;
SIGNAL \wrtSD|Add1~25\ : std_logic;
SIGNAL \wrtSD|Add1~26_combout\ : std_logic;
SIGNAL \wrtSD|Add6~21\ : std_logic;
SIGNAL \wrtSD|Add6~23\ : std_logic;
SIGNAL \wrtSD|Add6~25\ : std_logic;
SIGNAL \wrtSD|Add6~26_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~19_combout\ : std_logic;
SIGNAL \wrtSD|Add1~27\ : std_logic;
SIGNAL \wrtSD|Add1~28_combout\ : std_logic;
SIGNAL \wrtSD|Add6~27\ : std_logic;
SIGNAL \wrtSD|Add6~28_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~20_combout\ : std_logic;
SIGNAL \wrtSD|Add1~29\ : std_logic;
SIGNAL \wrtSD|Add1~30_combout\ : std_logic;
SIGNAL \wrtSD|Add6~29\ : std_logic;
SIGNAL \wrtSD|Add6~30_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~21_combout\ : std_logic;
SIGNAL \wrtSD|Add1~31\ : std_logic;
SIGNAL \wrtSD|Add1~33\ : std_logic;
SIGNAL \wrtSD|Add1~35\ : std_logic;
SIGNAL \wrtSD|Add1~37\ : std_logic;
SIGNAL \wrtSD|Add1~39\ : std_logic;
SIGNAL \wrtSD|Add1~41\ : std_logic;
SIGNAL \wrtSD|Add1~43\ : std_logic;
SIGNAL \wrtSD|Add1~44_combout\ : std_logic;
SIGNAL \wrtSD|Add1~42_combout\ : std_logic;
SIGNAL \wrtSD|Add1~40_combout\ : std_logic;
SIGNAL \wrtSD|Add1~34_combout\ : std_logic;
SIGNAL \wrtSD|Add1~32_combout\ : std_logic;
SIGNAL \wrtSD|Add6~31\ : std_logic;
SIGNAL \wrtSD|Add6~33\ : std_logic;
SIGNAL \wrtSD|Add6~35\ : std_logic;
SIGNAL \wrtSD|Add6~37\ : std_logic;
SIGNAL \wrtSD|Add6~39\ : std_logic;
SIGNAL \wrtSD|Add6~41\ : std_logic;
SIGNAL \wrtSD|Add6~43\ : std_logic;
SIGNAL \wrtSD|Add6~45\ : std_logic;
SIGNAL \wrtSD|Add6~46_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~29_combout\ : std_logic;
SIGNAL \wrtSD|Add1~45\ : std_logic;
SIGNAL \wrtSD|Add1~46_combout\ : std_logic;
SIGNAL \wrtSD|Add6~47\ : std_logic;
SIGNAL \wrtSD|Add6~49\ : std_logic;
SIGNAL \wrtSD|Add6~51\ : std_logic;
SIGNAL \wrtSD|Add6~52_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~32_combout\ : std_logic;
SIGNAL \wrtSD|Add1~47\ : std_logic;
SIGNAL \wrtSD|Add1~48_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~30_combout\ : std_logic;
SIGNAL \wrtSD|Add1~49\ : std_logic;
SIGNAL \wrtSD|Add1~50_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~31_combout\ : std_logic;
SIGNAL \wrtSD|Add1~51\ : std_logic;
SIGNAL \wrtSD|Add1~52_combout\ : std_logic;
SIGNAL \wrtSD|Add6~53\ : std_logic;
SIGNAL \wrtSD|Add6~55\ : std_logic;
SIGNAL \wrtSD|Add6~57\ : std_logic;
SIGNAL \wrtSD|Add6~59\ : std_logic;
SIGNAL \wrtSD|Add6~60_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~36_combout\ : std_logic;
SIGNAL \wrtSD|Add6~58_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~35_combout\ : std_logic;
SIGNAL \wrtSD|Add1~53\ : std_logic;
SIGNAL \wrtSD|Add1~54_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~33_combout\ : std_logic;
SIGNAL \wrtSD|Add1~55\ : std_logic;
SIGNAL \wrtSD|Add1~57\ : std_logic;
SIGNAL \wrtSD|Add1~59\ : std_logic;
SIGNAL \wrtSD|Add1~61\ : std_logic;
SIGNAL \wrtSD|Add1~62_combout\ : std_logic;
SIGNAL \wrtSD|Add6~61\ : std_logic;
SIGNAL \wrtSD|Add6~62_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~37_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~8_combout\ : std_logic;
SIGNAL \wrtSD|Add1~38_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~25_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~22_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~23_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~5_combout\ : std_logic;
SIGNAL \wrtSD|Add6~44_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~28_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~26_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~6_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~9_combout\ : std_logic;
SIGNAL \wrtSD|bitNum[0]~38_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~8_combout\ : std_logic;
SIGNAL \wrtSD|Selector4132~2_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~11_combout\ : std_logic;
SIGNAL \wrtSD|Add6~8_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~10_combout\ : std_logic;
SIGNAL \wrtSD|Add6~4_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~9_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~0_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~6_combout\ : std_logic;
SIGNAL \wrtSD|Add6~10_combout\ : std_logic;
SIGNAL \wrtSD|bitNum~5_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~3_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~1_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~3_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~2_combout\ : std_logic;
SIGNAL \wrtSD|Equal1~4_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~3_combout\ : std_logic;
SIGNAL \wrtSD|Add1~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4133~4_combout\ : std_logic;
SIGNAL \wrtSD|Add1~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4137~4_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~1_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~7_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~8_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~9_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~4_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~3_combout\ : std_logic;
SIGNAL \wrtSD|Add1~58_combout\ : std_logic;
SIGNAL \wrtSD|Add1~56_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~2_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~6_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~10_combout\ : std_logic;
SIGNAL \wrtSD|LessThan2~11_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~4_combout\ : std_logic;
SIGNAL \wrtSD|commandSent~regout\ : std_logic;
SIGNAL \wrtSD|responseFromSD[6]~9_combout\ : std_logic;
SIGNAL \wrtSD|state[27]~102_combout\ : std_logic;
SIGNAL \wrtSD|state[9]~57\ : std_logic;
SIGNAL \wrtSD|state[10]~58_combout\ : std_logic;
SIGNAL \wrtSD|state[10]~59\ : std_logic;
SIGNAL \wrtSD|state[11]~60_combout\ : std_logic;
SIGNAL \wrtSD|state[11]~61\ : std_logic;
SIGNAL \wrtSD|state[12]~62_combout\ : std_logic;
SIGNAL \wrtSD|state[12]~63\ : std_logic;
SIGNAL \wrtSD|state[13]~64_combout\ : std_logic;
SIGNAL \wrtSD|state[13]~65\ : std_logic;
SIGNAL \wrtSD|state[14]~66_combout\ : std_logic;
SIGNAL \wrtSD|state[14]~67\ : std_logic;
SIGNAL \wrtSD|state[15]~68_combout\ : std_logic;
SIGNAL \wrtSD|state[15]~69\ : std_logic;
SIGNAL \wrtSD|state[16]~70_combout\ : std_logic;
SIGNAL \wrtSD|state[16]~71\ : std_logic;
SIGNAL \wrtSD|state[17]~72_combout\ : std_logic;
SIGNAL \wrtSD|state[17]~73\ : std_logic;
SIGNAL \wrtSD|state[18]~74_combout\ : std_logic;
SIGNAL \wrtSD|state[18]~75\ : std_logic;
SIGNAL \wrtSD|state[19]~77\ : std_logic;
SIGNAL \wrtSD|state[20]~78_combout\ : std_logic;
SIGNAL \wrtSD|state[20]~79\ : std_logic;
SIGNAL \wrtSD|state[21]~81\ : std_logic;
SIGNAL \wrtSD|state[22]~82_combout\ : std_logic;
SIGNAL \wrtSD|state[21]~80_combout\ : std_logic;
SIGNAL \wrtSD|state[19]~76_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~5_combout\ : std_logic;
SIGNAL \wrtSD|state[22]~83\ : std_logic;
SIGNAL \wrtSD|state[23]~84_combout\ : std_logic;
SIGNAL \wrtSD|state[23]~85\ : std_logic;
SIGNAL \wrtSD|state[24]~87\ : std_logic;
SIGNAL \wrtSD|state[25]~88_combout\ : std_logic;
SIGNAL \wrtSD|state[25]~89\ : std_logic;
SIGNAL \wrtSD|state[26]~90_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~6_combout\ : std_logic;
SIGNAL \wrtSD|state[26]~91\ : std_logic;
SIGNAL \wrtSD|state[27]~92_combout\ : std_logic;
SIGNAL \wrtSD|state[27]~93\ : std_logic;
SIGNAL \wrtSD|state[28]~94_combout\ : std_logic;
SIGNAL \wrtSD|state[28]~95\ : std_logic;
SIGNAL \wrtSD|state[29]~96_combout\ : std_logic;
SIGNAL \wrtSD|state[29]~97\ : std_logic;
SIGNAL \wrtSD|state[30]~98_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~7_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~8_combout\ : std_logic;
SIGNAL \wrtSD|Equal2~11_combout\ : std_logic;
SIGNAL \wrtSD|Selector4201~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4201~1_combout\ : std_logic;
SIGNAL \SD_DAT~combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~5_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~6_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~8_combout\ : std_logic;
SIGNAL \wrtSD|Equal11~0_combout\ : std_logic;
SIGNAL \wrtSD|expectedResponse~0_combout\ : std_logic;
SIGNAL \wrtSD|Add1~4_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~3_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~4_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~3_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~0_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~2_combout\ : std_logic;
SIGNAL \wrtSD|Equal13~0_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~8_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~6_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~4_combout\ : std_logic;
SIGNAL \wrtSD|Selector4117~5_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~2_combout\ : std_logic;
SIGNAL \wrtSD|Decoder2~9_combout\ : std_logic;
SIGNAL \wrtSD|responseFromSD~7_combout\ : std_logic;
SIGNAL \wrtSD|Equal13~1_combout\ : std_logic;
SIGNAL \wrtSD|process_0~0_combout\ : std_logic;
SIGNAL \wrtSD|state[2]~40_combout\ : std_logic;
SIGNAL \wrtSD|Equal8~0_combout\ : std_logic;
SIGNAL \wrtSD|bitsGathered[19]~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~1\ : std_logic;
SIGNAL \wrtSD|Add4~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4232~0_combout\ : std_logic;
SIGNAL \wrtSD|bitsGathered[19]~2_combout\ : std_logic;
SIGNAL \wrtSD|Add3~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4233~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4233~1_combout\ : std_logic;
SIGNAL \wrtSD|Add3~1\ : std_logic;
SIGNAL \wrtSD|Add3~3\ : std_logic;
SIGNAL \wrtSD|Add3~4_combout\ : std_logic;
SIGNAL \wrtSD|Selector4231~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4231~1_combout\ : std_logic;
SIGNAL \wrtSD|Add4~3\ : std_logic;
SIGNAL \wrtSD|Add4~5\ : std_logic;
SIGNAL \wrtSD|Add4~7\ : std_logic;
SIGNAL \wrtSD|Add4~8_combout\ : std_logic;
SIGNAL \wrtSD|Selector4229~1_combout\ : std_logic;
SIGNAL \wrtSD|Add4~9\ : std_logic;
SIGNAL \wrtSD|Add4~11\ : std_logic;
SIGNAL \wrtSD|Add4~12_combout\ : std_logic;
SIGNAL \wrtSD|Add3~5\ : std_logic;
SIGNAL \wrtSD|Add3~6_combout\ : std_logic;
SIGNAL \wrtSD|Selector4230~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~7\ : std_logic;
SIGNAL \wrtSD|Add3~9\ : std_logic;
SIGNAL \wrtSD|Add3~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4228~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~11\ : std_logic;
SIGNAL \wrtSD|Add3~12_combout\ : std_logic;
SIGNAL \wrtSD|Selector4227~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~13\ : std_logic;
SIGNAL \wrtSD|Add4~14_combout\ : std_logic;
SIGNAL \wrtSD|Selector4226~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~15\ : std_logic;
SIGNAL \wrtSD|Add4~16_combout\ : std_logic;
SIGNAL \wrtSD|Add3~13\ : std_logic;
SIGNAL \wrtSD|Add3~15\ : std_logic;
SIGNAL \wrtSD|Add3~16_combout\ : std_logic;
SIGNAL \wrtSD|Selector4225~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~17\ : std_logic;
SIGNAL \wrtSD|Add4~18_combout\ : std_logic;
SIGNAL \wrtSD|Add3~17\ : std_logic;
SIGNAL \wrtSD|Add3~18_combout\ : std_logic;
SIGNAL \wrtSD|Selector4224~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~19\ : std_logic;
SIGNAL \wrtSD|Add3~20_combout\ : std_logic;
SIGNAL \wrtSD|Add4~19\ : std_logic;
SIGNAL \wrtSD|Add4~20_combout\ : std_logic;
SIGNAL \wrtSD|Selector4223~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~21\ : std_logic;
SIGNAL \wrtSD|Add4~22_combout\ : std_logic;
SIGNAL \wrtSD|Add3~21\ : std_logic;
SIGNAL \wrtSD|Add3~22_combout\ : std_logic;
SIGNAL \wrtSD|Selector4222~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~23\ : std_logic;
SIGNAL \wrtSD|Add4~24_combout\ : std_logic;
SIGNAL \wrtSD|Add3~23\ : std_logic;
SIGNAL \wrtSD|Add3~24_combout\ : std_logic;
SIGNAL \wrtSD|Selector4221~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~25\ : std_logic;
SIGNAL \wrtSD|Add3~26_combout\ : std_logic;
SIGNAL \wrtSD|Selector4220~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~27\ : std_logic;
SIGNAL \wrtSD|Add3~28_combout\ : std_logic;
SIGNAL \wrtSD|Add4~25\ : std_logic;
SIGNAL \wrtSD|Add4~27\ : std_logic;
SIGNAL \wrtSD|Add4~28_combout\ : std_logic;
SIGNAL \wrtSD|Selector4219~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~29\ : std_logic;
SIGNAL \wrtSD|Add3~30_combout\ : std_logic;
SIGNAL \wrtSD|Add4~29\ : std_logic;
SIGNAL \wrtSD|Add4~30_combout\ : std_logic;
SIGNAL \wrtSD|Selector4218~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~31\ : std_logic;
SIGNAL \wrtSD|Add4~32_combout\ : std_logic;
SIGNAL \wrtSD|Selector4217~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~31\ : std_logic;
SIGNAL \wrtSD|Add3~33\ : std_logic;
SIGNAL \wrtSD|Add3~34_combout\ : std_logic;
SIGNAL \wrtSD|Add4~33\ : std_logic;
SIGNAL \wrtSD|Add4~34_combout\ : std_logic;
SIGNAL \wrtSD|Selector4216~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~8_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~9_combout\ : std_logic;
SIGNAL \wrtSD|Add4~35\ : std_logic;
SIGNAL \wrtSD|Add4~37\ : std_logic;
SIGNAL \wrtSD|Add4~39\ : std_logic;
SIGNAL \wrtSD|Add4~40_combout\ : std_logic;
SIGNAL \wrtSD|Add3~35\ : std_logic;
SIGNAL \wrtSD|Add3~36_combout\ : std_logic;
SIGNAL \wrtSD|Add4~36_combout\ : std_logic;
SIGNAL \wrtSD|Selector4215~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~37\ : std_logic;
SIGNAL \wrtSD|Add3~38_combout\ : std_logic;
SIGNAL \wrtSD|Add4~38_combout\ : std_logic;
SIGNAL \wrtSD|Selector4214~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~39\ : std_logic;
SIGNAL \wrtSD|Add3~40_combout\ : std_logic;
SIGNAL \wrtSD|Selector4213~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~41\ : std_logic;
SIGNAL \wrtSD|Add4~42_combout\ : std_logic;
SIGNAL \wrtSD|Add3~41\ : std_logic;
SIGNAL \wrtSD|Add3~42_combout\ : std_logic;
SIGNAL \wrtSD|Selector4212~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~6_combout\ : std_logic;
SIGNAL \wrtSD|Add3~43\ : std_logic;
SIGNAL \wrtSD|Add3~45\ : std_logic;
SIGNAL \wrtSD|Add3~47\ : std_logic;
SIGNAL \wrtSD|Add3~48_combout\ : std_logic;
SIGNAL \wrtSD|Selector4209~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~43\ : std_logic;
SIGNAL \wrtSD|Add4~45\ : std_logic;
SIGNAL \wrtSD|Add4~47\ : std_logic;
SIGNAL \wrtSD|Add4~49\ : std_logic;
SIGNAL \wrtSD|Add4~50_combout\ : std_logic;
SIGNAL \wrtSD|Add3~49\ : std_logic;
SIGNAL \wrtSD|Add3~50_combout\ : std_logic;
SIGNAL \wrtSD|Selector4208~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~46_combout\ : std_logic;
SIGNAL \wrtSD|Add3~46_combout\ : std_logic;
SIGNAL \wrtSD|Selector4210~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~5_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~7_combout\ : std_logic;
SIGNAL \wrtSD|Add3~51\ : std_logic;
SIGNAL \wrtSD|Add3~53\ : std_logic;
SIGNAL \wrtSD|Add3~54_combout\ : std_logic;
SIGNAL \wrtSD|Add4~51\ : std_logic;
SIGNAL \wrtSD|Add4~52_combout\ : std_logic;
SIGNAL \wrtSD|Add3~52_combout\ : std_logic;
SIGNAL \wrtSD|Selector4207~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~53\ : std_logic;
SIGNAL \wrtSD|Add4~54_combout\ : std_logic;
SIGNAL \wrtSD|Selector4206~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~55\ : std_logic;
SIGNAL \wrtSD|Add4~57\ : std_logic;
SIGNAL \wrtSD|Add4~58_combout\ : std_logic;
SIGNAL \wrtSD|Selector4204~0_combout\ : std_logic;
SIGNAL \wrtSD|Add4~59\ : std_logic;
SIGNAL \wrtSD|Add4~60_combout\ : std_logic;
SIGNAL \wrtSD|Add4~56_combout\ : std_logic;
SIGNAL \wrtSD|Selector4205~0_combout\ : std_logic;
SIGNAL \wrtSD|Add3~55\ : std_logic;
SIGNAL \wrtSD|Add3~57\ : std_logic;
SIGNAL \wrtSD|Add3~59\ : std_logic;
SIGNAL \wrtSD|Add3~60_combout\ : std_logic;
SIGNAL \wrtSD|Selector4203~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~2_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~1_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~4_combout\ : std_logic;
SIGNAL \wrtSD|LessThan0~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4168~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4168~1_combout\ : std_logic;
SIGNAL \wrtSD|Equal9~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4170~0_combout\ : std_logic;
SIGNAL \wrtSD|Equal6~0_combout\ : std_logic;
SIGNAL \wrtSD|WideNor0~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4172~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4175~0_combout\ : std_logic;
SIGNAL \wrtSD|Add0~7\ : std_logic;
SIGNAL \wrtSD|Add0~8_combout\ : std_logic;
SIGNAL \wrtSD|Selector4174~0_combout\ : std_logic;
SIGNAL \wrtSD|Add0~9\ : std_logic;
SIGNAL \wrtSD|Add0~10_combout\ : std_logic;
SIGNAL \wrtSD|Equal0~1_combout\ : std_logic;
SIGNAL \wrtSD|replyStarted~4_combout\ : std_logic;
SIGNAL \wrtSD|replyStarted~0_combout\ : std_logic;
SIGNAL \wrtSD|replyStarted~3_combout\ : std_logic;
SIGNAL \wrtSD|replyStarted~regout\ : std_logic;
SIGNAL \wrtSD|bitNum~7_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~12_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~13_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~7_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~6_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~8_combout\ : std_logic;
SIGNAL \wrtSD|Equal3~1_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~14_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~4_combout\ : std_logic;
SIGNAL \wrtSD|Equal7~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~5_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~5_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~10_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~11_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~6_combout\ : std_logic;
SIGNAL \wrtSD|Equal5~0_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~7_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~0_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~1_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~2_combout\ : std_logic;
SIGNAL \wrtSD|WideOr4092~combout\ : std_logic;
SIGNAL \wrtSD|Selector4197~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4194~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[6]~4_combout\ : std_logic;
SIGNAL \wrtSD|Mux4~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4193~0_combout\ : std_logic;
SIGNAL \wrtSD|dataGathered[7]~6_combout\ : std_logic;
SIGNAL \wrtSD|Mux4~3_combout\ : std_logic;
SIGNAL \wrtSD|Add4~44_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~5_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~7_combout\ : std_logic;
SIGNAL \wrtSD|Add4~26_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~0_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~2_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~3_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~4_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~8_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~9_combout\ : std_logic;
SIGNAL \wrtSD|LessThan1~10_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~4_combout\ : std_logic;
SIGNAL \wrtSD|Selector4105~2_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~9_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~10_combout\ : std_logic;
SIGNAL \wrtSD|SD_CMD~regout\ : std_logic;
SIGNAL \wrtSD|Decoder0~0_combout\ : std_logic;
SIGNAL \wrtSD|ledr~0_combout\ : std_logic;
SIGNAL \wrtSD|ledr~1_combout\ : std_logic;
SIGNAL \wrtSD|ledr~2_combout\ : std_logic;
SIGNAL \wrtSD|ledr~3_combout\ : std_logic;
SIGNAL \wrtSD|ledr~4_combout\ : std_logic;
SIGNAL \wrtSD|ledr~5_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~2_combout\ : std_logic;
SIGNAL \wrtSD|Selector4104~0_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~3_combout\ : std_logic;
SIGNAL \wrtSD|Selector4103~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4102~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4101~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4100~0_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~5_combout\ : std_logic;
SIGNAL \wrtSD|Selector4099~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4098~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4097~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4096~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4095~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4094~0_combout\ : std_logic;
SIGNAL \wrtSD|Decoder0~8_combout\ : std_logic;
SIGNAL \wrtSD|Selector4093~0_combout\ : std_logic;
SIGNAL \wrtSD|Selector4092~0_combout\ : std_logic;
SIGNAL \clkDiv|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wrtSD|state\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wrtSD|responseFromSD\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \wrtSD|ledr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \wrtSD|expectedResponse\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wrtSD|dataGathered\ : std_logic_vector(4095 DOWNTO 0);
SIGNAL \wrtSD|currentAddress\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wrtSD|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wrtSD|cmd24\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \wrtSD|bitsGathered\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wrtSD|bitNum\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wrtSD|ALT_INV_commandSent~regout\ : std_logic;
SIGNAL \wrtSD|ALT_INV_SD_CMD~regout\ : std_logic;
SIGNAL \wrtSD|ALT_INV_SD_DAT3~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SD_DAT <= SD_DAT;
SD_CLK <= ww_SD_CLK;
SD_DAT3 <= ww_SD_DAT3;
SD_CMD <= ww_SD_CMD;
gpio_1 <= ww_gpio_1;
ledr <= ww_ledr;
ledg <= ww_ledg;
ww_key <= key;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkDiv|tempClk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clkDiv|tempClk~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\wrtSD|ALT_INV_commandSent~regout\ <= NOT \wrtSD|commandSent~regout\;
\wrtSD|ALT_INV_SD_CMD~regout\ <= NOT \wrtSD|SD_CMD~regout\;
\wrtSD|ALT_INV_SD_DAT3~regout\ <= NOT \wrtSD|SD_DAT3~regout\;

-- Location: LCFF_X31_Y35_N21
\clkDiv|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(4));

-- Location: LCFF_X36_Y16_N13
\wrtSD|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[6]~50_combout\,
	sdata => \wrtSD|state\(6),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(6));

-- Location: LCFF_X36_Y15_N17
\wrtSD|state[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[24]~86_combout\,
	sdata => \wrtSD|state\(24),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(24));

-- Location: LCFF_X36_Y15_N31
\wrtSD|state[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[31]~100_combout\,
	sdata => \wrtSD|state\(31),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(31));

-- Location: LCCOMB_X33_Y13_N0
\wrtSD|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~0_combout\ = \wrtSD|bitsGathered\(0) $ (GND)
-- \wrtSD|Add4~1\ = CARRY(!\wrtSD|bitsGathered\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(0),
	datad => VCC,
	combout => \wrtSD|Add4~0_combout\,
	cout => \wrtSD|Add4~1\);

-- Location: LCCOMB_X33_Y13_N4
\wrtSD|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~4_combout\ = (\wrtSD|bitsGathered\(2) & (!\wrtSD|Add4~3\ & VCC)) # (!\wrtSD|bitsGathered\(2) & (\wrtSD|Add4~3\ $ (GND)))
-- \wrtSD|Add4~5\ = CARRY((!\wrtSD|bitsGathered\(2) & !\wrtSD|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(2),
	datad => VCC,
	cin => \wrtSD|Add4~3\,
	combout => \wrtSD|Add4~4_combout\,
	cout => \wrtSD|Add4~5\);

-- Location: LCCOMB_X33_Y13_N6
\wrtSD|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~6_combout\ = (\wrtSD|bitsGathered\(3) & (!\wrtSD|Add4~5\)) # (!\wrtSD|bitsGathered\(3) & ((\wrtSD|Add4~5\) # (GND)))
-- \wrtSD|Add4~7\ = CARRY((!\wrtSD|Add4~5\) # (!\wrtSD|bitsGathered\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datad => VCC,
	cin => \wrtSD|Add4~5\,
	combout => \wrtSD|Add4~6_combout\,
	cout => \wrtSD|Add4~7\);

-- Location: LCCOMB_X33_Y13_N10
\wrtSD|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~10_combout\ = (\wrtSD|bitsGathered\(5) & (!\wrtSD|Add4~9\)) # (!\wrtSD|bitsGathered\(5) & ((\wrtSD|Add4~9\) # (GND)))
-- \wrtSD|Add4~11\ = CARRY((!\wrtSD|Add4~9\) # (!\wrtSD|bitsGathered\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(5),
	datad => VCC,
	cin => \wrtSD|Add4~9\,
	combout => \wrtSD|Add4~10_combout\,
	cout => \wrtSD|Add4~11\);

-- Location: LCCOMB_X33_Y12_N16
\wrtSD|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~48_combout\ = (\wrtSD|bitsGathered\(24) & (\wrtSD|Add4~47\ $ (GND))) # (!\wrtSD|bitsGathered\(24) & (!\wrtSD|Add4~47\ & VCC))
-- \wrtSD|Add4~49\ = CARRY((\wrtSD|bitsGathered\(24) & !\wrtSD|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(24),
	datad => VCC,
	cin => \wrtSD|Add4~47\,
	combout => \wrtSD|Add4~48_combout\,
	cout => \wrtSD|Add4~49\);

-- Location: LCCOMB_X33_Y12_N28
\wrtSD|Add4~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~60_combout\ = (\wrtSD|bitsGathered\(30) & (\wrtSD|Add4~59\ $ (GND))) # (!\wrtSD|bitsGathered\(30) & (!\wrtSD|Add4~59\ & VCC))
-- \wrtSD|Add4~61\ = CARRY((\wrtSD|bitsGathered\(30) & !\wrtSD|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(30),
	datad => VCC,
	cin => \wrtSD|Add4~59\,
	combout => \wrtSD|Add4~60_combout\,
	cout => \wrtSD|Add4~61\);

-- Location: LCCOMB_X33_Y12_N30
\wrtSD|Add4~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~62_combout\ = \wrtSD|bitsGathered\(31) $ (\wrtSD|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(31),
	cin => \wrtSD|Add4~61\,
	combout => \wrtSD|Add4~62_combout\);

-- Location: LCFF_X34_Y15_N5
\wrtSD|currentAddress[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[26]~feeder_combout\,
	sdata => \wrtSD|Add9~36_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(26));

-- Location: LCFF_X33_Y14_N29
\wrtSD|currentAddress[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[25]~feeder_combout\,
	sdata => \wrtSD|Add9~34_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(25));

-- Location: LCFF_X33_Y15_N25
\wrtSD|currentAddress[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[24]~21_combout\,
	sdata => \wrtSD|Add9~32_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(24));

-- Location: LCFF_X33_Y14_N11
\wrtSD|currentAddress[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[27]~feeder_combout\,
	sdata => \wrtSD|Add9~38_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(27));

-- Location: LCFF_X34_Y15_N7
\wrtSD|currentAddress[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[30]~feeder_combout\,
	sdata => \wrtSD|Add9~44_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(30));

-- Location: LCFF_X34_Y15_N25
\wrtSD|currentAddress[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[29]~feeder_combout\,
	sdata => \wrtSD|Add9~42_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(29));

-- Location: LCFF_X34_Y15_N15
\wrtSD|currentAddress[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[28]~feeder_combout\,
	sdata => \wrtSD|Add9~40_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(28));

-- Location: LCFF_X34_Y15_N17
\wrtSD|currentAddress[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[31]~feeder_combout\,
	sdata => \wrtSD|Add9~46_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(31));

-- Location: LCFF_X33_Y16_N1
\wrtSD|currentAddress[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[13]~0_combout\,
	sdata => \wrtSD|Add9~10_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(13));

-- Location: LCFF_X34_Y15_N3
\wrtSD|currentAddress[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[17]~feeder_combout\,
	sdata => \wrtSD|Add9~18_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(17));

-- Location: LCFF_X32_Y16_N1
\wrtSD|currentAddress[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[9]~2_combout\,
	sdata => \wrtSD|Add9~2_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(9));

-- Location: LCFF_X33_Y15_N31
\wrtSD|currentAddress[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[21]~3_combout\,
	sdata => \wrtSD|Add9~26_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(21));

-- Location: LCFF_X34_Y15_N1
\wrtSD|currentAddress[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[18]~feeder_combout\,
	sdata => \wrtSD|Add9~20_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(18));

-- Location: LCFF_X32_Y16_N7
\wrtSD|currentAddress[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[14]~5_combout\,
	sdata => \wrtSD|Add9~12_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(14));

-- Location: LCFF_X33_Y16_N3
\wrtSD|currentAddress[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[10]~6_combout\,
	sdata => \wrtSD|Add9~4_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(10));

-- Location: LCFF_X33_Y15_N29
\wrtSD|currentAddress[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[22]~7_combout\,
	sdata => \wrtSD|Add9~28_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(22));

-- Location: LCFF_X33_Y16_N5
\wrtSD|currentAddress[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[16]~8_combout\,
	sdata => \wrtSD|Add9~16_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(16));

-- Location: LCFF_X32_Y16_N5
\wrtSD|currentAddress[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[12]~9_combout\,
	sdata => \wrtSD|Add9~8_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(12));

-- Location: LCFF_X34_Y16_N5
\wrtSD|cmd24[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|cmd24[16]~feeder_combout\,
	sdata => \wrtSD|cmd24~3_combout\,
	sload => \wrtSD|commandSent~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|cmd24\(16));

-- Location: LCFF_X34_Y15_N27
\wrtSD|currentAddress[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[20]~feeder_combout\,
	sdata => \wrtSD|Add9~24_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(20));

-- Location: LCFF_X33_Y16_N7
\wrtSD|currentAddress[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[15]~11_combout\,
	sdata => \wrtSD|Add9~14_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(15));

-- Location: LCFF_X32_Y16_N3
\wrtSD|currentAddress[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[19]~12_combout\,
	sdata => \wrtSD|Add9~22_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(19));

-- Location: LCFF_X34_Y15_N21
\wrtSD|currentAddress[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[11]~feeder_combout\,
	sdata => \wrtSD|Add9~6_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(11));

-- Location: LCFF_X33_Y15_N27
\wrtSD|currentAddress[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress[23]~14_combout\,
	sdata => \wrtSD|Add9~30_combout\,
	sload => \wrtSD|currentAddress~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(23));

-- Location: LCCOMB_X31_Y35_N20
\clkDiv|counter[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[4]~12_combout\ = (\clkDiv|counter\(4) & (!\clkDiv|counter[3]~11\)) # (!\clkDiv|counter\(4) & ((\clkDiv|counter[3]~11\) # (GND)))
-- \clkDiv|counter[4]~13\ = CARRY((!\clkDiv|counter[3]~11\) # (!\clkDiv|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(4),
	datad => VCC,
	cin => \clkDiv|counter[3]~11\,
	combout => \clkDiv|counter[4]~12_combout\,
	cout => \clkDiv|counter[4]~13\);

-- Location: LCCOMB_X34_Y18_N4
\wrtSD|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~36_combout\ = ((\wrtSD|bitNum\(18) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~35\)))) # (GND)
-- \wrtSD|Add1~37\ = CARRY((\wrtSD|bitNum\(18) & ((!\wrtSD|Add1~35\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(18) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(18),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~35\,
	combout => \wrtSD|Add1~36_combout\,
	cout => \wrtSD|Add1~37\);

-- Location: LCCOMB_X34_Y18_N28
\wrtSD|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~60_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(30) $ (\wrtSD|Add1~59\)))) # (GND)
-- \wrtSD|Add1~61\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(30) & !\wrtSD|Add1~59\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(30)) # (!\wrtSD|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(30),
	datad => VCC,
	cin => \wrtSD|Add1~59\,
	combout => \wrtSD|Add1~60_combout\,
	cout => \wrtSD|Add1~61\);

-- Location: LCCOMB_X36_Y16_N12
\wrtSD|state[6]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[6]~50_combout\ = ((\wrtSD|state\(6) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[5]~49\)))) # (GND)
-- \wrtSD|state[6]~51\ = CARRY((\wrtSD|state\(6) & ((!\wrtSD|state[5]~49\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(6) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[5]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(6),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[5]~49\,
	combout => \wrtSD|state[6]~50_combout\,
	cout => \wrtSD|state[6]~51\);

-- Location: LCCOMB_X36_Y15_N16
\wrtSD|state[24]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[24]~86_combout\ = ((\wrtSD|state\(24) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[23]~85\)))) # (GND)
-- \wrtSD|state[24]~87\ = CARRY((\wrtSD|state\(24) & ((!\wrtSD|state[23]~85\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(24) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[23]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(24),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[23]~85\,
	combout => \wrtSD|state[24]~86_combout\,
	cout => \wrtSD|state[24]~87\);

-- Location: LCCOMB_X36_Y15_N28
\wrtSD|state[30]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[30]~98_combout\ = ((\wrtSD|state\(30) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[29]~97\)))) # (GND)
-- \wrtSD|state[30]~99\ = CARRY((\wrtSD|state\(30) & ((!\wrtSD|state[29]~97\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(30) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[29]~97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(30),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[29]~97\,
	combout => \wrtSD|state[30]~98_combout\,
	cout => \wrtSD|state[30]~99\);

-- Location: LCCOMB_X36_Y15_N30
\wrtSD|state[31]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[31]~100_combout\ = \wrtSD|state\(31) $ (\wrtSD|state[30]~99\ $ (!\wrtSD|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(31),
	datad => \wrtSD|process_0~0_combout\,
	cin => \wrtSD|state[30]~99\,
	combout => \wrtSD|state[31]~100_combout\);

-- Location: LCCOMB_X31_Y13_N2
\wrtSD|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~2_combout\ = (\wrtSD|bitsGathered\(1) & (!\wrtSD|Add3~1\)) # (!\wrtSD|bitsGathered\(1) & ((\wrtSD|Add3~1\) # (GND)))
-- \wrtSD|Add3~3\ = CARRY((!\wrtSD|Add3~1\) # (!\wrtSD|bitsGathered\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(1),
	datad => VCC,
	cin => \wrtSD|Add3~1\,
	combout => \wrtSD|Add3~2_combout\,
	cout => \wrtSD|Add3~3\);

-- Location: LCCOMB_X31_Y13_N8
\wrtSD|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~8_combout\ = (\wrtSD|bitsGathered\(4) & (\wrtSD|Add3~7\ $ (GND))) # (!\wrtSD|bitsGathered\(4) & ((GND) # (!\wrtSD|Add3~7\)))
-- \wrtSD|Add3~9\ = CARRY((!\wrtSD|Add3~7\) # (!\wrtSD|bitsGathered\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(4),
	datad => VCC,
	cin => \wrtSD|Add3~7\,
	combout => \wrtSD|Add3~8_combout\,
	cout => \wrtSD|Add3~9\);

-- Location: LCCOMB_X31_Y13_N14
\wrtSD|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~14_combout\ = (\wrtSD|bitsGathered\(7) & (!\wrtSD|Add3~13\)) # (!\wrtSD|bitsGathered\(7) & ((\wrtSD|Add3~13\) # (GND)))
-- \wrtSD|Add3~15\ = CARRY((!\wrtSD|Add3~13\) # (!\wrtSD|bitsGathered\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(7),
	datad => VCC,
	cin => \wrtSD|Add3~13\,
	combout => \wrtSD|Add3~14_combout\,
	cout => \wrtSD|Add3~15\);

-- Location: LCCOMB_X31_Y12_N0
\wrtSD|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~32_combout\ = (\wrtSD|bitsGathered\(16) & (\wrtSD|Add3~31\ $ (GND))) # (!\wrtSD|bitsGathered\(16) & (!\wrtSD|Add3~31\ & VCC))
-- \wrtSD|Add3~33\ = CARRY((\wrtSD|bitsGathered\(16) & !\wrtSD|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(16),
	datad => VCC,
	cin => \wrtSD|Add3~31\,
	combout => \wrtSD|Add3~32_combout\,
	cout => \wrtSD|Add3~33\);

-- Location: LCCOMB_X31_Y12_N12
\wrtSD|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~44_combout\ = (\wrtSD|bitsGathered\(22) & (\wrtSD|Add3~43\ $ (GND))) # (!\wrtSD|bitsGathered\(22) & (!\wrtSD|Add3~43\ & VCC))
-- \wrtSD|Add3~45\ = CARRY((\wrtSD|bitsGathered\(22) & !\wrtSD|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(22),
	datad => VCC,
	cin => \wrtSD|Add3~43\,
	combout => \wrtSD|Add3~44_combout\,
	cout => \wrtSD|Add3~45\);

-- Location: LCCOMB_X31_Y12_N24
\wrtSD|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~56_combout\ = (\wrtSD|bitsGathered\(28) & (\wrtSD|Add3~55\ $ (GND))) # (!\wrtSD|bitsGathered\(28) & (!\wrtSD|Add3~55\ & VCC))
-- \wrtSD|Add3~57\ = CARRY((\wrtSD|bitsGathered\(28) & !\wrtSD|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(28),
	datad => VCC,
	cin => \wrtSD|Add3~55\,
	combout => \wrtSD|Add3~56_combout\,
	cout => \wrtSD|Add3~57\);

-- Location: LCCOMB_X31_Y12_N26
\wrtSD|Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~58_combout\ = (\wrtSD|bitsGathered\(29) & (!\wrtSD|Add3~57\)) # (!\wrtSD|bitsGathered\(29) & ((\wrtSD|Add3~57\) # (GND)))
-- \wrtSD|Add3~59\ = CARRY((!\wrtSD|Add3~57\) # (!\wrtSD|bitsGathered\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(29),
	datad => VCC,
	cin => \wrtSD|Add3~57\,
	combout => \wrtSD|Add3~58_combout\,
	cout => \wrtSD|Add3~59\);

-- Location: LCCOMB_X31_Y12_N28
\wrtSD|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~60_combout\ = (\wrtSD|bitsGathered\(30) & (\wrtSD|Add3~59\ $ (GND))) # (!\wrtSD|bitsGathered\(30) & (!\wrtSD|Add3~59\ & VCC))
-- \wrtSD|Add3~61\ = CARRY((\wrtSD|bitsGathered\(30) & !\wrtSD|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(30),
	datad => VCC,
	cin => \wrtSD|Add3~59\,
	combout => \wrtSD|Add3~60_combout\,
	cout => \wrtSD|Add3~61\);

-- Location: LCCOMB_X31_Y12_N30
\wrtSD|Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~62_combout\ = \wrtSD|Add3~61\ $ (\wrtSD|bitsGathered\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|bitsGathered\(31),
	cin => \wrtSD|Add3~61\,
	combout => \wrtSD|Add3~62_combout\);

-- Location: LCCOMB_X33_Y19_N0
\wrtSD|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~0_combout\ = \wrtSD|Selector4138~4_combout\ $ (VCC)
-- \wrtSD|Add6~1\ = CARRY(\wrtSD|Selector4138~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4138~4_combout\,
	datad => VCC,
	combout => \wrtSD|Add6~0_combout\,
	cout => \wrtSD|Add6~1\);

-- Location: LCCOMB_X33_Y19_N2
\wrtSD|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~2_combout\ = (\wrtSD|Selector4137~4_combout\ & (!\wrtSD|Add6~1\)) # (!\wrtSD|Selector4137~4_combout\ & ((\wrtSD|Add6~1\) # (GND)))
-- \wrtSD|Add6~3\ = CARRY((!\wrtSD|Add6~1\) # (!\wrtSD|Selector4137~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4137~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~1\,
	combout => \wrtSD|Add6~2_combout\,
	cout => \wrtSD|Add6~3\);

-- Location: LCCOMB_X33_Y19_N6
\wrtSD|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~6_combout\ = (\wrtSD|Selector4135~4_combout\ & (!\wrtSD|Add6~5\)) # (!\wrtSD|Selector4135~4_combout\ & ((\wrtSD|Add6~5\) # (GND)))
-- \wrtSD|Add6~7\ = CARRY((!\wrtSD|Add6~5\) # (!\wrtSD|Selector4135~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4135~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~5\,
	combout => \wrtSD|Add6~6_combout\,
	cout => \wrtSD|Add6~7\);

-- Location: LCCOMB_X32_Y16_N8
\wrtSD|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~0_combout\ = \wrtSD|currentAddress\(8) $ (GND)
-- \wrtSD|Add5~1\ = CARRY(!\wrtSD|currentAddress\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(8),
	datad => VCC,
	combout => \wrtSD|Add5~0_combout\,
	cout => \wrtSD|Add5~1\);

-- Location: LCCOMB_X32_Y16_N10
\wrtSD|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~2_combout\ = (\wrtSD|currentAddress\(9) & (!\wrtSD|Add5~1\)) # (!\wrtSD|currentAddress\(9) & ((\wrtSD|Add5~1\) # (GND)))
-- \wrtSD|Add5~3\ = CARRY((!\wrtSD|Add5~1\) # (!\wrtSD|currentAddress\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(9),
	datad => VCC,
	cin => \wrtSD|Add5~1\,
	combout => \wrtSD|Add5~2_combout\,
	cout => \wrtSD|Add5~3\);

-- Location: LCCOMB_X32_Y16_N12
\wrtSD|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~4_combout\ = (\wrtSD|currentAddress\(10) & (\wrtSD|Add5~3\ $ (GND))) # (!\wrtSD|currentAddress\(10) & (!\wrtSD|Add5~3\ & VCC))
-- \wrtSD|Add5~5\ = CARRY((\wrtSD|currentAddress\(10) & !\wrtSD|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(10),
	datad => VCC,
	cin => \wrtSD|Add5~3\,
	combout => \wrtSD|Add5~4_combout\,
	cout => \wrtSD|Add5~5\);

-- Location: LCCOMB_X32_Y16_N14
\wrtSD|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~6_combout\ = (\wrtSD|currentAddress\(11) & (!\wrtSD|Add5~5\)) # (!\wrtSD|currentAddress\(11) & ((\wrtSD|Add5~5\) # (GND)))
-- \wrtSD|Add5~7\ = CARRY((!\wrtSD|Add5~5\) # (!\wrtSD|currentAddress\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(11),
	datad => VCC,
	cin => \wrtSD|Add5~5\,
	combout => \wrtSD|Add5~6_combout\,
	cout => \wrtSD|Add5~7\);

-- Location: LCCOMB_X32_Y16_N16
\wrtSD|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~8_combout\ = (\wrtSD|currentAddress\(12) & (\wrtSD|Add5~7\ $ (GND))) # (!\wrtSD|currentAddress\(12) & (!\wrtSD|Add5~7\ & VCC))
-- \wrtSD|Add5~9\ = CARRY((\wrtSD|currentAddress\(12) & !\wrtSD|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(12),
	datad => VCC,
	cin => \wrtSD|Add5~7\,
	combout => \wrtSD|Add5~8_combout\,
	cout => \wrtSD|Add5~9\);

-- Location: LCCOMB_X32_Y16_N18
\wrtSD|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~10_combout\ = (\wrtSD|currentAddress\(13) & (!\wrtSD|Add5~9\)) # (!\wrtSD|currentAddress\(13) & ((\wrtSD|Add5~9\) # (GND)))
-- \wrtSD|Add5~11\ = CARRY((!\wrtSD|Add5~9\) # (!\wrtSD|currentAddress\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(13),
	datad => VCC,
	cin => \wrtSD|Add5~9\,
	combout => \wrtSD|Add5~10_combout\,
	cout => \wrtSD|Add5~11\);

-- Location: LCCOMB_X32_Y16_N20
\wrtSD|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~12_combout\ = (\wrtSD|currentAddress\(14) & (\wrtSD|Add5~11\ $ (GND))) # (!\wrtSD|currentAddress\(14) & (!\wrtSD|Add5~11\ & VCC))
-- \wrtSD|Add5~13\ = CARRY((\wrtSD|currentAddress\(14) & !\wrtSD|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(14),
	datad => VCC,
	cin => \wrtSD|Add5~11\,
	combout => \wrtSD|Add5~12_combout\,
	cout => \wrtSD|Add5~13\);

-- Location: LCCOMB_X32_Y16_N22
\wrtSD|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~14_combout\ = (\wrtSD|currentAddress\(15) & (!\wrtSD|Add5~13\)) # (!\wrtSD|currentAddress\(15) & ((\wrtSD|Add5~13\) # (GND)))
-- \wrtSD|Add5~15\ = CARRY((!\wrtSD|Add5~13\) # (!\wrtSD|currentAddress\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(15),
	datad => VCC,
	cin => \wrtSD|Add5~13\,
	combout => \wrtSD|Add5~14_combout\,
	cout => \wrtSD|Add5~15\);

-- Location: LCCOMB_X32_Y16_N24
\wrtSD|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~16_combout\ = (\wrtSD|currentAddress\(16) & (\wrtSD|Add5~15\ $ (GND))) # (!\wrtSD|currentAddress\(16) & (!\wrtSD|Add5~15\ & VCC))
-- \wrtSD|Add5~17\ = CARRY((\wrtSD|currentAddress\(16) & !\wrtSD|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(16),
	datad => VCC,
	cin => \wrtSD|Add5~15\,
	combout => \wrtSD|Add5~16_combout\,
	cout => \wrtSD|Add5~17\);

-- Location: LCCOMB_X32_Y16_N26
\wrtSD|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~18_combout\ = (\wrtSD|currentAddress\(17) & (!\wrtSD|Add5~17\)) # (!\wrtSD|currentAddress\(17) & ((\wrtSD|Add5~17\) # (GND)))
-- \wrtSD|Add5~19\ = CARRY((!\wrtSD|Add5~17\) # (!\wrtSD|currentAddress\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(17),
	datad => VCC,
	cin => \wrtSD|Add5~17\,
	combout => \wrtSD|Add5~18_combout\,
	cout => \wrtSD|Add5~19\);

-- Location: LCCOMB_X32_Y16_N28
\wrtSD|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~20_combout\ = (\wrtSD|currentAddress\(18) & (\wrtSD|Add5~19\ $ (GND))) # (!\wrtSD|currentAddress\(18) & (!\wrtSD|Add5~19\ & VCC))
-- \wrtSD|Add5~21\ = CARRY((\wrtSD|currentAddress\(18) & !\wrtSD|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(18),
	datad => VCC,
	cin => \wrtSD|Add5~19\,
	combout => \wrtSD|Add5~20_combout\,
	cout => \wrtSD|Add5~21\);

-- Location: LCCOMB_X32_Y16_N30
\wrtSD|Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~22_combout\ = (\wrtSD|currentAddress\(19) & (!\wrtSD|Add5~21\)) # (!\wrtSD|currentAddress\(19) & ((\wrtSD|Add5~21\) # (GND)))
-- \wrtSD|Add5~23\ = CARRY((!\wrtSD|Add5~21\) # (!\wrtSD|currentAddress\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(19),
	datad => VCC,
	cin => \wrtSD|Add5~21\,
	combout => \wrtSD|Add5~22_combout\,
	cout => \wrtSD|Add5~23\);

-- Location: LCCOMB_X32_Y15_N0
\wrtSD|Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~24_combout\ = (\wrtSD|currentAddress\(20) & (\wrtSD|Add5~23\ $ (GND))) # (!\wrtSD|currentAddress\(20) & (!\wrtSD|Add5~23\ & VCC))
-- \wrtSD|Add5~25\ = CARRY((\wrtSD|currentAddress\(20) & !\wrtSD|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(20),
	datad => VCC,
	cin => \wrtSD|Add5~23\,
	combout => \wrtSD|Add5~24_combout\,
	cout => \wrtSD|Add5~25\);

-- Location: LCCOMB_X32_Y15_N2
\wrtSD|Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~26_combout\ = (\wrtSD|currentAddress\(21) & (!\wrtSD|Add5~25\)) # (!\wrtSD|currentAddress\(21) & ((\wrtSD|Add5~25\) # (GND)))
-- \wrtSD|Add5~27\ = CARRY((!\wrtSD|Add5~25\) # (!\wrtSD|currentAddress\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(21),
	datad => VCC,
	cin => \wrtSD|Add5~25\,
	combout => \wrtSD|Add5~26_combout\,
	cout => \wrtSD|Add5~27\);

-- Location: LCCOMB_X32_Y15_N4
\wrtSD|Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~28_combout\ = (\wrtSD|currentAddress\(22) & (\wrtSD|Add5~27\ $ (GND))) # (!\wrtSD|currentAddress\(22) & (!\wrtSD|Add5~27\ & VCC))
-- \wrtSD|Add5~29\ = CARRY((\wrtSD|currentAddress\(22) & !\wrtSD|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(22),
	datad => VCC,
	cin => \wrtSD|Add5~27\,
	combout => \wrtSD|Add5~28_combout\,
	cout => \wrtSD|Add5~29\);

-- Location: LCCOMB_X32_Y15_N6
\wrtSD|Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~30_combout\ = (\wrtSD|currentAddress\(23) & (!\wrtSD|Add5~29\)) # (!\wrtSD|currentAddress\(23) & ((\wrtSD|Add5~29\) # (GND)))
-- \wrtSD|Add5~31\ = CARRY((!\wrtSD|Add5~29\) # (!\wrtSD|currentAddress\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(23),
	datad => VCC,
	cin => \wrtSD|Add5~29\,
	combout => \wrtSD|Add5~30_combout\,
	cout => \wrtSD|Add5~31\);

-- Location: LCCOMB_X32_Y15_N8
\wrtSD|Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~32_combout\ = (\wrtSD|currentAddress\(24) & (\wrtSD|Add5~31\ $ (GND))) # (!\wrtSD|currentAddress\(24) & (!\wrtSD|Add5~31\ & VCC))
-- \wrtSD|Add5~33\ = CARRY((\wrtSD|currentAddress\(24) & !\wrtSD|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(24),
	datad => VCC,
	cin => \wrtSD|Add5~31\,
	combout => \wrtSD|Add5~32_combout\,
	cout => \wrtSD|Add5~33\);

-- Location: LCCOMB_X32_Y15_N10
\wrtSD|Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~34_combout\ = (\wrtSD|currentAddress\(25) & (!\wrtSD|Add5~33\)) # (!\wrtSD|currentAddress\(25) & ((\wrtSD|Add5~33\) # (GND)))
-- \wrtSD|Add5~35\ = CARRY((!\wrtSD|Add5~33\) # (!\wrtSD|currentAddress\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(25),
	datad => VCC,
	cin => \wrtSD|Add5~33\,
	combout => \wrtSD|Add5~34_combout\,
	cout => \wrtSD|Add5~35\);

-- Location: LCCOMB_X32_Y15_N12
\wrtSD|Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~36_combout\ = (\wrtSD|currentAddress\(26) & (\wrtSD|Add5~35\ $ (GND))) # (!\wrtSD|currentAddress\(26) & (!\wrtSD|Add5~35\ & VCC))
-- \wrtSD|Add5~37\ = CARRY((\wrtSD|currentAddress\(26) & !\wrtSD|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(26),
	datad => VCC,
	cin => \wrtSD|Add5~35\,
	combout => \wrtSD|Add5~36_combout\,
	cout => \wrtSD|Add5~37\);

-- Location: LCCOMB_X34_Y15_N30
\wrtSD|currentAddress[26]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[26]~19_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(26))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(26),
	datac => \wrtSD|Add5~36_combout\,
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[26]~19_combout\);

-- Location: LCCOMB_X33_Y14_N0
\wrtSD|currentAddress[25]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[25]~20_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(25)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|Add5~34_combout\,
	datad => \wrtSD|currentAddress\(25),
	combout => \wrtSD|currentAddress[25]~20_combout\);

-- Location: LCCOMB_X33_Y15_N24
\wrtSD|currentAddress[24]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[24]~21_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(24))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|currentAddress\(24),
	datad => \wrtSD|Add5~32_combout\,
	combout => \wrtSD|currentAddress[24]~21_combout\);

-- Location: LCCOMB_X33_Y15_N26
\wrtSD|currentAddress[23]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[23]~14_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(23))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|currentAddress\(23),
	datad => \wrtSD|Add5~30_combout\,
	combout => \wrtSD|currentAddress[23]~14_combout\);

-- Location: LCCOMB_X33_Y15_N28
\wrtSD|currentAddress[22]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[22]~7_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(22)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add5~28_combout\,
	datac => \wrtSD|currentAddress\(22),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[22]~7_combout\);

-- Location: LCCOMB_X33_Y15_N30
\wrtSD|currentAddress[21]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[21]~3_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(21)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~26_combout\,
	datac => \wrtSD|currentAddress\(21),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[21]~3_combout\);

-- Location: LCCOMB_X34_Y15_N8
\wrtSD|currentAddress[20]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[20]~10_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(20)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~24_combout\,
	datab => \wrtSD|currentAddress\(20),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[20]~10_combout\);

-- Location: LCCOMB_X32_Y16_N2
\wrtSD|currentAddress[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[19]~12_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(19)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add5~22_combout\,
	datac => \wrtSD|currentAddress\(19),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[19]~12_combout\);

-- Location: LCCOMB_X34_Y15_N22
\wrtSD|currentAddress[18]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[18]~4_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(18)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~20_combout\,
	datab => \wrtSD|currentAddress\(18),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[18]~4_combout\);

-- Location: LCCOMB_X34_Y15_N12
\wrtSD|currentAddress[17]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[17]~1_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(17))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(17),
	datac => \wrtSD|Add5~18_combout\,
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[17]~1_combout\);

-- Location: LCCOMB_X33_Y16_N4
\wrtSD|currentAddress[16]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[16]~8_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(16)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add5~16_combout\,
	datac => \wrtSD|currentAddress\(16),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[16]~8_combout\);

-- Location: LCCOMB_X33_Y16_N6
\wrtSD|currentAddress[15]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[15]~11_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(15)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add5~14_combout\,
	datac => \wrtSD|currentAddress\(15),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[15]~11_combout\);

-- Location: LCCOMB_X32_Y16_N6
\wrtSD|currentAddress[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[14]~5_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(14)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~12_combout\,
	datac => \wrtSD|currentAddress\(14),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[14]~5_combout\);

-- Location: LCCOMB_X33_Y16_N0
\wrtSD|currentAddress[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[13]~0_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(13)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add5~10_combout\,
	datac => \wrtSD|currentAddress\(13),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[13]~0_combout\);

-- Location: LCCOMB_X32_Y16_N4
\wrtSD|currentAddress[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[12]~9_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(12)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~8_combout\,
	datac => \wrtSD|currentAddress\(12),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[12]~9_combout\);

-- Location: LCCOMB_X34_Y15_N18
\wrtSD|currentAddress[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[11]~13_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(11))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(11),
	datac => \wrtSD|Add5~6_combout\,
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[11]~13_combout\);

-- Location: LCCOMB_X33_Y16_N2
\wrtSD|currentAddress[10]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[10]~6_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(10)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~4_combout\,
	datac => \wrtSD|currentAddress\(10),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[10]~6_combout\);

-- Location: LCCOMB_X32_Y16_N0
\wrtSD|currentAddress[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[9]~2_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(9)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add5~2_combout\,
	datac => \wrtSD|currentAddress\(9),
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress[9]~2_combout\);

-- Location: LCCOMB_X33_Y16_N8
\wrtSD|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~0_combout\ = \wrtSD|currentAddress~23_combout\ $ (VCC)
-- \wrtSD|Add9~1\ = CARRY(\wrtSD|currentAddress~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress~23_combout\,
	datad => VCC,
	combout => \wrtSD|Add9~0_combout\,
	cout => \wrtSD|Add9~1\);

-- Location: LCCOMB_X33_Y16_N10
\wrtSD|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~2_combout\ = (\wrtSD|currentAddress[9]~2_combout\ & (!\wrtSD|Add9~1\)) # (!\wrtSD|currentAddress[9]~2_combout\ & ((\wrtSD|Add9~1\) # (GND)))
-- \wrtSD|Add9~3\ = CARRY((!\wrtSD|Add9~1\) # (!\wrtSD|currentAddress[9]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[9]~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~1\,
	combout => \wrtSD|Add9~2_combout\,
	cout => \wrtSD|Add9~3\);

-- Location: LCCOMB_X33_Y16_N12
\wrtSD|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~4_combout\ = (\wrtSD|currentAddress[10]~6_combout\ & (\wrtSD|Add9~3\ $ (GND))) # (!\wrtSD|currentAddress[10]~6_combout\ & (!\wrtSD|Add9~3\ & VCC))
-- \wrtSD|Add9~5\ = CARRY((\wrtSD|currentAddress[10]~6_combout\ & !\wrtSD|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[10]~6_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~3\,
	combout => \wrtSD|Add9~4_combout\,
	cout => \wrtSD|Add9~5\);

-- Location: LCCOMB_X33_Y16_N14
\wrtSD|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~6_combout\ = (\wrtSD|currentAddress[11]~13_combout\ & (!\wrtSD|Add9~5\)) # (!\wrtSD|currentAddress[11]~13_combout\ & ((\wrtSD|Add9~5\) # (GND)))
-- \wrtSD|Add9~7\ = CARRY((!\wrtSD|Add9~5\) # (!\wrtSD|currentAddress[11]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[11]~13_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~5\,
	combout => \wrtSD|Add9~6_combout\,
	cout => \wrtSD|Add9~7\);

-- Location: LCCOMB_X33_Y16_N16
\wrtSD|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~8_combout\ = (\wrtSD|currentAddress[12]~9_combout\ & (\wrtSD|Add9~7\ $ (GND))) # (!\wrtSD|currentAddress[12]~9_combout\ & (!\wrtSD|Add9~7\ & VCC))
-- \wrtSD|Add9~9\ = CARRY((\wrtSD|currentAddress[12]~9_combout\ & !\wrtSD|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[12]~9_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~7\,
	combout => \wrtSD|Add9~8_combout\,
	cout => \wrtSD|Add9~9\);

-- Location: LCCOMB_X33_Y16_N18
\wrtSD|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~10_combout\ = (\wrtSD|currentAddress[13]~0_combout\ & (!\wrtSD|Add9~9\)) # (!\wrtSD|currentAddress[13]~0_combout\ & ((\wrtSD|Add9~9\) # (GND)))
-- \wrtSD|Add9~11\ = CARRY((!\wrtSD|Add9~9\) # (!\wrtSD|currentAddress[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[13]~0_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~9\,
	combout => \wrtSD|Add9~10_combout\,
	cout => \wrtSD|Add9~11\);

-- Location: LCCOMB_X33_Y16_N20
\wrtSD|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~12_combout\ = (\wrtSD|currentAddress[14]~5_combout\ & (\wrtSD|Add9~11\ $ (GND))) # (!\wrtSD|currentAddress[14]~5_combout\ & (!\wrtSD|Add9~11\ & VCC))
-- \wrtSD|Add9~13\ = CARRY((\wrtSD|currentAddress[14]~5_combout\ & !\wrtSD|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[14]~5_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~11\,
	combout => \wrtSD|Add9~12_combout\,
	cout => \wrtSD|Add9~13\);

-- Location: LCCOMB_X33_Y16_N22
\wrtSD|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~14_combout\ = (\wrtSD|currentAddress[15]~11_combout\ & (!\wrtSD|Add9~13\)) # (!\wrtSD|currentAddress[15]~11_combout\ & ((\wrtSD|Add9~13\) # (GND)))
-- \wrtSD|Add9~15\ = CARRY((!\wrtSD|Add9~13\) # (!\wrtSD|currentAddress[15]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[15]~11_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~13\,
	combout => \wrtSD|Add9~14_combout\,
	cout => \wrtSD|Add9~15\);

-- Location: LCCOMB_X33_Y16_N24
\wrtSD|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~16_combout\ = (\wrtSD|currentAddress[16]~8_combout\ & (\wrtSD|Add9~15\ $ (GND))) # (!\wrtSD|currentAddress[16]~8_combout\ & (!\wrtSD|Add9~15\ & VCC))
-- \wrtSD|Add9~17\ = CARRY((\wrtSD|currentAddress[16]~8_combout\ & !\wrtSD|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[16]~8_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~15\,
	combout => \wrtSD|Add9~16_combout\,
	cout => \wrtSD|Add9~17\);

-- Location: LCCOMB_X33_Y16_N26
\wrtSD|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~18_combout\ = (\wrtSD|currentAddress[17]~1_combout\ & (!\wrtSD|Add9~17\)) # (!\wrtSD|currentAddress[17]~1_combout\ & ((\wrtSD|Add9~17\) # (GND)))
-- \wrtSD|Add9~19\ = CARRY((!\wrtSD|Add9~17\) # (!\wrtSD|currentAddress[17]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[17]~1_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~17\,
	combout => \wrtSD|Add9~18_combout\,
	cout => \wrtSD|Add9~19\);

-- Location: LCCOMB_X33_Y16_N28
\wrtSD|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~20_combout\ = (\wrtSD|currentAddress[18]~4_combout\ & (\wrtSD|Add9~19\ $ (GND))) # (!\wrtSD|currentAddress[18]~4_combout\ & (!\wrtSD|Add9~19\ & VCC))
-- \wrtSD|Add9~21\ = CARRY((\wrtSD|currentAddress[18]~4_combout\ & !\wrtSD|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[18]~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~19\,
	combout => \wrtSD|Add9~20_combout\,
	cout => \wrtSD|Add9~21\);

-- Location: LCCOMB_X33_Y16_N30
\wrtSD|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~22_combout\ = (\wrtSD|currentAddress[19]~12_combout\ & (!\wrtSD|Add9~21\)) # (!\wrtSD|currentAddress[19]~12_combout\ & ((\wrtSD|Add9~21\) # (GND)))
-- \wrtSD|Add9~23\ = CARRY((!\wrtSD|Add9~21\) # (!\wrtSD|currentAddress[19]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[19]~12_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~21\,
	combout => \wrtSD|Add9~22_combout\,
	cout => \wrtSD|Add9~23\);

-- Location: LCCOMB_X33_Y15_N0
\wrtSD|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~24_combout\ = (\wrtSD|currentAddress[20]~10_combout\ & (\wrtSD|Add9~23\ $ (GND))) # (!\wrtSD|currentAddress[20]~10_combout\ & (!\wrtSD|Add9~23\ & VCC))
-- \wrtSD|Add9~25\ = CARRY((\wrtSD|currentAddress[20]~10_combout\ & !\wrtSD|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[20]~10_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~23\,
	combout => \wrtSD|Add9~24_combout\,
	cout => \wrtSD|Add9~25\);

-- Location: LCCOMB_X33_Y15_N2
\wrtSD|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~26_combout\ = (\wrtSD|currentAddress[21]~3_combout\ & (!\wrtSD|Add9~25\)) # (!\wrtSD|currentAddress[21]~3_combout\ & ((\wrtSD|Add9~25\) # (GND)))
-- \wrtSD|Add9~27\ = CARRY((!\wrtSD|Add9~25\) # (!\wrtSD|currentAddress[21]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[21]~3_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~25\,
	combout => \wrtSD|Add9~26_combout\,
	cout => \wrtSD|Add9~27\);

-- Location: LCCOMB_X33_Y15_N4
\wrtSD|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~28_combout\ = (\wrtSD|currentAddress[22]~7_combout\ & (\wrtSD|Add9~27\ $ (GND))) # (!\wrtSD|currentAddress[22]~7_combout\ & (!\wrtSD|Add9~27\ & VCC))
-- \wrtSD|Add9~29\ = CARRY((\wrtSD|currentAddress[22]~7_combout\ & !\wrtSD|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[22]~7_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~27\,
	combout => \wrtSD|Add9~28_combout\,
	cout => \wrtSD|Add9~29\);

-- Location: LCCOMB_X33_Y15_N6
\wrtSD|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~30_combout\ = (\wrtSD|currentAddress[23]~14_combout\ & (!\wrtSD|Add9~29\)) # (!\wrtSD|currentAddress[23]~14_combout\ & ((\wrtSD|Add9~29\) # (GND)))
-- \wrtSD|Add9~31\ = CARRY((!\wrtSD|Add9~29\) # (!\wrtSD|currentAddress[23]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[23]~14_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~29\,
	combout => \wrtSD|Add9~30_combout\,
	cout => \wrtSD|Add9~31\);

-- Location: LCCOMB_X33_Y15_N8
\wrtSD|Add9~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~32_combout\ = (\wrtSD|currentAddress[24]~21_combout\ & (\wrtSD|Add9~31\ $ (GND))) # (!\wrtSD|currentAddress[24]~21_combout\ & (!\wrtSD|Add9~31\ & VCC))
-- \wrtSD|Add9~33\ = CARRY((\wrtSD|currentAddress[24]~21_combout\ & !\wrtSD|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[24]~21_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~31\,
	combout => \wrtSD|Add9~32_combout\,
	cout => \wrtSD|Add9~33\);

-- Location: LCCOMB_X33_Y15_N10
\wrtSD|Add9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~34_combout\ = (\wrtSD|currentAddress[25]~20_combout\ & (!\wrtSD|Add9~33\)) # (!\wrtSD|currentAddress[25]~20_combout\ & ((\wrtSD|Add9~33\) # (GND)))
-- \wrtSD|Add9~35\ = CARRY((!\wrtSD|Add9~33\) # (!\wrtSD|currentAddress[25]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[25]~20_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~33\,
	combout => \wrtSD|Add9~34_combout\,
	cout => \wrtSD|Add9~35\);

-- Location: LCCOMB_X33_Y15_N12
\wrtSD|Add9~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~36_combout\ = (\wrtSD|currentAddress[26]~19_combout\ & (\wrtSD|Add9~35\ $ (GND))) # (!\wrtSD|currentAddress[26]~19_combout\ & (!\wrtSD|Add9~35\ & VCC))
-- \wrtSD|Add9~37\ = CARRY((\wrtSD|currentAddress[26]~19_combout\ & !\wrtSD|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[26]~19_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~35\,
	combout => \wrtSD|Add9~36_combout\,
	cout => \wrtSD|Add9~37\);

-- Location: LCCOMB_X32_Y15_N14
\wrtSD|Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~38_combout\ = (\wrtSD|currentAddress\(27) & (!\wrtSD|Add5~37\)) # (!\wrtSD|currentAddress\(27) & ((\wrtSD|Add5~37\) # (GND)))
-- \wrtSD|Add5~39\ = CARRY((!\wrtSD|Add5~37\) # (!\wrtSD|currentAddress\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(27),
	datad => VCC,
	cin => \wrtSD|Add5~37\,
	combout => \wrtSD|Add5~38_combout\,
	cout => \wrtSD|Add5~39\);

-- Location: LCCOMB_X33_Y14_N30
\wrtSD|currentAddress[27]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[27]~22_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(27))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|currentAddress\(27),
	datad => \wrtSD|Add5~38_combout\,
	combout => \wrtSD|currentAddress[27]~22_combout\);

-- Location: LCCOMB_X33_Y15_N14
\wrtSD|Add9~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~38_combout\ = (\wrtSD|currentAddress[27]~22_combout\ & (!\wrtSD|Add9~37\)) # (!\wrtSD|currentAddress[27]~22_combout\ & ((\wrtSD|Add9~37\) # (GND)))
-- \wrtSD|Add9~39\ = CARRY((!\wrtSD|Add9~37\) # (!\wrtSD|currentAddress[27]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[27]~22_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~37\,
	combout => \wrtSD|Add9~38_combout\,
	cout => \wrtSD|Add9~39\);

-- Location: LCCOMB_X32_Y15_N16
\wrtSD|Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~40_combout\ = (\wrtSD|currentAddress\(28) & (\wrtSD|Add5~39\ $ (GND))) # (!\wrtSD|currentAddress\(28) & (!\wrtSD|Add5~39\ & VCC))
-- \wrtSD|Add5~41\ = CARRY((\wrtSD|currentAddress\(28) & !\wrtSD|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(28),
	datad => VCC,
	cin => \wrtSD|Add5~39\,
	combout => \wrtSD|Add5~40_combout\,
	cout => \wrtSD|Add5~41\);

-- Location: LCCOMB_X32_Y15_N18
\wrtSD|Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~42_combout\ = (\wrtSD|currentAddress\(29) & (!\wrtSD|Add5~41\)) # (!\wrtSD|currentAddress\(29) & ((\wrtSD|Add5~41\) # (GND)))
-- \wrtSD|Add5~43\ = CARRY((!\wrtSD|Add5~41\) # (!\wrtSD|currentAddress\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(29),
	datad => VCC,
	cin => \wrtSD|Add5~41\,
	combout => \wrtSD|Add5~42_combout\,
	cout => \wrtSD|Add5~43\);

-- Location: LCCOMB_X32_Y15_N20
\wrtSD|Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~44_combout\ = (\wrtSD|currentAddress\(30) & (\wrtSD|Add5~43\ $ (GND))) # (!\wrtSD|currentAddress\(30) & (!\wrtSD|Add5~43\ & VCC))
-- \wrtSD|Add5~45\ = CARRY((\wrtSD|currentAddress\(30) & !\wrtSD|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(30),
	datad => VCC,
	cin => \wrtSD|Add5~43\,
	combout => \wrtSD|Add5~44_combout\,
	cout => \wrtSD|Add5~45\);

-- Location: LCCOMB_X32_Y15_N24
\wrtSD|currentAddress[30]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[30]~15_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(30))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal9~0_combout\,
	datab => \wrtSD|currentAddress\(30),
	datac => \wrtSD|Add5~44_combout\,
	combout => \wrtSD|currentAddress[30]~15_combout\);

-- Location: LCCOMB_X32_Y15_N30
\wrtSD|currentAddress[29]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[29]~16_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(29))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(29),
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Add5~42_combout\,
	combout => \wrtSD|currentAddress[29]~16_combout\);

-- Location: LCCOMB_X32_Y15_N28
\wrtSD|currentAddress[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[28]~17_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|currentAddress\(28)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|Add5~40_combout\,
	datad => \wrtSD|currentAddress\(28),
	combout => \wrtSD|currentAddress[28]~17_combout\);

-- Location: LCCOMB_X33_Y15_N16
\wrtSD|Add9~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~40_combout\ = (\wrtSD|currentAddress[28]~17_combout\ & (\wrtSD|Add9~39\ $ (GND))) # (!\wrtSD|currentAddress[28]~17_combout\ & (!\wrtSD|Add9~39\ & VCC))
-- \wrtSD|Add9~41\ = CARRY((\wrtSD|currentAddress[28]~17_combout\ & !\wrtSD|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[28]~17_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~39\,
	combout => \wrtSD|Add9~40_combout\,
	cout => \wrtSD|Add9~41\);

-- Location: LCCOMB_X33_Y15_N18
\wrtSD|Add9~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~42_combout\ = (\wrtSD|currentAddress[29]~16_combout\ & (!\wrtSD|Add9~41\)) # (!\wrtSD|currentAddress[29]~16_combout\ & ((\wrtSD|Add9~41\) # (GND)))
-- \wrtSD|Add9~43\ = CARRY((!\wrtSD|Add9~41\) # (!\wrtSD|currentAddress[29]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[29]~16_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~41\,
	combout => \wrtSD|Add9~42_combout\,
	cout => \wrtSD|Add9~43\);

-- Location: LCCOMB_X33_Y15_N20
\wrtSD|Add9~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~44_combout\ = (\wrtSD|currentAddress[30]~15_combout\ & (\wrtSD|Add9~43\ $ (GND))) # (!\wrtSD|currentAddress[30]~15_combout\ & (!\wrtSD|Add9~43\ & VCC))
-- \wrtSD|Add9~45\ = CARRY((\wrtSD|currentAddress[30]~15_combout\ & !\wrtSD|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress[30]~15_combout\,
	datad => VCC,
	cin => \wrtSD|Add9~43\,
	combout => \wrtSD|Add9~44_combout\,
	cout => \wrtSD|Add9~45\);

-- Location: LCCOMB_X32_Y15_N22
\wrtSD|Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add5~46_combout\ = \wrtSD|currentAddress\(31) $ (\wrtSD|Add5~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(31),
	cin => \wrtSD|Add5~45\,
	combout => \wrtSD|Add5~46_combout\);

-- Location: LCCOMB_X32_Y15_N26
\wrtSD|currentAddress[31]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[31]~18_combout\ = (\wrtSD|Equal9~0_combout\ & (\wrtSD|currentAddress\(31))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(31),
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Add5~46_combout\,
	combout => \wrtSD|currentAddress[31]~18_combout\);

-- Location: LCCOMB_X33_Y15_N22
\wrtSD|Add9~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add9~46_combout\ = \wrtSD|Add9~45\ $ (\wrtSD|currentAddress[31]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[31]~18_combout\,
	cin => \wrtSD|Add9~45\,
	combout => \wrtSD|Add9~46_combout\);

-- Location: LCCOMB_X34_Y16_N26
\wrtSD|cmd24[16]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|cmd24[16]~0_combout\ = (\wrtSD|Equal9~0_combout\ & ((\wrtSD|cmd24\(16)))) # (!\wrtSD|Equal9~0_combout\ & (\wrtSD|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal9~0_combout\,
	datab => \wrtSD|Add5~0_combout\,
	datac => \wrtSD|cmd24\(16),
	combout => \wrtSD|cmd24[16]~0_combout\);

-- Location: LCCOMB_X33_Y19_N12
\wrtSD|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~12_combout\ = (\wrtSD|Add6~11\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~12_combout\ & VCC))) # (!\wrtSD|Add6~11\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~12_combout\)))))
-- \wrtSD|Add6~13\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~12_combout\ & !\wrtSD|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~12_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~11\,
	combout => \wrtSD|Add6~12_combout\,
	cout => \wrtSD|Add6~13\);

-- Location: LCCOMB_X33_Y19_N14
\wrtSD|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~14_combout\ = (\wrtSD|Add6~13\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~14_combout\)))) # (!\wrtSD|Add6~13\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~14_combout\)) # (GND)))
-- \wrtSD|Add6~15\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~13\) # (!\wrtSD|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~14_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~13\,
	combout => \wrtSD|Add6~14_combout\,
	cout => \wrtSD|Add6~15\);

-- Location: LCCOMB_X33_Y19_N22
\wrtSD|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~22_combout\ = (\wrtSD|Add6~21\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~22_combout\)))) # (!\wrtSD|Add6~21\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~22_combout\)) # (GND)))
-- \wrtSD|Add6~23\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~21\) # (!\wrtSD|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~22_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~21\,
	combout => \wrtSD|Add6~22_combout\,
	cout => \wrtSD|Add6~23\);

-- Location: LCCOMB_X33_Y19_N24
\wrtSD|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~24_combout\ = (\wrtSD|Add6~23\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~24_combout\ & VCC))) # (!\wrtSD|Add6~23\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~24_combout\)))))
-- \wrtSD|Add6~25\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~24_combout\ & !\wrtSD|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~24_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~23\,
	combout => \wrtSD|Add6~24_combout\,
	cout => \wrtSD|Add6~25\);

-- Location: LCCOMB_X33_Y18_N0
\wrtSD|Add6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~32_combout\ = (\wrtSD|Add6~31\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~32_combout\ & VCC))) # (!\wrtSD|Add6~31\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~32_combout\)))))
-- \wrtSD|Add6~33\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~32_combout\ & !\wrtSD|Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~32_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~31\,
	combout => \wrtSD|Add6~32_combout\,
	cout => \wrtSD|Add6~33\);

-- Location: LCCOMB_X33_Y18_N2
\wrtSD|Add6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~34_combout\ = (\wrtSD|Add6~33\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~34_combout\)))) # (!\wrtSD|Add6~33\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~34_combout\)) # (GND)))
-- \wrtSD|Add6~35\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~33\) # (!\wrtSD|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~34_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~33\,
	combout => \wrtSD|Add6~34_combout\,
	cout => \wrtSD|Add6~35\);

-- Location: LCCOMB_X33_Y18_N4
\wrtSD|Add6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~36_combout\ = (\wrtSD|Add6~35\ & (\wrtSD|Add1~36_combout\ & (!\wrtSD|Selector4117~4_combout\ & VCC))) # (!\wrtSD|Add6~35\ & ((((\wrtSD|Add1~36_combout\ & !\wrtSD|Selector4117~4_combout\)))))
-- \wrtSD|Add6~37\ = CARRY((\wrtSD|Add1~36_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~36_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~35\,
	combout => \wrtSD|Add6~36_combout\,
	cout => \wrtSD|Add6~37\);

-- Location: LCCOMB_X33_Y18_N6
\wrtSD|Add6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~38_combout\ = (\wrtSD|Add6~37\ & (((\wrtSD|Selector4117~4_combout\)) # (!\wrtSD|Add1~38_combout\))) # (!\wrtSD|Add6~37\ & (((\wrtSD|Add1~38_combout\ & !\wrtSD|Selector4117~4_combout\)) # (GND)))
-- \wrtSD|Add6~39\ = CARRY(((\wrtSD|Selector4117~4_combout\) # (!\wrtSD|Add6~37\)) # (!\wrtSD|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~38_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~37\,
	combout => \wrtSD|Add6~38_combout\,
	cout => \wrtSD|Add6~39\);

-- Location: LCCOMB_X33_Y18_N8
\wrtSD|Add6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~40_combout\ = (\wrtSD|Add6~39\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~40_combout\ & VCC))) # (!\wrtSD|Add6~39\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~40_combout\)))))
-- \wrtSD|Add6~41\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~40_combout\ & !\wrtSD|Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~40_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~39\,
	combout => \wrtSD|Add6~40_combout\,
	cout => \wrtSD|Add6~41\);

-- Location: LCCOMB_X33_Y18_N10
\wrtSD|Add6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~42_combout\ = (\wrtSD|Add6~41\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~42_combout\)))) # (!\wrtSD|Add6~41\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~42_combout\)) # (GND)))
-- \wrtSD|Add6~43\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~41\) # (!\wrtSD|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~42_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~41\,
	combout => \wrtSD|Add6~42_combout\,
	cout => \wrtSD|Add6~43\);

-- Location: LCCOMB_X33_Y18_N16
\wrtSD|Add6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~48_combout\ = (\wrtSD|Add6~47\ & (\wrtSD|Add1~48_combout\ & (!\wrtSD|Selector4117~4_combout\ & VCC))) # (!\wrtSD|Add6~47\ & ((((\wrtSD|Add1~48_combout\ & !\wrtSD|Selector4117~4_combout\)))))
-- \wrtSD|Add6~49\ = CARRY((\wrtSD|Add1~48_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~48_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~47\,
	combout => \wrtSD|Add6~48_combout\,
	cout => \wrtSD|Add6~49\);

-- Location: LCCOMB_X33_Y18_N18
\wrtSD|Add6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~50_combout\ = (\wrtSD|Add6~49\ & (((\wrtSD|Selector4117~4_combout\)) # (!\wrtSD|Add1~50_combout\))) # (!\wrtSD|Add6~49\ & (((\wrtSD|Add1~50_combout\ & !\wrtSD|Selector4117~4_combout\)) # (GND)))
-- \wrtSD|Add6~51\ = CARRY(((\wrtSD|Selector4117~4_combout\) # (!\wrtSD|Add6~49\)) # (!\wrtSD|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~50_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~49\,
	combout => \wrtSD|Add6~50_combout\,
	cout => \wrtSD|Add6~51\);

-- Location: LCCOMB_X33_Y18_N22
\wrtSD|Add6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~54_combout\ = (\wrtSD|Add6~53\ & (((\wrtSD|Selector4117~4_combout\)) # (!\wrtSD|Add1~54_combout\))) # (!\wrtSD|Add6~53\ & (((\wrtSD|Add1~54_combout\ & !\wrtSD|Selector4117~4_combout\)) # (GND)))
-- \wrtSD|Add6~55\ = CARRY(((\wrtSD|Selector4117~4_combout\) # (!\wrtSD|Add6~53\)) # (!\wrtSD|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~54_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~53\,
	combout => \wrtSD|Add6~54_combout\,
	cout => \wrtSD|Add6~55\);

-- Location: LCCOMB_X33_Y18_N24
\wrtSD|Add6~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~56_combout\ = (\wrtSD|Add6~55\ & (\wrtSD|Add1~56_combout\ & (!\wrtSD|Selector4117~4_combout\ & VCC))) # (!\wrtSD|Add6~55\ & ((((\wrtSD|Add1~56_combout\ & !\wrtSD|Selector4117~4_combout\)))))
-- \wrtSD|Add6~57\ = CARRY((\wrtSD|Add1~56_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add6~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~56_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~55\,
	combout => \wrtSD|Add6~56_combout\,
	cout => \wrtSD|Add6~57\);

-- Location: LCCOMB_X36_Y19_N4
\wrtSD|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~2_combout\ = (!\wrtSD|state\(13) & (!\wrtSD|state\(12) & (!\wrtSD|state\(14) & !\wrtSD|state\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(13),
	datab => \wrtSD|state\(12),
	datac => \wrtSD|state\(14),
	datad => \wrtSD|state\(11),
	combout => \wrtSD|Equal2~2_combout\);

-- Location: LCCOMB_X34_Y14_N12
\wrtSD|SD_CMD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~3_combout\ = (!\wrtSD|bitsGathered\(3) & (\wrtSD|bitsGathered\(4) & (!\wrtSD|commandSent~regout\ & \wrtSD|SD_CMD~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|commandSent~regout\,
	datad => \wrtSD|SD_CMD~2_combout\,
	combout => \wrtSD|SD_CMD~3_combout\);

-- Location: LCFF_X34_Y14_N31
\wrtSD|dataGathered[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(3));

-- Location: LCFF_X34_Y14_N17
\wrtSD|dataGathered[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(1));

-- Location: LCCOMB_X34_Y14_N6
\wrtSD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux4~0_combout\ = (!\wrtSD|bitsGathered\(0) & ((\wrtSD|bitsGathered\(1) & ((\wrtSD|dataGathered\(3)))) # (!\wrtSD|bitsGathered\(1) & (\wrtSD|dataGathered\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(0),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|dataGathered\(1),
	datad => \wrtSD|dataGathered\(3),
	combout => \wrtSD|Mux4~0_combout\);

-- Location: LCFF_X34_Y14_N25
\wrtSD|dataGathered[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(2));

-- Location: LCCOMB_X34_Y14_N10
\wrtSD|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux4~1_combout\ = (\wrtSD|Mux4~0_combout\) # ((\wrtSD|bitsGathered\(0) & (\wrtSD|bitsGathered\(1) & \wrtSD|dataGathered\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(0),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|dataGathered\(2),
	datad => \wrtSD|Mux4~0_combout\,
	combout => \wrtSD|Mux4~1_combout\);

-- Location: LCFF_X31_Y14_N21
\wrtSD|dataGathered[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(5));

-- Location: LCFF_X31_Y14_N13
\wrtSD|dataGathered[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(4));

-- Location: LCCOMB_X32_Y13_N8
\wrtSD|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~1_combout\ = (\wrtSD|Add4~4_combout\ & (\wrtSD|Add4~6_combout\ & (\wrtSD|Add4~0_combout\ & \wrtSD|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~4_combout\,
	datab => \wrtSD|Add4~6_combout\,
	datac => \wrtSD|Add4~0_combout\,
	datad => \wrtSD|Add4~2_combout\,
	combout => \wrtSD|LessThan1~1_combout\);

-- Location: LCFF_X32_Y12_N9
\wrtSD|bitsGathered[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4211~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(22));

-- Location: LCCOMB_X32_Y12_N12
\wrtSD|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~6_combout\ = (\wrtSD|Add4~42_combout\) # (\wrtSD|Add4~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Add4~42_combout\,
	datac => \wrtSD|Add4~40_combout\,
	combout => \wrtSD|LessThan1~6_combout\);

-- Location: LCFF_X34_Y12_N13
\wrtSD|bitsGathered[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4202~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(31));

-- Location: LCCOMB_X33_Y17_N12
\wrtSD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~0_combout\ = (\wrtSD|bitNum\(1) & ((\wrtSD|bitNum\(0) & ((\wrtSD|currentAddress\(24)))) # (!\wrtSD|bitNum\(0) & (\wrtSD|currentAddress\(25))))) # (!\wrtSD|bitNum\(1) & (((!\wrtSD|bitNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|currentAddress\(25),
	datac => \wrtSD|bitNum\(0),
	datad => \wrtSD|currentAddress\(24),
	combout => \wrtSD|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y17_N14
\wrtSD|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~1_combout\ = (\wrtSD|Mux3~0_combout\ & ((\wrtSD|currentAddress\(27)) # ((\wrtSD|bitNum\(1))))) # (!\wrtSD|Mux3~0_combout\ & (((!\wrtSD|bitNum\(1) & \wrtSD|currentAddress\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Mux3~0_combout\,
	datab => \wrtSD|currentAddress\(27),
	datac => \wrtSD|bitNum\(1),
	datad => \wrtSD|currentAddress\(26),
	combout => \wrtSD|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y15_N30
\wrtSD|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~2_combout\ = (\wrtSD|bitNum\(1) & ((\wrtSD|bitNum\(0) & (\wrtSD|currentAddress\(28))) # (!\wrtSD|bitNum\(0) & ((\wrtSD|currentAddress\(29)))))) # (!\wrtSD|bitNum\(1) & (((!\wrtSD|bitNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(28),
	datab => \wrtSD|bitNum\(1),
	datac => \wrtSD|currentAddress\(29),
	datad => \wrtSD|bitNum\(0),
	combout => \wrtSD|Mux3~2_combout\);

-- Location: LCCOMB_X34_Y15_N28
\wrtSD|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~3_combout\ = (\wrtSD|bitNum\(1) & (\wrtSD|Mux3~2_combout\)) # (!\wrtSD|bitNum\(1) & ((\wrtSD|Mux3~2_combout\ & (\wrtSD|currentAddress\(31))) # (!\wrtSD|Mux3~2_combout\ & ((\wrtSD|currentAddress\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|Mux3~2_combout\,
	datac => \wrtSD|currentAddress\(31),
	datad => \wrtSD|currentAddress\(30),
	combout => \wrtSD|Mux3~3_combout\);

-- Location: LCCOMB_X33_Y17_N4
\wrtSD|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~4_combout\ = (\wrtSD|bitNum\(0) & ((\wrtSD|bitNum\(2) $ (!\wrtSD|bitNum\(3))))) # (!\wrtSD|bitNum\(0) & (\wrtSD|bitNum\(2) & ((\wrtSD|bitNum\(3)) # (!\wrtSD|bitNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|bitNum\(0),
	datac => \wrtSD|bitNum\(2),
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Mux3~4_combout\);

-- Location: LCCOMB_X33_Y17_N6
\wrtSD|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~5_combout\ = (\wrtSD|bitNum\(3) & ((\wrtSD|Mux3~4_combout\ & (\wrtSD|Mux3~1_combout\)) # (!\wrtSD|Mux3~4_combout\ & ((\wrtSD|Mux3~3_combout\))))) # (!\wrtSD|bitNum\(3) & (((\wrtSD|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(3),
	datab => \wrtSD|Mux3~1_combout\,
	datac => \wrtSD|Mux3~4_combout\,
	datad => \wrtSD|Mux3~3_combout\,
	combout => \wrtSD|Mux3~5_combout\);

-- Location: LCCOMB_X33_Y17_N24
\wrtSD|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~6_combout\ = (\wrtSD|bitNum\(2) & ((\wrtSD|bitNum\(3) & (\wrtSD|currentAddress\(9))) # (!\wrtSD|bitNum\(3) & ((\wrtSD|currentAddress\(17)))))) # (!\wrtSD|bitNum\(2) & (((!\wrtSD|bitNum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(9),
	datab => \wrtSD|currentAddress\(17),
	datac => \wrtSD|bitNum\(2),
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Mux3~6_combout\);

-- Location: LCCOMB_X33_Y17_N2
\wrtSD|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~7_combout\ = (\wrtSD|bitNum\(2) & (((\wrtSD|Mux3~6_combout\)))) # (!\wrtSD|bitNum\(2) & ((\wrtSD|Mux3~6_combout\ & (\wrtSD|currentAddress\(21))) # (!\wrtSD|Mux3~6_combout\ & ((\wrtSD|currentAddress\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(2),
	datab => \wrtSD|currentAddress\(21),
	datac => \wrtSD|Mux3~6_combout\,
	datad => \wrtSD|currentAddress\(13),
	combout => \wrtSD|Mux3~7_combout\);

-- Location: LCCOMB_X33_Y17_N16
\wrtSD|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~8_combout\ = (\wrtSD|bitNum\(2) & (((\wrtSD|currentAddress\(10) & \wrtSD|bitNum\(3))))) # (!\wrtSD|bitNum\(2) & ((\wrtSD|currentAddress\(14)) # ((!\wrtSD|bitNum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(14),
	datab => \wrtSD|currentAddress\(10),
	datac => \wrtSD|bitNum\(2),
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Mux3~8_combout\);

-- Location: LCCOMB_X33_Y17_N30
\wrtSD|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~9_combout\ = (\wrtSD|Mux3~8_combout\ & (((\wrtSD|currentAddress\(22)) # (\wrtSD|bitNum\(3))))) # (!\wrtSD|Mux3~8_combout\ & (\wrtSD|currentAddress\(18) & ((!\wrtSD|bitNum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(18),
	datab => \wrtSD|currentAddress\(22),
	datac => \wrtSD|Mux3~8_combout\,
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Mux3~9_combout\);

-- Location: LCCOMB_X34_Y16_N18
\wrtSD|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~10_combout\ = (\wrtSD|bitNum\(2) & (\wrtSD|cmd24\(16) & ((\wrtSD|bitNum\(3))))) # (!\wrtSD|bitNum\(2) & (((\wrtSD|currentAddress\(12)) # (!\wrtSD|bitNum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(2),
	datab => \wrtSD|cmd24\(16),
	datac => \wrtSD|currentAddress\(12),
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Mux3~10_combout\);

-- Location: LCCOMB_X34_Y16_N0
\wrtSD|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~11_combout\ = (\wrtSD|bitNum\(3) & (((\wrtSD|Mux3~10_combout\)))) # (!\wrtSD|bitNum\(3) & ((\wrtSD|Mux3~10_combout\ & ((\wrtSD|currentAddress\(20)))) # (!\wrtSD|Mux3~10_combout\ & (\wrtSD|currentAddress\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(16),
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|currentAddress\(20),
	datad => \wrtSD|Mux3~10_combout\,
	combout => \wrtSD|Mux3~11_combout\);

-- Location: LCCOMB_X33_Y17_N28
\wrtSD|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~12_combout\ = (\wrtSD|bitNum\(1) & (((\wrtSD|bitNum\(0) & \wrtSD|Mux3~11_combout\)))) # (!\wrtSD|bitNum\(1) & ((\wrtSD|Mux3~9_combout\) # ((!\wrtSD|bitNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|Mux3~9_combout\,
	datac => \wrtSD|bitNum\(0),
	datad => \wrtSD|Mux3~11_combout\,
	combout => \wrtSD|Mux3~12_combout\);

-- Location: LCCOMB_X33_Y17_N22
\wrtSD|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~13_combout\ = (\wrtSD|bitNum\(3) & (\wrtSD|currentAddress\(11) & (\wrtSD|bitNum\(2)))) # (!\wrtSD|bitNum\(3) & (((\wrtSD|currentAddress\(19)) # (!\wrtSD|bitNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(11),
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|bitNum\(2),
	datad => \wrtSD|currentAddress\(19),
	combout => \wrtSD|Mux3~13_combout\);

-- Location: LCCOMB_X33_Y17_N20
\wrtSD|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~14_combout\ = (\wrtSD|bitNum\(2) & (((\wrtSD|Mux3~13_combout\)))) # (!\wrtSD|bitNum\(2) & ((\wrtSD|Mux3~13_combout\ & ((\wrtSD|currentAddress\(23)))) # (!\wrtSD|Mux3~13_combout\ & (\wrtSD|currentAddress\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress\(15),
	datab => \wrtSD|currentAddress\(23),
	datac => \wrtSD|bitNum\(2),
	datad => \wrtSD|Mux3~13_combout\,
	combout => \wrtSD|Mux3~14_combout\);

-- Location: LCCOMB_X33_Y17_N10
\wrtSD|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux3~15_combout\ = (\wrtSD|Mux3~12_combout\ & ((\wrtSD|Mux3~14_combout\) # ((\wrtSD|bitNum\(0))))) # (!\wrtSD|Mux3~12_combout\ & (((!\wrtSD|bitNum\(0) & \wrtSD|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Mux3~14_combout\,
	datab => \wrtSD|Mux3~12_combout\,
	datac => \wrtSD|bitNum\(0),
	datad => \wrtSD|Mux3~7_combout\,
	combout => \wrtSD|Mux3~15_combout\);

-- Location: LCCOMB_X36_Y17_N6
\wrtSD|Selector4105~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~9_combout\ = (\wrtSD|bitNum\(4) & (!\wrtSD|bitNum\(5))) # (!\wrtSD|bitNum\(4) & ((\wrtSD|bitNum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(5),
	datac => \wrtSD|bitNum\(3),
	datad => \wrtSD|bitNum\(4),
	combout => \wrtSD|Selector4105~9_combout\);

-- Location: LCCOMB_X35_Y19_N20
\wrtSD|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal4~0_combout\ = (!\wrtSD|state\(0) & !\wrtSD|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|state\(0),
	datad => \wrtSD|state\(2),
	combout => \wrtSD|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y18_N12
\wrtSD|SD_CMD~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~8_combout\ = (\wrtSD|Equal2~11_combout\ & ((\wrtSD|state\(0) $ (\wrtSD|state\(1))) # (!\wrtSD|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~11_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(1),
	datad => \wrtSD|state\(2),
	combout => \wrtSD|SD_CMD~8_combout\);

-- Location: LCFF_X36_Y19_N7
\wrtSD|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4178~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(0));

-- Location: LCFF_X36_Y19_N11
\wrtSD|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4177~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(1));

-- Location: LCFF_X36_Y19_N25
\wrtSD|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4176~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(2));

-- Location: LCFF_X36_Y19_N19
\wrtSD|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4173~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(5));

-- Location: LCCOMB_X37_Y16_N14
\wrtSD|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~1_combout\ = (!\wrtSD|state\(4) & (!\wrtSD|state\(3) & (!\wrtSD|state\(2) & \wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~1_combout\);

-- Location: LCCOMB_X37_Y16_N12
\wrtSD|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~4_combout\ = (!\wrtSD|state\(4) & (\wrtSD|state\(3) & (!\wrtSD|state\(2) & !\wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~4_combout\);

-- Location: LCCOMB_X37_Y16_N4
\wrtSD|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~6_combout\ = (!\wrtSD|state\(4) & (\wrtSD|state\(3) & (\wrtSD|state\(2) & !\wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~6_combout\);

-- Location: LCCOMB_X37_Y16_N26
\wrtSD|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~7_combout\ = (!\wrtSD|state\(4) & (\wrtSD|state\(3) & (\wrtSD|state\(2) & \wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~7_combout\);

-- Location: LCCOMB_X34_Y13_N20
\wrtSD|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~3_combout\ = (\wrtSD|bitsGathered\(0)) # ((\wrtSD|bitsGathered\(2)) # ((!\wrtSD|bitsGathered\(3)) # (!\wrtSD|bitsGathered\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(0),
	datab => \wrtSD|bitsGathered\(2),
	datac => \wrtSD|bitsGathered\(1),
	datad => \wrtSD|bitsGathered\(3),
	combout => \wrtSD|LessThan0~3_combout\);

-- Location: LCCOMB_X35_Y17_N6
\wrtSD|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal12~0_combout\ = (\wrtSD|Equal2~11_combout\ & (\wrtSD|Selector4154~1_combout\ & (\wrtSD|state\(1) & !\wrtSD|Selector4170~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~11_combout\,
	datab => \wrtSD|Selector4154~1_combout\,
	datac => \wrtSD|state\(1),
	datad => \wrtSD|Selector4170~0_combout\,
	combout => \wrtSD|Equal12~0_combout\);

-- Location: LCFF_X36_Y20_N11
\wrtSD|bitNum[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(7));

-- Location: LCFF_X34_Y20_N21
\wrtSD|bitNum[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(18));

-- Location: LCFF_X34_Y20_N17
\wrtSD|bitNum[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(21));

-- Location: LCCOMB_X35_Y18_N16
\wrtSD|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~7_combout\ = (\wrtSD|bitNum\(24)) # ((\wrtSD|bitNum\(26)) # ((\wrtSD|bitNum\(25)) # (\wrtSD|bitNum\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(24),
	datab => \wrtSD|bitNum\(26),
	datac => \wrtSD|bitNum\(25),
	datad => \wrtSD|bitNum\(27),
	combout => \wrtSD|Equal1~7_combout\);

-- Location: LCFF_X34_Y20_N25
\wrtSD|bitNum[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(28));

-- Location: LCCOMB_X35_Y19_N6
\wrtSD|Selector4117~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~0_combout\ = (\wrtSD|commandSent~regout\) # ((!\wrtSD|Equal1~4_combout\ & (!\wrtSD|Equal1~9_combout\ & !\wrtSD|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|Equal1~4_combout\,
	datac => \wrtSD|Equal1~9_combout\,
	datad => \wrtSD|Equal1~1_combout\,
	combout => \wrtSD|Selector4117~0_combout\);

-- Location: LCCOMB_X35_Y16_N20
\wrtSD|responseFromSD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~1_combout\ = (\wrtSD|Selector4117~4_combout\ & (!\wrtSD|Selector4117~5_combout\)) # (!\wrtSD|Selector4117~4_combout\ & (((\wrtSD|Add1~0_combout\) # (\wrtSD|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Selector4117~5_combout\,
	datac => \wrtSD|Add1~0_combout\,
	datad => \wrtSD|Add1~4_combout\,
	combout => \wrtSD|responseFromSD~1_combout\);

-- Location: LCFF_X35_Y16_N9
\wrtSD|responseFromSD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~5_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(2));

-- Location: LCCOMB_X35_Y16_N8
\wrtSD|responseFromSD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~5_combout\ = (\wrtSD|Selector4136~4_combout\ & (((\wrtSD|responseFromSD\(2))))) # (!\wrtSD|Selector4136~4_combout\ & ((\wrtSD|Decoder2~6_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~6_combout\ & 
-- ((\wrtSD|responseFromSD\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4136~4_combout\,
	datab => \SD_DAT~combout\,
	datac => \wrtSD|responseFromSD\(2),
	datad => \wrtSD|Decoder2~6_combout\,
	combout => \wrtSD|responseFromSD~5_combout\);

-- Location: LCCOMB_X34_Y17_N10
\wrtSD|Decoder2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~7_combout\ = (!\wrtSD|Add1~6_combout\ & (!\wrtSD|Add1~8_combout\ & (!\wrtSD|Add1~10_combout\ & \wrtSD|Decoder2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~6_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datac => \wrtSD|Add1~10_combout\,
	datad => \wrtSD|Decoder2~10_combout\,
	combout => \wrtSD|Decoder2~7_combout\);

-- Location: LCCOMB_X35_Y20_N6
\wrtSD|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~5_combout\ = (!\wrtSD|Add1~30_combout\ & (!\wrtSD|Add1~32_combout\ & (!\wrtSD|Add1~34_combout\ & !\wrtSD|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~30_combout\,
	datab => \wrtSD|Add1~32_combout\,
	datac => \wrtSD|Add1~34_combout\,
	datad => \wrtSD|Add1~36_combout\,
	combout => \wrtSD|LessThan2~5_combout\);

-- Location: LCCOMB_X35_Y17_N26
\wrtSD|state[27]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[27]~44_combout\ = (\wrtSD|Selector4168~1_combout\ & (\wrtSD|Equal2~11_combout\ & (!\wrtSD|Selector4169~0_combout\ & \wrtSD|Selector4170~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4168~1_combout\,
	datab => \wrtSD|Equal2~11_combout\,
	datac => \wrtSD|Selector4169~0_combout\,
	datad => \wrtSD|Selector4170~0_combout\,
	combout => \wrtSD|state[27]~44_combout\);

-- Location: LCCOMB_X34_Y16_N8
\wrtSD|state[27]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[27]~45_combout\ = (\wrtSD|state[27]~44_combout\ & !\wrtSD|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|state[27]~44_combout\,
	datad => \wrtSD|process_0~0_combout\,
	combout => \wrtSD|state[27]~45_combout\);

-- Location: LCCOMB_X36_Y18_N22
\wrtSD|Selector4106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4106~0_combout\ = (\wrtSD|SD_CMD~8_combout\ & (((\wrtSD|Equal0~0_combout\ & \wrtSD|Equal0~1_combout\)) # (!\wrtSD|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal0~0_combout\,
	datab => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|Equal0~1_combout\,
	datad => \wrtSD|SD_CMD~8_combout\,
	combout => \wrtSD|Selector4106~0_combout\);

-- Location: LCCOMB_X35_Y17_N10
\wrtSD|Selector4106~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4106~1_combout\ = (\wrtSD|commandSent~regout\ & ((\wrtSD|Equal8~0_combout\) # ((!\wrtSD|Selector4106~0_combout\)))) # (!\wrtSD|commandSent~regout\ & (\wrtSD|Equal8~0_combout\ & (\wrtSD|LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|LessThan1~10_combout\,
	datad => \wrtSD|Selector4106~0_combout\,
	combout => \wrtSD|Selector4106~1_combout\);

-- Location: LCCOMB_X35_Y17_N4
\wrtSD|Selector4106~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4106~2_combout\ = (\wrtSD|Selector4106~1_combout\) # ((!\wrtSD|WideNor0~0_combout\ & \wrtSD|Selector4117~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|WideNor0~0_combout\,
	datac => \wrtSD|Selector4117~0_combout\,
	datad => \wrtSD|Selector4106~1_combout\,
	combout => \wrtSD|Selector4106~2_combout\);

-- Location: LCCOMB_X34_Y17_N4
\wrtSD|bitsGathered[19]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitsGathered[19]~1_combout\ = (((!\wrtSD|state\(1) & \wrtSD|state\(0))) # (!\wrtSD|Equal2~11_combout\)) # (!\wrtSD|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal2~11_combout\,
	combout => \wrtSD|bitsGathered[19]~1_combout\);

-- Location: LCCOMB_X32_Y14_N14
\wrtSD|Selector4229~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4229~0_combout\ = (\wrtSD|Add3~8_combout\ & (!\wrtSD|LessThan0~10_combout\ & !\wrtSD|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~8_combout\,
	datac => \wrtSD|LessThan0~10_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4229~0_combout\);

-- Location: LCCOMB_X34_Y14_N4
\wrtSD|Selector4197~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4197~1_combout\ = (\wrtSD|bitsGathered\(2) & (\wrtSD|bitsGathered\(4) & (!\wrtSD|bitsGathered\(3) & \wrtSD|Selector4197~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(2),
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|bitsGathered\(3),
	datad => \wrtSD|Selector4197~0_combout\,
	combout => \wrtSD|Selector4197~1_combout\);

-- Location: LCCOMB_X34_Y14_N30
\wrtSD|dataGathered[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[3]~0_combout\ = (\wrtSD|Selector4197~1_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4197~1_combout\ & ((\wrtSD|Selector4154~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4154~0_combout\ & 
-- ((\wrtSD|dataGathered\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~10_combout\,
	datab => \wrtSD|Selector4197~1_combout\,
	datac => \wrtSD|dataGathered\(3),
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|dataGathered[3]~0_combout\);

-- Location: LCCOMB_X34_Y14_N18
\wrtSD|Selector4197~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4197~2_combout\ = (\wrtSD|bitsGathered\(4) & \wrtSD|Selector4197~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(4),
	datad => \wrtSD|Selector4197~0_combout\,
	combout => \wrtSD|Selector4197~2_combout\);

-- Location: LCCOMB_X34_Y14_N20
\wrtSD|Selector4199~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4199~0_combout\ = (\wrtSD|bitsGathered\(2) & (!\wrtSD|bitsGathered\(1) & (!\wrtSD|bitsGathered\(3) & \wrtSD|Selector4197~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(2),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|bitsGathered\(3),
	datad => \wrtSD|Selector4197~2_combout\,
	combout => \wrtSD|Selector4199~0_combout\);

-- Location: LCCOMB_X34_Y14_N16
\wrtSD|dataGathered[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[1]~1_combout\ = (\wrtSD|Selector4199~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4199~0_combout\ & ((\wrtSD|Selector4154~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4154~0_combout\ & 
-- ((\wrtSD|dataGathered\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~10_combout\,
	datab => \wrtSD|Selector4199~0_combout\,
	datac => \wrtSD|dataGathered\(1),
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|dataGathered[1]~1_combout\);

-- Location: LCCOMB_X34_Y14_N14
\wrtSD|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideOr0~0_combout\ = ((\wrtSD|bitsGathered\(3)) # ((\wrtSD|bitsGathered\(1) & !\wrtSD|bitsGathered\(0)))) # (!\wrtSD|bitsGathered\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(2),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|bitsGathered\(3),
	datad => \wrtSD|bitsGathered\(0),
	combout => \wrtSD|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y14_N28
\wrtSD|Selector4198~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4198~0_combout\ = (\wrtSD|Selector4154~0_combout\) # ((\wrtSD|bitsGathered\(4) & (!\wrtSD|WideOr0~0_combout\ & \wrtSD|Selector4197~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4154~0_combout\,
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|WideOr0~0_combout\,
	datad => \wrtSD|Selector4197~0_combout\,
	combout => \wrtSD|Selector4198~0_combout\);

-- Location: LCCOMB_X34_Y14_N24
\wrtSD|dataGathered[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[2]~2_combout\ = (\wrtSD|Selector4198~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4198~0_combout\ & ((\wrtSD|dataGathered\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|dataGathered\(2),
	datad => \wrtSD|Selector4198~0_combout\,
	combout => \wrtSD|dataGathered[2]~2_combout\);

-- Location: LCCOMB_X31_Y14_N4
\wrtSD|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideOr3~0_combout\ = (\wrtSD|bitsGathered\(3)) # (((\wrtSD|bitsGathered\(1) & !\wrtSD|bitsGathered\(2))) # (!\wrtSD|bitsGathered\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|bitsGathered\(2),
	datad => \wrtSD|bitsGathered\(4),
	combout => \wrtSD|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y14_N6
\wrtSD|Selector4195~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4195~0_combout\ = (\wrtSD|Selector4154~0_combout\) # ((!\wrtSD|WideOr3~0_combout\ & \wrtSD|Selector4197~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|WideOr3~0_combout\,
	datac => \wrtSD|Selector4197~0_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4195~0_combout\);

-- Location: LCCOMB_X31_Y14_N20
\wrtSD|dataGathered[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[5]~3_combout\ = (\wrtSD|Selector4195~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4195~0_combout\ & ((\wrtSD|dataGathered\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|dataGathered\(5),
	datad => \wrtSD|Selector4195~0_combout\,
	combout => \wrtSD|dataGathered[5]~3_combout\);

-- Location: LCCOMB_X31_Y14_N24
\wrtSD|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideOr4~0_combout\ = (\wrtSD|bitsGathered\(3)) # ((\wrtSD|bitsGathered\(1) & (!\wrtSD|bitsGathered\(2) & !\wrtSD|bitsGathered\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|bitsGathered\(2),
	datad => \wrtSD|bitsGathered\(0),
	combout => \wrtSD|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y14_N8
\wrtSD|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideOr2~0_combout\ = (\wrtSD|bitsGathered\(3)) # ((!\wrtSD|bitsGathered\(2) & ((\wrtSD|bitsGathered\(1)) # (!\wrtSD|bitsGathered\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datab => \wrtSD|bitsGathered\(1),
	datac => \wrtSD|bitsGathered\(2),
	datad => \wrtSD|bitsGathered\(0),
	combout => \wrtSD|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\wrtSD|Selector4196~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4196~0_combout\ = (\wrtSD|Selector4154~0_combout\) # ((\wrtSD|Selector4197~0_combout\ & (\wrtSD|bitsGathered\(4) & !\wrtSD|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4197~0_combout\,
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|WideOr2~0_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4196~0_combout\);

-- Location: LCCOMB_X31_Y14_N12
\wrtSD|dataGathered[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[4]~5_combout\ = (\wrtSD|Selector4196~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4196~0_combout\ & ((\wrtSD|dataGathered\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|dataGathered\(4),
	datad => \wrtSD|Selector4196~0_combout\,
	combout => \wrtSD|dataGathered[4]~5_combout\);

-- Location: LCCOMB_X32_Y12_N8
\wrtSD|Selector4211~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4211~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~44_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~44_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add3~44_combout\,
	combout => \wrtSD|Selector4211~0_combout\);

-- Location: LCCOMB_X34_Y12_N12
\wrtSD|Selector4202~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4202~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~62_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~62_combout\,
	datab => \wrtSD|bitsGathered[19]~0_combout\,
	datac => \wrtSD|Add3~62_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4202~0_combout\);

-- Location: LCFF_X34_Y16_N3
\wrtSD|currentAddress[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|currentAddress~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|currentAddress\(8));

-- Location: LCCOMB_X34_Y16_N12
\wrtSD|currentAddress~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress~23_combout\ = (\wrtSD|Equal9~0_combout\ & (!\wrtSD|currentAddress\(8))) # (!\wrtSD|Equal9~0_combout\ & ((\wrtSD|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|currentAddress\(8),
	datac => \wrtSD|Add5~0_combout\,
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|currentAddress~23_combout\);

-- Location: LCCOMB_X34_Y16_N30
\wrtSD|cmd24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|cmd24~1_combout\ = (\wrtSD|replyStarted~regout\ & !\wrtSD|responseFromSD~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|replyStarted~regout\,
	datac => \wrtSD|responseFromSD~7_combout\,
	combout => \wrtSD|cmd24~1_combout\);

-- Location: LCCOMB_X34_Y16_N16
\wrtSD|currentAddress~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress~24_combout\ = (\wrtSD|commandSent~regout\ & (\wrtSD|cmd24~1_combout\ & (\wrtSD|state[27]~45_combout\ & !\wrtSD|LessThan2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|cmd24~1_combout\,
	datac => \wrtSD|state[27]~45_combout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|currentAddress~24_combout\);

-- Location: LCCOMB_X34_Y16_N22
\wrtSD|cmd24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|cmd24~2_combout\ = (\wrtSD|state[27]~44_combout\ & (!\wrtSD|process_0~0_combout\ & (!\wrtSD|LessThan2~11_combout\ & \wrtSD|cmd24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state[27]~44_combout\,
	datab => \wrtSD|process_0~0_combout\,
	datac => \wrtSD|LessThan2~11_combout\,
	datad => \wrtSD|cmd24~1_combout\,
	combout => \wrtSD|cmd24~2_combout\);

-- Location: LCCOMB_X34_Y16_N24
\wrtSD|cmd24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|cmd24~3_combout\ = (\wrtSD|cmd24~2_combout\ & (\wrtSD|Add9~0_combout\)) # (!\wrtSD|cmd24~2_combout\ & ((\wrtSD|cmd24[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add9~0_combout\,
	datab => \wrtSD|cmd24[16]~0_combout\,
	datad => \wrtSD|cmd24~2_combout\,
	combout => \wrtSD|cmd24~3_combout\);

-- Location: LCCOMB_X36_Y19_N6
\wrtSD|Selector4178~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4178~0_combout\ = (!\wrtSD|Selector4172~0_combout\ & \wrtSD|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4172~0_combout\,
	datac => \wrtSD|Add0~0_combout\,
	combout => \wrtSD|Selector4178~0_combout\);

-- Location: LCCOMB_X36_Y19_N24
\wrtSD|Selector4176~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4176~0_combout\ = (\wrtSD|Add0~4_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add0~4_combout\,
	datac => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4176~0_combout\);

-- Location: LCCOMB_X36_Y20_N10
\wrtSD|bitNum~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~13_combout\ = (\wrtSD|bitNum~39_combout\ & (\wrtSD|Add1~14_combout\ & (\wrtSD|bitNum~12_combout\))) # (!\wrtSD|bitNum~39_combout\ & ((\wrtSD|Add6~14_combout\) # ((\wrtSD|Add1~14_combout\ & \wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum~39_combout\,
	datab => \wrtSD|Add1~14_combout\,
	datac => \wrtSD|bitNum~12_combout\,
	datad => \wrtSD|Add6~14_combout\,
	combout => \wrtSD|bitNum~13_combout\);

-- Location: LCCOMB_X34_Y20_N20
\wrtSD|bitNum~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~24_combout\ = (\wrtSD|Add1~36_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~36_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~36_combout\ & (\wrtSD|Add6~36_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~36_combout\,
	datab => \wrtSD|Add6~36_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~24_combout\);

-- Location: LCCOMB_X34_Y20_N16
\wrtSD|bitNum~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~27_combout\ = (\wrtSD|Add1~42_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~42_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~42_combout\ & (\wrtSD|Add6~42_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~42_combout\,
	datab => \wrtSD|Add6~42_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~27_combout\);

-- Location: LCCOMB_X34_Y20_N24
\wrtSD|bitNum~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~34_combout\ = (\wrtSD|Add1~56_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~56_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~56_combout\ & (\wrtSD|Add6~56_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~56_combout\,
	datab => \wrtSD|Add6~56_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~34_combout\);

-- Location: LCCOMB_X34_Y16_N2
\wrtSD|currentAddress~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress~25_combout\ = (\wrtSD|commandSent~regout\ & ((\wrtSD|cmd24~2_combout\ & (!\wrtSD|Add9~0_combout\)) # (!\wrtSD|cmd24~2_combout\ & ((!\wrtSD|currentAddress~23_combout\))))) # (!\wrtSD|commandSent~regout\ & 
-- (((!\wrtSD|currentAddress~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add9~0_combout\,
	datab => \wrtSD|currentAddress~23_combout\,
	datac => \wrtSD|commandSent~regout\,
	datad => \wrtSD|cmd24~2_combout\,
	combout => \wrtSD|currentAddress~25_combout\);

-- Location: LCCOMB_X34_Y17_N30
\wrtSD|Decoder2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~10_combout\ = (!\wrtSD|Selector4154~0_combout\ & (\wrtSD|Add1~2_combout\ & ((!\wrtSD|Selector4117~3_combout\) # (!\wrtSD|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4154~0_combout\,
	datab => \wrtSD|Equal4~1_combout\,
	datac => \wrtSD|Selector4117~3_combout\,
	datad => \wrtSD|Add1~2_combout\,
	combout => \wrtSD|Decoder2~10_combout\);

-- Location: LCCOMB_X35_Y20_N10
\wrtSD|Selector4134~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4134~2_combout\ = (\wrtSD|Add1~8_combout\ & (!\wrtSD|Selector4154~0_combout\ & ((!\wrtSD|Equal4~1_combout\) # (!\wrtSD|Selector4117~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~3_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datac => \wrtSD|Selector4154~0_combout\,
	datad => \wrtSD|Equal4~1_combout\,
	combout => \wrtSD|Selector4134~2_combout\);

-- Location: LCCOMB_X35_Y16_N10
\wrtSD|Selector4136~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4136~4_combout\ = (\wrtSD|Equal4~1_combout\ & (!\wrtSD|Selector4117~3_combout\ & ((\wrtSD|Selector4154~0_combout\) # (\wrtSD|Add1~4_combout\)))) # (!\wrtSD|Equal4~1_combout\ & (((\wrtSD|Selector4154~0_combout\) # (\wrtSD|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal4~1_combout\,
	datab => \wrtSD|Selector4117~3_combout\,
	datac => \wrtSD|Selector4154~0_combout\,
	datad => \wrtSD|Add1~4_combout\,
	combout => \wrtSD|Selector4136~4_combout\);

-- Location: LCCOMB_X34_Y15_N4
\wrtSD|currentAddress[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[26]~feeder_combout\ = \wrtSD|currentAddress[26]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[26]~19_combout\,
	combout => \wrtSD|currentAddress[26]~feeder_combout\);

-- Location: LCCOMB_X33_Y14_N28
\wrtSD|currentAddress[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[25]~feeder_combout\ = \wrtSD|currentAddress[25]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[25]~20_combout\,
	combout => \wrtSD|currentAddress[25]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N26
\wrtSD|currentAddress[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[20]~feeder_combout\ = \wrtSD|currentAddress[20]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[20]~10_combout\,
	combout => \wrtSD|currentAddress[20]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N0
\wrtSD|currentAddress[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[18]~feeder_combout\ = \wrtSD|currentAddress[18]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[18]~4_combout\,
	combout => \wrtSD|currentAddress[18]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N2
\wrtSD|currentAddress[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[17]~feeder_combout\ = \wrtSD|currentAddress[17]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[17]~1_combout\,
	combout => \wrtSD|currentAddress[17]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N20
\wrtSD|currentAddress[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[11]~feeder_combout\ = \wrtSD|currentAddress[11]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[11]~13_combout\,
	combout => \wrtSD|currentAddress[11]~feeder_combout\);

-- Location: LCCOMB_X33_Y14_N10
\wrtSD|currentAddress[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[27]~feeder_combout\ = \wrtSD|currentAddress[27]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[27]~22_combout\,
	combout => \wrtSD|currentAddress[27]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N6
\wrtSD|currentAddress[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[30]~feeder_combout\ = \wrtSD|currentAddress[30]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[30]~15_combout\,
	combout => \wrtSD|currentAddress[30]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N24
\wrtSD|currentAddress[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[29]~feeder_combout\ = \wrtSD|currentAddress[29]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|currentAddress[29]~16_combout\,
	combout => \wrtSD|currentAddress[29]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N14
\wrtSD|currentAddress[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[28]~feeder_combout\ = \wrtSD|currentAddress[28]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[28]~17_combout\,
	combout => \wrtSD|currentAddress[28]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N16
\wrtSD|currentAddress[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|currentAddress[31]~feeder_combout\ = \wrtSD|currentAddress[31]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|currentAddress[31]~18_combout\,
	combout => \wrtSD|currentAddress[31]~feeder_combout\);

-- Location: LCCOMB_X34_Y16_N4
\wrtSD|cmd24[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|cmd24[16]~feeder_combout\ = \wrtSD|cmd24[16]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|cmd24[16]~0_combout\,
	combout => \wrtSD|cmd24[16]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N14
\clkDiv|counter[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[1]~6_combout\ = (\clkDiv|counter\(0) & (\clkDiv|counter\(1) $ (VCC))) # (!\clkDiv|counter\(0) & (\clkDiv|counter\(1) & VCC))
-- \clkDiv|counter[1]~7\ = CARRY((\clkDiv|counter\(0) & \clkDiv|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(0),
	datab => \clkDiv|counter\(1),
	datad => VCC,
	combout => \clkDiv|counter[1]~6_combout\,
	cout => \clkDiv|counter[1]~7\);

-- Location: LCFF_X31_Y35_N15
\clkDiv|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(1));

-- Location: LCCOMB_X31_Y35_N16
\clkDiv|counter[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[2]~8_combout\ = (\clkDiv|counter\(2) & (!\clkDiv|counter[1]~7\)) # (!\clkDiv|counter\(2) & ((\clkDiv|counter[1]~7\) # (GND)))
-- \clkDiv|counter[2]~9\ = CARRY((!\clkDiv|counter[1]~7\) # (!\clkDiv|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(2),
	datad => VCC,
	cin => \clkDiv|counter[1]~7\,
	combout => \clkDiv|counter[2]~8_combout\,
	cout => \clkDiv|counter[2]~9\);

-- Location: LCCOMB_X31_Y35_N18
\clkDiv|counter[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[3]~10_combout\ = (\clkDiv|counter\(3) & (\clkDiv|counter[2]~9\ $ (GND))) # (!\clkDiv|counter\(3) & (!\clkDiv|counter[2]~9\ & VCC))
-- \clkDiv|counter[3]~11\ = CARRY((\clkDiv|counter\(3) & !\clkDiv|counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|counter\(3),
	datad => VCC,
	cin => \clkDiv|counter[2]~9\,
	combout => \clkDiv|counter[3]~10_combout\,
	cout => \clkDiv|counter[3]~11\);

-- Location: LCFF_X31_Y35_N19
\clkDiv|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(3));

-- Location: LCCOMB_X31_Y35_N22
\clkDiv|counter[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[5]~14_combout\ = (\clkDiv|counter\(5) & (\clkDiv|counter[4]~13\ $ (GND))) # (!\clkDiv|counter\(5) & (!\clkDiv|counter[4]~13\ & VCC))
-- \clkDiv|counter[5]~15\ = CARRY((\clkDiv|counter\(5) & !\clkDiv|counter[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|counter\(5),
	datad => VCC,
	cin => \clkDiv|counter[4]~13\,
	combout => \clkDiv|counter[5]~14_combout\,
	cout => \clkDiv|counter[5]~15\);

-- Location: LCFF_X31_Y35_N23
\clkDiv|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(5));

-- Location: LCCOMB_X31_Y35_N24
\clkDiv|counter[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[6]~16_combout\ = \clkDiv|counter\(6) $ (\clkDiv|counter[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(6),
	cin => \clkDiv|counter[5]~15\,
	combout => \clkDiv|counter[6]~16_combout\);

-- Location: LCFF_X31_Y35_N25
\clkDiv|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(6));

-- Location: LCCOMB_X31_Y35_N2
\clkDiv|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~1_combout\ = (!\clkDiv|counter\(4) & (\clkDiv|counter\(6) & \clkDiv|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(4),
	datac => \clkDiv|counter\(6),
	datad => \clkDiv|counter\(5),
	combout => \clkDiv|Equal0~1_combout\);

-- Location: LCFF_X31_Y35_N17
\clkDiv|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(2));

-- Location: LCCOMB_X31_Y35_N12
\clkDiv|counter[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|counter[0]~18_combout\ = !\clkDiv|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|counter\(0),
	combout => \clkDiv|counter[0]~18_combout\);

-- Location: LCFF_X31_Y35_N13
\clkDiv|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|counter\(0));

-- Location: LCCOMB_X31_Y35_N28
\clkDiv|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~0_combout\ = (\clkDiv|counter\(1) & (!\clkDiv|counter\(3) & (!\clkDiv|counter\(2) & \clkDiv|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|counter\(1),
	datab => \clkDiv|counter\(3),
	datac => \clkDiv|counter\(2),
	datad => \clkDiv|counter\(0),
	combout => \clkDiv|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y35_N30
\clkDiv|tempClk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkDiv|tempClk~0_combout\ = \clkDiv|tempClk~regout\ $ (((\clkDiv|Equal0~1_combout\ & \clkDiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|Equal0~1_combout\,
	datac => \clkDiv|tempClk~regout\,
	datad => \clkDiv|Equal0~0_combout\,
	combout => \clkDiv|tempClk~0_combout\);

-- Location: LCFF_X31_Y35_N31
\clkDiv|tempClk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clkDiv|tempClk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkDiv|tempClk~regout\);

-- Location: CLKCTRL_G10
\clkDiv|tempClk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDiv|tempClk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDiv|tempClk~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y14_N0
\wrtSD|SD_DAT3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_DAT3~0_combout\ = (\wrtSD|Equal2~10_combout\) # (\wrtSD|SD_DAT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|SD_DAT3~regout\,
	combout => \wrtSD|SD_DAT3~0_combout\);

-- Location: LCFF_X34_Y14_N1
\wrtSD|SD_DAT3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|SD_DAT3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|SD_DAT3~regout\);

-- Location: LCCOMB_X36_Y16_N0
\wrtSD|state[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[0]~36_combout\ = \wrtSD|Selector4170~0_combout\ $ (VCC)
-- \wrtSD|state[0]~37\ = CARRY(\wrtSD|Selector4170~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4170~0_combout\,
	datad => VCC,
	combout => \wrtSD|state[0]~36_combout\,
	cout => \wrtSD|state[0]~37\);

-- Location: LCCOMB_X36_Y16_N2
\wrtSD|state[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[1]~38_combout\ = (\wrtSD|Selector4169~0_combout\ & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[0]~37\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[0]~37\ & VCC)))) # (!\wrtSD|Selector4169~0_combout\ & ((\wrtSD|process_0~0_combout\ & 
-- ((\wrtSD|state[0]~37\) # (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[0]~37\))))
-- \wrtSD|state[1]~39\ = CARRY((\wrtSD|Selector4169~0_combout\ & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[0]~37\)) # (!\wrtSD|Selector4169~0_combout\ & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[0]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4169~0_combout\,
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[0]~37\,
	combout => \wrtSD|state[1]~38_combout\,
	cout => \wrtSD|state[1]~39\);

-- Location: LCCOMB_X36_Y16_N4
\wrtSD|state[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[2]~40_combout\ = ((\wrtSD|Selector4168~1_combout\ $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[1]~39\)))) # (GND)
-- \wrtSD|state[2]~41\ = CARRY((\wrtSD|Selector4168~1_combout\ & ((!\wrtSD|state[1]~39\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|Selector4168~1_combout\ & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[1]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4168~1_combout\,
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[1]~39\,
	combout => \wrtSD|state[2]~40_combout\,
	cout => \wrtSD|state[2]~41\);

-- Location: LCCOMB_X36_Y16_N6
\wrtSD|state[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[3]~42_combout\ = (\wrtSD|state\(3) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[2]~41\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[2]~41\ & VCC)))) # (!\wrtSD|state\(3) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[2]~41\) # 
-- (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[2]~41\))))
-- \wrtSD|state[3]~43\ = CARRY((\wrtSD|state\(3) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[2]~41\)) # (!\wrtSD|state\(3) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[2]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(3),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[2]~41\,
	combout => \wrtSD|state[3]~42_combout\,
	cout => \wrtSD|state[3]~43\);

-- Location: LCCOMB_X36_Y16_N8
\wrtSD|state[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[4]~46_combout\ = ((\wrtSD|state\(4) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[3]~43\)))) # (GND)
-- \wrtSD|state[4]~47\ = CARRY((\wrtSD|state\(4) & ((!\wrtSD|state[3]~43\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(4) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[3]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[3]~43\,
	combout => \wrtSD|state[4]~46_combout\,
	cout => \wrtSD|state[4]~47\);

-- Location: LCCOMB_X36_Y16_N10
\wrtSD|state[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[5]~48_combout\ = (\wrtSD|state\(5) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[4]~47\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[4]~47\ & VCC)))) # (!\wrtSD|state\(5) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[4]~47\) # 
-- (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[4]~47\))))
-- \wrtSD|state[5]~49\ = CARRY((\wrtSD|state\(5) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[4]~47\)) # (!\wrtSD|state\(5) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[4]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(5),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[4]~47\,
	combout => \wrtSD|state[5]~48_combout\,
	cout => \wrtSD|state[5]~49\);

-- Location: LCCOMB_X36_Y16_N14
\wrtSD|state[7]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[7]~52_combout\ = (\wrtSD|state\(7) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[6]~51\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[6]~51\ & VCC)))) # (!\wrtSD|state\(7) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[6]~51\) # 
-- (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[6]~51\))))
-- \wrtSD|state[7]~53\ = CARRY((\wrtSD|state\(7) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[6]~51\)) # (!\wrtSD|state\(7) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[6]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(7),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[6]~51\,
	combout => \wrtSD|state[7]~52_combout\,
	cout => \wrtSD|state[7]~53\);

-- Location: LCCOMB_X36_Y16_N16
\wrtSD|state[8]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[8]~54_combout\ = ((\wrtSD|state\(8) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[7]~53\)))) # (GND)
-- \wrtSD|state[8]~55\ = CARRY((\wrtSD|state\(8) & ((!\wrtSD|state[7]~53\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(8) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[7]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(8),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[7]~53\,
	combout => \wrtSD|state[8]~54_combout\,
	cout => \wrtSD|state[8]~55\);

-- Location: LCCOMB_X36_Y16_N18
\wrtSD|state[9]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[9]~56_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(9) & (!\wrtSD|state[8]~55\)) # (!\wrtSD|state\(9) & ((\wrtSD|state[8]~55\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(9) & (\wrtSD|state[8]~55\ & VCC)) # 
-- (!\wrtSD|state\(9) & (!\wrtSD|state[8]~55\))))
-- \wrtSD|state[9]~57\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[8]~55\) # (!\wrtSD|state\(9)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(9) & !\wrtSD|state[8]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(9),
	datad => VCC,
	cin => \wrtSD|state[8]~55\,
	combout => \wrtSD|state[9]~56_combout\,
	cout => \wrtSD|state[9]~57\);

-- Location: LCFF_X36_Y19_N23
\wrtSD|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4171~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(7));

-- Location: LCCOMB_X36_Y19_N18
\wrtSD|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~10_combout\ = (\wrtSD|counter\(5) & (!\wrtSD|Add0~9\)) # (!\wrtSD|counter\(5) & ((\wrtSD|Add0~9\) # (GND)))
-- \wrtSD|Add0~11\ = CARRY((!\wrtSD|Add0~9\) # (!\wrtSD|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|counter\(5),
	datad => VCC,
	cin => \wrtSD|Add0~9\,
	combout => \wrtSD|Add0~10_combout\,
	cout => \wrtSD|Add0~11\);

-- Location: LCCOMB_X36_Y19_N20
\wrtSD|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~12_combout\ = (\wrtSD|counter\(6) & (\wrtSD|Add0~11\ $ (GND))) # (!\wrtSD|counter\(6) & (!\wrtSD|Add0~11\ & VCC))
-- \wrtSD|Add0~13\ = CARRY((\wrtSD|counter\(6) & !\wrtSD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|counter\(6),
	datad => VCC,
	cin => \wrtSD|Add0~11\,
	combout => \wrtSD|Add0~12_combout\,
	cout => \wrtSD|Add0~13\);

-- Location: LCCOMB_X33_Y20_N24
\wrtSD|Selector4172~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4172~1_combout\ = (\wrtSD|Add0~12_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add0~12_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4172~1_combout\);

-- Location: LCFF_X36_Y19_N21
\wrtSD|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4172~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(6));

-- Location: LCCOMB_X36_Y19_N22
\wrtSD|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~14_combout\ = \wrtSD|Add0~13\ $ (\wrtSD|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wrtSD|counter\(7),
	cin => \wrtSD|Add0~13\,
	combout => \wrtSD|Add0~14_combout\);

-- Location: LCCOMB_X33_Y20_N14
\wrtSD|Selector4171~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4171~0_combout\ = (\wrtSD|Add0~14_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add0~14_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4171~0_combout\);

-- Location: LCCOMB_X36_Y19_N8
\wrtSD|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~0_combout\ = \wrtSD|counter\(0) $ (VCC)
-- \wrtSD|Add0~1\ = CARRY(\wrtSD|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|counter\(0),
	datad => VCC,
	combout => \wrtSD|Add0~0_combout\,
	cout => \wrtSD|Add0~1\);

-- Location: LCCOMB_X36_Y19_N10
\wrtSD|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~2_combout\ = (\wrtSD|counter\(1) & (!\wrtSD|Add0~1\)) # (!\wrtSD|counter\(1) & ((\wrtSD|Add0~1\) # (GND)))
-- \wrtSD|Add0~3\ = CARRY((!\wrtSD|Add0~1\) # (!\wrtSD|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|counter\(1),
	datad => VCC,
	cin => \wrtSD|Add0~1\,
	combout => \wrtSD|Add0~2_combout\,
	cout => \wrtSD|Add0~3\);

-- Location: LCCOMB_X33_Y20_N16
\wrtSD|Selector4177~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4177~0_combout\ = (\wrtSD|Add0~2_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add0~2_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4177~0_combout\);

-- Location: LCCOMB_X36_Y19_N12
\wrtSD|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~4_combout\ = (\wrtSD|counter\(2) & (\wrtSD|Add0~3\ $ (GND))) # (!\wrtSD|counter\(2) & (!\wrtSD|Add0~3\ & VCC))
-- \wrtSD|Add0~5\ = CARRY((\wrtSD|counter\(2) & !\wrtSD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|counter\(2),
	datad => VCC,
	cin => \wrtSD|Add0~3\,
	combout => \wrtSD|Add0~4_combout\,
	cout => \wrtSD|Add0~5\);

-- Location: LCCOMB_X33_Y20_N28
\wrtSD|commandSent~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|commandSent~0_combout\ = (!\wrtSD|Add0~6_combout\ & (\wrtSD|Add0~4_combout\ & (!\wrtSD|Add0~0_combout\ & !\wrtSD|Selector4172~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add0~6_combout\,
	datab => \wrtSD|Add0~4_combout\,
	datac => \wrtSD|Add0~0_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|commandSent~0_combout\);

-- Location: LCCOMB_X33_Y20_N22
\wrtSD|commandSent~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|commandSent~1_combout\ = (!\wrtSD|replyStarted~regout\ & (\wrtSD|Selector4171~0_combout\ & (!\wrtSD|Selector4177~0_combout\ & \wrtSD|commandSent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|replyStarted~regout\,
	datab => \wrtSD|Selector4171~0_combout\,
	datac => \wrtSD|Selector4177~0_combout\,
	datad => \wrtSD|commandSent~0_combout\,
	combout => \wrtSD|commandSent~1_combout\);

-- Location: LCCOMB_X33_Y20_N20
\wrtSD|Selector4173~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4173~0_combout\ = (\wrtSD|Add0~10_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add0~10_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4173~0_combout\);

-- Location: LCCOMB_X33_Y20_N26
\wrtSD|commandSent~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|commandSent~2_combout\ = (!\wrtSD|Selector4172~1_combout\ & (\wrtSD|commandSent~1_combout\ & (\wrtSD|Selector4173~0_combout\ & \wrtSD|Selector4174~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4172~1_combout\,
	datab => \wrtSD|commandSent~1_combout\,
	datac => \wrtSD|Selector4173~0_combout\,
	datad => \wrtSD|Selector4174~0_combout\,
	combout => \wrtSD|commandSent~2_combout\);

-- Location: LCCOMB_X36_Y20_N20
\wrtSD|commandSent~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|commandSent~3_combout\ = (\wrtSD|commandSent~regout\ & \wrtSD|commandSent~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datac => \wrtSD|commandSent~2_combout\,
	combout => \wrtSD|commandSent~3_combout\);

-- Location: LCCOMB_X36_Y19_N14
\wrtSD|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~6_combout\ = (\wrtSD|counter\(3) & (!\wrtSD|Add0~5\)) # (!\wrtSD|counter\(3) & ((\wrtSD|Add0~5\) # (GND)))
-- \wrtSD|Add0~7\ = CARRY((!\wrtSD|Add0~5\) # (!\wrtSD|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|counter\(3),
	datad => VCC,
	cin => \wrtSD|Add0~5\,
	combout => \wrtSD|Add0~6_combout\,
	cout => \wrtSD|Add0~7\);

-- Location: LCCOMB_X36_Y19_N0
\wrtSD|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal0~0_combout\ = (!\wrtSD|Add0~0_combout\ & (!\wrtSD|Add0~6_combout\ & (!\wrtSD|Add0~2_combout\ & !\wrtSD|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add0~0_combout\,
	datab => \wrtSD|Add0~6_combout\,
	datac => \wrtSD|Add0~2_combout\,
	datad => \wrtSD|Add0~4_combout\,
	combout => \wrtSD|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\wrtSD|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~9_combout\ = (!\wrtSD|state\(1) & !\wrtSD|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|state\(1),
	datad => \wrtSD|state\(2),
	combout => \wrtSD|Equal2~9_combout\);

-- Location: LCFF_X36_Y16_N7
\wrtSD|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[3]~42_combout\,
	sdata => \wrtSD|state\(3),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(3));

-- Location: LCFF_X36_Y16_N11
\wrtSD|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[5]~48_combout\,
	sdata => \wrtSD|state\(5),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(5));

-- Location: LCFF_X36_Y16_N9
\wrtSD|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[4]~46_combout\,
	sdata => \wrtSD|state\(4),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(4));

-- Location: LCCOMB_X36_Y19_N28
\wrtSD|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~0_combout\ = (!\wrtSD|state\(6) & (!\wrtSD|state\(3) & (!\wrtSD|state\(5) & !\wrtSD|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(6),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(5),
	datad => \wrtSD|state\(4),
	combout => \wrtSD|Equal2~0_combout\);

-- Location: LCFF_X36_Y16_N15
\wrtSD|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[7]~52_combout\,
	sdata => \wrtSD|state\(7),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(7));

-- Location: LCFF_X36_Y16_N17
\wrtSD|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[8]~54_combout\,
	sdata => \wrtSD|state\(8),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(8));

-- Location: LCCOMB_X36_Y19_N26
\wrtSD|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~1_combout\ = (!\wrtSD|state\(9) & (!\wrtSD|state\(7) & (!\wrtSD|state\(10) & !\wrtSD|state\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(9),
	datab => \wrtSD|state\(7),
	datac => \wrtSD|state\(10),
	datad => \wrtSD|state\(8),
	combout => \wrtSD|Equal2~1_combout\);

-- Location: LCCOMB_X35_Y15_N12
\wrtSD|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~3_combout\ = (!\wrtSD|state\(18) & (!\wrtSD|state\(16) & (!\wrtSD|state\(15) & !\wrtSD|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(18),
	datab => \wrtSD|state\(16),
	datac => \wrtSD|state\(15),
	datad => \wrtSD|state\(17),
	combout => \wrtSD|Equal2~3_combout\);

-- Location: LCCOMB_X35_Y19_N28
\wrtSD|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~4_combout\ = (\wrtSD|Equal2~2_combout\ & (\wrtSD|Equal2~0_combout\ & (\wrtSD|Equal2~1_combout\ & \wrtSD|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~2_combout\,
	datab => \wrtSD|Equal2~0_combout\,
	datac => \wrtSD|Equal2~1_combout\,
	datad => \wrtSD|Equal2~3_combout\,
	combout => \wrtSD|Equal2~4_combout\);

-- Location: LCCOMB_X35_Y19_N0
\wrtSD|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~10_combout\ = (!\wrtSD|state\(0) & (\wrtSD|Equal2~9_combout\ & (\wrtSD|Equal2~8_combout\ & \wrtSD|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|Equal2~9_combout\,
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|Equal2~10_combout\);

-- Location: LCCOMB_X35_Y19_N12
\wrtSD|Selector4154~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4154~0_combout\ = (\wrtSD|Equal0~1_combout\ & (\wrtSD|Equal0~0_combout\ & \wrtSD|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal0~1_combout\,
	datac => \wrtSD|Equal0~0_combout\,
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|Selector4154~0_combout\);

-- Location: LCCOMB_X34_Y17_N18
\wrtSD|Selector4154~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4154~1_combout\ = (!\wrtSD|Selector4154~0_combout\ & (\wrtSD|Equal9~0_combout\ & ((!\wrtSD|Equal6~0_combout\) # (!\wrtSD|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan0~10_combout\,
	datab => \wrtSD|Equal6~0_combout\,
	datac => \wrtSD|Selector4154~0_combout\,
	datad => \wrtSD|Equal9~0_combout\,
	combout => \wrtSD|Selector4154~1_combout\);

-- Location: LCCOMB_X35_Y17_N20
\wrtSD|Selector4169~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4169~0_combout\ = (\wrtSD|state\(1) & \wrtSD|Selector4154~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|state\(1),
	datad => \wrtSD|Selector4154~1_combout\,
	combout => \wrtSD|Selector4169~0_combout\);

-- Location: LCFF_X36_Y16_N3
\wrtSD|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[1]~38_combout\,
	sdata => \wrtSD|Selector4169~0_combout\,
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(1));

-- Location: LCCOMB_X35_Y19_N14
\wrtSD|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal4~1_combout\ = (\wrtSD|Equal4~0_combout\ & (\wrtSD|state\(1) & (\wrtSD|Equal2~8_combout\ & \wrtSD|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal4~0_combout\,
	datab => \wrtSD|state\(1),
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|Equal4~1_combout\);

-- Location: LCCOMB_X35_Y19_N22
\wrtSD|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal3~0_combout\ = (\wrtSD|state\(0) & (\wrtSD|Equal2~8_combout\ & \wrtSD|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\wrtSD|Selector4117~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~1_combout\ = (\wrtSD|Selector4117~0_combout\) # (((\wrtSD|state\(1) & \wrtSD|state\(2))) # (!\wrtSD|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~0_combout\,
	datab => \wrtSD|state\(1),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal3~0_combout\,
	combout => \wrtSD|Selector4117~1_combout\);

-- Location: LCCOMB_X35_Y19_N30
\wrtSD|Selector4117~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~2_combout\ = (\wrtSD|Selector4117~1_combout\ & (!\wrtSD|Selector4154~0_combout\ & ((\wrtSD|commandSent~regout\) # (!\wrtSD|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|Equal4~1_combout\,
	datac => \wrtSD|Selector4117~1_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4117~2_combout\);

-- Location: LCCOMB_X34_Y19_N0
\wrtSD|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~0_combout\ = (\wrtSD|bitNum\(0) & (!\wrtSD|Selector4117~2_combout\ & VCC)) # (!\wrtSD|bitNum\(0) & (\wrtSD|Selector4117~2_combout\ $ (GND)))
-- \wrtSD|Add1~1\ = CARRY((!\wrtSD|bitNum\(0) & !\wrtSD|Selector4117~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(0),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	combout => \wrtSD|Add1~0_combout\,
	cout => \wrtSD|Add1~1\);

-- Location: LCCOMB_X34_Y19_N2
\wrtSD|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~2_combout\ = (\wrtSD|bitNum\(1) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~1\) # (GND))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~1\)))) # (!\wrtSD|bitNum\(1) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~1\)) # 
-- (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~1\ & VCC))))
-- \wrtSD|Add1~3\ = CARRY((\wrtSD|bitNum\(1) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~1\))) # (!\wrtSD|bitNum\(1) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~1\,
	combout => \wrtSD|Add1~2_combout\,
	cout => \wrtSD|Add1~3\);

-- Location: LCCOMB_X34_Y19_N4
\wrtSD|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~4_combout\ = ((\wrtSD|bitNum\(2) $ (\wrtSD|Selector4117~2_combout\ $ (!\wrtSD|Add1~3\)))) # (GND)
-- \wrtSD|Add1~5\ = CARRY((\wrtSD|bitNum\(2) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~3\)) # (!\wrtSD|bitNum\(2) & ((!\wrtSD|Add1~3\) # (!\wrtSD|Selector4117~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(2),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~3\,
	combout => \wrtSD|Add1~4_combout\,
	cout => \wrtSD|Add1~5\);

-- Location: LCCOMB_X34_Y19_N6
\wrtSD|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~6_combout\ = (\wrtSD|bitNum\(3) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~5\) # (GND))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~5\)))) # (!\wrtSD|bitNum\(3) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~5\)) # 
-- (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~5\ & VCC))))
-- \wrtSD|Add1~7\ = CARRY((\wrtSD|bitNum\(3) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~5\))) # (!\wrtSD|bitNum\(3) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(3),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~5\,
	combout => \wrtSD|Add1~6_combout\,
	cout => \wrtSD|Add1~7\);

-- Location: LCCOMB_X34_Y19_N8
\wrtSD|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~8_combout\ = ((\wrtSD|bitNum\(4) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~7\)))) # (GND)
-- \wrtSD|Add1~9\ = CARRY((\wrtSD|bitNum\(4) & ((!\wrtSD|Add1~7\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(4) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(4),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~7\,
	combout => \wrtSD|Add1~8_combout\,
	cout => \wrtSD|Add1~9\);

-- Location: LCCOMB_X35_Y20_N14
\wrtSD|bitNum[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum[0]~4_combout\ = ((!\wrtSD|replyStarted~regout\ & !\wrtSD|commandSent~2_combout\)) # (!\wrtSD|commandSent~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|replyStarted~regout\,
	datac => \wrtSD|commandSent~regout\,
	datad => \wrtSD|commandSent~2_combout\,
	combout => \wrtSD|bitNum[0]~4_combout\);

-- Location: LCCOMB_X35_Y20_N20
\wrtSD|bitNum~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~12_combout\ = (!\wrtSD|Selector4117~4_combout\ & ((\wrtSD|bitNum[0]~4_combout\) # ((!\wrtSD|commandSent~2_combout\ & !\wrtSD|LessThan2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|commandSent~2_combout\,
	datac => \wrtSD|bitNum[0]~4_combout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|bitNum~12_combout\);

-- Location: LCCOMB_X35_Y20_N0
\wrtSD|bitNum~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~39_combout\ = (((!\wrtSD|commandSent~2_combout\ & !\wrtSD|LessThan2~11_combout\)) # (!\wrtSD|replyStarted~regout\)) # (!\wrtSD|commandSent~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|commandSent~2_combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|bitNum~39_combout\);

-- Location: LCCOMB_X34_Y17_N12
\wrtSD|Selector4117~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~4_combout\ = (\wrtSD|Selector4154~0_combout\) # ((\wrtSD|Selector4117~3_combout\ & \wrtSD|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4117~3_combout\,
	datac => \wrtSD|Selector4154~0_combout\,
	datad => \wrtSD|Equal4~1_combout\,
	combout => \wrtSD|Selector4117~4_combout\);

-- Location: LCCOMB_X34_Y19_N10
\wrtSD|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~10_combout\ = (\wrtSD|bitNum\(5) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~9\) # (GND))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~9\)))) # (!\wrtSD|bitNum\(5) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~9\)) # 
-- (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~9\ & VCC))))
-- \wrtSD|Add1~11\ = CARRY((\wrtSD|bitNum\(5) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~9\))) # (!\wrtSD|bitNum\(5) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(5),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~9\,
	combout => \wrtSD|Add1~10_combout\,
	cout => \wrtSD|Add1~11\);

-- Location: LCCOMB_X34_Y19_N12
\wrtSD|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~12_combout\ = ((\wrtSD|bitNum\(6) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~11\)))) # (GND)
-- \wrtSD|Add1~13\ = CARRY((\wrtSD|bitNum\(6) & ((!\wrtSD|Add1~11\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(6) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(6),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~11\,
	combout => \wrtSD|Add1~12_combout\,
	cout => \wrtSD|Add1~13\);

-- Location: LCCOMB_X34_Y19_N14
\wrtSD|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~14_combout\ = (\wrtSD|bitNum\(7) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~13\)) # (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~13\ & VCC)))) # (!\wrtSD|bitNum\(7) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~13\) # (GND))) # 
-- (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~13\))))
-- \wrtSD|Add1~15\ = CARRY((\wrtSD|bitNum\(7) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~13\)) # (!\wrtSD|bitNum\(7) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(7),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~13\,
	combout => \wrtSD|Add1~14_combout\,
	cout => \wrtSD|Add1~15\);

-- Location: LCCOMB_X34_Y17_N22
\wrtSD|Selector4135~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4135~4_combout\ = (\wrtSD|Selector4154~0_combout\ & (((!\wrtSD|Selector4117~3_combout\)) # (!\wrtSD|Equal4~1_combout\))) # (!\wrtSD|Selector4154~0_combout\ & (\wrtSD|Add1~6_combout\ & ((!\wrtSD|Selector4117~3_combout\) # 
-- (!\wrtSD|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4154~0_combout\,
	datab => \wrtSD|Equal4~1_combout\,
	datac => \wrtSD|Selector4117~3_combout\,
	datad => \wrtSD|Add1~6_combout\,
	combout => \wrtSD|Selector4135~4_combout\);

-- Location: LCCOMB_X34_Y17_N0
\wrtSD|Selector4138~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4138~4_combout\ = (\wrtSD|Selector4154~0_combout\ & (((!\wrtSD|Equal4~1_combout\)) # (!\wrtSD|Selector4117~3_combout\))) # (!\wrtSD|Selector4154~0_combout\ & (\wrtSD|Add1~0_combout\ & ((!\wrtSD|Equal4~1_combout\) # 
-- (!\wrtSD|Selector4117~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4154~0_combout\,
	datab => \wrtSD|Selector4117~3_combout\,
	datac => \wrtSD|Add1~0_combout\,
	datad => \wrtSD|Equal4~1_combout\,
	combout => \wrtSD|Selector4138~4_combout\);

-- Location: LCCOMB_X33_Y19_N4
\wrtSD|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~4_combout\ = (\wrtSD|Selector4136~4_combout\ & (\wrtSD|Add6~3\ $ (GND))) # (!\wrtSD|Selector4136~4_combout\ & (!\wrtSD|Add6~3\ & VCC))
-- \wrtSD|Add6~5\ = CARRY((\wrtSD|Selector4136~4_combout\ & !\wrtSD|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4136~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~3\,
	combout => \wrtSD|Add6~4_combout\,
	cout => \wrtSD|Add6~5\);

-- Location: LCCOMB_X33_Y19_N8
\wrtSD|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~8_combout\ = (\wrtSD|Add6~7\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~8_combout\ & VCC))) # (!\wrtSD|Add6~7\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~8_combout\)))))
-- \wrtSD|Add6~9\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~8_combout\ & !\wrtSD|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~7\,
	combout => \wrtSD|Add6~8_combout\,
	cout => \wrtSD|Add6~9\);

-- Location: LCCOMB_X33_Y19_N10
\wrtSD|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~10_combout\ = (\wrtSD|Selector4133~4_combout\ & (!\wrtSD|Add6~9\)) # (!\wrtSD|Selector4133~4_combout\ & ((\wrtSD|Add6~9\) # (GND)))
-- \wrtSD|Add6~11\ = CARRY((!\wrtSD|Add6~9\) # (!\wrtSD|Selector4133~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4133~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~9\,
	combout => \wrtSD|Add6~10_combout\,
	cout => \wrtSD|Add6~11\);

-- Location: LCCOMB_X33_Y19_N16
\wrtSD|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~16_combout\ = (\wrtSD|Add6~15\ & (\wrtSD|Add1~16_combout\ & (!\wrtSD|Selector4117~4_combout\ & VCC))) # (!\wrtSD|Add6~15\ & ((((\wrtSD|Add1~16_combout\ & !\wrtSD|Selector4117~4_combout\)))))
-- \wrtSD|Add6~17\ = CARRY((\wrtSD|Add1~16_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~16_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~15\,
	combout => \wrtSD|Add6~16_combout\,
	cout => \wrtSD|Add6~17\);

-- Location: LCCOMB_X34_Y19_N16
\wrtSD|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~16_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(8) $ (\wrtSD|Add1~15\)))) # (GND)
-- \wrtSD|Add1~17\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(8) & !\wrtSD|Add1~15\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(8)) # (!\wrtSD|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(8),
	datad => VCC,
	cin => \wrtSD|Add1~15\,
	combout => \wrtSD|Add1~16_combout\,
	cout => \wrtSD|Add1~17\);

-- Location: LCCOMB_X35_Y18_N24
\wrtSD|bitNum~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~14_combout\ = (\wrtSD|bitNum~39_combout\ & (((\wrtSD|bitNum~12_combout\ & \wrtSD|Add1~16_combout\)))) # (!\wrtSD|bitNum~39_combout\ & ((\wrtSD|Add6~16_combout\) # ((\wrtSD|bitNum~12_combout\ & \wrtSD|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum~39_combout\,
	datab => \wrtSD|Add6~16_combout\,
	datac => \wrtSD|bitNum~12_combout\,
	datad => \wrtSD|Add1~16_combout\,
	combout => \wrtSD|bitNum~14_combout\);

-- Location: LCFF_X35_Y18_N25
\wrtSD|bitNum[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(8));

-- Location: LCCOMB_X34_Y19_N18
\wrtSD|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~18_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(9) & (!\wrtSD|Add1~17\)) # (!\wrtSD|bitNum\(9) & ((\wrtSD|Add1~17\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(9) & (\wrtSD|Add1~17\ & VCC)) # 
-- (!\wrtSD|bitNum\(9) & (!\wrtSD|Add1~17\))))
-- \wrtSD|Add1~19\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~17\) # (!\wrtSD|bitNum\(9)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(9) & !\wrtSD|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(9),
	datad => VCC,
	cin => \wrtSD|Add1~17\,
	combout => \wrtSD|Add1~18_combout\,
	cout => \wrtSD|Add1~19\);

-- Location: LCCOMB_X33_Y19_N18
\wrtSD|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~18_combout\ = (\wrtSD|Add6~17\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~18_combout\)))) # (!\wrtSD|Add6~17\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~18_combout\)) # (GND)))
-- \wrtSD|Add6~19\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~17\) # (!\wrtSD|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~18_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~17\,
	combout => \wrtSD|Add6~18_combout\,
	cout => \wrtSD|Add6~19\);

-- Location: LCCOMB_X35_Y18_N26
\wrtSD|bitNum~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~15_combout\ = (\wrtSD|Add1~18_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~18_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~18_combout\ & (\wrtSD|Add6~18_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~18_combout\,
	datab => \wrtSD|Add6~18_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~15_combout\);

-- Location: LCFF_X35_Y18_N27
\wrtSD|bitNum[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(9));

-- Location: LCCOMB_X34_Y19_N20
\wrtSD|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~20_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(10) $ (\wrtSD|Add1~19\)))) # (GND)
-- \wrtSD|Add1~21\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(10) & !\wrtSD|Add1~19\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(10)) # (!\wrtSD|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(10),
	datad => VCC,
	cin => \wrtSD|Add1~19\,
	combout => \wrtSD|Add1~20_combout\,
	cout => \wrtSD|Add1~21\);

-- Location: LCCOMB_X33_Y19_N20
\wrtSD|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~20_combout\ = (\wrtSD|Add6~19\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~20_combout\ & VCC))) # (!\wrtSD|Add6~19\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~20_combout\)))))
-- \wrtSD|Add6~21\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~20_combout\ & !\wrtSD|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~20_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~19\,
	combout => \wrtSD|Add6~20_combout\,
	cout => \wrtSD|Add6~21\);

-- Location: LCCOMB_X35_Y18_N20
\wrtSD|bitNum~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~16_combout\ = (\wrtSD|Add1~20_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~20_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~20_combout\ & (\wrtSD|Add6~20_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~20_combout\,
	datab => \wrtSD|Add6~20_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~16_combout\);

-- Location: LCFF_X35_Y18_N21
\wrtSD|bitNum[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(10));

-- Location: LCCOMB_X34_Y19_N22
\wrtSD|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~22_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(11) & (!\wrtSD|Add1~21\)) # (!\wrtSD|bitNum\(11) & ((\wrtSD|Add1~21\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(11) & (\wrtSD|Add1~21\ & VCC)) # 
-- (!\wrtSD|bitNum\(11) & (!\wrtSD|Add1~21\))))
-- \wrtSD|Add1~23\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~21\) # (!\wrtSD|bitNum\(11)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(11) & !\wrtSD|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(11),
	datad => VCC,
	cin => \wrtSD|Add1~21\,
	combout => \wrtSD|Add1~22_combout\,
	cout => \wrtSD|Add1~23\);

-- Location: LCCOMB_X35_Y18_N30
\wrtSD|bitNum~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~17_combout\ = (\wrtSD|Add6~22_combout\ & (((\wrtSD|Add1~22_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~22_combout\ & (\wrtSD|Add1~22_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~22_combout\,
	datab => \wrtSD|Add1~22_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~17_combout\);

-- Location: LCFF_X35_Y18_N31
\wrtSD|bitNum[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(11));

-- Location: LCCOMB_X34_Y19_N24
\wrtSD|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~24_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(12) $ (\wrtSD|Add1~23\)))) # (GND)
-- \wrtSD|Add1~25\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(12) & !\wrtSD|Add1~23\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(12)) # (!\wrtSD|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(12),
	datad => VCC,
	cin => \wrtSD|Add1~23\,
	combout => \wrtSD|Add1~24_combout\,
	cout => \wrtSD|Add1~25\);

-- Location: LCCOMB_X35_Y18_N6
\wrtSD|bitNum~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~18_combout\ = (\wrtSD|Add6~24_combout\ & (((\wrtSD|Add1~24_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~24_combout\ & (\wrtSD|Add1~24_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~24_combout\,
	datab => \wrtSD|Add1~24_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~18_combout\);

-- Location: LCFF_X35_Y18_N7
\wrtSD|bitNum[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(12));

-- Location: LCCOMB_X34_Y19_N26
\wrtSD|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~26_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(13) & (!\wrtSD|Add1~25\)) # (!\wrtSD|bitNum\(13) & ((\wrtSD|Add1~25\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(13) & (\wrtSD|Add1~25\ & VCC)) # 
-- (!\wrtSD|bitNum\(13) & (!\wrtSD|Add1~25\))))
-- \wrtSD|Add1~27\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~25\) # (!\wrtSD|bitNum\(13)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(13) & !\wrtSD|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(13),
	datad => VCC,
	cin => \wrtSD|Add1~25\,
	combout => \wrtSD|Add1~26_combout\,
	cout => \wrtSD|Add1~27\);

-- Location: LCCOMB_X33_Y19_N26
\wrtSD|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~26_combout\ = (\wrtSD|Add6~25\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~26_combout\)))) # (!\wrtSD|Add6~25\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~26_combout\)) # (GND)))
-- \wrtSD|Add6~27\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~25\) # (!\wrtSD|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~26_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~25\,
	combout => \wrtSD|Add6~26_combout\,
	cout => \wrtSD|Add6~27\);

-- Location: LCCOMB_X35_Y18_N8
\wrtSD|bitNum~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~19_combout\ = (\wrtSD|Add1~26_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~26_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~26_combout\ & (\wrtSD|Add6~26_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~26_combout\,
	datab => \wrtSD|Add6~26_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~19_combout\);

-- Location: LCFF_X35_Y18_N9
\wrtSD|bitNum[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(13));

-- Location: LCCOMB_X34_Y19_N28
\wrtSD|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~28_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(14) $ (\wrtSD|Add1~27\)))) # (GND)
-- \wrtSD|Add1~29\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(14) & !\wrtSD|Add1~27\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(14)) # (!\wrtSD|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(14),
	datad => VCC,
	cin => \wrtSD|Add1~27\,
	combout => \wrtSD|Add1~28_combout\,
	cout => \wrtSD|Add1~29\);

-- Location: LCCOMB_X33_Y19_N28
\wrtSD|Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~28_combout\ = (\wrtSD|Add6~27\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~28_combout\ & VCC))) # (!\wrtSD|Add6~27\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~28_combout\)))))
-- \wrtSD|Add6~29\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~28_combout\ & !\wrtSD|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~28_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~27\,
	combout => \wrtSD|Add6~28_combout\,
	cout => \wrtSD|Add6~29\);

-- Location: LCCOMB_X35_Y18_N22
\wrtSD|bitNum~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~20_combout\ = (\wrtSD|Add1~28_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~28_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~28_combout\ & (\wrtSD|Add6~28_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~28_combout\,
	datab => \wrtSD|Add6~28_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~20_combout\);

-- Location: LCFF_X35_Y18_N23
\wrtSD|bitNum[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(14));

-- Location: LCCOMB_X34_Y19_N30
\wrtSD|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~30_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(15) & (!\wrtSD|Add1~29\)) # (!\wrtSD|bitNum\(15) & ((\wrtSD|Add1~29\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(15) & (\wrtSD|Add1~29\ & VCC)) # 
-- (!\wrtSD|bitNum\(15) & (!\wrtSD|Add1~29\))))
-- \wrtSD|Add1~31\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~29\) # (!\wrtSD|bitNum\(15)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(15) & !\wrtSD|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(15),
	datad => VCC,
	cin => \wrtSD|Add1~29\,
	combout => \wrtSD|Add1~30_combout\,
	cout => \wrtSD|Add1~31\);

-- Location: LCCOMB_X33_Y19_N30
\wrtSD|Add6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~30_combout\ = (\wrtSD|Add6~29\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~30_combout\)))) # (!\wrtSD|Add6~29\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~30_combout\)) # (GND)))
-- \wrtSD|Add6~31\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~29\) # (!\wrtSD|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~30_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~29\,
	combout => \wrtSD|Add6~30_combout\,
	cout => \wrtSD|Add6~31\);

-- Location: LCCOMB_X35_Y18_N4
\wrtSD|bitNum~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~21_combout\ = (\wrtSD|Add1~30_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~30_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~30_combout\ & (\wrtSD|Add6~30_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~30_combout\,
	datab => \wrtSD|Add6~30_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~21_combout\);

-- Location: LCFF_X35_Y18_N5
\wrtSD|bitNum[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(15));

-- Location: LCCOMB_X34_Y18_N0
\wrtSD|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~32_combout\ = ((\wrtSD|bitNum\(16) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~31\)))) # (GND)
-- \wrtSD|Add1~33\ = CARRY((\wrtSD|bitNum\(16) & ((!\wrtSD|Add1~31\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(16) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(16),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~31\,
	combout => \wrtSD|Add1~32_combout\,
	cout => \wrtSD|Add1~33\);

-- Location: LCCOMB_X34_Y18_N2
\wrtSD|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~34_combout\ = (\wrtSD|bitNum\(17) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~33\)) # (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~33\ & VCC)))) # (!\wrtSD|bitNum\(17) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~33\) # (GND))) 
-- # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~33\))))
-- \wrtSD|Add1~35\ = CARRY((\wrtSD|bitNum\(17) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~33\)) # (!\wrtSD|bitNum\(17) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(17),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~33\,
	combout => \wrtSD|Add1~34_combout\,
	cout => \wrtSD|Add1~35\);

-- Location: LCCOMB_X34_Y18_N6
\wrtSD|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~38_combout\ = (\wrtSD|bitNum\(19) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~37\)) # (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~37\ & VCC)))) # (!\wrtSD|bitNum\(19) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~37\) # (GND))) 
-- # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~37\))))
-- \wrtSD|Add1~39\ = CARRY((\wrtSD|bitNum\(19) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~37\)) # (!\wrtSD|bitNum\(19) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(19),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~37\,
	combout => \wrtSD|Add1~38_combout\,
	cout => \wrtSD|Add1~39\);

-- Location: LCCOMB_X34_Y18_N8
\wrtSD|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~40_combout\ = ((\wrtSD|bitNum\(20) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~39\)))) # (GND)
-- \wrtSD|Add1~41\ = CARRY((\wrtSD|bitNum\(20) & ((!\wrtSD|Add1~39\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(20) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(20),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~39\,
	combout => \wrtSD|Add1~40_combout\,
	cout => \wrtSD|Add1~41\);

-- Location: LCCOMB_X34_Y18_N10
\wrtSD|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~42_combout\ = (\wrtSD|bitNum\(21) & ((\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~41\)) # (!\wrtSD|Selector4117~2_combout\ & (\wrtSD|Add1~41\ & VCC)))) # (!\wrtSD|bitNum\(21) & ((\wrtSD|Selector4117~2_combout\ & ((\wrtSD|Add1~41\) # (GND))) 
-- # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|Add1~41\))))
-- \wrtSD|Add1~43\ = CARRY((\wrtSD|bitNum\(21) & (\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~41\)) # (!\wrtSD|bitNum\(21) & ((\wrtSD|Selector4117~2_combout\) # (!\wrtSD|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(21),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~41\,
	combout => \wrtSD|Add1~42_combout\,
	cout => \wrtSD|Add1~43\);

-- Location: LCCOMB_X34_Y18_N12
\wrtSD|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~44_combout\ = ((\wrtSD|bitNum\(22) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~43\)))) # (GND)
-- \wrtSD|Add1~45\ = CARRY((\wrtSD|bitNum\(22) & ((!\wrtSD|Add1~43\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(22) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(22),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~43\,
	combout => \wrtSD|Add1~44_combout\,
	cout => \wrtSD|Add1~45\);

-- Location: LCCOMB_X33_Y18_N12
\wrtSD|Add6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~44_combout\ = (\wrtSD|Add6~43\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~44_combout\ & VCC))) # (!\wrtSD|Add6~43\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~44_combout\)))))
-- \wrtSD|Add6~45\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~44_combout\ & !\wrtSD|Add6~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~44_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~43\,
	combout => \wrtSD|Add6~44_combout\,
	cout => \wrtSD|Add6~45\);

-- Location: LCCOMB_X33_Y18_N14
\wrtSD|Add6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~46_combout\ = (\wrtSD|Add6~45\ & ((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~46_combout\)))) # (!\wrtSD|Add6~45\ & (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~46_combout\)) # (GND)))
-- \wrtSD|Add6~47\ = CARRY((\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add6~45\) # (!\wrtSD|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~46_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~45\,
	combout => \wrtSD|Add6~46_combout\,
	cout => \wrtSD|Add6~47\);

-- Location: LCCOMB_X34_Y20_N8
\wrtSD|bitNum~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~29_combout\ = (\wrtSD|Add1~46_combout\ & ((\wrtSD|bitNum~12_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~46_combout\)))) # (!\wrtSD|Add1~46_combout\ & (((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~46_combout\,
	datab => \wrtSD|bitNum~12_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|Add6~46_combout\,
	combout => \wrtSD|bitNum~29_combout\);

-- Location: LCFF_X34_Y20_N9
\wrtSD|bitNum[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(23));

-- Location: LCCOMB_X34_Y18_N14
\wrtSD|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~46_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(23) & (!\wrtSD|Add1~45\)) # (!\wrtSD|bitNum\(23) & ((\wrtSD|Add1~45\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(23) & (\wrtSD|Add1~45\ & VCC)) # 
-- (!\wrtSD|bitNum\(23) & (!\wrtSD|Add1~45\))))
-- \wrtSD|Add1~47\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~45\) # (!\wrtSD|bitNum\(23)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(23) & !\wrtSD|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(23),
	datad => VCC,
	cin => \wrtSD|Add1~45\,
	combout => \wrtSD|Add1~46_combout\,
	cout => \wrtSD|Add1~47\);

-- Location: LCCOMB_X33_Y18_N20
\wrtSD|Add6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~52_combout\ = (\wrtSD|Add6~51\ & (!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~52_combout\ & VCC))) # (!\wrtSD|Add6~51\ & ((((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~52_combout\)))))
-- \wrtSD|Add6~53\ = CARRY((!\wrtSD|Selector4117~4_combout\ & (\wrtSD|Add1~52_combout\ & !\wrtSD|Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~52_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~51\,
	combout => \wrtSD|Add6~52_combout\,
	cout => \wrtSD|Add6~53\);

-- Location: LCCOMB_X35_Y18_N28
\wrtSD|bitNum~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~32_combout\ = (\wrtSD|Add1~52_combout\ & ((\wrtSD|bitNum~12_combout\) # ((\wrtSD|Add6~52_combout\ & !\wrtSD|bitNum~39_combout\)))) # (!\wrtSD|Add1~52_combout\ & (\wrtSD|Add6~52_combout\ & (!\wrtSD|bitNum~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~52_combout\,
	datab => \wrtSD|Add6~52_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~32_combout\);

-- Location: LCFF_X35_Y18_N29
\wrtSD|bitNum[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(26));

-- Location: LCCOMB_X34_Y18_N16
\wrtSD|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~48_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(24) $ (\wrtSD|Add1~47\)))) # (GND)
-- \wrtSD|Add1~49\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(24) & !\wrtSD|Add1~47\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(24)) # (!\wrtSD|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(24),
	datad => VCC,
	cin => \wrtSD|Add1~47\,
	combout => \wrtSD|Add1~48_combout\,
	cout => \wrtSD|Add1~49\);

-- Location: LCCOMB_X35_Y18_N12
\wrtSD|bitNum~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~30_combout\ = (\wrtSD|Add6~48_combout\ & (((\wrtSD|Add1~48_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~48_combout\ & (\wrtSD|Add1~48_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~48_combout\,
	datab => \wrtSD|Add1~48_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~30_combout\);

-- Location: LCFF_X35_Y18_N13
\wrtSD|bitNum[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(24));

-- Location: LCCOMB_X34_Y18_N18
\wrtSD|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~50_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(25) & (!\wrtSD|Add1~49\)) # (!\wrtSD|bitNum\(25) & ((\wrtSD|Add1~49\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(25) & (\wrtSD|Add1~49\ & VCC)) # 
-- (!\wrtSD|bitNum\(25) & (!\wrtSD|Add1~49\))))
-- \wrtSD|Add1~51\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~49\) # (!\wrtSD|bitNum\(25)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(25) & !\wrtSD|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(25),
	datad => VCC,
	cin => \wrtSD|Add1~49\,
	combout => \wrtSD|Add1~50_combout\,
	cout => \wrtSD|Add1~51\);

-- Location: LCCOMB_X35_Y18_N14
\wrtSD|bitNum~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~31_combout\ = (\wrtSD|Add6~50_combout\ & (((\wrtSD|Add1~50_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~50_combout\ & (\wrtSD|Add1~50_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~50_combout\,
	datab => \wrtSD|Add1~50_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~31_combout\);

-- Location: LCFF_X35_Y18_N15
\wrtSD|bitNum[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(25));

-- Location: LCCOMB_X34_Y18_N20
\wrtSD|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~52_combout\ = ((\wrtSD|Selector4117~2_combout\ $ (\wrtSD|bitNum\(26) $ (\wrtSD|Add1~51\)))) # (GND)
-- \wrtSD|Add1~53\ = CARRY((\wrtSD|Selector4117~2_combout\ & (\wrtSD|bitNum\(26) & !\wrtSD|Add1~51\)) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(26)) # (!\wrtSD|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(26),
	datad => VCC,
	cin => \wrtSD|Add1~51\,
	combout => \wrtSD|Add1~52_combout\,
	cout => \wrtSD|Add1~53\);

-- Location: LCCOMB_X33_Y18_N26
\wrtSD|Add6~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~58_combout\ = (\wrtSD|Add6~57\ & (((\wrtSD|Selector4117~4_combout\)) # (!\wrtSD|Add1~58_combout\))) # (!\wrtSD|Add6~57\ & (((\wrtSD|Add1~58_combout\ & !\wrtSD|Selector4117~4_combout\)) # (GND)))
-- \wrtSD|Add6~59\ = CARRY(((\wrtSD|Selector4117~4_combout\) # (!\wrtSD|Add6~57\)) # (!\wrtSD|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~58_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~57\,
	combout => \wrtSD|Add6~58_combout\,
	cout => \wrtSD|Add6~59\);

-- Location: LCCOMB_X33_Y18_N28
\wrtSD|Add6~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~60_combout\ = (\wrtSD|Add6~59\ & (\wrtSD|Add1~60_combout\ & (!\wrtSD|Selector4117~4_combout\ & VCC))) # (!\wrtSD|Add6~59\ & ((((\wrtSD|Add1~60_combout\ & !\wrtSD|Selector4117~4_combout\)))))
-- \wrtSD|Add6~61\ = CARRY((\wrtSD|Add1~60_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add6~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~60_combout\,
	datab => \wrtSD|Selector4117~4_combout\,
	datad => VCC,
	cin => \wrtSD|Add6~59\,
	combout => \wrtSD|Add6~60_combout\,
	cout => \wrtSD|Add6~61\);

-- Location: LCCOMB_X34_Y20_N28
\wrtSD|bitNum~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~36_combout\ = (\wrtSD|Add1~60_combout\ & ((\wrtSD|bitNum~12_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~60_combout\)))) # (!\wrtSD|Add1~60_combout\ & (((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~60_combout\,
	datab => \wrtSD|bitNum~12_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|Add6~60_combout\,
	combout => \wrtSD|bitNum~36_combout\);

-- Location: LCFF_X34_Y20_N29
\wrtSD|bitNum[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(30));

-- Location: LCCOMB_X34_Y20_N14
\wrtSD|bitNum~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~35_combout\ = (\wrtSD|Add1~58_combout\ & ((\wrtSD|bitNum~12_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~58_combout\)))) # (!\wrtSD|Add1~58_combout\ & (((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~58_combout\,
	datab => \wrtSD|bitNum~12_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|Add6~58_combout\,
	combout => \wrtSD|bitNum~35_combout\);

-- Location: LCFF_X34_Y20_N15
\wrtSD|bitNum[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(29));

-- Location: LCCOMB_X34_Y18_N22
\wrtSD|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~54_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(27) & (!\wrtSD|Add1~53\)) # (!\wrtSD|bitNum\(27) & ((\wrtSD|Add1~53\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(27) & (\wrtSD|Add1~53\ & VCC)) # 
-- (!\wrtSD|bitNum\(27) & (!\wrtSD|Add1~53\))))
-- \wrtSD|Add1~55\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~53\) # (!\wrtSD|bitNum\(27)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(27) & !\wrtSD|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(27),
	datad => VCC,
	cin => \wrtSD|Add1~53\,
	combout => \wrtSD|Add1~54_combout\,
	cout => \wrtSD|Add1~55\);

-- Location: LCCOMB_X35_Y18_N2
\wrtSD|bitNum~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~33_combout\ = (\wrtSD|Add6~54_combout\ & (((\wrtSD|Add1~54_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~54_combout\ & (\wrtSD|Add1~54_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~54_combout\,
	datab => \wrtSD|Add1~54_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~33_combout\);

-- Location: LCFF_X35_Y18_N3
\wrtSD|bitNum[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(27));

-- Location: LCCOMB_X34_Y18_N24
\wrtSD|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~56_combout\ = ((\wrtSD|bitNum\(28) $ (\wrtSD|Selector4117~2_combout\ $ (\wrtSD|Add1~55\)))) # (GND)
-- \wrtSD|Add1~57\ = CARRY((\wrtSD|bitNum\(28) & ((!\wrtSD|Add1~55\) # (!\wrtSD|Selector4117~2_combout\))) # (!\wrtSD|bitNum\(28) & (!\wrtSD|Selector4117~2_combout\ & !\wrtSD|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(28),
	datab => \wrtSD|Selector4117~2_combout\,
	datad => VCC,
	cin => \wrtSD|Add1~55\,
	combout => \wrtSD|Add1~56_combout\,
	cout => \wrtSD|Add1~57\);

-- Location: LCCOMB_X34_Y18_N26
\wrtSD|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~58_combout\ = (\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(29) & (!\wrtSD|Add1~57\)) # (!\wrtSD|bitNum\(29) & ((\wrtSD|Add1~57\) # (GND))))) # (!\wrtSD|Selector4117~2_combout\ & ((\wrtSD|bitNum\(29) & (\wrtSD|Add1~57\ & VCC)) # 
-- (!\wrtSD|bitNum\(29) & (!\wrtSD|Add1~57\))))
-- \wrtSD|Add1~59\ = CARRY((\wrtSD|Selector4117~2_combout\ & ((!\wrtSD|Add1~57\) # (!\wrtSD|bitNum\(29)))) # (!\wrtSD|Selector4117~2_combout\ & (!\wrtSD|bitNum\(29) & !\wrtSD|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~2_combout\,
	datab => \wrtSD|bitNum\(29),
	datad => VCC,
	cin => \wrtSD|Add1~57\,
	combout => \wrtSD|Add1~58_combout\,
	cout => \wrtSD|Add1~59\);

-- Location: LCCOMB_X34_Y18_N30
\wrtSD|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add1~62_combout\ = \wrtSD|bitNum\(31) $ (\wrtSD|Add1~61\ $ (!\wrtSD|Selector4117~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitNum\(31),
	datad => \wrtSD|Selector4117~2_combout\,
	cin => \wrtSD|Add1~61\,
	combout => \wrtSD|Add1~62_combout\);

-- Location: LCCOMB_X33_Y18_N30
\wrtSD|Add6~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add6~62_combout\ = \wrtSD|Add6~61\ $ (((!\wrtSD|Selector4117~4_combout\ & \wrtSD|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4117~4_combout\,
	datad => \wrtSD|Add1~62_combout\,
	cin => \wrtSD|Add6~61\,
	combout => \wrtSD|Add6~62_combout\);

-- Location: LCCOMB_X34_Y20_N10
\wrtSD|bitNum~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~37_combout\ = (\wrtSD|Add1~62_combout\ & ((\wrtSD|bitNum~12_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~62_combout\)))) # (!\wrtSD|Add1~62_combout\ & (((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~62_combout\,
	datab => \wrtSD|bitNum~12_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|Add6~62_combout\,
	combout => \wrtSD|bitNum~37_combout\);

-- Location: LCFF_X34_Y20_N11
\wrtSD|bitNum[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(31));

-- Location: LCCOMB_X34_Y20_N12
\wrtSD|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~8_combout\ = (\wrtSD|bitNum\(28)) # ((\wrtSD|bitNum\(30)) # ((\wrtSD|bitNum\(29)) # (\wrtSD|bitNum\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(28),
	datab => \wrtSD|bitNum\(30),
	datac => \wrtSD|bitNum\(29),
	datad => \wrtSD|bitNum\(31),
	combout => \wrtSD|Equal1~8_combout\);

-- Location: LCCOMB_X34_Y20_N26
\wrtSD|bitNum~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~25_combout\ = (\wrtSD|Add6~38_combout\ & (((\wrtSD|Add1~38_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~38_combout\ & (\wrtSD|Add1~38_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~38_combout\,
	datab => \wrtSD|Add1~38_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~25_combout\);

-- Location: LCFF_X34_Y20_N27
\wrtSD|bitNum[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(19));

-- Location: LCCOMB_X34_Y20_N4
\wrtSD|bitNum~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~22_combout\ = (\wrtSD|Add6~32_combout\ & (((\wrtSD|Add1~32_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~32_combout\ & (\wrtSD|Add1~32_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~32_combout\,
	datab => \wrtSD|Add1~32_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~22_combout\);

-- Location: LCFF_X34_Y20_N5
\wrtSD|bitNum[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(16));

-- Location: LCCOMB_X34_Y20_N6
\wrtSD|bitNum~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~23_combout\ = (\wrtSD|Add6~34_combout\ & (((\wrtSD|Add1~34_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~34_combout\ & (\wrtSD|Add1~34_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~34_combout\,
	datab => \wrtSD|Add1~34_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~23_combout\);

-- Location: LCFF_X34_Y20_N7
\wrtSD|bitNum[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(17));

-- Location: LCCOMB_X34_Y20_N0
\wrtSD|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~5_combout\ = (\wrtSD|bitNum\(18)) # ((\wrtSD|bitNum\(19)) # ((\wrtSD|bitNum\(16)) # (\wrtSD|bitNum\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(18),
	datab => \wrtSD|bitNum\(19),
	datac => \wrtSD|bitNum\(16),
	datad => \wrtSD|bitNum\(17),
	combout => \wrtSD|Equal1~5_combout\);

-- Location: LCCOMB_X34_Y20_N22
\wrtSD|bitNum~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~28_combout\ = (\wrtSD|Add1~44_combout\ & ((\wrtSD|bitNum~12_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~44_combout\)))) # (!\wrtSD|Add1~44_combout\ & (!\wrtSD|bitNum~39_combout\ & (\wrtSD|Add6~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~44_combout\,
	datab => \wrtSD|bitNum~39_combout\,
	datac => \wrtSD|Add6~44_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~28_combout\);

-- Location: LCFF_X34_Y20_N23
\wrtSD|bitNum[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(22));

-- Location: LCCOMB_X34_Y20_N2
\wrtSD|bitNum~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~26_combout\ = (\wrtSD|Add6~40_combout\ & (((\wrtSD|Add1~40_combout\ & \wrtSD|bitNum~12_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~40_combout\ & (\wrtSD|Add1~40_combout\ & ((\wrtSD|bitNum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~40_combout\,
	datab => \wrtSD|Add1~40_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum~12_combout\,
	combout => \wrtSD|bitNum~26_combout\);

-- Location: LCFF_X34_Y20_N3
\wrtSD|bitNum[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(20));

-- Location: LCCOMB_X34_Y20_N18
\wrtSD|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~6_combout\ = (\wrtSD|bitNum\(21)) # ((\wrtSD|bitNum\(22)) # ((\wrtSD|bitNum\(23)) # (\wrtSD|bitNum\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(21),
	datab => \wrtSD|bitNum\(22),
	datac => \wrtSD|bitNum\(23),
	datad => \wrtSD|bitNum\(20),
	combout => \wrtSD|Equal1~6_combout\);

-- Location: LCCOMB_X35_Y19_N4
\wrtSD|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~9_combout\ = (\wrtSD|Equal1~7_combout\) # ((\wrtSD|Equal1~8_combout\) # ((\wrtSD|Equal1~5_combout\) # (\wrtSD|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal1~7_combout\,
	datab => \wrtSD|Equal1~8_combout\,
	datac => \wrtSD|Equal1~5_combout\,
	datad => \wrtSD|Equal1~6_combout\,
	combout => \wrtSD|Equal1~9_combout\);

-- Location: LCCOMB_X36_Y20_N30
\wrtSD|bitNum[0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum[0]~38_combout\ = ((!\wrtSD|commandSent~2_combout\ & ((!\wrtSD|LessThan2~11_combout\) # (!\wrtSD|replyStarted~regout\)))) # (!\wrtSD|commandSent~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|replyStarted~regout\,
	datac => \wrtSD|commandSent~2_combout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|bitNum[0]~38_combout\);

-- Location: LCCOMB_X36_Y20_N26
\wrtSD|bitNum~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~8_combout\ = (\wrtSD|bitNum[0]~38_combout\ & (((!\wrtSD|Selector4138~4_combout\)))) # (!\wrtSD|bitNum[0]~38_combout\ & (!\wrtSD|Add6~0_combout\ & ((\wrtSD|replyStarted~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~0_combout\,
	datab => \wrtSD|Selector4138~4_combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~8_combout\);

-- Location: LCFF_X36_Y20_N27
\wrtSD|bitNum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(0));

-- Location: LCCOMB_X35_Y20_N30
\wrtSD|Selector4132~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4132~2_combout\ = (\wrtSD|Add1~12_combout\ & (!\wrtSD|Selector4154~0_combout\ & ((!\wrtSD|Selector4117~3_combout\) # (!\wrtSD|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal4~1_combout\,
	datab => \wrtSD|Add1~12_combout\,
	datac => \wrtSD|Selector4117~3_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4132~2_combout\);

-- Location: LCCOMB_X36_Y20_N28
\wrtSD|bitNum~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~11_combout\ = (\wrtSD|Add6~12_combout\ & (((\wrtSD|Selector4132~2_combout\ & \wrtSD|bitNum[0]~38_combout\)) # (!\wrtSD|bitNum~39_combout\))) # (!\wrtSD|Add6~12_combout\ & (\wrtSD|Selector4132~2_combout\ & ((\wrtSD|bitNum[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~12_combout\,
	datab => \wrtSD|Selector4132~2_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~11_combout\);

-- Location: LCFF_X36_Y20_N29
\wrtSD|bitNum[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(6));

-- Location: LCCOMB_X36_Y20_N14
\wrtSD|bitNum~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~10_combout\ = (\wrtSD|Selector4134~2_combout\ & ((\wrtSD|bitNum[0]~38_combout\) # ((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~8_combout\)))) # (!\wrtSD|Selector4134~2_combout\ & (((!\wrtSD|bitNum~39_combout\ & \wrtSD|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4134~2_combout\,
	datab => \wrtSD|bitNum[0]~38_combout\,
	datac => \wrtSD|bitNum~39_combout\,
	datad => \wrtSD|Add6~8_combout\,
	combout => \wrtSD|bitNum~10_combout\);

-- Location: LCFF_X36_Y20_N15
\wrtSD|bitNum[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(4));

-- Location: LCCOMB_X36_Y20_N12
\wrtSD|bitNum~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~9_combout\ = (\wrtSD|bitNum[0]~38_combout\ & (!\wrtSD|Selector4136~4_combout\)) # (!\wrtSD|bitNum[0]~38_combout\ & (((!\wrtSD|Add6~4_combout\ & \wrtSD|replyStarted~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4136~4_combout\,
	datab => \wrtSD|Add6~4_combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~9_combout\);

-- Location: LCFF_X36_Y20_N13
\wrtSD|bitNum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(2));

-- Location: LCCOMB_X36_Y20_N8
\wrtSD|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~0_combout\ = (\wrtSD|bitNum\(7)) # ((\wrtSD|bitNum\(6)) # ((\wrtSD|bitNum\(4)) # (!\wrtSD|bitNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(7),
	datab => \wrtSD|bitNum\(6),
	datac => \wrtSD|bitNum\(4),
	datad => \wrtSD|bitNum\(2),
	combout => \wrtSD|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y20_N4
\wrtSD|bitNum~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~6_combout\ = (\wrtSD|bitNum[0]~38_combout\ & (((!\wrtSD|Selector4135~4_combout\)))) # (!\wrtSD|bitNum[0]~38_combout\ & (!\wrtSD|Add6~6_combout\ & ((\wrtSD|replyStarted~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~6_combout\,
	datab => \wrtSD|Selector4135~4_combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~6_combout\);

-- Location: LCFF_X36_Y20_N5
\wrtSD|bitNum[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(3));

-- Location: LCCOMB_X36_Y20_N2
\wrtSD|bitNum~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~5_combout\ = (\wrtSD|bitNum[0]~38_combout\ & (((!\wrtSD|Selector4133~4_combout\)))) # (!\wrtSD|bitNum[0]~38_combout\ & (\wrtSD|replyStarted~regout\ & ((!\wrtSD|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|replyStarted~regout\,
	datab => \wrtSD|Selector4133~4_combout\,
	datac => \wrtSD|Add6~10_combout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~5_combout\);

-- Location: LCFF_X36_Y20_N3
\wrtSD|bitNum[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(5));

-- Location: LCCOMB_X36_Y20_N22
\wrtSD|Selector4105~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~3_combout\ = (\wrtSD|bitNum\(3) & \wrtSD|bitNum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|bitNum\(3),
	datad => \wrtSD|bitNum\(5),
	combout => \wrtSD|Selector4105~3_combout\);

-- Location: LCCOMB_X36_Y20_N18
\wrtSD|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~1_combout\ = (((\wrtSD|Equal1~0_combout\) # (!\wrtSD|Selector4105~3_combout\)) # (!\wrtSD|bitNum\(0))) # (!\wrtSD|bitNum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|bitNum\(0),
	datac => \wrtSD|Equal1~0_combout\,
	datad => \wrtSD|Selector4105~3_combout\,
	combout => \wrtSD|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y18_N18
\wrtSD|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~3_combout\ = (\wrtSD|bitNum\(12)) # ((\wrtSD|bitNum\(13)) # ((\wrtSD|bitNum\(15)) # (\wrtSD|bitNum\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(12),
	datab => \wrtSD|bitNum\(13),
	datac => \wrtSD|bitNum\(15),
	datad => \wrtSD|bitNum\(14),
	combout => \wrtSD|Equal1~3_combout\);

-- Location: LCCOMB_X35_Y18_N0
\wrtSD|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~2_combout\ = (\wrtSD|bitNum\(8)) # ((\wrtSD|bitNum\(11)) # ((\wrtSD|bitNum\(10)) # (\wrtSD|bitNum\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(8),
	datab => \wrtSD|bitNum\(11),
	datac => \wrtSD|bitNum\(10),
	datad => \wrtSD|bitNum\(9),
	combout => \wrtSD|Equal1~2_combout\);

-- Location: LCCOMB_X35_Y19_N2
\wrtSD|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal1~4_combout\ = (\wrtSD|Equal1~3_combout\) # (\wrtSD|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Equal1~3_combout\,
	datad => \wrtSD|Equal1~2_combout\,
	combout => \wrtSD|Equal1~4_combout\);

-- Location: LCCOMB_X35_Y17_N8
\wrtSD|Selector4117~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~3_combout\ = (!\wrtSD|commandSent~regout\ & (!\wrtSD|Equal1~9_combout\ & (!\wrtSD|Equal1~1_combout\ & !\wrtSD|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|Equal1~9_combout\,
	datac => \wrtSD|Equal1~1_combout\,
	datad => \wrtSD|Equal1~4_combout\,
	combout => \wrtSD|Selector4117~3_combout\);

-- Location: LCCOMB_X35_Y20_N16
\wrtSD|Selector4133~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4133~4_combout\ = (\wrtSD|Equal4~1_combout\ & (!\wrtSD|Selector4117~3_combout\ & ((\wrtSD|Selector4154~0_combout\) # (\wrtSD|Add1~10_combout\)))) # (!\wrtSD|Equal4~1_combout\ & ((\wrtSD|Selector4154~0_combout\) # 
-- ((\wrtSD|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal4~1_combout\,
	datab => \wrtSD|Selector4154~0_combout\,
	datac => \wrtSD|Selector4117~3_combout\,
	datad => \wrtSD|Add1~10_combout\,
	combout => \wrtSD|Selector4133~4_combout\);

-- Location: LCCOMB_X34_Y16_N6
\wrtSD|Selector4137~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4137~4_combout\ = (\wrtSD|Selector4117~3_combout\ & (!\wrtSD|Equal4~1_combout\ & ((\wrtSD|Add1~2_combout\) # (\wrtSD|Selector4154~0_combout\)))) # (!\wrtSD|Selector4117~3_combout\ & (((\wrtSD|Add1~2_combout\) # 
-- (\wrtSD|Selector4154~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~3_combout\,
	datab => \wrtSD|Equal4~1_combout\,
	datac => \wrtSD|Add1~2_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4137~4_combout\);

-- Location: LCCOMB_X34_Y17_N24
\wrtSD|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~0_combout\ = (((!\wrtSD|Selector4135~4_combout\) # (!\wrtSD|Selector4137~4_combout\)) # (!\wrtSD|Selector4138~4_combout\)) # (!\wrtSD|Selector4136~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4136~4_combout\,
	datab => \wrtSD|Selector4138~4_combout\,
	datac => \wrtSD|Selector4137~4_combout\,
	datad => \wrtSD|Selector4135~4_combout\,
	combout => \wrtSD|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y20_N8
\wrtSD|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~1_combout\ = ((\wrtSD|LessThan2~0_combout\ & ((\wrtSD|Selector4117~4_combout\) # (!\wrtSD|Add1~8_combout\)))) # (!\wrtSD|Selector4133~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datac => \wrtSD|Selector4133~4_combout\,
	datad => \wrtSD|LessThan2~0_combout\,
	combout => \wrtSD|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y20_N18
\wrtSD|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~7_combout\ = (!\wrtSD|Add1~22_combout\ & !\wrtSD|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add1~22_combout\,
	datad => \wrtSD|Add1~24_combout\,
	combout => \wrtSD|LessThan2~7_combout\);

-- Location: LCCOMB_X34_Y20_N30
\wrtSD|LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~8_combout\ = (!\wrtSD|Add1~14_combout\ & (!\wrtSD|Add1~18_combout\ & (!\wrtSD|Add1~16_combout\ & !\wrtSD|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~14_combout\,
	datab => \wrtSD|Add1~18_combout\,
	datac => \wrtSD|Add1~16_combout\,
	datad => \wrtSD|Add1~20_combout\,
	combout => \wrtSD|LessThan2~8_combout\);

-- Location: LCCOMB_X35_Y20_N24
\wrtSD|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~9_combout\ = (!\wrtSD|Add1~28_combout\ & (\wrtSD|LessThan2~7_combout\ & (\wrtSD|LessThan2~8_combout\ & !\wrtSD|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~28_combout\,
	datab => \wrtSD|LessThan2~7_combout\,
	datac => \wrtSD|LessThan2~8_combout\,
	datad => \wrtSD|Add1~26_combout\,
	combout => \wrtSD|LessThan2~9_combout\);

-- Location: LCCOMB_X35_Y20_N4
\wrtSD|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~4_combout\ = (!\wrtSD|Add1~38_combout\ & (!\wrtSD|Add1~42_combout\ & (!\wrtSD|Add1~40_combout\ & !\wrtSD|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~38_combout\,
	datab => \wrtSD|Add1~42_combout\,
	datac => \wrtSD|Add1~40_combout\,
	datad => \wrtSD|Add1~44_combout\,
	combout => \wrtSD|LessThan2~4_combout\);

-- Location: LCCOMB_X35_Y18_N10
\wrtSD|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~3_combout\ = (!\wrtSD|Add1~46_combout\ & (!\wrtSD|Add1~48_combout\ & (!\wrtSD|Add1~52_combout\ & !\wrtSD|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~46_combout\,
	datab => \wrtSD|Add1~48_combout\,
	datac => \wrtSD|Add1~52_combout\,
	datad => \wrtSD|Add1~50_combout\,
	combout => \wrtSD|LessThan2~3_combout\);

-- Location: LCCOMB_X35_Y20_N26
\wrtSD|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~2_combout\ = (!\wrtSD|Add1~60_combout\ & (!\wrtSD|Add1~54_combout\ & (!\wrtSD|Add1~58_combout\ & !\wrtSD|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~60_combout\,
	datab => \wrtSD|Add1~54_combout\,
	datac => \wrtSD|Add1~58_combout\,
	datad => \wrtSD|Add1~56_combout\,
	combout => \wrtSD|LessThan2~2_combout\);

-- Location: LCCOMB_X35_Y20_N12
\wrtSD|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~6_combout\ = (\wrtSD|LessThan2~5_combout\ & (\wrtSD|LessThan2~4_combout\ & (\wrtSD|LessThan2~3_combout\ & \wrtSD|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan2~5_combout\,
	datab => \wrtSD|LessThan2~4_combout\,
	datac => \wrtSD|LessThan2~3_combout\,
	datad => \wrtSD|LessThan2~2_combout\,
	combout => \wrtSD|LessThan2~6_combout\);

-- Location: LCCOMB_X35_Y20_N22
\wrtSD|LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~10_combout\ = (\wrtSD|Selector4117~4_combout\) # ((!\wrtSD|Add1~12_combout\ & (\wrtSD|LessThan2~9_combout\ & \wrtSD|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~12_combout\,
	datac => \wrtSD|LessThan2~9_combout\,
	datad => \wrtSD|LessThan2~6_combout\,
	combout => \wrtSD|LessThan2~10_combout\);

-- Location: LCCOMB_X35_Y20_N28
\wrtSD|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan2~11_combout\ = (\wrtSD|Selector4117~4_combout\ & (\wrtSD|LessThan2~1_combout\ & ((\wrtSD|LessThan2~10_combout\)))) # (!\wrtSD|Selector4117~4_combout\ & ((\wrtSD|Add1~62_combout\) # ((\wrtSD|LessThan2~1_combout\ & 
-- \wrtSD|LessThan2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|LessThan2~1_combout\,
	datac => \wrtSD|Add1~62_combout\,
	datad => \wrtSD|LessThan2~10_combout\,
	combout => \wrtSD|LessThan2~11_combout\);

-- Location: LCCOMB_X36_Y20_N16
\wrtSD|commandSent~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|commandSent~4_combout\ = (\wrtSD|Selector4106~2_combout\ & (!\wrtSD|commandSent~3_combout\ & ((\wrtSD|LessThan2~11_combout\) # (!\wrtSD|responseFromSD[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4106~2_combout\,
	datab => \wrtSD|responseFromSD[6]~9_combout\,
	datac => \wrtSD|commandSent~3_combout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|commandSent~4_combout\);

-- Location: LCFF_X36_Y20_N17
\wrtSD|commandSent\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|commandSent~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|commandSent~regout\);

-- Location: LCCOMB_X36_Y18_N24
\wrtSD|responseFromSD[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD[6]~9_combout\ = (\wrtSD|replyStarted~regout\ & \wrtSD|commandSent~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|commandSent~regout\,
	combout => \wrtSD|responseFromSD[6]~9_combout\);

-- Location: LCCOMB_X35_Y16_N16
\wrtSD|state[27]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[27]~102_combout\ = ((\wrtSD|LessThan2~11_combout\) # ((\wrtSD|state[27]~44_combout\ & !\wrtSD|process_0~0_combout\))) # (!\wrtSD|responseFromSD[6]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state[27]~44_combout\,
	datab => \wrtSD|process_0~0_combout\,
	datac => \wrtSD|responseFromSD[6]~9_combout\,
	datad => \wrtSD|LessThan2~11_combout\,
	combout => \wrtSD|state[27]~102_combout\);

-- Location: LCFF_X36_Y16_N19
\wrtSD|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[9]~56_combout\,
	sdata => \wrtSD|state\(9),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(9));

-- Location: LCCOMB_X36_Y16_N20
\wrtSD|state[10]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[10]~58_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(10) $ (\wrtSD|state[9]~57\)))) # (GND)
-- \wrtSD|state[10]~59\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(10) & !\wrtSD|state[9]~57\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(10)) # (!\wrtSD|state[9]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(10),
	datad => VCC,
	cin => \wrtSD|state[9]~57\,
	combout => \wrtSD|state[10]~58_combout\,
	cout => \wrtSD|state[10]~59\);

-- Location: LCFF_X36_Y16_N21
\wrtSD|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[10]~58_combout\,
	sdata => \wrtSD|state\(10),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(10));

-- Location: LCCOMB_X36_Y16_N22
\wrtSD|state[11]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[11]~60_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(11) & (!\wrtSD|state[10]~59\)) # (!\wrtSD|state\(11) & ((\wrtSD|state[10]~59\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(11) & (\wrtSD|state[10]~59\ & VCC)) 
-- # (!\wrtSD|state\(11) & (!\wrtSD|state[10]~59\))))
-- \wrtSD|state[11]~61\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[10]~59\) # (!\wrtSD|state\(11)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(11) & !\wrtSD|state[10]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(11),
	datad => VCC,
	cin => \wrtSD|state[10]~59\,
	combout => \wrtSD|state[11]~60_combout\,
	cout => \wrtSD|state[11]~61\);

-- Location: LCFF_X36_Y16_N23
\wrtSD|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[11]~60_combout\,
	sdata => \wrtSD|state\(11),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(11));

-- Location: LCCOMB_X36_Y16_N24
\wrtSD|state[12]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[12]~62_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(12) $ (\wrtSD|state[11]~61\)))) # (GND)
-- \wrtSD|state[12]~63\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(12) & !\wrtSD|state[11]~61\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(12)) # (!\wrtSD|state[11]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(12),
	datad => VCC,
	cin => \wrtSD|state[11]~61\,
	combout => \wrtSD|state[12]~62_combout\,
	cout => \wrtSD|state[12]~63\);

-- Location: LCFF_X36_Y16_N25
\wrtSD|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[12]~62_combout\,
	sdata => \wrtSD|state\(12),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(12));

-- Location: LCCOMB_X36_Y16_N26
\wrtSD|state[13]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[13]~64_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(13) & (!\wrtSD|state[12]~63\)) # (!\wrtSD|state\(13) & ((\wrtSD|state[12]~63\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(13) & (\wrtSD|state[12]~63\ & VCC)) 
-- # (!\wrtSD|state\(13) & (!\wrtSD|state[12]~63\))))
-- \wrtSD|state[13]~65\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[12]~63\) # (!\wrtSD|state\(13)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(13) & !\wrtSD|state[12]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(13),
	datad => VCC,
	cin => \wrtSD|state[12]~63\,
	combout => \wrtSD|state[13]~64_combout\,
	cout => \wrtSD|state[13]~65\);

-- Location: LCFF_X36_Y16_N27
\wrtSD|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[13]~64_combout\,
	sdata => \wrtSD|state\(13),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(13));

-- Location: LCCOMB_X36_Y16_N28
\wrtSD|state[14]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[14]~66_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(14) $ (\wrtSD|state[13]~65\)))) # (GND)
-- \wrtSD|state[14]~67\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(14) & !\wrtSD|state[13]~65\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(14)) # (!\wrtSD|state[13]~65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(14),
	datad => VCC,
	cin => \wrtSD|state[13]~65\,
	combout => \wrtSD|state[14]~66_combout\,
	cout => \wrtSD|state[14]~67\);

-- Location: LCFF_X36_Y16_N29
\wrtSD|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[14]~66_combout\,
	sdata => \wrtSD|state\(14),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(14));

-- Location: LCCOMB_X36_Y16_N30
\wrtSD|state[15]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[15]~68_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(15) & (!\wrtSD|state[14]~67\)) # (!\wrtSD|state\(15) & ((\wrtSD|state[14]~67\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(15) & (\wrtSD|state[14]~67\ & VCC)) 
-- # (!\wrtSD|state\(15) & (!\wrtSD|state[14]~67\))))
-- \wrtSD|state[15]~69\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[14]~67\) # (!\wrtSD|state\(15)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(15) & !\wrtSD|state[14]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(15),
	datad => VCC,
	cin => \wrtSD|state[14]~67\,
	combout => \wrtSD|state[15]~68_combout\,
	cout => \wrtSD|state[15]~69\);

-- Location: LCFF_X36_Y16_N31
\wrtSD|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[15]~68_combout\,
	sdata => \wrtSD|state\(15),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(15));

-- Location: LCCOMB_X36_Y15_N0
\wrtSD|state[16]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[16]~70_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(16) $ (\wrtSD|state[15]~69\)))) # (GND)
-- \wrtSD|state[16]~71\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(16) & !\wrtSD|state[15]~69\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(16)) # (!\wrtSD|state[15]~69\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(16),
	datad => VCC,
	cin => \wrtSD|state[15]~69\,
	combout => \wrtSD|state[16]~70_combout\,
	cout => \wrtSD|state[16]~71\);

-- Location: LCFF_X36_Y15_N1
\wrtSD|state[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[16]~70_combout\,
	sdata => \wrtSD|state\(16),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(16));

-- Location: LCCOMB_X36_Y15_N2
\wrtSD|state[17]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[17]~72_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(17) & (!\wrtSD|state[16]~71\)) # (!\wrtSD|state\(17) & ((\wrtSD|state[16]~71\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(17) & (\wrtSD|state[16]~71\ & VCC)) 
-- # (!\wrtSD|state\(17) & (!\wrtSD|state[16]~71\))))
-- \wrtSD|state[17]~73\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[16]~71\) # (!\wrtSD|state\(17)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(17) & !\wrtSD|state[16]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(17),
	datad => VCC,
	cin => \wrtSD|state[16]~71\,
	combout => \wrtSD|state[17]~72_combout\,
	cout => \wrtSD|state[17]~73\);

-- Location: LCFF_X36_Y15_N3
\wrtSD|state[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[17]~72_combout\,
	sdata => \wrtSD|state\(17),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(17));

-- Location: LCCOMB_X36_Y15_N4
\wrtSD|state[18]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[18]~74_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(18) $ (\wrtSD|state[17]~73\)))) # (GND)
-- \wrtSD|state[18]~75\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(18) & !\wrtSD|state[17]~73\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(18)) # (!\wrtSD|state[17]~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(18),
	datad => VCC,
	cin => \wrtSD|state[17]~73\,
	combout => \wrtSD|state[18]~74_combout\,
	cout => \wrtSD|state[18]~75\);

-- Location: LCFF_X36_Y15_N5
\wrtSD|state[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[18]~74_combout\,
	sdata => \wrtSD|state\(18),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(18));

-- Location: LCCOMB_X36_Y15_N6
\wrtSD|state[19]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[19]~76_combout\ = (\wrtSD|state\(19) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[18]~75\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[18]~75\ & VCC)))) # (!\wrtSD|state\(19) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[18]~75\) 
-- # (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[18]~75\))))
-- \wrtSD|state[19]~77\ = CARRY((\wrtSD|state\(19) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[18]~75\)) # (!\wrtSD|state\(19) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[18]~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(19),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[18]~75\,
	combout => \wrtSD|state[19]~76_combout\,
	cout => \wrtSD|state[19]~77\);

-- Location: LCCOMB_X36_Y15_N8
\wrtSD|state[20]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[20]~78_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(20) $ (\wrtSD|state[19]~77\)))) # (GND)
-- \wrtSD|state[20]~79\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(20) & !\wrtSD|state[19]~77\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(20)) # (!\wrtSD|state[19]~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(20),
	datad => VCC,
	cin => \wrtSD|state[19]~77\,
	combout => \wrtSD|state[20]~78_combout\,
	cout => \wrtSD|state[20]~79\);

-- Location: LCFF_X36_Y15_N9
\wrtSD|state[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[20]~78_combout\,
	sdata => \wrtSD|state\(20),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(20));

-- Location: LCCOMB_X36_Y15_N10
\wrtSD|state[21]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[21]~80_combout\ = (\wrtSD|state\(21) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[20]~79\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[20]~79\ & VCC)))) # (!\wrtSD|state\(21) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[20]~79\) 
-- # (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[20]~79\))))
-- \wrtSD|state[21]~81\ = CARRY((\wrtSD|state\(21) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[20]~79\)) # (!\wrtSD|state\(21) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[20]~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(21),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[20]~79\,
	combout => \wrtSD|state[21]~80_combout\,
	cout => \wrtSD|state[21]~81\);

-- Location: LCCOMB_X36_Y15_N12
\wrtSD|state[22]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[22]~82_combout\ = ((\wrtSD|process_0~0_combout\ $ (\wrtSD|state\(22) $ (\wrtSD|state[21]~81\)))) # (GND)
-- \wrtSD|state[22]~83\ = CARRY((\wrtSD|process_0~0_combout\ & (\wrtSD|state\(22) & !\wrtSD|state[21]~81\)) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(22)) # (!\wrtSD|state[21]~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(22),
	datad => VCC,
	cin => \wrtSD|state[21]~81\,
	combout => \wrtSD|state[22]~82_combout\,
	cout => \wrtSD|state[22]~83\);

-- Location: LCFF_X36_Y15_N13
\wrtSD|state[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[22]~82_combout\,
	sdata => \wrtSD|state\(22),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(22));

-- Location: LCFF_X36_Y15_N11
\wrtSD|state[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[21]~80_combout\,
	sdata => \wrtSD|state\(21),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(21));

-- Location: LCFF_X36_Y15_N7
\wrtSD|state[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[19]~76_combout\,
	sdata => \wrtSD|state\(19),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(19));

-- Location: LCCOMB_X35_Y19_N26
\wrtSD|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~5_combout\ = (!\wrtSD|state\(20) & (!\wrtSD|state\(22) & (!\wrtSD|state\(21) & !\wrtSD|state\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(20),
	datab => \wrtSD|state\(22),
	datac => \wrtSD|state\(21),
	datad => \wrtSD|state\(19),
	combout => \wrtSD|Equal2~5_combout\);

-- Location: LCCOMB_X36_Y15_N14
\wrtSD|state[23]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[23]~84_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(23) & (!\wrtSD|state[22]~83\)) # (!\wrtSD|state\(23) & ((\wrtSD|state[22]~83\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(23) & (\wrtSD|state[22]~83\ & VCC)) 
-- # (!\wrtSD|state\(23) & (!\wrtSD|state[22]~83\))))
-- \wrtSD|state[23]~85\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[22]~83\) # (!\wrtSD|state\(23)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(23) & !\wrtSD|state[22]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(23),
	datad => VCC,
	cin => \wrtSD|state[22]~83\,
	combout => \wrtSD|state[23]~84_combout\,
	cout => \wrtSD|state[23]~85\);

-- Location: LCFF_X36_Y15_N15
\wrtSD|state[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[23]~84_combout\,
	sdata => \wrtSD|state\(23),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(23));

-- Location: LCCOMB_X36_Y15_N18
\wrtSD|state[25]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[25]~88_combout\ = (\wrtSD|state\(25) & ((\wrtSD|process_0~0_combout\ & (!\wrtSD|state[24]~87\)) # (!\wrtSD|process_0~0_combout\ & (\wrtSD|state[24]~87\ & VCC)))) # (!\wrtSD|state\(25) & ((\wrtSD|process_0~0_combout\ & ((\wrtSD|state[24]~87\) 
-- # (GND))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state[24]~87\))))
-- \wrtSD|state[25]~89\ = CARRY((\wrtSD|state\(25) & (\wrtSD|process_0~0_combout\ & !\wrtSD|state[24]~87\)) # (!\wrtSD|state\(25) & ((\wrtSD|process_0~0_combout\) # (!\wrtSD|state[24]~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(25),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[24]~87\,
	combout => \wrtSD|state[25]~88_combout\,
	cout => \wrtSD|state[25]~89\);

-- Location: LCFF_X36_Y15_N19
\wrtSD|state[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[25]~88_combout\,
	sdata => \wrtSD|state\(25),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(25));

-- Location: LCCOMB_X36_Y15_N20
\wrtSD|state[26]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[26]~90_combout\ = ((\wrtSD|state\(26) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[25]~89\)))) # (GND)
-- \wrtSD|state[26]~91\ = CARRY((\wrtSD|state\(26) & ((!\wrtSD|state[25]~89\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(26) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[25]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(26),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[25]~89\,
	combout => \wrtSD|state[26]~90_combout\,
	cout => \wrtSD|state[26]~91\);

-- Location: LCFF_X36_Y15_N21
\wrtSD|state[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[26]~90_combout\,
	sdata => \wrtSD|state\(26),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(26));

-- Location: LCCOMB_X35_Y19_N24
\wrtSD|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~6_combout\ = (!\wrtSD|state\(24) & (!\wrtSD|state\(23) & (!\wrtSD|state\(25) & !\wrtSD|state\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(24),
	datab => \wrtSD|state\(23),
	datac => \wrtSD|state\(25),
	datad => \wrtSD|state\(26),
	combout => \wrtSD|Equal2~6_combout\);

-- Location: LCCOMB_X36_Y15_N22
\wrtSD|state[27]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[27]~92_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(27) & (!\wrtSD|state[26]~91\)) # (!\wrtSD|state\(27) & ((\wrtSD|state[26]~91\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(27) & (\wrtSD|state[26]~91\ & VCC)) 
-- # (!\wrtSD|state\(27) & (!\wrtSD|state[26]~91\))))
-- \wrtSD|state[27]~93\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[26]~91\) # (!\wrtSD|state\(27)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(27) & !\wrtSD|state[26]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(27),
	datad => VCC,
	cin => \wrtSD|state[26]~91\,
	combout => \wrtSD|state[27]~92_combout\,
	cout => \wrtSD|state[27]~93\);

-- Location: LCFF_X36_Y15_N23
\wrtSD|state[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[27]~92_combout\,
	sdata => \wrtSD|state\(27),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(27));

-- Location: LCCOMB_X36_Y15_N24
\wrtSD|state[28]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[28]~94_combout\ = ((\wrtSD|state\(28) $ (\wrtSD|process_0~0_combout\ $ (\wrtSD|state[27]~93\)))) # (GND)
-- \wrtSD|state[28]~95\ = CARRY((\wrtSD|state\(28) & ((!\wrtSD|state[27]~93\) # (!\wrtSD|process_0~0_combout\))) # (!\wrtSD|state\(28) & (!\wrtSD|process_0~0_combout\ & !\wrtSD|state[27]~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(28),
	datab => \wrtSD|process_0~0_combout\,
	datad => VCC,
	cin => \wrtSD|state[27]~93\,
	combout => \wrtSD|state[28]~94_combout\,
	cout => \wrtSD|state[28]~95\);

-- Location: LCFF_X36_Y15_N25
\wrtSD|state[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[28]~94_combout\,
	sdata => \wrtSD|state\(28),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(28));

-- Location: LCCOMB_X36_Y15_N26
\wrtSD|state[29]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|state[29]~96_combout\ = (\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(29) & (!\wrtSD|state[28]~95\)) # (!\wrtSD|state\(29) & ((\wrtSD|state[28]~95\) # (GND))))) # (!\wrtSD|process_0~0_combout\ & ((\wrtSD|state\(29) & (\wrtSD|state[28]~95\ & VCC)) 
-- # (!\wrtSD|state\(29) & (!\wrtSD|state[28]~95\))))
-- \wrtSD|state[29]~97\ = CARRY((\wrtSD|process_0~0_combout\ & ((!\wrtSD|state[28]~95\) # (!\wrtSD|state\(29)))) # (!\wrtSD|process_0~0_combout\ & (!\wrtSD|state\(29) & !\wrtSD|state[28]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|process_0~0_combout\,
	datab => \wrtSD|state\(29),
	datad => VCC,
	cin => \wrtSD|state[28]~95\,
	combout => \wrtSD|state[29]~96_combout\,
	cout => \wrtSD|state[29]~97\);

-- Location: LCFF_X36_Y15_N27
\wrtSD|state[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[29]~96_combout\,
	sdata => \wrtSD|state\(29),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(29));

-- Location: LCFF_X36_Y15_N29
\wrtSD|state[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[30]~98_combout\,
	sdata => \wrtSD|state\(30),
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(30));

-- Location: LCCOMB_X35_Y19_N10
\wrtSD|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~7_combout\ = (!\wrtSD|state\(27) & (!\wrtSD|state\(28) & (!\wrtSD|state\(30) & !\wrtSD|state\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(27),
	datab => \wrtSD|state\(28),
	datac => \wrtSD|state\(30),
	datad => \wrtSD|state\(29),
	combout => \wrtSD|Equal2~7_combout\);

-- Location: LCCOMB_X35_Y19_N16
\wrtSD|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~8_combout\ = (!\wrtSD|state\(31) & (\wrtSD|Equal2~5_combout\ & (\wrtSD|Equal2~6_combout\ & \wrtSD|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(31),
	datab => \wrtSD|Equal2~5_combout\,
	datac => \wrtSD|Equal2~6_combout\,
	datad => \wrtSD|Equal2~7_combout\,
	combout => \wrtSD|Equal2~8_combout\);

-- Location: LCCOMB_X35_Y17_N28
\wrtSD|Equal2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal2~11_combout\ = (\wrtSD|Equal2~8_combout\ & \wrtSD|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|Equal2~11_combout\);

-- Location: LCCOMB_X35_Y17_N24
\wrtSD|Selector4201~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4201~0_combout\ = (\wrtSD|state\(2)) # ((\wrtSD|state\(1) $ (!\wrtSD|state\(0))) # (!\wrtSD|Equal2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal2~11_combout\,
	combout => \wrtSD|Selector4201~0_combout\);

-- Location: LCCOMB_X35_Y16_N0
\wrtSD|Selector4201~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4201~1_combout\ = (\wrtSD|Equal3~1_combout\) # ((\wrtSD|expectedResponse\(6) & \wrtSD|Selector4201~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal3~1_combout\,
	datac => \wrtSD|expectedResponse\(6),
	datad => \wrtSD|Selector4201~0_combout\,
	combout => \wrtSD|Selector4201~1_combout\);

-- Location: LCFF_X35_Y16_N1
\wrtSD|expectedResponse[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4201~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|expectedResponse\(6));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SD_DAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SD_DAT,
	combout => \SD_DAT~combout\);

-- Location: LCFF_X35_Y16_N7
\wrtSD|responseFromSD[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~8_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(6));

-- Location: LCCOMB_X35_Y16_N24
\wrtSD|Decoder2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~5_combout\ = (!\wrtSD|Selector4117~4_combout\ & (!\wrtSD|Add1~0_combout\ & \wrtSD|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datac => \wrtSD|Add1~0_combout\,
	datad => \wrtSD|Add1~2_combout\,
	combout => \wrtSD|Decoder2~5_combout\);

-- Location: LCCOMB_X35_Y16_N30
\wrtSD|Decoder2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~6_combout\ = (!\wrtSD|Add1~6_combout\ & (!\wrtSD|Add1~8_combout\ & (\wrtSD|Decoder2~5_combout\ & !\wrtSD|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~6_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datac => \wrtSD|Decoder2~5_combout\,
	datad => \wrtSD|Add1~10_combout\,
	combout => \wrtSD|Decoder2~6_combout\);

-- Location: LCCOMB_X35_Y16_N6
\wrtSD|responseFromSD~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~8_combout\ = (\wrtSD|Selector4136~4_combout\ & ((\wrtSD|Decoder2~6_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~6_combout\ & ((\wrtSD|responseFromSD\(6)))))) # (!\wrtSD|Selector4136~4_combout\ & 
-- (((\wrtSD|responseFromSD\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4136~4_combout\,
	datab => \SD_DAT~combout\,
	datac => \wrtSD|responseFromSD\(6),
	datad => \wrtSD|Decoder2~6_combout\,
	combout => \wrtSD|responseFromSD~8_combout\);

-- Location: LCCOMB_X35_Y16_N4
\wrtSD|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal11~0_combout\ = \wrtSD|responseFromSD~8_combout\ $ (((!\wrtSD|Equal3~1_combout\ & ((!\wrtSD|Selector4201~0_combout\) # (!\wrtSD|expectedResponse\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal3~1_combout\,
	datab => \wrtSD|expectedResponse\(6),
	datac => \wrtSD|Selector4201~0_combout\,
	datad => \wrtSD|responseFromSD~8_combout\,
	combout => \wrtSD|Equal11~0_combout\);

-- Location: LCFF_X35_Y17_N15
\wrtSD|expectedResponse[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|expectedResponse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|expectedResponse\(0));

-- Location: LCCOMB_X35_Y17_N14
\wrtSD|expectedResponse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|expectedResponse~0_combout\ = (\wrtSD|expectedResponse\(0)) # ((\wrtSD|Equal4~1_combout\) # ((\wrtSD|Equal2~9_combout\ & \wrtSD|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~9_combout\,
	datab => \wrtSD|Equal3~0_combout\,
	datac => \wrtSD|expectedResponse\(0),
	datad => \wrtSD|Equal4~1_combout\,
	combout => \wrtSD|expectedResponse~0_combout\);

-- Location: LCFF_X34_Y17_N15
\wrtSD|responseFromSD[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~3_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(5));

-- Location: LCCOMB_X34_Y17_N6
\wrtSD|Decoder2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~3_combout\ = (!\wrtSD|Selector4117~4_combout\ & (!\wrtSD|Add1~2_combout\ & \wrtSD|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Add1~2_combout\,
	datad => \wrtSD|Add1~4_combout\,
	combout => \wrtSD|Decoder2~3_combout\);

-- Location: LCCOMB_X34_Y17_N28
\wrtSD|Decoder2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~4_combout\ = (!\wrtSD|Add1~6_combout\ & (!\wrtSD|Add1~8_combout\ & (!\wrtSD|Add1~10_combout\ & \wrtSD|Decoder2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~6_combout\,
	datab => \wrtSD|Add1~8_combout\,
	datac => \wrtSD|Add1~10_combout\,
	datad => \wrtSD|Decoder2~3_combout\,
	combout => \wrtSD|Decoder2~4_combout\);

-- Location: LCCOMB_X34_Y17_N14
\wrtSD|responseFromSD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~3_combout\ = (\wrtSD|Selector4138~4_combout\ & ((\wrtSD|Decoder2~4_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~4_combout\ & ((\wrtSD|responseFromSD\(5)))))) # (!\wrtSD|Selector4138~4_combout\ & 
-- (((\wrtSD|responseFromSD\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD_DAT~combout\,
	datab => \wrtSD|Selector4138~4_combout\,
	datac => \wrtSD|responseFromSD\(5),
	datad => \wrtSD|Decoder2~4_combout\,
	combout => \wrtSD|responseFromSD~3_combout\);

-- Location: LCFF_X35_Y16_N29
\wrtSD|responseFromSD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~2_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(0));

-- Location: LCCOMB_X35_Y16_N22
\wrtSD|responseFromSD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~0_combout\ = (\wrtSD|Decoder2~2_combout\ & (!\wrtSD|Selector4137~4_combout\ & !\wrtSD|Selector4133~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder2~2_combout\,
	datac => \wrtSD|Selector4137~4_combout\,
	datad => \wrtSD|Selector4133~4_combout\,
	combout => \wrtSD|responseFromSD~0_combout\);

-- Location: LCCOMB_X35_Y16_N28
\wrtSD|responseFromSD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~2_combout\ = (\wrtSD|responseFromSD~1_combout\ & (((\wrtSD|responseFromSD\(0))))) # (!\wrtSD|responseFromSD~1_combout\ & ((\wrtSD|responseFromSD~0_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|responseFromSD~0_combout\ & 
-- ((\wrtSD|responseFromSD\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|responseFromSD~1_combout\,
	datab => \SD_DAT~combout\,
	datac => \wrtSD|responseFromSD\(0),
	datad => \wrtSD|responseFromSD~0_combout\,
	combout => \wrtSD|responseFromSD~2_combout\);

-- Location: LCCOMB_X35_Y16_N14
\wrtSD|Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal13~0_combout\ = (\wrtSD|responseFromSD~3_combout\ & (\wrtSD|expectedResponse~0_combout\ $ (!\wrtSD|responseFromSD~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|expectedResponse~0_combout\,
	datac => \wrtSD|responseFromSD~3_combout\,
	datad => \wrtSD|responseFromSD~2_combout\,
	combout => \wrtSD|Equal13~0_combout\);

-- Location: LCFF_X34_Y17_N17
\wrtSD|responseFromSD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~6_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(3));

-- Location: LCCOMB_X34_Y16_N10
\wrtSD|Decoder2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~8_combout\ = (\wrtSD|Add1~0_combout\ & (!\wrtSD|Selector4117~4_combout\ & !\wrtSD|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add1~0_combout\,
	datac => \wrtSD|Selector4117~4_combout\,
	datad => \wrtSD|Add1~4_combout\,
	combout => \wrtSD|Decoder2~8_combout\);

-- Location: LCCOMB_X34_Y17_N16
\wrtSD|responseFromSD~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~6_combout\ = (\wrtSD|Decoder2~7_combout\ & ((\wrtSD|Decoder2~8_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~8_combout\ & ((\wrtSD|responseFromSD\(3)))))) # (!\wrtSD|Decoder2~7_combout\ & (((\wrtSD|responseFromSD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder2~7_combout\,
	datab => \SD_DAT~combout\,
	datac => \wrtSD|responseFromSD\(3),
	datad => \wrtSD|Decoder2~8_combout\,
	combout => \wrtSD|responseFromSD~6_combout\);

-- Location: LCFF_X34_Y17_N21
\wrtSD|responseFromSD[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~4_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(4));

-- Location: LCCOMB_X34_Y17_N20
\wrtSD|responseFromSD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~4_combout\ = (\wrtSD|Selector4138~4_combout\ & (((\wrtSD|responseFromSD\(4))))) # (!\wrtSD|Selector4138~4_combout\ & ((\wrtSD|Decoder2~4_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~4_combout\ & 
-- ((\wrtSD|responseFromSD\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD_DAT~combout\,
	datab => \wrtSD|Selector4138~4_combout\,
	datac => \wrtSD|responseFromSD\(4),
	datad => \wrtSD|Decoder2~4_combout\,
	combout => \wrtSD|responseFromSD~4_combout\);

-- Location: LCFF_X34_Y16_N15
\wrtSD|responseFromSD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|responseFromSD~7_combout\,
	ena => \wrtSD|responseFromSD[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|responseFromSD\(1));

-- Location: LCCOMB_X35_Y16_N26
\wrtSD|Selector4117~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4117~5_combout\ = (\wrtSD|Selector4117~3_combout\ & \wrtSD|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Selector4117~3_combout\,
	datad => \wrtSD|Equal4~1_combout\,
	combout => \wrtSD|Selector4117~5_combout\);

-- Location: LCCOMB_X35_Y16_N12
\wrtSD|Decoder2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~2_combout\ = (\wrtSD|Selector4117~4_combout\ & (\wrtSD|Selector4117~5_combout\)) # (!\wrtSD|Selector4117~4_combout\ & (((!\wrtSD|Add1~8_combout\ & !\wrtSD|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~4_combout\,
	datab => \wrtSD|Selector4117~5_combout\,
	datac => \wrtSD|Add1~8_combout\,
	datad => \wrtSD|Add1~6_combout\,
	combout => \wrtSD|Decoder2~2_combout\);

-- Location: LCCOMB_X34_Y16_N28
\wrtSD|Decoder2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder2~9_combout\ = (!\wrtSD|Selector4137~4_combout\ & (\wrtSD|Decoder2~2_combout\ & !\wrtSD|Selector4133~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4137~4_combout\,
	datac => \wrtSD|Decoder2~2_combout\,
	datad => \wrtSD|Selector4133~4_combout\,
	combout => \wrtSD|Decoder2~9_combout\);

-- Location: LCCOMB_X34_Y16_N14
\wrtSD|responseFromSD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|responseFromSD~7_combout\ = (\wrtSD|Decoder2~8_combout\ & ((\wrtSD|Decoder2~9_combout\ & (!\SD_DAT~combout\)) # (!\wrtSD|Decoder2~9_combout\ & ((\wrtSD|responseFromSD\(1)))))) # (!\wrtSD|Decoder2~8_combout\ & (((\wrtSD|responseFromSD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder2~8_combout\,
	datab => \SD_DAT~combout\,
	datac => \wrtSD|responseFromSD\(1),
	datad => \wrtSD|Decoder2~9_combout\,
	combout => \wrtSD|responseFromSD~7_combout\);

-- Location: LCCOMB_X35_Y16_N2
\wrtSD|Equal13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal13~1_combout\ = (\wrtSD|responseFromSD~5_combout\ & (\wrtSD|responseFromSD~6_combout\ & (\wrtSD|responseFromSD~4_combout\ & \wrtSD|responseFromSD~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|responseFromSD~5_combout\,
	datab => \wrtSD|responseFromSD~6_combout\,
	datac => \wrtSD|responseFromSD~4_combout\,
	datad => \wrtSD|responseFromSD~7_combout\,
	combout => \wrtSD|Equal13~1_combout\);

-- Location: LCCOMB_X35_Y16_N18
\wrtSD|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|process_0~0_combout\ = (\wrtSD|Equal12~0_combout\) # ((!\wrtSD|Equal11~0_combout\ & (\wrtSD|Equal13~0_combout\ & \wrtSD|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal12~0_combout\,
	datab => \wrtSD|Equal11~0_combout\,
	datac => \wrtSD|Equal13~0_combout\,
	datad => \wrtSD|Equal13~1_combout\,
	combout => \wrtSD|process_0~0_combout\);

-- Location: LCCOMB_X35_Y17_N2
\wrtSD|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal8~0_combout\ = (\wrtSD|state\(1) & (!\wrtSD|state\(0) & (\wrtSD|state\(2) & \wrtSD|Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal2~11_combout\,
	combout => \wrtSD|Equal8~0_combout\);

-- Location: LCCOMB_X32_Y14_N16
\wrtSD|bitsGathered[19]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitsGathered[19]~0_combout\ = ((\wrtSD|LessThan0~10_combout\ & !\wrtSD|Equal8~0_combout\)) # (!\wrtSD|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|LessThan0~10_combout\,
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|bitsGathered[19]~0_combout\);

-- Location: LCCOMB_X33_Y13_N2
\wrtSD|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~2_combout\ = (\wrtSD|bitsGathered\(1) & (!\wrtSD|Add4~1\)) # (!\wrtSD|bitsGathered\(1) & ((\wrtSD|Add4~1\) # (GND)))
-- \wrtSD|Add4~3\ = CARRY((!\wrtSD|Add4~1\) # (!\wrtSD|bitsGathered\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(1),
	datad => VCC,
	cin => \wrtSD|Add4~1\,
	combout => \wrtSD|Add4~2_combout\,
	cout => \wrtSD|Add4~3\);

-- Location: LCCOMB_X32_Y13_N14
\wrtSD|Selector4232~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4232~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~2_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~2_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Add4~2_combout\,
	combout => \wrtSD|Selector4232~0_combout\);

-- Location: LCCOMB_X33_Y14_N22
\wrtSD|bitsGathered[19]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitsGathered[19]~2_combout\ = (!\wrtSD|bitsGathered[19]~1_combout\ & ((!\wrtSD|Equal8~0_combout\) # (!\wrtSD|commandSent~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~1_combout\,
	datac => \wrtSD|commandSent~regout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|bitsGathered[19]~2_combout\);

-- Location: LCFF_X32_Y13_N15
\wrtSD|bitsGathered[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4232~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(1));

-- Location: LCCOMB_X31_Y13_N0
\wrtSD|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~0_combout\ = \wrtSD|bitsGathered\(0) $ (GND)
-- \wrtSD|Add3~1\ = CARRY(!\wrtSD|bitsGathered\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(0),
	datad => VCC,
	combout => \wrtSD|Add3~0_combout\,
	cout => \wrtSD|Add3~1\);

-- Location: LCCOMB_X32_Y14_N24
\wrtSD|Selector4233~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4233~0_combout\ = (!\wrtSD|LessThan0~10_combout\ & (\wrtSD|Add3~0_combout\ & !\wrtSD|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|LessThan0~10_combout\,
	datac => \wrtSD|Add3~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4233~0_combout\);

-- Location: LCCOMB_X33_Y14_N16
\wrtSD|Selector4233~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4233~1_combout\ = (!\wrtSD|Selector4233~0_combout\ & (\wrtSD|Equal9~0_combout\ & ((!\wrtSD|Equal8~0_combout\) # (!\wrtSD|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~0_combout\,
	datab => \wrtSD|Selector4233~0_combout\,
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4233~1_combout\);

-- Location: LCFF_X33_Y13_N21
\wrtSD|bitsGathered[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4233~1_combout\,
	sload => VCC,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(0));

-- Location: LCCOMB_X31_Y13_N4
\wrtSD|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~4_combout\ = (\wrtSD|bitsGathered\(2) & (!\wrtSD|Add3~3\ & VCC)) # (!\wrtSD|bitsGathered\(2) & (\wrtSD|Add3~3\ $ (GND)))
-- \wrtSD|Add3~5\ = CARRY((!\wrtSD|bitsGathered\(2) & !\wrtSD|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(2),
	datad => VCC,
	cin => \wrtSD|Add3~3\,
	combout => \wrtSD|Add3~4_combout\,
	cout => \wrtSD|Add3~5\);

-- Location: LCCOMB_X32_Y13_N22
\wrtSD|Selector4231~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4231~0_combout\ = (!\wrtSD|LessThan0~10_combout\ & (\wrtSD|Add3~4_combout\ & !\wrtSD|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan0~10_combout\,
	datab => \wrtSD|Add3~4_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4231~0_combout\);

-- Location: LCCOMB_X32_Y13_N24
\wrtSD|Selector4231~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4231~1_combout\ = (\wrtSD|Equal9~0_combout\ & (!\wrtSD|Selector4231~0_combout\ & ((!\wrtSD|Equal8~0_combout\) # (!\wrtSD|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~4_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Selector4231~0_combout\,
	combout => \wrtSD|Selector4231~1_combout\);

-- Location: LCFF_X32_Y13_N25
\wrtSD|bitsGathered[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4231~1_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(2));

-- Location: LCCOMB_X33_Y13_N8
\wrtSD|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~8_combout\ = (\wrtSD|bitsGathered\(4) & (!\wrtSD|Add4~7\ & VCC)) # (!\wrtSD|bitsGathered\(4) & (\wrtSD|Add4~7\ $ (GND)))
-- \wrtSD|Add4~9\ = CARRY((!\wrtSD|bitsGathered\(4) & !\wrtSD|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(4),
	datad => VCC,
	cin => \wrtSD|Add4~7\,
	combout => \wrtSD|Add4~8_combout\,
	cout => \wrtSD|Add4~9\);

-- Location: LCCOMB_X33_Y14_N18
\wrtSD|Selector4229~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4229~1_combout\ = (!\wrtSD|Selector4229~0_combout\ & (\wrtSD|Equal9~0_combout\ & ((!\wrtSD|Equal8~0_combout\) # (!\wrtSD|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4229~0_combout\,
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|Add4~8_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4229~1_combout\);

-- Location: LCFF_X33_Y14_N19
\wrtSD|bitsGathered[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4229~1_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(4));

-- Location: LCCOMB_X33_Y13_N12
\wrtSD|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~12_combout\ = (\wrtSD|bitsGathered\(6) & (\wrtSD|Add4~11\ $ (GND))) # (!\wrtSD|bitsGathered\(6) & (!\wrtSD|Add4~11\ & VCC))
-- \wrtSD|Add4~13\ = CARRY((\wrtSD|bitsGathered\(6) & !\wrtSD|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(6),
	datad => VCC,
	cin => \wrtSD|Add4~11\,
	combout => \wrtSD|Add4~12_combout\,
	cout => \wrtSD|Add4~13\);

-- Location: LCCOMB_X31_Y13_N6
\wrtSD|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~6_combout\ = (\wrtSD|bitsGathered\(3) & (\wrtSD|Add3~5\ & VCC)) # (!\wrtSD|bitsGathered\(3) & (!\wrtSD|Add3~5\))
-- \wrtSD|Add3~7\ = CARRY((!\wrtSD|bitsGathered\(3) & !\wrtSD|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(3),
	datad => VCC,
	cin => \wrtSD|Add3~5\,
	combout => \wrtSD|Add3~6_combout\,
	cout => \wrtSD|Add3~7\);

-- Location: LCCOMB_X32_Y13_N20
\wrtSD|Selector4230~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4230~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~6_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~6_combout\,
	datab => \wrtSD|Add3~6_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4230~0_combout\);

-- Location: LCFF_X33_Y13_N25
\wrtSD|bitsGathered[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4230~0_combout\,
	sload => VCC,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(3));

-- Location: LCCOMB_X31_Y13_N10
\wrtSD|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~10_combout\ = (\wrtSD|bitsGathered\(5) & (!\wrtSD|Add3~9\)) # (!\wrtSD|bitsGathered\(5) & ((\wrtSD|Add3~9\) # (GND)))
-- \wrtSD|Add3~11\ = CARRY((!\wrtSD|Add3~9\) # (!\wrtSD|bitsGathered\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(5),
	datad => VCC,
	cin => \wrtSD|Add3~9\,
	combout => \wrtSD|Add3~10_combout\,
	cout => \wrtSD|Add3~11\);

-- Location: LCCOMB_X34_Y13_N6
\wrtSD|Selector4228~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4228~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~10_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~10_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|Add3~10_combout\,
	datad => \wrtSD|bitsGathered[19]~0_combout\,
	combout => \wrtSD|Selector4228~0_combout\);

-- Location: LCFF_X34_Y13_N7
\wrtSD|bitsGathered[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4228~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(5));

-- Location: LCCOMB_X31_Y13_N12
\wrtSD|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~12_combout\ = (\wrtSD|bitsGathered\(6) & (\wrtSD|Add3~11\ $ (GND))) # (!\wrtSD|bitsGathered\(6) & (!\wrtSD|Add3~11\ & VCC))
-- \wrtSD|Add3~13\ = CARRY((\wrtSD|bitsGathered\(6) & !\wrtSD|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(6),
	datad => VCC,
	cin => \wrtSD|Add3~11\,
	combout => \wrtSD|Add3~12_combout\,
	cout => \wrtSD|Add3~13\);

-- Location: LCCOMB_X32_Y13_N0
\wrtSD|Selector4227~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4227~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~12_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|Add4~12_combout\,
	datad => \wrtSD|Add3~12_combout\,
	combout => \wrtSD|Selector4227~0_combout\);

-- Location: LCFF_X32_Y13_N1
\wrtSD|bitsGathered[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4227~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(6));

-- Location: LCCOMB_X33_Y13_N14
\wrtSD|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~14_combout\ = (\wrtSD|bitsGathered\(7) & (!\wrtSD|Add4~13\)) # (!\wrtSD|bitsGathered\(7) & ((\wrtSD|Add4~13\) # (GND)))
-- \wrtSD|Add4~15\ = CARRY((!\wrtSD|Add4~13\) # (!\wrtSD|bitsGathered\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(7),
	datad => VCC,
	cin => \wrtSD|Add4~13\,
	combout => \wrtSD|Add4~14_combout\,
	cout => \wrtSD|Add4~15\);

-- Location: LCCOMB_X33_Y14_N12
\wrtSD|Selector4226~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4226~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~14_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~14_combout\,
	datab => \wrtSD|bitsGathered[19]~0_combout\,
	datac => \wrtSD|Add4~14_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4226~0_combout\);

-- Location: LCFF_X33_Y14_N13
\wrtSD|bitsGathered[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4226~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(7));

-- Location: LCCOMB_X33_Y13_N16
\wrtSD|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~16_combout\ = (\wrtSD|bitsGathered\(8) & (\wrtSD|Add4~15\ $ (GND))) # (!\wrtSD|bitsGathered\(8) & (!\wrtSD|Add4~15\ & VCC))
-- \wrtSD|Add4~17\ = CARRY((\wrtSD|bitsGathered\(8) & !\wrtSD|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(8),
	datad => VCC,
	cin => \wrtSD|Add4~15\,
	combout => \wrtSD|Add4~16_combout\,
	cout => \wrtSD|Add4~17\);

-- Location: LCCOMB_X31_Y13_N16
\wrtSD|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~16_combout\ = (\wrtSD|bitsGathered\(8) & (\wrtSD|Add3~15\ $ (GND))) # (!\wrtSD|bitsGathered\(8) & (!\wrtSD|Add3~15\ & VCC))
-- \wrtSD|Add3~17\ = CARRY((\wrtSD|bitsGathered\(8) & !\wrtSD|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(8),
	datad => VCC,
	cin => \wrtSD|Add3~15\,
	combout => \wrtSD|Add3~16_combout\,
	cout => \wrtSD|Add3~17\);

-- Location: LCCOMB_X34_Y13_N30
\wrtSD|Selector4225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4225~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~16_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~16_combout\,
	datac => \wrtSD|Add3~16_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4225~0_combout\);

-- Location: LCFF_X34_Y13_N31
\wrtSD|bitsGathered[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4225~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(8));

-- Location: LCCOMB_X33_Y13_N18
\wrtSD|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~18_combout\ = (\wrtSD|bitsGathered\(9) & (!\wrtSD|Add4~17\)) # (!\wrtSD|bitsGathered\(9) & ((\wrtSD|Add4~17\) # (GND)))
-- \wrtSD|Add4~19\ = CARRY((!\wrtSD|Add4~17\) # (!\wrtSD|bitsGathered\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(9),
	datad => VCC,
	cin => \wrtSD|Add4~17\,
	combout => \wrtSD|Add4~18_combout\,
	cout => \wrtSD|Add4~19\);

-- Location: LCCOMB_X31_Y13_N18
\wrtSD|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~18_combout\ = (\wrtSD|bitsGathered\(9) & (!\wrtSD|Add3~17\)) # (!\wrtSD|bitsGathered\(9) & ((\wrtSD|Add3~17\) # (GND)))
-- \wrtSD|Add3~19\ = CARRY((!\wrtSD|Add3~17\) # (!\wrtSD|bitsGathered\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(9),
	datad => VCC,
	cin => \wrtSD|Add3~17\,
	combout => \wrtSD|Add3~18_combout\,
	cout => \wrtSD|Add3~19\);

-- Location: LCCOMB_X34_Y13_N28
\wrtSD|Selector4224~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4224~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~18_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal8~0_combout\,
	datab => \wrtSD|Add4~18_combout\,
	datac => \wrtSD|Add3~18_combout\,
	datad => \wrtSD|bitsGathered[19]~0_combout\,
	combout => \wrtSD|Selector4224~0_combout\);

-- Location: LCFF_X34_Y13_N29
\wrtSD|bitsGathered[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4224~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(9));

-- Location: LCCOMB_X31_Y13_N20
\wrtSD|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~20_combout\ = (\wrtSD|bitsGathered\(10) & (\wrtSD|Add3~19\ $ (GND))) # (!\wrtSD|bitsGathered\(10) & (!\wrtSD|Add3~19\ & VCC))
-- \wrtSD|Add3~21\ = CARRY((\wrtSD|bitsGathered\(10) & !\wrtSD|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(10),
	datad => VCC,
	cin => \wrtSD|Add3~19\,
	combout => \wrtSD|Add3~20_combout\,
	cout => \wrtSD|Add3~21\);

-- Location: LCCOMB_X33_Y13_N20
\wrtSD|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~20_combout\ = (\wrtSD|bitsGathered\(10) & (\wrtSD|Add4~19\ $ (GND))) # (!\wrtSD|bitsGathered\(10) & (!\wrtSD|Add4~19\ & VCC))
-- \wrtSD|Add4~21\ = CARRY((\wrtSD|bitsGathered\(10) & !\wrtSD|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(10),
	datad => VCC,
	cin => \wrtSD|Add4~19\,
	combout => \wrtSD|Add4~20_combout\,
	cout => \wrtSD|Add4~21\);

-- Location: LCCOMB_X34_Y13_N14
\wrtSD|Selector4223~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4223~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~20_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add3~20_combout\,
	datac => \wrtSD|Add4~20_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4223~0_combout\);

-- Location: LCFF_X34_Y13_N15
\wrtSD|bitsGathered[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4223~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(10));

-- Location: LCCOMB_X33_Y13_N22
\wrtSD|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~22_combout\ = (\wrtSD|bitsGathered\(11) & (!\wrtSD|Add4~21\)) # (!\wrtSD|bitsGathered\(11) & ((\wrtSD|Add4~21\) # (GND)))
-- \wrtSD|Add4~23\ = CARRY((!\wrtSD|Add4~21\) # (!\wrtSD|bitsGathered\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(11),
	datad => VCC,
	cin => \wrtSD|Add4~21\,
	combout => \wrtSD|Add4~22_combout\,
	cout => \wrtSD|Add4~23\);

-- Location: LCCOMB_X31_Y13_N22
\wrtSD|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~22_combout\ = (\wrtSD|bitsGathered\(11) & (!\wrtSD|Add3~21\)) # (!\wrtSD|bitsGathered\(11) & ((\wrtSD|Add3~21\) # (GND)))
-- \wrtSD|Add3~23\ = CARRY((!\wrtSD|Add3~21\) # (!\wrtSD|bitsGathered\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(11),
	datad => VCC,
	cin => \wrtSD|Add3~21\,
	combout => \wrtSD|Add3~22_combout\,
	cout => \wrtSD|Add3~23\);

-- Location: LCCOMB_X34_Y13_N8
\wrtSD|Selector4222~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4222~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~22_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~22_combout\,
	datac => \wrtSD|Add3~22_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4222~0_combout\);

-- Location: LCFF_X34_Y13_N9
\wrtSD|bitsGathered[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4222~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(11));

-- Location: LCCOMB_X33_Y13_N24
\wrtSD|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~24_combout\ = (\wrtSD|bitsGathered\(12) & (\wrtSD|Add4~23\ $ (GND))) # (!\wrtSD|bitsGathered\(12) & (!\wrtSD|Add4~23\ & VCC))
-- \wrtSD|Add4~25\ = CARRY((\wrtSD|bitsGathered\(12) & !\wrtSD|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(12),
	datad => VCC,
	cin => \wrtSD|Add4~23\,
	combout => \wrtSD|Add4~24_combout\,
	cout => \wrtSD|Add4~25\);

-- Location: LCCOMB_X31_Y13_N24
\wrtSD|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~24_combout\ = (\wrtSD|bitsGathered\(12) & (\wrtSD|Add3~23\ $ (GND))) # (!\wrtSD|bitsGathered\(12) & (!\wrtSD|Add3~23\ & VCC))
-- \wrtSD|Add3~25\ = CARRY((\wrtSD|bitsGathered\(12) & !\wrtSD|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(12),
	datad => VCC,
	cin => \wrtSD|Add3~23\,
	combout => \wrtSD|Add3~24_combout\,
	cout => \wrtSD|Add3~25\);

-- Location: LCCOMB_X32_Y13_N30
\wrtSD|Selector4221~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4221~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~24_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~24_combout\,
	datac => \wrtSD|Add3~24_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4221~0_combout\);

-- Location: LCFF_X32_Y13_N31
\wrtSD|bitsGathered[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4221~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(12));

-- Location: LCCOMB_X31_Y13_N26
\wrtSD|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~26_combout\ = (\wrtSD|bitsGathered\(13) & (!\wrtSD|Add3~25\)) # (!\wrtSD|bitsGathered\(13) & ((\wrtSD|Add3~25\) # (GND)))
-- \wrtSD|Add3~27\ = CARRY((!\wrtSD|Add3~25\) # (!\wrtSD|bitsGathered\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(13),
	datad => VCC,
	cin => \wrtSD|Add3~25\,
	combout => \wrtSD|Add3~26_combout\,
	cout => \wrtSD|Add3~27\);

-- Location: LCCOMB_X32_Y13_N12
\wrtSD|Selector4220~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4220~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~26_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~26_combout\,
	datab => \wrtSD|Add3~26_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4220~0_combout\);

-- Location: LCFF_X32_Y13_N13
\wrtSD|bitsGathered[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4220~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(13));

-- Location: LCCOMB_X31_Y13_N28
\wrtSD|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~28_combout\ = (\wrtSD|bitsGathered\(14) & (\wrtSD|Add3~27\ $ (GND))) # (!\wrtSD|bitsGathered\(14) & (!\wrtSD|Add3~27\ & VCC))
-- \wrtSD|Add3~29\ = CARRY((\wrtSD|bitsGathered\(14) & !\wrtSD|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(14),
	datad => VCC,
	cin => \wrtSD|Add3~27\,
	combout => \wrtSD|Add3~28_combout\,
	cout => \wrtSD|Add3~29\);

-- Location: LCCOMB_X33_Y13_N26
\wrtSD|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~26_combout\ = (\wrtSD|bitsGathered\(13) & (!\wrtSD|Add4~25\)) # (!\wrtSD|bitsGathered\(13) & ((\wrtSD|Add4~25\) # (GND)))
-- \wrtSD|Add4~27\ = CARRY((!\wrtSD|Add4~25\) # (!\wrtSD|bitsGathered\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(13),
	datad => VCC,
	cin => \wrtSD|Add4~25\,
	combout => \wrtSD|Add4~26_combout\,
	cout => \wrtSD|Add4~27\);

-- Location: LCCOMB_X33_Y13_N28
\wrtSD|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~28_combout\ = (\wrtSD|bitsGathered\(14) & (\wrtSD|Add4~27\ $ (GND))) # (!\wrtSD|bitsGathered\(14) & (!\wrtSD|Add4~27\ & VCC))
-- \wrtSD|Add4~29\ = CARRY((\wrtSD|bitsGathered\(14) & !\wrtSD|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(14),
	datad => VCC,
	cin => \wrtSD|Add4~27\,
	combout => \wrtSD|Add4~28_combout\,
	cout => \wrtSD|Add4~29\);

-- Location: LCCOMB_X32_Y13_N6
\wrtSD|Selector4219~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4219~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~28_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add3~28_combout\,
	datac => \wrtSD|Add4~28_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4219~0_combout\);

-- Location: LCFF_X32_Y13_N7
\wrtSD|bitsGathered[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4219~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(14));

-- Location: LCCOMB_X31_Y13_N30
\wrtSD|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~30_combout\ = (\wrtSD|bitsGathered\(15) & (!\wrtSD|Add3~29\)) # (!\wrtSD|bitsGathered\(15) & ((\wrtSD|Add3~29\) # (GND)))
-- \wrtSD|Add3~31\ = CARRY((!\wrtSD|Add3~29\) # (!\wrtSD|bitsGathered\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(15),
	datad => VCC,
	cin => \wrtSD|Add3~29\,
	combout => \wrtSD|Add3~30_combout\,
	cout => \wrtSD|Add3~31\);

-- Location: LCCOMB_X33_Y13_N30
\wrtSD|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~30_combout\ = (\wrtSD|bitsGathered\(15) & (!\wrtSD|Add4~29\)) # (!\wrtSD|bitsGathered\(15) & ((\wrtSD|Add4~29\) # (GND)))
-- \wrtSD|Add4~31\ = CARRY((!\wrtSD|Add4~29\) # (!\wrtSD|bitsGathered\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(15),
	datad => VCC,
	cin => \wrtSD|Add4~29\,
	combout => \wrtSD|Add4~30_combout\,
	cout => \wrtSD|Add4~31\);

-- Location: LCCOMB_X32_Y13_N28
\wrtSD|Selector4218~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4218~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~30_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|Add3~30_combout\,
	datad => \wrtSD|Add4~30_combout\,
	combout => \wrtSD|Selector4218~0_combout\);

-- Location: LCFF_X32_Y13_N29
\wrtSD|bitsGathered[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4218~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(15));

-- Location: LCCOMB_X33_Y12_N0
\wrtSD|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~32_combout\ = (\wrtSD|bitsGathered\(16) & (\wrtSD|Add4~31\ $ (GND))) # (!\wrtSD|bitsGathered\(16) & (!\wrtSD|Add4~31\ & VCC))
-- \wrtSD|Add4~33\ = CARRY((\wrtSD|bitsGathered\(16) & !\wrtSD|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(16),
	datad => VCC,
	cin => \wrtSD|Add4~31\,
	combout => \wrtSD|Add4~32_combout\,
	cout => \wrtSD|Add4~33\);

-- Location: LCCOMB_X32_Y13_N2
\wrtSD|Selector4217~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4217~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~32_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~32_combout\,
	datab => \wrtSD|Equal8~0_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Add4~32_combout\,
	combout => \wrtSD|Selector4217~0_combout\);

-- Location: LCFF_X32_Y13_N3
\wrtSD|bitsGathered[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4217~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(16));

-- Location: LCCOMB_X31_Y12_N2
\wrtSD|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~34_combout\ = (\wrtSD|bitsGathered\(17) & (!\wrtSD|Add3~33\)) # (!\wrtSD|bitsGathered\(17) & ((\wrtSD|Add3~33\) # (GND)))
-- \wrtSD|Add3~35\ = CARRY((!\wrtSD|Add3~33\) # (!\wrtSD|bitsGathered\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(17),
	datad => VCC,
	cin => \wrtSD|Add3~33\,
	combout => \wrtSD|Add3~34_combout\,
	cout => \wrtSD|Add3~35\);

-- Location: LCCOMB_X33_Y12_N2
\wrtSD|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~34_combout\ = (\wrtSD|bitsGathered\(17) & (!\wrtSD|Add4~33\)) # (!\wrtSD|bitsGathered\(17) & ((\wrtSD|Add4~33\) # (GND)))
-- \wrtSD|Add4~35\ = CARRY((!\wrtSD|Add4~33\) # (!\wrtSD|bitsGathered\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(17),
	datad => VCC,
	cin => \wrtSD|Add4~33\,
	combout => \wrtSD|Add4~34_combout\,
	cout => \wrtSD|Add4~35\);

-- Location: LCCOMB_X32_Y13_N16
\wrtSD|Selector4216~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4216~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~34_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add3~34_combout\,
	datac => \wrtSD|Add4~34_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4216~0_combout\);

-- Location: LCFF_X32_Y13_N17
\wrtSD|bitsGathered[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4216~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(17));

-- Location: LCCOMB_X32_Y13_N4
\wrtSD|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~8_combout\ = (!\wrtSD|bitsGathered\(18) & (!\wrtSD|bitsGathered\(16) & (!\wrtSD|bitsGathered\(17) & !\wrtSD|bitsGathered\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(18),
	datab => \wrtSD|bitsGathered\(16),
	datac => \wrtSD|bitsGathered\(17),
	datad => \wrtSD|bitsGathered\(15),
	combout => \wrtSD|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y13_N26
\wrtSD|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~9_combout\ = (!\wrtSD|bitsGathered\(13) & (!\wrtSD|bitsGathered\(12) & (\wrtSD|LessThan0~8_combout\ & !\wrtSD|bitsGathered\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(13),
	datab => \wrtSD|bitsGathered\(12),
	datac => \wrtSD|LessThan0~8_combout\,
	datad => \wrtSD|bitsGathered\(14),
	combout => \wrtSD|LessThan0~9_combout\);

-- Location: LCCOMB_X33_Y12_N4
\wrtSD|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~36_combout\ = (\wrtSD|bitsGathered\(18) & (\wrtSD|Add4~35\ $ (GND))) # (!\wrtSD|bitsGathered\(18) & (!\wrtSD|Add4~35\ & VCC))
-- \wrtSD|Add4~37\ = CARRY((\wrtSD|bitsGathered\(18) & !\wrtSD|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(18),
	datad => VCC,
	cin => \wrtSD|Add4~35\,
	combout => \wrtSD|Add4~36_combout\,
	cout => \wrtSD|Add4~37\);

-- Location: LCCOMB_X33_Y12_N6
\wrtSD|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~38_combout\ = (\wrtSD|bitsGathered\(19) & (!\wrtSD|Add4~37\)) # (!\wrtSD|bitsGathered\(19) & ((\wrtSD|Add4~37\) # (GND)))
-- \wrtSD|Add4~39\ = CARRY((!\wrtSD|Add4~37\) # (!\wrtSD|bitsGathered\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(19),
	datad => VCC,
	cin => \wrtSD|Add4~37\,
	combout => \wrtSD|Add4~38_combout\,
	cout => \wrtSD|Add4~39\);

-- Location: LCCOMB_X33_Y12_N8
\wrtSD|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~40_combout\ = (\wrtSD|bitsGathered\(20) & (\wrtSD|Add4~39\ $ (GND))) # (!\wrtSD|bitsGathered\(20) & (!\wrtSD|Add4~39\ & VCC))
-- \wrtSD|Add4~41\ = CARRY((\wrtSD|bitsGathered\(20) & !\wrtSD|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(20),
	datad => VCC,
	cin => \wrtSD|Add4~39\,
	combout => \wrtSD|Add4~40_combout\,
	cout => \wrtSD|Add4~41\);

-- Location: LCCOMB_X31_Y12_N4
\wrtSD|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~36_combout\ = (\wrtSD|bitsGathered\(18) & (\wrtSD|Add3~35\ $ (GND))) # (!\wrtSD|bitsGathered\(18) & (!\wrtSD|Add3~35\ & VCC))
-- \wrtSD|Add3~37\ = CARRY((\wrtSD|bitsGathered\(18) & !\wrtSD|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(18),
	datad => VCC,
	cin => \wrtSD|Add3~35\,
	combout => \wrtSD|Add3~36_combout\,
	cout => \wrtSD|Add3~37\);

-- Location: LCCOMB_X32_Y13_N10
\wrtSD|Selector4215~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4215~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~36_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add3~36_combout\,
	datac => \wrtSD|Add4~36_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4215~0_combout\);

-- Location: LCFF_X32_Y13_N11
\wrtSD|bitsGathered[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4215~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(18));

-- Location: LCCOMB_X31_Y12_N6
\wrtSD|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~38_combout\ = (\wrtSD|bitsGathered\(19) & (!\wrtSD|Add3~37\)) # (!\wrtSD|bitsGathered\(19) & ((\wrtSD|Add3~37\) # (GND)))
-- \wrtSD|Add3~39\ = CARRY((!\wrtSD|Add3~37\) # (!\wrtSD|bitsGathered\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(19),
	datad => VCC,
	cin => \wrtSD|Add3~37\,
	combout => \wrtSD|Add3~38_combout\,
	cout => \wrtSD|Add3~39\);

-- Location: LCCOMB_X32_Y12_N30
\wrtSD|Selector4214~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4214~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~38_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add3~38_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add4~38_combout\,
	combout => \wrtSD|Selector4214~0_combout\);

-- Location: LCFF_X32_Y12_N31
\wrtSD|bitsGathered[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4214~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(19));

-- Location: LCCOMB_X31_Y12_N8
\wrtSD|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~40_combout\ = (\wrtSD|bitsGathered\(20) & (\wrtSD|Add3~39\ $ (GND))) # (!\wrtSD|bitsGathered\(20) & (!\wrtSD|Add3~39\ & VCC))
-- \wrtSD|Add3~41\ = CARRY((\wrtSD|bitsGathered\(20) & !\wrtSD|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(20),
	datad => VCC,
	cin => \wrtSD|Add3~39\,
	combout => \wrtSD|Add3~40_combout\,
	cout => \wrtSD|Add3~41\);

-- Location: LCCOMB_X32_Y12_N28
\wrtSD|Selector4213~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4213~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~40_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~40_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add3~40_combout\,
	combout => \wrtSD|Selector4213~0_combout\);

-- Location: LCFF_X32_Y12_N29
\wrtSD|bitsGathered[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4213~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(20));

-- Location: LCCOMB_X33_Y12_N10
\wrtSD|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~42_combout\ = (\wrtSD|bitsGathered\(21) & (!\wrtSD|Add4~41\)) # (!\wrtSD|bitsGathered\(21) & ((\wrtSD|Add4~41\) # (GND)))
-- \wrtSD|Add4~43\ = CARRY((!\wrtSD|Add4~41\) # (!\wrtSD|bitsGathered\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(21),
	datad => VCC,
	cin => \wrtSD|Add4~41\,
	combout => \wrtSD|Add4~42_combout\,
	cout => \wrtSD|Add4~43\);

-- Location: LCCOMB_X31_Y12_N10
\wrtSD|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~42_combout\ = (\wrtSD|bitsGathered\(21) & (!\wrtSD|Add3~41\)) # (!\wrtSD|bitsGathered\(21) & ((\wrtSD|Add3~41\) # (GND)))
-- \wrtSD|Add3~43\ = CARRY((!\wrtSD|Add3~41\) # (!\wrtSD|bitsGathered\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(21),
	datad => VCC,
	cin => \wrtSD|Add3~41\,
	combout => \wrtSD|Add3~42_combout\,
	cout => \wrtSD|Add3~43\);

-- Location: LCCOMB_X32_Y12_N14
\wrtSD|Selector4212~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4212~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~42_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~42_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add3~42_combout\,
	combout => \wrtSD|Selector4212~0_combout\);

-- Location: LCFF_X32_Y12_N15
\wrtSD|bitsGathered[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4212~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(21));

-- Location: LCCOMB_X32_Y12_N24
\wrtSD|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~6_combout\ = (!\wrtSD|bitsGathered\(22) & (!\wrtSD|bitsGathered\(20) & (!\wrtSD|bitsGathered\(21) & !\wrtSD|bitsGathered\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(22),
	datab => \wrtSD|bitsGathered\(20),
	datac => \wrtSD|bitsGathered\(21),
	datad => \wrtSD|bitsGathered\(19),
	combout => \wrtSD|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y12_N14
\wrtSD|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~46_combout\ = (\wrtSD|bitsGathered\(23) & (!\wrtSD|Add3~45\)) # (!\wrtSD|bitsGathered\(23) & ((\wrtSD|Add3~45\) # (GND)))
-- \wrtSD|Add3~47\ = CARRY((!\wrtSD|Add3~45\) # (!\wrtSD|bitsGathered\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(23),
	datad => VCC,
	cin => \wrtSD|Add3~45\,
	combout => \wrtSD|Add3~46_combout\,
	cout => \wrtSD|Add3~47\);

-- Location: LCCOMB_X31_Y12_N16
\wrtSD|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~48_combout\ = (\wrtSD|bitsGathered\(24) & (\wrtSD|Add3~47\ $ (GND))) # (!\wrtSD|bitsGathered\(24) & (!\wrtSD|Add3~47\ & VCC))
-- \wrtSD|Add3~49\ = CARRY((\wrtSD|bitsGathered\(24) & !\wrtSD|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(24),
	datad => VCC,
	cin => \wrtSD|Add3~47\,
	combout => \wrtSD|Add3~48_combout\,
	cout => \wrtSD|Add3~49\);

-- Location: LCCOMB_X32_Y12_N18
\wrtSD|Selector4209~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4209~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~48_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~48_combout\,
	datab => \wrtSD|Add3~48_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|bitsGathered[19]~0_combout\,
	combout => \wrtSD|Selector4209~0_combout\);

-- Location: LCFF_X32_Y12_N19
\wrtSD|bitsGathered[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4209~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(24));

-- Location: LCCOMB_X33_Y12_N12
\wrtSD|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~44_combout\ = (\wrtSD|bitsGathered\(22) & (\wrtSD|Add4~43\ $ (GND))) # (!\wrtSD|bitsGathered\(22) & (!\wrtSD|Add4~43\ & VCC))
-- \wrtSD|Add4~45\ = CARRY((\wrtSD|bitsGathered\(22) & !\wrtSD|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(22),
	datad => VCC,
	cin => \wrtSD|Add4~43\,
	combout => \wrtSD|Add4~44_combout\,
	cout => \wrtSD|Add4~45\);

-- Location: LCCOMB_X33_Y12_N14
\wrtSD|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~46_combout\ = (\wrtSD|bitsGathered\(23) & (!\wrtSD|Add4~45\)) # (!\wrtSD|bitsGathered\(23) & ((\wrtSD|Add4~45\) # (GND)))
-- \wrtSD|Add4~47\ = CARRY((!\wrtSD|Add4~45\) # (!\wrtSD|bitsGathered\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(23),
	datad => VCC,
	cin => \wrtSD|Add4~45\,
	combout => \wrtSD|Add4~46_combout\,
	cout => \wrtSD|Add4~47\);

-- Location: LCCOMB_X33_Y12_N18
\wrtSD|Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~50_combout\ = (\wrtSD|bitsGathered\(25) & (!\wrtSD|Add4~49\)) # (!\wrtSD|bitsGathered\(25) & ((\wrtSD|Add4~49\) # (GND)))
-- \wrtSD|Add4~51\ = CARRY((!\wrtSD|Add4~49\) # (!\wrtSD|bitsGathered\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(25),
	datad => VCC,
	cin => \wrtSD|Add4~49\,
	combout => \wrtSD|Add4~50_combout\,
	cout => \wrtSD|Add4~51\);

-- Location: LCCOMB_X31_Y12_N18
\wrtSD|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~50_combout\ = (\wrtSD|bitsGathered\(25) & (!\wrtSD|Add3~49\)) # (!\wrtSD|bitsGathered\(25) & ((\wrtSD|Add3~49\) # (GND)))
-- \wrtSD|Add3~51\ = CARRY((!\wrtSD|Add3~49\) # (!\wrtSD|bitsGathered\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(25),
	datad => VCC,
	cin => \wrtSD|Add3~49\,
	combout => \wrtSD|Add3~50_combout\,
	cout => \wrtSD|Add3~51\);

-- Location: LCCOMB_X32_Y12_N20
\wrtSD|Selector4208~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4208~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~50_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal8~0_combout\,
	datab => \wrtSD|Add4~50_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Add3~50_combout\,
	combout => \wrtSD|Selector4208~0_combout\);

-- Location: LCFF_X32_Y12_N21
\wrtSD|bitsGathered[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4208~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(25));

-- Location: LCCOMB_X32_Y12_N0
\wrtSD|Selector4210~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4210~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~46_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~46_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add3~46_combout\,
	combout => \wrtSD|Selector4210~0_combout\);

-- Location: LCFF_X32_Y12_N1
\wrtSD|bitsGathered[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4210~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(23));

-- Location: LCCOMB_X32_Y12_N2
\wrtSD|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~5_combout\ = (!\wrtSD|bitsGathered\(26) & (!\wrtSD|bitsGathered\(24) & (!\wrtSD|bitsGathered\(25) & !\wrtSD|bitsGathered\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(26),
	datab => \wrtSD|bitsGathered\(24),
	datac => \wrtSD|bitsGathered\(25),
	datad => \wrtSD|bitsGathered\(23),
	combout => \wrtSD|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y12_N22
\wrtSD|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~7_combout\ = (\wrtSD|LessThan0~6_combout\ & \wrtSD|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|LessThan0~6_combout\,
	datad => \wrtSD|LessThan0~5_combout\,
	combout => \wrtSD|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y12_N20
\wrtSD|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~52_combout\ = (\wrtSD|bitsGathered\(26) & (\wrtSD|Add3~51\ $ (GND))) # (!\wrtSD|bitsGathered\(26) & (!\wrtSD|Add3~51\ & VCC))
-- \wrtSD|Add3~53\ = CARRY((\wrtSD|bitsGathered\(26) & !\wrtSD|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(26),
	datad => VCC,
	cin => \wrtSD|Add3~51\,
	combout => \wrtSD|Add3~52_combout\,
	cout => \wrtSD|Add3~53\);

-- Location: LCCOMB_X31_Y12_N22
\wrtSD|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add3~54_combout\ = (\wrtSD|bitsGathered\(27) & (!\wrtSD|Add3~53\)) # (!\wrtSD|bitsGathered\(27) & ((\wrtSD|Add3~53\) # (GND)))
-- \wrtSD|Add3~55\ = CARRY((!\wrtSD|Add3~53\) # (!\wrtSD|bitsGathered\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(27),
	datad => VCC,
	cin => \wrtSD|Add3~53\,
	combout => \wrtSD|Add3~54_combout\,
	cout => \wrtSD|Add3~55\);

-- Location: LCCOMB_X33_Y12_N20
\wrtSD|Add4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~52_combout\ = (\wrtSD|bitsGathered\(26) & (\wrtSD|Add4~51\ $ (GND))) # (!\wrtSD|bitsGathered\(26) & (!\wrtSD|Add4~51\ & VCC))
-- \wrtSD|Add4~53\ = CARRY((\wrtSD|bitsGathered\(26) & !\wrtSD|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(26),
	datad => VCC,
	cin => \wrtSD|Add4~51\,
	combout => \wrtSD|Add4~52_combout\,
	cout => \wrtSD|Add4~53\);

-- Location: LCCOMB_X32_Y12_N6
\wrtSD|Selector4207~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4207~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~52_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered[19]~0_combout\,
	datab => \wrtSD|Add4~52_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|Add3~52_combout\,
	combout => \wrtSD|Selector4207~0_combout\);

-- Location: LCFF_X32_Y12_N7
\wrtSD|bitsGathered[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4207~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(26));

-- Location: LCCOMB_X33_Y12_N22
\wrtSD|Add4~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~54_combout\ = (\wrtSD|bitsGathered\(27) & (!\wrtSD|Add4~53\)) # (!\wrtSD|bitsGathered\(27) & ((\wrtSD|Add4~53\) # (GND)))
-- \wrtSD|Add4~55\ = CARRY((!\wrtSD|Add4~53\) # (!\wrtSD|bitsGathered\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(27),
	datad => VCC,
	cin => \wrtSD|Add4~53\,
	combout => \wrtSD|Add4~54_combout\,
	cout => \wrtSD|Add4~55\);

-- Location: LCCOMB_X32_Y12_N16
\wrtSD|Selector4206~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4206~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~54_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal8~0_combout\,
	datab => \wrtSD|Add3~54_combout\,
	datac => \wrtSD|Add4~54_combout\,
	datad => \wrtSD|bitsGathered[19]~0_combout\,
	combout => \wrtSD|Selector4206~0_combout\);

-- Location: LCFF_X32_Y12_N17
\wrtSD|bitsGathered[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4206~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(27));

-- Location: LCCOMB_X33_Y12_N24
\wrtSD|Add4~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~56_combout\ = (\wrtSD|bitsGathered\(28) & (\wrtSD|Add4~55\ $ (GND))) # (!\wrtSD|bitsGathered\(28) & (!\wrtSD|Add4~55\ & VCC))
-- \wrtSD|Add4~57\ = CARRY((\wrtSD|bitsGathered\(28) & !\wrtSD|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(28),
	datad => VCC,
	cin => \wrtSD|Add4~55\,
	combout => \wrtSD|Add4~56_combout\,
	cout => \wrtSD|Add4~57\);

-- Location: LCCOMB_X33_Y12_N26
\wrtSD|Add4~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add4~58_combout\ = (\wrtSD|bitsGathered\(29) & (!\wrtSD|Add4~57\)) # (!\wrtSD|bitsGathered\(29) & ((\wrtSD|Add4~57\) # (GND)))
-- \wrtSD|Add4~59\ = CARRY((!\wrtSD|Add4~57\) # (!\wrtSD|bitsGathered\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitsGathered\(29),
	datad => VCC,
	cin => \wrtSD|Add4~57\,
	combout => \wrtSD|Add4~58_combout\,
	cout => \wrtSD|Add4~59\);

-- Location: LCCOMB_X34_Y12_N22
\wrtSD|Selector4204~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4204~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~58_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~58_combout\,
	datab => \wrtSD|Add4~58_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4204~0_combout\);

-- Location: LCFF_X34_Y12_N23
\wrtSD|bitsGathered[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4204~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(29));

-- Location: LCCOMB_X34_Y12_N4
\wrtSD|Selector4205~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4205~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add4~56_combout\))) # (!\wrtSD|Equal8~0_combout\ & (\wrtSD|Add3~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add3~56_combout\,
	datab => \wrtSD|Add4~56_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Equal8~0_combout\,
	combout => \wrtSD|Selector4205~0_combout\);

-- Location: LCFF_X34_Y12_N5
\wrtSD|bitsGathered[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4205~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(28));

-- Location: LCCOMB_X34_Y12_N28
\wrtSD|Selector4203~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4203~0_combout\ = (!\wrtSD|bitsGathered[19]~0_combout\ & ((\wrtSD|Equal8~0_combout\ & (\wrtSD|Add4~60_combout\)) # (!\wrtSD|Equal8~0_combout\ & ((\wrtSD|Add3~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal8~0_combout\,
	datab => \wrtSD|Add4~60_combout\,
	datac => \wrtSD|bitsGathered[19]~0_combout\,
	datad => \wrtSD|Add3~60_combout\,
	combout => \wrtSD|Selector4203~0_combout\);

-- Location: LCFF_X34_Y12_N29
\wrtSD|bitsGathered[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4203~0_combout\,
	ena => \wrtSD|bitsGathered[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitsGathered\(30));

-- Location: LCCOMB_X34_Y12_N0
\wrtSD|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~0_combout\ = (!\wrtSD|bitsGathered\(27) & (!\wrtSD|bitsGathered\(30) & (!\wrtSD|bitsGathered\(28) & !\wrtSD|bitsGathered\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(27),
	datab => \wrtSD|bitsGathered\(30),
	datac => \wrtSD|bitsGathered\(28),
	datad => \wrtSD|bitsGathered\(29),
	combout => \wrtSD|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y14_N20
\wrtSD|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~2_combout\ = ((\wrtSD|bitsGathered\(4)) # ((!\wrtSD|bitsGathered\(5)) # (!\wrtSD|bitsGathered\(6)))) # (!\wrtSD|bitsGathered\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(7),
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|bitsGathered\(6),
	datad => \wrtSD|bitsGathered\(5),
	combout => \wrtSD|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y13_N18
\wrtSD|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~1_combout\ = (((!\wrtSD|bitsGathered\(8)) # (!\wrtSD|bitsGathered\(10))) # (!\wrtSD|bitsGathered\(9))) # (!\wrtSD|bitsGathered\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(11),
	datab => \wrtSD|bitsGathered\(9),
	datac => \wrtSD|bitsGathered\(10),
	datad => \wrtSD|bitsGathered\(8),
	combout => \wrtSD|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y13_N2
\wrtSD|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~4_combout\ = (\wrtSD|LessThan0~0_combout\ & ((\wrtSD|LessThan0~3_combout\) # ((\wrtSD|LessThan0~2_combout\) # (\wrtSD|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan0~3_combout\,
	datab => \wrtSD|LessThan0~0_combout\,
	datac => \wrtSD|LessThan0~2_combout\,
	datad => \wrtSD|LessThan0~1_combout\,
	combout => \wrtSD|LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y13_N12
\wrtSD|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan0~10_combout\ = (\wrtSD|bitsGathered\(31)) # ((\wrtSD|LessThan0~9_combout\ & (\wrtSD|LessThan0~7_combout\ & \wrtSD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(31),
	datab => \wrtSD|LessThan0~9_combout\,
	datac => \wrtSD|LessThan0~7_combout\,
	datad => \wrtSD|LessThan0~4_combout\,
	combout => \wrtSD|LessThan0~10_combout\);

-- Location: LCCOMB_X34_Y17_N26
\wrtSD|Selector4168~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4168~0_combout\ = (\wrtSD|Equal9~0_combout\ & ((!\wrtSD|LessThan0~10_combout\) # (!\wrtSD|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal9~0_combout\,
	datac => \wrtSD|Equal6~0_combout\,
	datad => \wrtSD|LessThan0~10_combout\,
	combout => \wrtSD|Selector4168~0_combout\);

-- Location: LCCOMB_X35_Y17_N22
\wrtSD|Selector4168~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4168~1_combout\ = ((\wrtSD|state\(2) & !\wrtSD|Selector4154~0_combout\)) # (!\wrtSD|Selector4168~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|state\(2),
	datac => \wrtSD|Selector4154~0_combout\,
	datad => \wrtSD|Selector4168~0_combout\,
	combout => \wrtSD|Selector4168~1_combout\);

-- Location: LCFF_X36_Y16_N5
\wrtSD|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[2]~40_combout\,
	sdata => \wrtSD|Selector4168~1_combout\,
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(2));

-- Location: LCCOMB_X35_Y17_N30
\wrtSD|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal9~0_combout\ = ((!\wrtSD|state\(1)) # (!\wrtSD|Equal3~0_combout\)) # (!\wrtSD|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|state\(2),
	datac => \wrtSD|Equal3~0_combout\,
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Equal9~0_combout\);

-- Location: LCCOMB_X35_Y17_N0
\wrtSD|Selector4170~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4170~0_combout\ = (\wrtSD|Selector4154~1_combout\ & (\wrtSD|state\(0))) # (!\wrtSD|Selector4154~1_combout\ & ((\wrtSD|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|state\(0),
	datac => \wrtSD|Equal9~0_combout\,
	datad => \wrtSD|Selector4154~1_combout\,
	combout => \wrtSD|Selector4170~0_combout\);

-- Location: LCFF_X36_Y16_N1
\wrtSD|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|state[0]~36_combout\,
	sdata => \wrtSD|Selector4170~0_combout\,
	sload => \wrtSD|state[27]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|state\(0));

-- Location: LCCOMB_X34_Y17_N8
\wrtSD|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal6~0_combout\ = (!\wrtSD|state\(1) & (!\wrtSD|state\(0) & (\wrtSD|state\(2) & \wrtSD|Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal2~11_combout\,
	combout => \wrtSD|Equal6~0_combout\);

-- Location: LCCOMB_X35_Y17_N12
\wrtSD|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideNor0~0_combout\ = ((\wrtSD|state\(1) & ((\wrtSD|state\(2)))) # (!\wrtSD|state\(1) & (!\wrtSD|state\(0)))) # (!\wrtSD|Equal2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|Equal2~11_combout\,
	combout => \wrtSD|WideNor0~0_combout\);

-- Location: LCCOMB_X34_Y17_N2
\wrtSD|Selector4172~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4172~0_combout\ = ((\wrtSD|Selector4117~3_combout\ & (!\wrtSD|Equal6~0_combout\ & !\wrtSD|WideNor0~0_combout\))) # (!\wrtSD|Selector4154~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4117~3_combout\,
	datab => \wrtSD|Equal6~0_combout\,
	datac => \wrtSD|WideNor0~0_combout\,
	datad => \wrtSD|Selector4154~1_combout\,
	combout => \wrtSD|Selector4172~0_combout\);

-- Location: LCCOMB_X36_Y19_N2
\wrtSD|Selector4175~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4175~0_combout\ = (!\wrtSD|Selector4172~0_combout\ & \wrtSD|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Selector4172~0_combout\,
	datad => \wrtSD|Add0~6_combout\,
	combout => \wrtSD|Selector4175~0_combout\);

-- Location: LCFF_X36_Y19_N3
\wrtSD|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4175~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(3));

-- Location: LCCOMB_X36_Y19_N16
\wrtSD|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Add0~8_combout\ = (\wrtSD|counter\(4) & (\wrtSD|Add0~7\ $ (GND))) # (!\wrtSD|counter\(4) & (!\wrtSD|Add0~7\ & VCC))
-- \wrtSD|Add0~9\ = CARRY((\wrtSD|counter\(4) & !\wrtSD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|counter\(4),
	datad => VCC,
	cin => \wrtSD|Add0~7\,
	combout => \wrtSD|Add0~8_combout\,
	cout => \wrtSD|Add0~9\);

-- Location: LCCOMB_X33_Y20_N18
\wrtSD|Selector4174~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4174~0_combout\ = (\wrtSD|Add0~8_combout\ & !\wrtSD|Selector4172~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrtSD|Add0~8_combout\,
	datad => \wrtSD|Selector4172~0_combout\,
	combout => \wrtSD|Selector4174~0_combout\);

-- Location: LCFF_X36_Y19_N17
\wrtSD|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	sdata => \wrtSD|Selector4174~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|counter\(4));

-- Location: LCCOMB_X36_Y19_N30
\wrtSD|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal0~1_combout\ = (\wrtSD|Add0~8_combout\ & (!\wrtSD|Add0~10_combout\ & (\wrtSD|Add0~12_combout\ & !\wrtSD|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add0~8_combout\,
	datab => \wrtSD|Add0~10_combout\,
	datac => \wrtSD|Add0~12_combout\,
	datad => \wrtSD|Add0~14_combout\,
	combout => \wrtSD|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y18_N2
\wrtSD|replyStarted~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|replyStarted~4_combout\ = (\wrtSD|LessThan2~11_combout\ & (((!\wrtSD|Equal2~10_combout\) # (!\wrtSD|Equal0~1_combout\)) # (!\wrtSD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal0~0_combout\,
	datab => \wrtSD|Equal0~1_combout\,
	datac => \wrtSD|LessThan2~11_combout\,
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|replyStarted~4_combout\);

-- Location: LCCOMB_X36_Y18_N8
\wrtSD|replyStarted~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|replyStarted~0_combout\ = (\wrtSD|replyStarted~regout\ & ((\wrtSD|replyStarted~4_combout\))) # (!\wrtSD|replyStarted~regout\ & (!\SD_DAT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD_DAT~combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|replyStarted~4_combout\,
	combout => \wrtSD|replyStarted~0_combout\);

-- Location: LCCOMB_X36_Y18_N20
\wrtSD|replyStarted~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|replyStarted~3_combout\ = (\wrtSD|replyStarted~regout\ & (((!\wrtSD|Equal2~10_combout\) # (!\wrtSD|Equal0~0_combout\)) # (!\wrtSD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|replyStarted~regout\,
	datab => \wrtSD|Equal0~1_combout\,
	datac => \wrtSD|Equal0~0_combout\,
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|replyStarted~3_combout\);

-- Location: LCFF_X36_Y18_N9
\wrtSD|replyStarted\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|replyStarted~0_combout\,
	sdata => \wrtSD|replyStarted~3_combout\,
	sload => \wrtSD|ALT_INV_commandSent~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|replyStarted~regout\);

-- Location: LCCOMB_X36_Y20_N24
\wrtSD|bitNum~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|bitNum~7_combout\ = (\wrtSD|bitNum[0]~38_combout\ & (((!\wrtSD|Selector4137~4_combout\)))) # (!\wrtSD|bitNum[0]~38_combout\ & (!\wrtSD|Add6~2_combout\ & ((\wrtSD|replyStarted~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add6~2_combout\,
	datab => \wrtSD|Selector4137~4_combout\,
	datac => \wrtSD|replyStarted~regout\,
	datad => \wrtSD|bitNum[0]~38_combout\,
	combout => \wrtSD|bitNum~7_combout\);

-- Location: LCFF_X36_Y20_N25
\wrtSD|bitNum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|bitNum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|bitNum\(1));

-- Location: LCCOMB_X36_Y17_N22
\wrtSD|Selector4105~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~12_combout\ = (\wrtSD|bitNum\(3) & ((\wrtSD|bitNum\(0) & (\wrtSD|bitNum\(1) & !\wrtSD|bitNum\(2))) # (!\wrtSD|bitNum\(0) & ((\wrtSD|bitNum\(2)))))) # (!\wrtSD|bitNum\(3) & (\wrtSD|bitNum\(0) $ (\wrtSD|bitNum\(1) $ 
-- (\wrtSD|bitNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(0),
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|bitNum\(1),
	datad => \wrtSD|bitNum\(2),
	combout => \wrtSD|Selector4105~12_combout\);

-- Location: LCCOMB_X36_Y17_N8
\wrtSD|Selector4105~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~13_combout\ = (!\wrtSD|commandSent~regout\ & ((\wrtSD|Selector4105~6_combout\ & (!\wrtSD|Selector4105~12_combout\ & \wrtSD|bitNum\(3))) # (!\wrtSD|Selector4105~6_combout\ & (\wrtSD|Selector4105~12_combout\ & !\wrtSD|bitNum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4105~6_combout\,
	datab => \wrtSD|Selector4105~12_combout\,
	datac => \wrtSD|commandSent~regout\,
	datad => \wrtSD|bitNum\(3),
	combout => \wrtSD|Selector4105~13_combout\);

-- Location: LCCOMB_X36_Y17_N4
\wrtSD|Selector4105~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~7_combout\ = (\wrtSD|bitNum\(0) & (((!\wrtSD|bitNum\(1) & !\wrtSD|bitNum\(2))))) # (!\wrtSD|bitNum\(0) & (\wrtSD|bitNum\(3) & ((\wrtSD|bitNum\(1)) # (\wrtSD|bitNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(0),
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|bitNum\(1),
	datad => \wrtSD|bitNum\(2),
	combout => \wrtSD|Selector4105~7_combout\);

-- Location: LCCOMB_X36_Y17_N10
\wrtSD|Selector4105~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~6_combout\ = (\wrtSD|bitNum\(4) & (!\wrtSD|bitNum\(3))) # (!\wrtSD|bitNum\(4) & ((\wrtSD|bitNum\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|bitNum\(5),
	datad => \wrtSD|bitNum\(4),
	combout => \wrtSD|Selector4105~6_combout\);

-- Location: LCCOMB_X36_Y17_N14
\wrtSD|Selector4105~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~8_combout\ = (!\wrtSD|commandSent~regout\ & ((\wrtSD|bitNum\(3) & (!\wrtSD|Selector4105~7_combout\ & \wrtSD|Selector4105~6_combout\)) # (!\wrtSD|bitNum\(3) & (\wrtSD|Selector4105~7_combout\ & !\wrtSD|Selector4105~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|Selector4105~7_combout\,
	datad => \wrtSD|Selector4105~6_combout\,
	combout => \wrtSD|Selector4105~8_combout\);

-- Location: LCCOMB_X35_Y17_N16
\wrtSD|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal3~1_combout\ = (\wrtSD|Equal2~9_combout\ & (\wrtSD|state\(0) & (\wrtSD|Equal2~8_combout\ & \wrtSD|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~9_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|Equal3~1_combout\);

-- Location: LCCOMB_X33_Y17_N18
\wrtSD|Selector4105~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~14_combout\ = (!\wrtSD|bitNum\(4) & ((\wrtSD|bitNum\(5) & ((\wrtSD|bitNum\(3)))) # (!\wrtSD|bitNum\(5) & (\wrtSD|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Mux3~5_combout\,
	datab => \wrtSD|bitNum\(3),
	datac => \wrtSD|bitNum\(5),
	datad => \wrtSD|bitNum\(4),
	combout => \wrtSD|Selector4105~14_combout\);

-- Location: LCCOMB_X33_Y17_N0
\wrtSD|Selector4105~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~4_combout\ = (\wrtSD|Selector4105~14_combout\) # ((\wrtSD|Mux3~15_combout\ & (\wrtSD|bitNum\(4) & \wrtSD|bitNum\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Mux3~15_combout\,
	datab => \wrtSD|bitNum\(4),
	datac => \wrtSD|bitNum\(5),
	datad => \wrtSD|Selector4105~14_combout\,
	combout => \wrtSD|Selector4105~4_combout\);

-- Location: LCCOMB_X36_Y17_N26
\wrtSD|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal7~0_combout\ = (\wrtSD|Equal3~0_combout\ & (\wrtSD|state\(2) & !\wrtSD|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal3~0_combout\,
	datab => \wrtSD|state\(2),
	datac => \wrtSD|state\(1),
	combout => \wrtSD|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y17_N12
\wrtSD|Selector4105~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~5_combout\ = ((\wrtSD|commandSent~regout\ & (!\wrtSD|SD_CMD~regout\)) # (!\wrtSD|commandSent~regout\ & ((\wrtSD|Selector4105~4_combout\)))) # (!\wrtSD|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|SD_CMD~regout\,
	datac => \wrtSD|Selector4105~4_combout\,
	datad => \wrtSD|Equal7~0_combout\,
	combout => \wrtSD|Selector4105~5_combout\);

-- Location: LCCOMB_X36_Y17_N16
\wrtSD|SD_CMD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~5_combout\ = (\wrtSD|Selector4105~5_combout\ & ((\wrtSD|SD_CMD~0_combout\) # ((\wrtSD|Selector4105~8_combout\) # (!\wrtSD|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|SD_CMD~0_combout\,
	datab => \wrtSD|Selector4105~8_combout\,
	datac => \wrtSD|Equal3~1_combout\,
	datad => \wrtSD|Selector4105~5_combout\,
	combout => \wrtSD|SD_CMD~5_combout\);

-- Location: LCCOMB_X36_Y17_N28
\wrtSD|Selector4105~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~10_combout\ = (\wrtSD|bitNum\(1) & ((\wrtSD|bitNum\(2) $ (!\wrtSD|bitNum\(0))) # (!\wrtSD|bitNum\(5)))) # (!\wrtSD|bitNum\(1) & (((\wrtSD|bitNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitNum\(1),
	datab => \wrtSD|bitNum\(2),
	datac => \wrtSD|bitNum\(0),
	datad => \wrtSD|bitNum\(5),
	combout => \wrtSD|Selector4105~10_combout\);

-- Location: LCCOMB_X36_Y17_N2
\wrtSD|Selector4105~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~11_combout\ = (!\wrtSD|commandSent~regout\ & (\wrtSD|Selector4105~10_combout\ & (\wrtSD|Selector4105~9_combout\ $ (!\wrtSD|bitNum\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Selector4105~9_combout\,
	datab => \wrtSD|commandSent~regout\,
	datac => \wrtSD|bitNum\(5),
	datad => \wrtSD|Selector4105~10_combout\,
	combout => \wrtSD|Selector4105~11_combout\);

-- Location: LCCOMB_X36_Y17_N24
\wrtSD|SD_CMD~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~6_combout\ = (\wrtSD|SD_CMD~5_combout\ & ((\wrtSD|SD_CMD~0_combout\) # ((\wrtSD|Selector4105~11_combout\) # (!\wrtSD|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|SD_CMD~0_combout\,
	datab => \wrtSD|Equal4~1_combout\,
	datac => \wrtSD|SD_CMD~5_combout\,
	datad => \wrtSD|Selector4105~11_combout\,
	combout => \wrtSD|SD_CMD~6_combout\);

-- Location: LCCOMB_X36_Y17_N18
\wrtSD|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Equal5~0_combout\ = (\wrtSD|Equal3~0_combout\ & (!\wrtSD|state\(2) & \wrtSD|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal3~0_combout\,
	datab => \wrtSD|state\(2),
	datac => \wrtSD|state\(1),
	combout => \wrtSD|Equal5~0_combout\);

-- Location: LCCOMB_X36_Y17_N0
\wrtSD|SD_CMD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~7_combout\ = (\wrtSD|SD_CMD~6_combout\ & ((\wrtSD|SD_CMD~0_combout\) # ((\wrtSD|Selector4105~13_combout\) # (!\wrtSD|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|SD_CMD~0_combout\,
	datab => \wrtSD|Selector4105~13_combout\,
	datac => \wrtSD|SD_CMD~6_combout\,
	datad => \wrtSD|Equal5~0_combout\,
	combout => \wrtSD|SD_CMD~7_combout\);

-- Location: LCCOMB_X36_Y17_N20
\wrtSD|SD_CMD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~0_combout\ = (\wrtSD|commandSent~regout\ & !\wrtSD|SD_CMD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|commandSent~regout\,
	datad => \wrtSD|SD_CMD~regout\,
	combout => \wrtSD|SD_CMD~0_combout\);

-- Location: LCCOMB_X34_Y13_N0
\wrtSD|SD_CMD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~1_combout\ = (!\wrtSD|bitsGathered\(11) & (!\wrtSD|bitsGathered\(9) & (!\wrtSD|bitsGathered\(10) & !\wrtSD|bitsGathered\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(11),
	datab => \wrtSD|bitsGathered\(9),
	datac => \wrtSD|bitsGathered\(10),
	datad => \wrtSD|bitsGathered\(8),
	combout => \wrtSD|SD_CMD~1_combout\);

-- Location: LCCOMB_X34_Y14_N26
\wrtSD|SD_CMD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~2_combout\ = (!\wrtSD|bitsGathered\(7) & (\wrtSD|SD_CMD~1_combout\ & (!\wrtSD|bitsGathered\(6) & !\wrtSD|bitsGathered\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(7),
	datab => \wrtSD|SD_CMD~1_combout\,
	datac => \wrtSD|bitsGathered\(6),
	datad => \wrtSD|bitsGathered\(5),
	combout => \wrtSD|SD_CMD~2_combout\);

-- Location: LCCOMB_X35_Y17_N18
\wrtSD|WideOr4092\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|WideOr4092~combout\ = (\wrtSD|state\(1)) # ((\wrtSD|state\(0)) # ((!\wrtSD|Equal2~4_combout\) # (!\wrtSD|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(1),
	datab => \wrtSD|state\(0),
	datac => \wrtSD|Equal2~8_combout\,
	datad => \wrtSD|Equal2~4_combout\,
	combout => \wrtSD|WideOr4092~combout\);

-- Location: LCCOMB_X34_Y14_N22
\wrtSD|Selector4197~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4197~0_combout\ = (!\wrtSD|LessThan0~10_combout\ & (\wrtSD|SD_CMD~2_combout\ & (!\wrtSD|Equal2~10_combout\ & !\wrtSD|WideOr4092~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan0~10_combout\,
	datab => \wrtSD|SD_CMD~2_combout\,
	datac => \wrtSD|Equal2~10_combout\,
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4197~0_combout\);

-- Location: LCCOMB_X31_Y14_N22
\wrtSD|Selector4194~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4194~0_combout\ = (\wrtSD|Selector4154~0_combout\) # ((!\wrtSD|WideOr4~0_combout\ & (\wrtSD|bitsGathered\(4) & \wrtSD|Selector4197~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|WideOr4~0_combout\,
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|Selector4197~0_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4194~0_combout\);

-- Location: LCCOMB_X31_Y14_N26
\wrtSD|dataGathered[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[6]~4_combout\ = (\wrtSD|Selector4194~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4194~0_combout\ & ((\wrtSD|dataGathered\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|dataGathered\(6),
	datad => \wrtSD|Selector4194~0_combout\,
	combout => \wrtSD|dataGathered[6]~4_combout\);

-- Location: LCFF_X31_Y14_N27
\wrtSD|dataGathered[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(6));

-- Location: LCCOMB_X31_Y14_N18
\wrtSD|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux4~2_combout\ = (\wrtSD|bitsGathered\(1) & (((\wrtSD|dataGathered\(6)) # (!\wrtSD|bitsGathered\(0))))) # (!\wrtSD|bitsGathered\(1) & (\wrtSD|dataGathered\(4) & ((\wrtSD|bitsGathered\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|dataGathered\(4),
	datab => \wrtSD|dataGathered\(6),
	datac => \wrtSD|bitsGathered\(1),
	datad => \wrtSD|bitsGathered\(0),
	combout => \wrtSD|Mux4~2_combout\);

-- Location: LCCOMB_X31_Y14_N0
\wrtSD|Selector4193~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4193~0_combout\ = (\wrtSD|Selector4154~0_combout\) # ((!\wrtSD|bitsGathered\(3) & (\wrtSD|bitsGathered\(4) & \wrtSD|Selector4197~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|bitsGathered\(3),
	datab => \wrtSD|bitsGathered\(4),
	datac => \wrtSD|Selector4197~0_combout\,
	datad => \wrtSD|Selector4154~0_combout\,
	combout => \wrtSD|Selector4193~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\wrtSD|dataGathered[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|dataGathered[7]~6_combout\ = (\wrtSD|Selector4193~0_combout\ & (\wrtSD|Equal2~10_combout\)) # (!\wrtSD|Selector4193~0_combout\ & ((\wrtSD|dataGathered\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wrtSD|Equal2~10_combout\,
	datac => \wrtSD|dataGathered\(7),
	datad => \wrtSD|Selector4193~0_combout\,
	combout => \wrtSD|dataGathered[7]~6_combout\);

-- Location: LCFF_X31_Y14_N17
\wrtSD|dataGathered[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|dataGathered[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|dataGathered\(7));

-- Location: LCCOMB_X31_Y14_N2
\wrtSD|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Mux4~3_combout\ = (\wrtSD|Mux4~2_combout\ & (((\wrtSD|dataGathered\(7)) # (\wrtSD|bitsGathered\(0))))) # (!\wrtSD|Mux4~2_combout\ & (\wrtSD|dataGathered\(5) & ((!\wrtSD|bitsGathered\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|dataGathered\(5),
	datab => \wrtSD|Mux4~2_combout\,
	datac => \wrtSD|dataGathered\(7),
	datad => \wrtSD|bitsGathered\(0),
	combout => \wrtSD|Mux4~3_combout\);

-- Location: LCCOMB_X32_Y12_N26
\wrtSD|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~5_combout\ = (\wrtSD|Add4~34_combout\) # ((\wrtSD|Add4~36_combout\) # ((\wrtSD|Add4~32_combout\) # (\wrtSD|Add4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~34_combout\,
	datab => \wrtSD|Add4~36_combout\,
	datac => \wrtSD|Add4~32_combout\,
	datad => \wrtSD|Add4~38_combout\,
	combout => \wrtSD|LessThan1~5_combout\);

-- Location: LCCOMB_X32_Y12_N10
\wrtSD|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~7_combout\ = (\wrtSD|LessThan1~6_combout\) # ((\wrtSD|Add4~44_combout\) # ((\wrtSD|Add4~46_combout\) # (\wrtSD|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan1~6_combout\,
	datab => \wrtSD|Add4~44_combout\,
	datac => \wrtSD|Add4~46_combout\,
	datad => \wrtSD|LessThan1~5_combout\,
	combout => \wrtSD|LessThan1~7_combout\);

-- Location: LCCOMB_X32_Y13_N18
\wrtSD|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~0_combout\ = (\wrtSD|Add4~28_combout\) # ((\wrtSD|Add4~30_combout\) # ((\wrtSD|Add4~26_combout\) # (\wrtSD|Add4~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~28_combout\,
	datab => \wrtSD|Add4~30_combout\,
	datac => \wrtSD|Add4~26_combout\,
	datad => \wrtSD|Add4~24_combout\,
	combout => \wrtSD|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y13_N24
\wrtSD|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~2_combout\ = (\wrtSD|Add4~10_combout\ & (\wrtSD|Add4~14_combout\ & (\wrtSD|Add4~8_combout\ & \wrtSD|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~10_combout\,
	datab => \wrtSD|Add4~14_combout\,
	datac => \wrtSD|Add4~8_combout\,
	datad => \wrtSD|Add4~12_combout\,
	combout => \wrtSD|LessThan1~2_combout\);

-- Location: LCCOMB_X34_Y13_N26
\wrtSD|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~3_combout\ = (\wrtSD|Add4~20_combout\ & (\wrtSD|Add4~16_combout\ & (\wrtSD|Add4~22_combout\ & \wrtSD|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~20_combout\,
	datab => \wrtSD|Add4~16_combout\,
	datac => \wrtSD|Add4~22_combout\,
	datad => \wrtSD|Add4~18_combout\,
	combout => \wrtSD|LessThan1~3_combout\);

-- Location: LCCOMB_X34_Y13_N16
\wrtSD|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~4_combout\ = (\wrtSD|LessThan1~0_combout\) # ((\wrtSD|LessThan1~1_combout\ & (\wrtSD|LessThan1~2_combout\ & \wrtSD|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|LessThan1~1_combout\,
	datab => \wrtSD|LessThan1~0_combout\,
	datac => \wrtSD|LessThan1~2_combout\,
	datad => \wrtSD|LessThan1~3_combout\,
	combout => \wrtSD|LessThan1~4_combout\);

-- Location: LCCOMB_X32_Y12_N4
\wrtSD|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~8_combout\ = (\wrtSD|Add4~48_combout\) # ((\wrtSD|Add4~52_combout\) # ((\wrtSD|Add4~54_combout\) # (\wrtSD|Add4~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~48_combout\,
	datab => \wrtSD|Add4~52_combout\,
	datac => \wrtSD|Add4~54_combout\,
	datad => \wrtSD|Add4~50_combout\,
	combout => \wrtSD|LessThan1~8_combout\);

-- Location: LCCOMB_X34_Y12_N2
\wrtSD|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~9_combout\ = (\wrtSD|Add4~56_combout\) # ((\wrtSD|Add4~58_combout\) # ((\wrtSD|LessThan1~8_combout\) # (\wrtSD|Add4~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~56_combout\,
	datab => \wrtSD|Add4~58_combout\,
	datac => \wrtSD|LessThan1~8_combout\,
	datad => \wrtSD|Add4~60_combout\,
	combout => \wrtSD|LessThan1~9_combout\);

-- Location: LCCOMB_X34_Y12_N10
\wrtSD|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|LessThan1~10_combout\ = (!\wrtSD|Add4~62_combout\ & ((\wrtSD|LessThan1~7_combout\) # ((\wrtSD|LessThan1~4_combout\) # (\wrtSD|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Add4~62_combout\,
	datab => \wrtSD|LessThan1~7_combout\,
	datac => \wrtSD|LessThan1~4_combout\,
	datad => \wrtSD|LessThan1~9_combout\,
	combout => \wrtSD|LessThan1~10_combout\);

-- Location: LCCOMB_X34_Y14_N8
\wrtSD|SD_CMD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~4_combout\ = (!\wrtSD|LessThan1~10_combout\ & ((\wrtSD|bitsGathered\(2) & (\wrtSD|Mux4~1_combout\)) # (!\wrtSD|bitsGathered\(2) & ((\wrtSD|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Mux4~1_combout\,
	datab => \wrtSD|bitsGathered\(2),
	datac => \wrtSD|Mux4~3_combout\,
	datad => \wrtSD|LessThan1~10_combout\,
	combout => \wrtSD|SD_CMD~4_combout\);

-- Location: LCCOMB_X35_Y14_N20
\wrtSD|Selector4105~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4105~2_combout\ = (\wrtSD|SD_CMD~0_combout\) # (((\wrtSD|SD_CMD~3_combout\ & \wrtSD|SD_CMD~4_combout\)) # (!\wrtSD|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|SD_CMD~3_combout\,
	datab => \wrtSD|SD_CMD~0_combout\,
	datac => \wrtSD|Equal8~0_combout\,
	datad => \wrtSD|SD_CMD~4_combout\,
	combout => \wrtSD|Selector4105~2_combout\);

-- Location: LCCOMB_X36_Y18_N18
\wrtSD|SD_CMD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~9_combout\ = (\wrtSD|SD_CMD~7_combout\ & (\wrtSD|Selector4105~2_combout\ & ((\wrtSD|SD_CMD~8_combout\) # (!\wrtSD|SD_CMD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|SD_CMD~8_combout\,
	datab => \wrtSD|SD_CMD~7_combout\,
	datac => \wrtSD|Selector4105~2_combout\,
	datad => \wrtSD|SD_CMD~regout\,
	combout => \wrtSD|SD_CMD~9_combout\);

-- Location: LCCOMB_X36_Y18_N10
\wrtSD|SD_CMD~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|SD_CMD~10_combout\ = (!\wrtSD|SD_CMD~9_combout\ & (((\wrtSD|replyStarted~regout\) # (\SD_DAT~combout\)) # (!\wrtSD|commandSent~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|commandSent~regout\,
	datab => \wrtSD|replyStarted~regout\,
	datac => \SD_DAT~combout\,
	datad => \wrtSD|SD_CMD~9_combout\,
	combout => \wrtSD|SD_CMD~10_combout\);

-- Location: LCFF_X36_Y18_N11
\wrtSD|SD_CMD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|SD_CMD~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|SD_CMD~regout\);

-- Location: LCCOMB_X37_Y16_N28
\wrtSD|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~0_combout\ = (!\wrtSD|state\(4) & (!\wrtSD|state\(3) & (!\wrtSD|state\(2) & !\wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~0_combout\);

-- Location: LCCOMB_X38_Y16_N2
\wrtSD|ledr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~0_combout\ = (\wrtSD|ledr\(0)) # ((\wrtSD|Decoder0~0_combout\ & !\wrtSD|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|ledr\(0),
	datab => \wrtSD|Decoder0~0_combout\,
	datac => \wrtSD|state\(0),
	combout => \wrtSD|ledr~0_combout\);

-- Location: LCCOMB_X38_Y16_N20
\wrtSD|ledr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~1_combout\ = (\wrtSD|Equal2~10_combout\ & (\wrtSD|Equal0~0_combout\ & (\wrtSD|Equal0~1_combout\))) # (!\wrtSD|Equal2~10_combout\ & (((\wrtSD|ledr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Equal2~10_combout\,
	datab => \wrtSD|Equal0~0_combout\,
	datac => \wrtSD|Equal0~1_combout\,
	datad => \wrtSD|ledr~0_combout\,
	combout => \wrtSD|ledr~1_combout\);

-- Location: LCFF_X38_Y16_N21
\wrtSD|ledr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|ledr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(0));

-- Location: LCCOMB_X38_Y16_N18
\wrtSD|ledr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~2_combout\ = (!\wrtSD|Equal2~10_combout\ & ((\wrtSD|ledr\(1)) # ((\wrtSD|Decoder0~0_combout\ & \wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~0_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(1),
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|ledr~2_combout\);

-- Location: LCFF_X38_Y16_N19
\wrtSD|ledr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|ledr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(1));

-- Location: LCCOMB_X38_Y16_N24
\wrtSD|ledr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~3_combout\ = (!\wrtSD|Equal2~10_combout\ & ((\wrtSD|ledr\(2)) # ((\wrtSD|Decoder0~1_combout\ & !\wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~1_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(2),
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|ledr~3_combout\);

-- Location: LCFF_X38_Y16_N25
\wrtSD|ledr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|ledr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(2));

-- Location: LCCOMB_X38_Y16_N10
\wrtSD|ledr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~4_combout\ = (!\wrtSD|Equal2~10_combout\ & ((\wrtSD|ledr\(3)) # ((\wrtSD|Decoder0~1_combout\ & \wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~1_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(3),
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|ledr~4_combout\);

-- Location: LCFF_X38_Y16_N11
\wrtSD|ledr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|ledr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(3));

-- Location: LCCOMB_X38_Y16_N12
\wrtSD|ledr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|ledr~5_combout\ = (!\wrtSD|Equal2~10_combout\ & ((\wrtSD|ledr\(4)) # ((\wrtSD|Decoder0~2_combout\ & !\wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~2_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(4),
	datad => \wrtSD|Equal2~10_combout\,
	combout => \wrtSD|ledr~5_combout\);

-- Location: LCFF_X38_Y16_N13
\wrtSD|ledr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|ledr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(4));

-- Location: LCCOMB_X37_Y16_N0
\wrtSD|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~2_combout\ = (!\wrtSD|state\(4) & (!\wrtSD|state\(3) & (\wrtSD|state\(2) & !\wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~2_combout\);

-- Location: LCCOMB_X37_Y16_N16
\wrtSD|Selector4104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4104~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(5)) # ((\wrtSD|state\(0) & \wrtSD|Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|WideOr4092~combout\,
	datac => \wrtSD|ledr\(5),
	datad => \wrtSD|Decoder0~2_combout\,
	combout => \wrtSD|Selector4104~0_combout\);

-- Location: LCFF_X37_Y16_N17
\wrtSD|ledr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4104~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(5));

-- Location: LCCOMB_X37_Y16_N10
\wrtSD|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~3_combout\ = (!\wrtSD|state\(4) & (!\wrtSD|state\(3) & (\wrtSD|state\(2) & \wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~3_combout\);

-- Location: LCCOMB_X37_Y15_N0
\wrtSD|Selector4103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4103~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(6)) # ((!\wrtSD|state\(0) & \wrtSD|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|Decoder0~3_combout\,
	datac => \wrtSD|ledr\(6),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4103~0_combout\);

-- Location: LCFF_X37_Y15_N1
\wrtSD|ledr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4103~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(6));

-- Location: LCCOMB_X37_Y15_N10
\wrtSD|Selector4102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4102~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(7)) # ((\wrtSD|state\(0) & \wrtSD|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|Decoder0~3_combout\,
	datac => \wrtSD|ledr\(7),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4102~0_combout\);

-- Location: LCFF_X37_Y15_N11
\wrtSD|ledr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4102~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(7));

-- Location: LCCOMB_X37_Y15_N8
\wrtSD|Selector4101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4101~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(8)) # ((\wrtSD|Decoder0~4_combout\ & !\wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~4_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(8),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4101~0_combout\);

-- Location: LCFF_X37_Y15_N9
\wrtSD|ledr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4101~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(8));

-- Location: LCCOMB_X37_Y15_N6
\wrtSD|Selector4100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4100~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(9)) # ((\wrtSD|Decoder0~4_combout\ & \wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~4_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(9),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4100~0_combout\);

-- Location: LCFF_X37_Y15_N7
\wrtSD|ledr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(9));

-- Location: LCCOMB_X37_Y16_N18
\wrtSD|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~5_combout\ = (!\wrtSD|state\(4) & (\wrtSD|state\(3) & (!\wrtSD|state\(2) & \wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~5_combout\);

-- Location: LCCOMB_X37_Y16_N22
\wrtSD|Selector4099~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4099~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(10)) # ((!\wrtSD|state\(0) & \wrtSD|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|WideOr4092~combout\,
	datac => \wrtSD|ledr\(10),
	datad => \wrtSD|Decoder0~5_combout\,
	combout => \wrtSD|Selector4099~0_combout\);

-- Location: LCFF_X37_Y16_N23
\wrtSD|ledr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4099~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(10));

-- Location: LCCOMB_X37_Y16_N8
\wrtSD|Selector4098~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4098~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(11)) # ((\wrtSD|state\(0) & \wrtSD|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|WideOr4092~combout\,
	datac => \wrtSD|ledr\(11),
	datad => \wrtSD|Decoder0~5_combout\,
	combout => \wrtSD|Selector4098~0_combout\);

-- Location: LCFF_X37_Y16_N9
\wrtSD|ledr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4098~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(11));

-- Location: LCCOMB_X37_Y15_N16
\wrtSD|Selector4097~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4097~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(12)) # ((\wrtSD|Decoder0~6_combout\ & !\wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~6_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(12),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4097~0_combout\);

-- Location: LCFF_X37_Y15_N17
\wrtSD|ledr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4097~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(12));

-- Location: LCCOMB_X37_Y15_N18
\wrtSD|Selector4096~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4096~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(13)) # ((\wrtSD|Decoder0~6_combout\ & \wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~6_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(13),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4096~0_combout\);

-- Location: LCFF_X37_Y15_N19
\wrtSD|ledr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4096~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(13));

-- Location: LCCOMB_X37_Y15_N4
\wrtSD|Selector4095~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4095~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(14)) # ((\wrtSD|Decoder0~7_combout\ & !\wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~7_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(14),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4095~0_combout\);

-- Location: LCFF_X37_Y15_N5
\wrtSD|ledr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4095~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(14));

-- Location: LCCOMB_X37_Y15_N26
\wrtSD|Selector4094~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4094~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(15)) # ((\wrtSD|Decoder0~7_combout\ & \wrtSD|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|Decoder0~7_combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(15),
	datad => \wrtSD|WideOr4092~combout\,
	combout => \wrtSD|Selector4094~0_combout\);

-- Location: LCFF_X37_Y15_N27
\wrtSD|ledr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4094~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(15));

-- Location: LCCOMB_X37_Y16_N24
\wrtSD|Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Decoder0~8_combout\ = (\wrtSD|state\(4) & (!\wrtSD|state\(3) & (!\wrtSD|state\(2) & !\wrtSD|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(4),
	datab => \wrtSD|state\(3),
	datac => \wrtSD|state\(2),
	datad => \wrtSD|state\(1),
	combout => \wrtSD|Decoder0~8_combout\);

-- Location: LCCOMB_X34_Y16_N20
\wrtSD|Selector4093~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4093~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(16)) # ((!\wrtSD|state\(0) & \wrtSD|Decoder0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|WideOr4092~combout\,
	datab => \wrtSD|state\(0),
	datac => \wrtSD|ledr\(16),
	datad => \wrtSD|Decoder0~8_combout\,
	combout => \wrtSD|Selector4093~0_combout\);

-- Location: LCFF_X34_Y16_N21
\wrtSD|ledr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4093~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(16));

-- Location: LCCOMB_X37_Y16_N2
\wrtSD|Selector4092~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wrtSD|Selector4092~0_combout\ = (\wrtSD|WideOr4092~combout\ & ((\wrtSD|ledr\(17)) # ((\wrtSD|state\(0) & \wrtSD|Decoder0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrtSD|state\(0),
	datab => \wrtSD|WideOr4092~combout\,
	datac => \wrtSD|ledr\(17),
	datad => \wrtSD|Decoder0~8_combout\,
	combout => \wrtSD|Selector4092~0_combout\);

-- Location: LCFF_X37_Y16_N3
\wrtSD|ledr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkDiv|tempClk~clkctrl_outclk\,
	datain => \wrtSD|Selector4092~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrtSD|ledr\(17));

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clkDiv|tempClk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_CLK);

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_DAT3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ALT_INV_SD_DAT3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_DAT3);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CMD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ALT_INV_SD_CMD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_CMD);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clkDiv|tempClk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SD_DAT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(7));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(8));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gpio_1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CLOCK_50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gpio_1(9));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wrtSD|ledr\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(17));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(8));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(3));
END structure;


