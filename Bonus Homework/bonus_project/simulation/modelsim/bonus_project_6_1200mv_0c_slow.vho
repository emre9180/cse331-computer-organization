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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/08/2023 15:10:22"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	cypher : IN std_logic_vector(15 DOWNTO 0);
	four_bit_input : IN std_logic_vector(3 DOWNTO 0);
	read : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	find : BUFFER std_logic;
	additionresult : BUFFER std_logic_vector(63 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- cypher[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[7]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[12]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[13]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cypher[15]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- find	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[16]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[18]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[19]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[21]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[22]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[24]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[25]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[26]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[28]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[29]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[30]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[31]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[32]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[33]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[34]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[35]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[36]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[37]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[38]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[39]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[40]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[41]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[42]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[43]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[44]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[45]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[46]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[47]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[48]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[49]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[50]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[51]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[52]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[53]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[54]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[55]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[56]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[57]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[58]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[59]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[60]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[61]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[62]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- additionresult[63]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- four_bit_input[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- four_bit_input[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- four_bit_input[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- four_bit_input[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cypher : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_four_bit_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_read : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_find : std_logic;
SIGNAL ww_additionresult : std_logic_vector(63 DOWNTO 0);
SIGNAL \read~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cypher[0]~input_o\ : std_logic;
SIGNAL \cypher[1]~input_o\ : std_logic;
SIGNAL \cypher[2]~input_o\ : std_logic;
SIGNAL \cypher[3]~input_o\ : std_logic;
SIGNAL \cypher[4]~input_o\ : std_logic;
SIGNAL \cypher[5]~input_o\ : std_logic;
SIGNAL \cypher[6]~input_o\ : std_logic;
SIGNAL \cypher[7]~input_o\ : std_logic;
SIGNAL \cypher[8]~input_o\ : std_logic;
SIGNAL \cypher[9]~input_o\ : std_logic;
SIGNAL \cypher[10]~input_o\ : std_logic;
SIGNAL \cypher[11]~input_o\ : std_logic;
SIGNAL \cypher[12]~input_o\ : std_logic;
SIGNAL \cypher[13]~input_o\ : std_logic;
SIGNAL \cypher[14]~input_o\ : std_logic;
SIGNAL \cypher[15]~input_o\ : std_logic;
SIGNAL \find~output_o\ : std_logic;
SIGNAL \additionresult[0]~output_o\ : std_logic;
SIGNAL \additionresult[1]~output_o\ : std_logic;
SIGNAL \additionresult[2]~output_o\ : std_logic;
SIGNAL \additionresult[3]~output_o\ : std_logic;
SIGNAL \additionresult[4]~output_o\ : std_logic;
SIGNAL \additionresult[5]~output_o\ : std_logic;
SIGNAL \additionresult[6]~output_o\ : std_logic;
SIGNAL \additionresult[7]~output_o\ : std_logic;
SIGNAL \additionresult[8]~output_o\ : std_logic;
SIGNAL \additionresult[9]~output_o\ : std_logic;
SIGNAL \additionresult[10]~output_o\ : std_logic;
SIGNAL \additionresult[11]~output_o\ : std_logic;
SIGNAL \additionresult[12]~output_o\ : std_logic;
SIGNAL \additionresult[13]~output_o\ : std_logic;
SIGNAL \additionresult[14]~output_o\ : std_logic;
SIGNAL \additionresult[15]~output_o\ : std_logic;
SIGNAL \additionresult[16]~output_o\ : std_logic;
SIGNAL \additionresult[17]~output_o\ : std_logic;
SIGNAL \additionresult[18]~output_o\ : std_logic;
SIGNAL \additionresult[19]~output_o\ : std_logic;
SIGNAL \additionresult[20]~output_o\ : std_logic;
SIGNAL \additionresult[21]~output_o\ : std_logic;
SIGNAL \additionresult[22]~output_o\ : std_logic;
SIGNAL \additionresult[23]~output_o\ : std_logic;
SIGNAL \additionresult[24]~output_o\ : std_logic;
SIGNAL \additionresult[25]~output_o\ : std_logic;
SIGNAL \additionresult[26]~output_o\ : std_logic;
SIGNAL \additionresult[27]~output_o\ : std_logic;
SIGNAL \additionresult[28]~output_o\ : std_logic;
SIGNAL \additionresult[29]~output_o\ : std_logic;
SIGNAL \additionresult[30]~output_o\ : std_logic;
SIGNAL \additionresult[31]~output_o\ : std_logic;
SIGNAL \additionresult[32]~output_o\ : std_logic;
SIGNAL \additionresult[33]~output_o\ : std_logic;
SIGNAL \additionresult[34]~output_o\ : std_logic;
SIGNAL \additionresult[35]~output_o\ : std_logic;
SIGNAL \additionresult[36]~output_o\ : std_logic;
SIGNAL \additionresult[37]~output_o\ : std_logic;
SIGNAL \additionresult[38]~output_o\ : std_logic;
SIGNAL \additionresult[39]~output_o\ : std_logic;
SIGNAL \additionresult[40]~output_o\ : std_logic;
SIGNAL \additionresult[41]~output_o\ : std_logic;
SIGNAL \additionresult[42]~output_o\ : std_logic;
SIGNAL \additionresult[43]~output_o\ : std_logic;
SIGNAL \additionresult[44]~output_o\ : std_logic;
SIGNAL \additionresult[45]~output_o\ : std_logic;
SIGNAL \additionresult[46]~output_o\ : std_logic;
SIGNAL \additionresult[47]~output_o\ : std_logic;
SIGNAL \additionresult[48]~output_o\ : std_logic;
SIGNAL \additionresult[49]~output_o\ : std_logic;
SIGNAL \additionresult[50]~output_o\ : std_logic;
SIGNAL \additionresult[51]~output_o\ : std_logic;
SIGNAL \additionresult[52]~output_o\ : std_logic;
SIGNAL \additionresult[53]~output_o\ : std_logic;
SIGNAL \additionresult[54]~output_o\ : std_logic;
SIGNAL \additionresult[55]~output_o\ : std_logic;
SIGNAL \additionresult[56]~output_o\ : std_logic;
SIGNAL \additionresult[57]~output_o\ : std_logic;
SIGNAL \additionresult[58]~output_o\ : std_logic;
SIGNAL \additionresult[59]~output_o\ : std_logic;
SIGNAL \additionresult[60]~output_o\ : std_logic;
SIGNAL \additionresult[61]~output_o\ : std_logic;
SIGNAL \additionresult[62]~output_o\ : std_logic;
SIGNAL \additionresult[63]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \c0|current_state.FINAL~0_combout\ : std_logic;
SIGNAL \c0|current_state.FINAL~q\ : std_logic;
SIGNAL \read~input_o\ : std_logic;
SIGNAL \read~inputclkctrl_outclk\ : std_logic;
SIGNAL \four_bit_input[0]~input_o\ : std_logic;
SIGNAL \d0|w_sum[0]~0_combout\ : std_logic;
SIGNAL \d0|reg_addition~0_combout\ : std_logic;
SIGNAL \four_bit_input[1]~input_o\ : std_logic;
SIGNAL \d0|w_sum[0]~1\ : std_logic;
SIGNAL \d0|w_sum[1]~2_combout\ : std_logic;
SIGNAL \d0|reg_addition~1_combout\ : std_logic;
SIGNAL \four_bit_input[2]~input_o\ : std_logic;
SIGNAL \d0|w_sum[1]~3\ : std_logic;
SIGNAL \d0|w_sum[2]~4_combout\ : std_logic;
SIGNAL \d0|reg_addition~2_combout\ : std_logic;
SIGNAL \four_bit_input[3]~input_o\ : std_logic;
SIGNAL \d0|w_sum[2]~5\ : std_logic;
SIGNAL \d0|w_sum[3]~6_combout\ : std_logic;
SIGNAL \d0|reg_addition~3_combout\ : std_logic;
SIGNAL \d0|w_sum[3]~7\ : std_logic;
SIGNAL \d0|w_sum[4]~8_combout\ : std_logic;
SIGNAL \d0|reg_addition~4_combout\ : std_logic;
SIGNAL \d0|w_sum[4]~9\ : std_logic;
SIGNAL \d0|w_sum[5]~10_combout\ : std_logic;
SIGNAL \d0|reg_addition~5_combout\ : std_logic;
SIGNAL \d0|w_sum[5]~11\ : std_logic;
SIGNAL \d0|w_sum[6]~12_combout\ : std_logic;
SIGNAL \d0|reg_addition~6_combout\ : std_logic;
SIGNAL \d0|w_sum[6]~13\ : std_logic;
SIGNAL \d0|w_sum[7]~14_combout\ : std_logic;
SIGNAL \d0|reg_addition~7_combout\ : std_logic;
SIGNAL \d0|w_sum[7]~15\ : std_logic;
SIGNAL \d0|w_sum[8]~16_combout\ : std_logic;
SIGNAL \d0|reg_addition~8_combout\ : std_logic;
SIGNAL \d0|w_sum[8]~17\ : std_logic;
SIGNAL \d0|w_sum[9]~18_combout\ : std_logic;
SIGNAL \d0|reg_addition~9_combout\ : std_logic;
SIGNAL \d0|w_sum[9]~19\ : std_logic;
SIGNAL \d0|w_sum[10]~20_combout\ : std_logic;
SIGNAL \d0|reg_addition~10_combout\ : std_logic;
SIGNAL \d0|w_sum[10]~21\ : std_logic;
SIGNAL \d0|w_sum[11]~22_combout\ : std_logic;
SIGNAL \d0|reg_addition~11_combout\ : std_logic;
SIGNAL \d0|w_sum[11]~23\ : std_logic;
SIGNAL \d0|w_sum[12]~24_combout\ : std_logic;
SIGNAL \d0|reg_addition~12_combout\ : std_logic;
SIGNAL \d0|w_sum[12]~25\ : std_logic;
SIGNAL \d0|w_sum[13]~26_combout\ : std_logic;
SIGNAL \d0|reg_addition~13_combout\ : std_logic;
SIGNAL \d0|w_sum[13]~27\ : std_logic;
SIGNAL \d0|w_sum[14]~28_combout\ : std_logic;
SIGNAL \d0|reg_addition~14_combout\ : std_logic;
SIGNAL \d0|w_sum[14]~29\ : std_logic;
SIGNAL \d0|w_sum[15]~30_combout\ : std_logic;
SIGNAL \d0|reg_addition~15_combout\ : std_logic;
SIGNAL \d0|w_sum[15]~31\ : std_logic;
SIGNAL \d0|w_sum[16]~32_combout\ : std_logic;
SIGNAL \d0|reg_addition~16_combout\ : std_logic;
SIGNAL \d0|w_sum[16]~33\ : std_logic;
SIGNAL \d0|w_sum[17]~34_combout\ : std_logic;
SIGNAL \d0|reg_addition~17_combout\ : std_logic;
SIGNAL \d0|w_sum[17]~35\ : std_logic;
SIGNAL \d0|w_sum[18]~36_combout\ : std_logic;
SIGNAL \d0|reg_addition~18_combout\ : std_logic;
SIGNAL \d0|w_sum[18]~37\ : std_logic;
SIGNAL \d0|w_sum[19]~38_combout\ : std_logic;
SIGNAL \d0|reg_addition~19_combout\ : std_logic;
SIGNAL \d0|w_sum[19]~39\ : std_logic;
SIGNAL \d0|w_sum[20]~40_combout\ : std_logic;
SIGNAL \d0|reg_addition~20_combout\ : std_logic;
SIGNAL \d0|w_sum[20]~41\ : std_logic;
SIGNAL \d0|w_sum[21]~42_combout\ : std_logic;
SIGNAL \d0|reg_addition~21_combout\ : std_logic;
SIGNAL \d0|w_sum[21]~43\ : std_logic;
SIGNAL \d0|w_sum[22]~44_combout\ : std_logic;
SIGNAL \d0|reg_addition~22_combout\ : std_logic;
SIGNAL \d0|w_sum[22]~45\ : std_logic;
SIGNAL \d0|w_sum[23]~46_combout\ : std_logic;
SIGNAL \d0|reg_addition~23_combout\ : std_logic;
SIGNAL \d0|w_sum[23]~47\ : std_logic;
SIGNAL \d0|w_sum[24]~48_combout\ : std_logic;
SIGNAL \d0|reg_addition~24_combout\ : std_logic;
SIGNAL \d0|w_sum[24]~49\ : std_logic;
SIGNAL \d0|w_sum[25]~50_combout\ : std_logic;
SIGNAL \d0|reg_addition~25_combout\ : std_logic;
SIGNAL \d0|w_sum[25]~51\ : std_logic;
SIGNAL \d0|w_sum[26]~52_combout\ : std_logic;
SIGNAL \d0|reg_addition~26_combout\ : std_logic;
SIGNAL \d0|w_sum[26]~53\ : std_logic;
SIGNAL \d0|w_sum[27]~54_combout\ : std_logic;
SIGNAL \d0|reg_addition~27_combout\ : std_logic;
SIGNAL \d0|w_sum[27]~55\ : std_logic;
SIGNAL \d0|w_sum[28]~56_combout\ : std_logic;
SIGNAL \d0|reg_addition~28_combout\ : std_logic;
SIGNAL \d0|w_sum[28]~57\ : std_logic;
SIGNAL \d0|w_sum[29]~58_combout\ : std_logic;
SIGNAL \d0|reg_addition~29_combout\ : std_logic;
SIGNAL \d0|w_sum[29]~59\ : std_logic;
SIGNAL \d0|w_sum[30]~60_combout\ : std_logic;
SIGNAL \d0|reg_addition~30_combout\ : std_logic;
SIGNAL \d0|w_sum[30]~61\ : std_logic;
SIGNAL \d0|w_sum[31]~62_combout\ : std_logic;
SIGNAL \d0|reg_addition~31_combout\ : std_logic;
SIGNAL \d0|w_sum[31]~63\ : std_logic;
SIGNAL \d0|w_sum[32]~64_combout\ : std_logic;
SIGNAL \d0|reg_addition~32_combout\ : std_logic;
SIGNAL \d0|w_sum[32]~65\ : std_logic;
SIGNAL \d0|w_sum[33]~66_combout\ : std_logic;
SIGNAL \d0|reg_addition~33_combout\ : std_logic;
SIGNAL \d0|w_sum[33]~67\ : std_logic;
SIGNAL \d0|w_sum[34]~68_combout\ : std_logic;
SIGNAL \d0|reg_addition~34_combout\ : std_logic;
SIGNAL \d0|w_sum[34]~69\ : std_logic;
SIGNAL \d0|w_sum[35]~70_combout\ : std_logic;
SIGNAL \d0|reg_addition~35_combout\ : std_logic;
SIGNAL \d0|w_sum[35]~71\ : std_logic;
SIGNAL \d0|w_sum[36]~72_combout\ : std_logic;
SIGNAL \d0|reg_addition~36_combout\ : std_logic;
SIGNAL \d0|w_sum[36]~73\ : std_logic;
SIGNAL \d0|w_sum[37]~74_combout\ : std_logic;
SIGNAL \d0|reg_addition~37_combout\ : std_logic;
SIGNAL \d0|w_sum[37]~75\ : std_logic;
SIGNAL \d0|w_sum[38]~76_combout\ : std_logic;
SIGNAL \d0|reg_addition~38_combout\ : std_logic;
SIGNAL \d0|w_sum[38]~77\ : std_logic;
SIGNAL \d0|w_sum[39]~78_combout\ : std_logic;
SIGNAL \d0|reg_addition~39_combout\ : std_logic;
SIGNAL \d0|w_sum[39]~79\ : std_logic;
SIGNAL \d0|w_sum[40]~80_combout\ : std_logic;
SIGNAL \d0|reg_addition~40_combout\ : std_logic;
SIGNAL \d0|w_sum[40]~81\ : std_logic;
SIGNAL \d0|w_sum[41]~82_combout\ : std_logic;
SIGNAL \d0|reg_addition~41_combout\ : std_logic;
SIGNAL \d0|w_sum[41]~83\ : std_logic;
SIGNAL \d0|w_sum[42]~84_combout\ : std_logic;
SIGNAL \d0|reg_addition~42_combout\ : std_logic;
SIGNAL \d0|w_sum[42]~85\ : std_logic;
SIGNAL \d0|w_sum[43]~86_combout\ : std_logic;
SIGNAL \d0|reg_addition~43_combout\ : std_logic;
SIGNAL \d0|w_sum[43]~87\ : std_logic;
SIGNAL \d0|w_sum[44]~88_combout\ : std_logic;
SIGNAL \d0|reg_addition~44_combout\ : std_logic;
SIGNAL \d0|w_sum[44]~89\ : std_logic;
SIGNAL \d0|w_sum[45]~90_combout\ : std_logic;
SIGNAL \d0|reg_addition~45_combout\ : std_logic;
SIGNAL \d0|w_sum[45]~91\ : std_logic;
SIGNAL \d0|w_sum[46]~92_combout\ : std_logic;
SIGNAL \d0|reg_addition~46_combout\ : std_logic;
SIGNAL \d0|w_sum[46]~93\ : std_logic;
SIGNAL \d0|w_sum[47]~94_combout\ : std_logic;
SIGNAL \d0|reg_addition~47_combout\ : std_logic;
SIGNAL \d0|w_sum[47]~95\ : std_logic;
SIGNAL \d0|w_sum[48]~96_combout\ : std_logic;
SIGNAL \d0|reg_addition~48_combout\ : std_logic;
SIGNAL \d0|w_sum[48]~97\ : std_logic;
SIGNAL \d0|w_sum[49]~98_combout\ : std_logic;
SIGNAL \d0|reg_addition~49_combout\ : std_logic;
SIGNAL \d0|w_sum[49]~99\ : std_logic;
SIGNAL \d0|w_sum[50]~100_combout\ : std_logic;
SIGNAL \d0|reg_addition~50_combout\ : std_logic;
SIGNAL \d0|w_sum[50]~101\ : std_logic;
SIGNAL \d0|w_sum[51]~102_combout\ : std_logic;
SIGNAL \d0|reg_addition~51_combout\ : std_logic;
SIGNAL \d0|w_sum[51]~103\ : std_logic;
SIGNAL \d0|w_sum[52]~104_combout\ : std_logic;
SIGNAL \d0|reg_addition~52_combout\ : std_logic;
SIGNAL \d0|w_sum[52]~105\ : std_logic;
SIGNAL \d0|w_sum[53]~106_combout\ : std_logic;
SIGNAL \d0|reg_addition~53_combout\ : std_logic;
SIGNAL \d0|w_sum[53]~107\ : std_logic;
SIGNAL \d0|w_sum[54]~108_combout\ : std_logic;
SIGNAL \d0|reg_addition~54_combout\ : std_logic;
SIGNAL \d0|w_sum[54]~109\ : std_logic;
SIGNAL \d0|w_sum[55]~110_combout\ : std_logic;
SIGNAL \d0|reg_addition~55_combout\ : std_logic;
SIGNAL \d0|w_sum[55]~111\ : std_logic;
SIGNAL \d0|w_sum[56]~112_combout\ : std_logic;
SIGNAL \d0|reg_addition~56_combout\ : std_logic;
SIGNAL \d0|w_sum[56]~113\ : std_logic;
SIGNAL \d0|w_sum[57]~114_combout\ : std_logic;
SIGNAL \d0|reg_addition~57_combout\ : std_logic;
SIGNAL \d0|w_sum[57]~115\ : std_logic;
SIGNAL \d0|w_sum[58]~116_combout\ : std_logic;
SIGNAL \d0|reg_addition~58_combout\ : std_logic;
SIGNAL \d0|w_sum[58]~117\ : std_logic;
SIGNAL \d0|w_sum[59]~118_combout\ : std_logic;
SIGNAL \d0|reg_addition~59_combout\ : std_logic;
SIGNAL \d0|w_sum[59]~119\ : std_logic;
SIGNAL \d0|w_sum[60]~120_combout\ : std_logic;
SIGNAL \d0|reg_addition~60_combout\ : std_logic;
SIGNAL \d0|w_sum[60]~121\ : std_logic;
SIGNAL \d0|w_sum[61]~122_combout\ : std_logic;
SIGNAL \d0|reg_addition~61_combout\ : std_logic;
SIGNAL \d0|w_sum[61]~123\ : std_logic;
SIGNAL \d0|w_sum[62]~124_combout\ : std_logic;
SIGNAL \d0|reg_addition~62_combout\ : std_logic;
SIGNAL \d0|w_sum[62]~125\ : std_logic;
SIGNAL \d0|w_sum[63]~126_combout\ : std_logic;
SIGNAL \d0|reg_addition~63_combout\ : std_logic;
SIGNAL \d0|w_add\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \d0|reg_addition\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_cypher <= cypher;
ww_four_bit_input <= four_bit_input;
ww_read <= read;
ww_clock <= clock;
ww_reset <= reset;
find <= ww_find;
additionresult <= ww_additionresult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\read~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \read~input_o\);

-- Location: IOOBUF_X25_Y0_N2
\find~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|current_state.FINAL~q\,
	devoe => ww_devoe,
	o => \find~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\additionresult[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(0),
	devoe => ww_devoe,
	o => \additionresult[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\additionresult[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(1),
	devoe => ww_devoe,
	o => \additionresult[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\additionresult[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(2),
	devoe => ww_devoe,
	o => \additionresult[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\additionresult[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(3),
	devoe => ww_devoe,
	o => \additionresult[3]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\additionresult[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(4),
	devoe => ww_devoe,
	o => \additionresult[4]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\additionresult[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(5),
	devoe => ww_devoe,
	o => \additionresult[5]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\additionresult[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(6),
	devoe => ww_devoe,
	o => \additionresult[6]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\additionresult[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(7),
	devoe => ww_devoe,
	o => \additionresult[7]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\additionresult[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(8),
	devoe => ww_devoe,
	o => \additionresult[8]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\additionresult[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(9),
	devoe => ww_devoe,
	o => \additionresult[9]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\additionresult[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(10),
	devoe => ww_devoe,
	o => \additionresult[10]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\additionresult[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(11),
	devoe => ww_devoe,
	o => \additionresult[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\additionresult[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(12),
	devoe => ww_devoe,
	o => \additionresult[12]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\additionresult[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(13),
	devoe => ww_devoe,
	o => \additionresult[13]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\additionresult[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(14),
	devoe => ww_devoe,
	o => \additionresult[14]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\additionresult[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(15),
	devoe => ww_devoe,
	o => \additionresult[15]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\additionresult[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(16),
	devoe => ww_devoe,
	o => \additionresult[16]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\additionresult[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(17),
	devoe => ww_devoe,
	o => \additionresult[17]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\additionresult[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(18),
	devoe => ww_devoe,
	o => \additionresult[18]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\additionresult[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(19),
	devoe => ww_devoe,
	o => \additionresult[19]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\additionresult[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(20),
	devoe => ww_devoe,
	o => \additionresult[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\additionresult[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(21),
	devoe => ww_devoe,
	o => \additionresult[21]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\additionresult[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(22),
	devoe => ww_devoe,
	o => \additionresult[22]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\additionresult[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(23),
	devoe => ww_devoe,
	o => \additionresult[23]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\additionresult[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(24),
	devoe => ww_devoe,
	o => \additionresult[24]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\additionresult[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(25),
	devoe => ww_devoe,
	o => \additionresult[25]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\additionresult[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(26),
	devoe => ww_devoe,
	o => \additionresult[26]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\additionresult[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(27),
	devoe => ww_devoe,
	o => \additionresult[27]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\additionresult[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(28),
	devoe => ww_devoe,
	o => \additionresult[28]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\additionresult[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(29),
	devoe => ww_devoe,
	o => \additionresult[29]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\additionresult[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(30),
	devoe => ww_devoe,
	o => \additionresult[30]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\additionresult[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(31),
	devoe => ww_devoe,
	o => \additionresult[31]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\additionresult[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(32),
	devoe => ww_devoe,
	o => \additionresult[32]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\additionresult[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(33),
	devoe => ww_devoe,
	o => \additionresult[33]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\additionresult[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(34),
	devoe => ww_devoe,
	o => \additionresult[34]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\additionresult[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(35),
	devoe => ww_devoe,
	o => \additionresult[35]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\additionresult[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(36),
	devoe => ww_devoe,
	o => \additionresult[36]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\additionresult[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(37),
	devoe => ww_devoe,
	o => \additionresult[37]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\additionresult[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(38),
	devoe => ww_devoe,
	o => \additionresult[38]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\additionresult[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(39),
	devoe => ww_devoe,
	o => \additionresult[39]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\additionresult[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(40),
	devoe => ww_devoe,
	o => \additionresult[40]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\additionresult[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(41),
	devoe => ww_devoe,
	o => \additionresult[41]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\additionresult[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(42),
	devoe => ww_devoe,
	o => \additionresult[42]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\additionresult[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(43),
	devoe => ww_devoe,
	o => \additionresult[43]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\additionresult[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(44),
	devoe => ww_devoe,
	o => \additionresult[44]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\additionresult[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(45),
	devoe => ww_devoe,
	o => \additionresult[45]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\additionresult[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(46),
	devoe => ww_devoe,
	o => \additionresult[46]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\additionresult[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(47),
	devoe => ww_devoe,
	o => \additionresult[47]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\additionresult[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(48),
	devoe => ww_devoe,
	o => \additionresult[48]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\additionresult[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(49),
	devoe => ww_devoe,
	o => \additionresult[49]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\additionresult[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(50),
	devoe => ww_devoe,
	o => \additionresult[50]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\additionresult[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(51),
	devoe => ww_devoe,
	o => \additionresult[51]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\additionresult[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(52),
	devoe => ww_devoe,
	o => \additionresult[52]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\additionresult[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(53),
	devoe => ww_devoe,
	o => \additionresult[53]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\additionresult[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(54),
	devoe => ww_devoe,
	o => \additionresult[54]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\additionresult[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(55),
	devoe => ww_devoe,
	o => \additionresult[55]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\additionresult[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(56),
	devoe => ww_devoe,
	o => \additionresult[56]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\additionresult[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(57),
	devoe => ww_devoe,
	o => \additionresult[57]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\additionresult[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(58),
	devoe => ww_devoe,
	o => \additionresult[58]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\additionresult[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(59),
	devoe => ww_devoe,
	o => \additionresult[59]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\additionresult[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(60),
	devoe => ww_devoe,
	o => \additionresult[60]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\additionresult[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(61),
	devoe => ww_devoe,
	o => \additionresult[61]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\additionresult[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(62),
	devoe => ww_devoe,
	o => \additionresult[62]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\additionresult[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|reg_addition\(63),
	devoe => ww_devoe,
	o => \additionresult[63]~output_o\);

-- Location: IOIBUF_X25_Y0_N8
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X26_Y1_N12
\c0|current_state.FINAL~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|current_state.FINAL~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \c0|current_state.FINAL~0_combout\);

-- Location: FF_X26_Y1_N13
\c0|current_state.FINAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \c0|current_state.FINAL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|current_state.FINAL~q\);

-- Location: IOIBUF_X27_Y0_N15
\read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read,
	o => \read~input_o\);

-- Location: CLKCTRL_G17
\read~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \read~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \read~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y41_N1
\four_bit_input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_four_bit_input(0),
	o => \four_bit_input[0]~input_o\);

-- Location: LCCOMB_X38_Y27_N0
\d0|w_sum[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[0]~0_combout\ = (\d0|reg_addition\(0) & (\four_bit_input[0]~input_o\ $ (VCC))) # (!\d0|reg_addition\(0) & (\four_bit_input[0]~input_o\ & VCC))
-- \d0|w_sum[0]~1\ = CARRY((\d0|reg_addition\(0) & \four_bit_input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(0),
	datab => \four_bit_input[0]~input_o\,
	datad => VCC,
	combout => \d0|w_sum[0]~0_combout\,
	cout => \d0|w_sum[0]~1\);

-- Location: LCCOMB_X39_Y27_N26
\d0|w_add[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(0) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[0]~0_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[0]~0_combout\,
	datac => \d0|w_add\(0),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(0));

-- Location: LCCOMB_X39_Y27_N20
\d0|reg_addition~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~0_combout\ = (\reset~input_o\ & (\four_bit_input[0]~input_o\)) # (!\reset~input_o\ & ((\d0|w_add\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \four_bit_input[0]~input_o\,
	datac => \d0|w_add\(0),
	combout => \d0|reg_addition~0_combout\);

-- Location: FF_X38_Y27_N27
\d0|reg_addition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(0));

-- Location: IOIBUF_X50_Y41_N1
\four_bit_input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_four_bit_input(1),
	o => \four_bit_input[1]~input_o\);

-- Location: LCCOMB_X38_Y27_N2
\d0|w_sum[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[1]~2_combout\ = (\d0|reg_addition\(1) & ((\four_bit_input[1]~input_o\ & (\d0|w_sum[0]~1\ & VCC)) # (!\four_bit_input[1]~input_o\ & (!\d0|w_sum[0]~1\)))) # (!\d0|reg_addition\(1) & ((\four_bit_input[1]~input_o\ & (!\d0|w_sum[0]~1\)) # 
-- (!\four_bit_input[1]~input_o\ & ((\d0|w_sum[0]~1\) # (GND)))))
-- \d0|w_sum[1]~3\ = CARRY((\d0|reg_addition\(1) & (!\four_bit_input[1]~input_o\ & !\d0|w_sum[0]~1\)) # (!\d0|reg_addition\(1) & ((!\d0|w_sum[0]~1\) # (!\four_bit_input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(1),
	datab => \four_bit_input[1]~input_o\,
	datad => VCC,
	cin => \d0|w_sum[0]~1\,
	combout => \d0|w_sum[1]~2_combout\,
	cout => \d0|w_sum[1]~3\);

-- Location: LCCOMB_X39_Y27_N8
\d0|w_add[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(1) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[1]~2_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[1]~2_combout\,
	datac => \d0|w_add\(1),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(1));

-- Location: LCCOMB_X39_Y27_N10
\d0|reg_addition~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~1_combout\ = (\reset~input_o\ & (\four_bit_input[1]~input_o\)) # (!\reset~input_o\ & ((\d0|w_add\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \four_bit_input[1]~input_o\,
	datac => \d0|w_add\(1),
	combout => \d0|reg_addition~1_combout\);

-- Location: FF_X38_Y27_N11
\d0|reg_addition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(1));

-- Location: IOIBUF_X50_Y41_N8
\four_bit_input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_four_bit_input(2),
	o => \four_bit_input[2]~input_o\);

-- Location: LCCOMB_X38_Y27_N4
\d0|w_sum[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[2]~4_combout\ = ((\d0|reg_addition\(2) $ (\four_bit_input[2]~input_o\ $ (!\d0|w_sum[1]~3\)))) # (GND)
-- \d0|w_sum[2]~5\ = CARRY((\d0|reg_addition\(2) & ((\four_bit_input[2]~input_o\) # (!\d0|w_sum[1]~3\))) # (!\d0|reg_addition\(2) & (\four_bit_input[2]~input_o\ & !\d0|w_sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(2),
	datab => \four_bit_input[2]~input_o\,
	datad => VCC,
	cin => \d0|w_sum[1]~3\,
	combout => \d0|w_sum[2]~4_combout\,
	cout => \d0|w_sum[2]~5\);

-- Location: LCCOMB_X39_Y27_N22
\d0|w_add[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(2) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[2]~4_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[2]~4_combout\,
	datac => \d0|w_add\(2),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(2));

-- Location: LCCOMB_X39_Y27_N16
\d0|reg_addition~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~2_combout\ = (\reset~input_o\ & ((\four_bit_input[2]~input_o\))) # (!\reset~input_o\ & (\d0|w_add\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(2),
	datad => \four_bit_input[2]~input_o\,
	combout => \d0|reg_addition~2_combout\);

-- Location: FF_X38_Y27_N7
\d0|reg_addition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(2));

-- Location: IOIBUF_X52_Y27_N1
\four_bit_input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_four_bit_input(3),
	o => \four_bit_input[3]~input_o\);

-- Location: LCCOMB_X38_Y27_N6
\d0|w_sum[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[3]~6_combout\ = (\d0|reg_addition\(3) & ((\four_bit_input[3]~input_o\ & (\d0|w_sum[2]~5\ & VCC)) # (!\four_bit_input[3]~input_o\ & (!\d0|w_sum[2]~5\)))) # (!\d0|reg_addition\(3) & ((\four_bit_input[3]~input_o\ & (!\d0|w_sum[2]~5\)) # 
-- (!\four_bit_input[3]~input_o\ & ((\d0|w_sum[2]~5\) # (GND)))))
-- \d0|w_sum[3]~7\ = CARRY((\d0|reg_addition\(3) & (!\four_bit_input[3]~input_o\ & !\d0|w_sum[2]~5\)) # (!\d0|reg_addition\(3) & ((!\d0|w_sum[2]~5\) # (!\four_bit_input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(3),
	datab => \four_bit_input[3]~input_o\,
	datad => VCC,
	cin => \d0|w_sum[2]~5\,
	combout => \d0|w_sum[3]~6_combout\,
	cout => \d0|w_sum[3]~7\);

-- Location: LCCOMB_X39_Y27_N28
\d0|w_add[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(3) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[3]~6_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(3),
	datac => \d0|w_sum[3]~6_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(3));

-- Location: LCCOMB_X39_Y27_N14
\d0|reg_addition~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~3_combout\ = (\reset~input_o\ & (\four_bit_input[3]~input_o\)) # (!\reset~input_o\ & ((\d0|w_add\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \four_bit_input[3]~input_o\,
	datad => \d0|w_add\(3),
	combout => \d0|reg_addition~3_combout\);

-- Location: FF_X38_Y27_N13
\d0|reg_addition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(3));

-- Location: LCCOMB_X38_Y27_N8
\d0|w_sum[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[4]~8_combout\ = (\d0|reg_addition\(4) & (\d0|w_sum[3]~7\ $ (GND))) # (!\d0|reg_addition\(4) & (!\d0|w_sum[3]~7\ & VCC))
-- \d0|w_sum[4]~9\ = CARRY((\d0|reg_addition\(4) & !\d0|w_sum[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(4),
	datad => VCC,
	cin => \d0|w_sum[3]~7\,
	combout => \d0|w_sum[4]~8_combout\,
	cout => \d0|w_sum[4]~9\);

-- Location: LCCOMB_X39_Y27_N2
\d0|w_add[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(4) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[4]~8_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[4]~8_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(4),
	combout => \d0|w_add\(4));

-- Location: LCCOMB_X39_Y27_N12
\d0|reg_addition~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~4_combout\ = (!\reset~input_o\ & \d0|w_add\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \d0|w_add\(4),
	combout => \d0|reg_addition~4_combout\);

-- Location: FF_X38_Y27_N5
\d0|reg_addition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(4));

-- Location: LCCOMB_X38_Y27_N10
\d0|w_sum[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[5]~10_combout\ = (\d0|reg_addition\(5) & (!\d0|w_sum[4]~9\)) # (!\d0|reg_addition\(5) & ((\d0|w_sum[4]~9\) # (GND)))
-- \d0|w_sum[5]~11\ = CARRY((!\d0|w_sum[4]~9\) # (!\d0|reg_addition\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(5),
	datad => VCC,
	cin => \d0|w_sum[4]~9\,
	combout => \d0|w_sum[5]~10_combout\,
	cout => \d0|w_sum[5]~11\);

-- Location: LCCOMB_X39_Y27_N4
\d0|w_add[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(5) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[5]~10_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[5]~10_combout\,
	datac => \d0|w_add\(5),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(5));

-- Location: LCCOMB_X39_Y27_N30
\d0|reg_addition~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~5_combout\ = (!\reset~input_o\ & \d0|w_add\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(5),
	combout => \d0|reg_addition~5_combout\);

-- Location: FF_X38_Y27_N23
\d0|reg_addition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(5));

-- Location: LCCOMB_X38_Y27_N12
\d0|w_sum[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[6]~12_combout\ = (\d0|reg_addition\(6) & (\d0|w_sum[5]~11\ $ (GND))) # (!\d0|reg_addition\(6) & (!\d0|w_sum[5]~11\ & VCC))
-- \d0|w_sum[6]~13\ = CARRY((\d0|reg_addition\(6) & !\d0|w_sum[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(6),
	datad => VCC,
	cin => \d0|w_sum[5]~11\,
	combout => \d0|w_sum[6]~12_combout\,
	cout => \d0|w_sum[6]~13\);

-- Location: LCCOMB_X39_Y27_N18
\d0|w_add[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(6) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[6]~12_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[6]~12_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(6),
	combout => \d0|w_add\(6));

-- Location: LCCOMB_X39_Y27_N0
\d0|reg_addition~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~6_combout\ = (!\reset~input_o\ & \d0|w_add\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \d0|w_add\(6),
	combout => \d0|reg_addition~6_combout\);

-- Location: FF_X38_Y27_N25
\d0|reg_addition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(6));

-- Location: LCCOMB_X38_Y27_N14
\d0|w_sum[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[7]~14_combout\ = (\d0|reg_addition\(7) & (!\d0|w_sum[6]~13\)) # (!\d0|reg_addition\(7) & ((\d0|w_sum[6]~13\) # (GND)))
-- \d0|w_sum[7]~15\ = CARRY((!\d0|w_sum[6]~13\) # (!\d0|reg_addition\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(7),
	datad => VCC,
	cin => \d0|w_sum[6]~13\,
	combout => \d0|w_sum[7]~14_combout\,
	cout => \d0|w_sum[7]~15\);

-- Location: LCCOMB_X37_Y27_N28
\d0|w_add[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(7) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[7]~14_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[7]~14_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(7),
	combout => \d0|w_add\(7));

-- Location: LCCOMB_X37_Y27_N20
\d0|reg_addition~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~7_combout\ = (!\reset~input_o\ & \d0|w_add\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(7),
	combout => \d0|reg_addition~7_combout\);

-- Location: FF_X38_Y27_N15
\d0|reg_addition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(7));

-- Location: LCCOMB_X38_Y27_N16
\d0|w_sum[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[8]~16_combout\ = (\d0|reg_addition\(8) & (\d0|w_sum[7]~15\ $ (GND))) # (!\d0|reg_addition\(8) & (!\d0|w_sum[7]~15\ & VCC))
-- \d0|w_sum[8]~17\ = CARRY((\d0|reg_addition\(8) & !\d0|w_sum[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(8),
	datad => VCC,
	cin => \d0|w_sum[7]~15\,
	combout => \d0|w_sum[8]~16_combout\,
	cout => \d0|w_sum[8]~17\);

-- Location: LCCOMB_X37_Y27_N22
\d0|w_add[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(8) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[8]~16_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[8]~16_combout\,
	datac => \d0|w_add\(8),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(8));

-- Location: LCCOMB_X37_Y27_N26
\d0|reg_addition~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~8_combout\ = (\d0|w_add\(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(8),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~8_combout\);

-- Location: FF_X38_Y27_N9
\d0|reg_addition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(8));

-- Location: LCCOMB_X38_Y27_N18
\d0|w_sum[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[9]~18_combout\ = (\d0|reg_addition\(9) & (!\d0|w_sum[8]~17\)) # (!\d0|reg_addition\(9) & ((\d0|w_sum[8]~17\) # (GND)))
-- \d0|w_sum[9]~19\ = CARRY((!\d0|w_sum[8]~17\) # (!\d0|reg_addition\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(9),
	datad => VCC,
	cin => \d0|w_sum[8]~17\,
	combout => \d0|w_sum[9]~18_combout\,
	cout => \d0|w_sum[9]~19\);

-- Location: LCCOMB_X37_Y27_N12
\d0|w_add[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(9) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[9]~18_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[9]~18_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(9),
	combout => \d0|w_add\(9));

-- Location: LCCOMB_X37_Y27_N16
\d0|reg_addition~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~9_combout\ = (!\reset~input_o\ & \d0|w_add\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(9),
	combout => \d0|reg_addition~9_combout\);

-- Location: FF_X38_Y27_N19
\d0|reg_addition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(9));

-- Location: LCCOMB_X38_Y27_N20
\d0|w_sum[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[10]~20_combout\ = (\d0|reg_addition\(10) & (\d0|w_sum[9]~19\ $ (GND))) # (!\d0|reg_addition\(10) & (!\d0|w_sum[9]~19\ & VCC))
-- \d0|w_sum[10]~21\ = CARRY((\d0|reg_addition\(10) & !\d0|w_sum[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(10),
	datad => VCC,
	cin => \d0|w_sum[9]~19\,
	combout => \d0|w_sum[10]~20_combout\,
	cout => \d0|w_sum[10]~21\);

-- Location: LCCOMB_X37_Y27_N18
\d0|w_add[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(10) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[10]~20_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[10]~20_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(10),
	combout => \d0|w_add\(10));

-- Location: LCCOMB_X37_Y27_N6
\d0|reg_addition~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~10_combout\ = (!\reset~input_o\ & \d0|w_add\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(10),
	combout => \d0|reg_addition~10_combout\);

-- Location: FF_X38_Y27_N29
\d0|reg_addition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(10));

-- Location: LCCOMB_X38_Y27_N22
\d0|w_sum[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[11]~22_combout\ = (\d0|reg_addition\(11) & (!\d0|w_sum[10]~21\)) # (!\d0|reg_addition\(11) & ((\d0|w_sum[10]~21\) # (GND)))
-- \d0|w_sum[11]~23\ = CARRY((!\d0|w_sum[10]~21\) # (!\d0|reg_addition\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(11),
	datad => VCC,
	cin => \d0|w_sum[10]~21\,
	combout => \d0|w_sum[11]~22_combout\,
	cout => \d0|w_sum[11]~23\);

-- Location: LCCOMB_X37_Y27_N24
\d0|w_add[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(11) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[11]~22_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[11]~22_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(11),
	combout => \d0|w_add\(11));

-- Location: LCCOMB_X37_Y27_N4
\d0|reg_addition~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~11_combout\ = (!\reset~input_o\ & \d0|w_add\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(11),
	combout => \d0|reg_addition~11_combout\);

-- Location: FF_X38_Y27_N21
\d0|reg_addition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(11));

-- Location: LCCOMB_X38_Y27_N24
\d0|w_sum[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[12]~24_combout\ = (\d0|reg_addition\(12) & (\d0|w_sum[11]~23\ $ (GND))) # (!\d0|reg_addition\(12) & (!\d0|w_sum[11]~23\ & VCC))
-- \d0|w_sum[12]~25\ = CARRY((\d0|reg_addition\(12) & !\d0|w_sum[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(12),
	datad => VCC,
	cin => \d0|w_sum[11]~23\,
	combout => \d0|w_sum[12]~24_combout\,
	cout => \d0|w_sum[12]~25\);

-- Location: LCCOMB_X37_Y27_N2
\d0|w_add[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(12) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[12]~24_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[12]~24_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(12),
	combout => \d0|w_add\(12));

-- Location: LCCOMB_X37_Y27_N14
\d0|reg_addition~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~12_combout\ = (!\reset~input_o\ & \d0|w_add\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(12),
	combout => \d0|reg_addition~12_combout\);

-- Location: FF_X38_Y27_N17
\d0|reg_addition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(12));

-- Location: LCCOMB_X38_Y27_N26
\d0|w_sum[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[13]~26_combout\ = (\d0|reg_addition\(13) & (!\d0|w_sum[12]~25\)) # (!\d0|reg_addition\(13) & ((\d0|w_sum[12]~25\) # (GND)))
-- \d0|w_sum[13]~27\ = CARRY((!\d0|w_sum[12]~25\) # (!\d0|reg_addition\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(13),
	datad => VCC,
	cin => \d0|w_sum[12]~25\,
	combout => \d0|w_sum[13]~26_combout\,
	cout => \d0|w_sum[13]~27\);

-- Location: LCCOMB_X37_Y27_N8
\d0|w_add[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(13) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[13]~26_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[13]~26_combout\,
	datac => \d0|w_add\(13),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(13));

-- Location: LCCOMB_X37_Y27_N0
\d0|reg_addition~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~13_combout\ = (\d0|w_add\(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(13),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~13_combout\);

-- Location: FF_X38_Y27_N31
\d0|reg_addition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(13));

-- Location: LCCOMB_X38_Y27_N28
\d0|w_sum[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[14]~28_combout\ = (\d0|reg_addition\(14) & (\d0|w_sum[13]~27\ $ (GND))) # (!\d0|reg_addition\(14) & (!\d0|w_sum[13]~27\ & VCC))
-- \d0|w_sum[14]~29\ = CARRY((\d0|reg_addition\(14) & !\d0|w_sum[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(14),
	datad => VCC,
	cin => \d0|w_sum[13]~27\,
	combout => \d0|w_sum[14]~28_combout\,
	cout => \d0|w_sum[14]~29\);

-- Location: LCCOMB_X37_Y26_N12
\d0|w_add[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(14) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[14]~28_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[14]~28_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(14),
	combout => \d0|w_add\(14));

-- Location: LCCOMB_X37_Y26_N20
\d0|reg_addition~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~14_combout\ = (!\reset~input_o\ & \d0|w_add\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(14),
	combout => \d0|reg_addition~14_combout\);

-- Location: FF_X38_Y27_N1
\d0|reg_addition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(14));

-- Location: LCCOMB_X38_Y27_N30
\d0|w_sum[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[15]~30_combout\ = (\d0|reg_addition\(15) & (!\d0|w_sum[14]~29\)) # (!\d0|reg_addition\(15) & ((\d0|w_sum[14]~29\) # (GND)))
-- \d0|w_sum[15]~31\ = CARRY((!\d0|w_sum[14]~29\) # (!\d0|reg_addition\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(15),
	datad => VCC,
	cin => \d0|w_sum[14]~29\,
	combout => \d0|w_sum[15]~30_combout\,
	cout => \d0|w_sum[15]~31\);

-- Location: LCCOMB_X37_Y27_N10
\d0|w_add[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(15) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[15]~30_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[15]~30_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(15),
	combout => \d0|w_add\(15));

-- Location: LCCOMB_X37_Y27_N30
\d0|reg_addition~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~15_combout\ = (!\reset~input_o\ & \d0|w_add\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(15),
	combout => \d0|reg_addition~15_combout\);

-- Location: FF_X38_Y27_N3
\d0|reg_addition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(15));

-- Location: LCCOMB_X38_Y26_N0
\d0|w_sum[16]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[16]~32_combout\ = (\d0|reg_addition\(16) & (\d0|w_sum[15]~31\ $ (GND))) # (!\d0|reg_addition\(16) & (!\d0|w_sum[15]~31\ & VCC))
-- \d0|w_sum[16]~33\ = CARRY((\d0|reg_addition\(16) & !\d0|w_sum[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(16),
	datad => VCC,
	cin => \d0|w_sum[15]~31\,
	combout => \d0|w_sum[16]~32_combout\,
	cout => \d0|w_sum[16]~33\);

-- Location: LCCOMB_X37_Y26_N14
\d0|w_add[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(16) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[16]~32_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[16]~32_combout\,
	datac => \d0|w_add\(16),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(16));

-- Location: LCCOMB_X37_Y26_N30
\d0|reg_addition~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~16_combout\ = (!\reset~input_o\ & \d0|w_add\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(16),
	combout => \d0|reg_addition~16_combout\);

-- Location: FF_X38_Y26_N25
\d0|reg_addition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(16));

-- Location: LCCOMB_X38_Y26_N2
\d0|w_sum[17]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[17]~34_combout\ = (\d0|reg_addition\(17) & (!\d0|w_sum[16]~33\)) # (!\d0|reg_addition\(17) & ((\d0|w_sum[16]~33\) # (GND)))
-- \d0|w_sum[17]~35\ = CARRY((!\d0|w_sum[16]~33\) # (!\d0|reg_addition\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(17),
	datad => VCC,
	cin => \d0|w_sum[16]~33\,
	combout => \d0|w_sum[17]~34_combout\,
	cout => \d0|w_sum[17]~35\);

-- Location: LCCOMB_X37_Y26_N28
\d0|w_add[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(17) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[17]~34_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[17]~34_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(17),
	combout => \d0|w_add\(17));

-- Location: LCCOMB_X37_Y26_N16
\d0|reg_addition~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~17_combout\ = (!\reset~input_o\ & \d0|w_add\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(17),
	combout => \d0|reg_addition~17_combout\);

-- Location: FF_X38_Y26_N5
\d0|reg_addition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(17));

-- Location: LCCOMB_X38_Y26_N4
\d0|w_sum[18]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[18]~36_combout\ = (\d0|reg_addition\(18) & (\d0|w_sum[17]~35\ $ (GND))) # (!\d0|reg_addition\(18) & (!\d0|w_sum[17]~35\ & VCC))
-- \d0|w_sum[18]~37\ = CARRY((\d0|reg_addition\(18) & !\d0|w_sum[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(18),
	datad => VCC,
	cin => \d0|w_sum[17]~35\,
	combout => \d0|w_sum[18]~36_combout\,
	cout => \d0|w_sum[18]~37\);

-- Location: LCCOMB_X39_Y26_N28
\d0|w_add[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(18) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[18]~36_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[18]~36_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(18),
	combout => \d0|w_add\(18));

-- Location: LCCOMB_X39_Y26_N0
\d0|reg_addition~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~18_combout\ = (!\reset~input_o\ & \d0|w_add\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \d0|w_add\(18),
	combout => \d0|reg_addition~18_combout\);

-- Location: FF_X38_Y26_N7
\d0|reg_addition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(18));

-- Location: LCCOMB_X38_Y26_N6
\d0|w_sum[19]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[19]~38_combout\ = (\d0|reg_addition\(19) & (!\d0|w_sum[18]~37\)) # (!\d0|reg_addition\(19) & ((\d0|w_sum[18]~37\) # (GND)))
-- \d0|w_sum[19]~39\ = CARRY((!\d0|w_sum[18]~37\) # (!\d0|reg_addition\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(19),
	datad => VCC,
	cin => \d0|w_sum[18]~37\,
	combout => \d0|w_sum[19]~38_combout\,
	cout => \d0|w_sum[19]~39\);

-- Location: LCCOMB_X39_Y26_N6
\d0|w_add[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(19) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[19]~38_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(19),
	datab => \d0|w_sum[19]~38_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(19));

-- Location: LCCOMB_X39_Y26_N10
\d0|reg_addition~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~19_combout\ = (!\reset~input_o\ & \d0|w_add\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(19),
	combout => \d0|reg_addition~19_combout\);

-- Location: FF_X38_Y26_N23
\d0|reg_addition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(19));

-- Location: LCCOMB_X38_Y26_N8
\d0|w_sum[20]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[20]~40_combout\ = (\d0|reg_addition\(20) & (\d0|w_sum[19]~39\ $ (GND))) # (!\d0|reg_addition\(20) & (!\d0|w_sum[19]~39\ & VCC))
-- \d0|w_sum[20]~41\ = CARRY((\d0|reg_addition\(20) & !\d0|w_sum[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(20),
	datad => VCC,
	cin => \d0|w_sum[19]~39\,
	combout => \d0|w_sum[20]~40_combout\,
	cout => \d0|w_sum[20]~41\);

-- Location: LCCOMB_X37_Y26_N18
\d0|w_add[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(20) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[20]~40_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[20]~40_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(20),
	combout => \d0|w_add\(20));

-- Location: LCCOMB_X37_Y26_N22
\d0|reg_addition~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~20_combout\ = (!\reset~input_o\ & \d0|w_add\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(20),
	combout => \d0|reg_addition~20_combout\);

-- Location: FF_X38_Y26_N3
\d0|reg_addition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(20));

-- Location: LCCOMB_X38_Y26_N10
\d0|w_sum[21]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[21]~42_combout\ = (\d0|reg_addition\(21) & (!\d0|w_sum[20]~41\)) # (!\d0|reg_addition\(21) & ((\d0|w_sum[20]~41\) # (GND)))
-- \d0|w_sum[21]~43\ = CARRY((!\d0|w_sum[20]~41\) # (!\d0|reg_addition\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(21),
	datad => VCC,
	cin => \d0|w_sum[20]~41\,
	combout => \d0|w_sum[21]~42_combout\,
	cout => \d0|w_sum[21]~43\);

-- Location: LCCOMB_X39_Y26_N16
\d0|w_add[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(21) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[21]~42_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[21]~42_combout\,
	datab => \d0|w_add\(21),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(21));

-- Location: LCCOMB_X39_Y26_N20
\d0|reg_addition~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~21_combout\ = (!\reset~input_o\ & \d0|w_add\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(21),
	combout => \d0|reg_addition~21_combout\);

-- Location: FF_X38_Y26_N13
\d0|reg_addition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(21));

-- Location: LCCOMB_X38_Y26_N12
\d0|w_sum[22]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[22]~44_combout\ = (\d0|reg_addition\(22) & (\d0|w_sum[21]~43\ $ (GND))) # (!\d0|reg_addition\(22) & (!\d0|w_sum[21]~43\ & VCC))
-- \d0|w_sum[22]~45\ = CARRY((\d0|reg_addition\(22) & !\d0|w_sum[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(22),
	datad => VCC,
	cin => \d0|w_sum[21]~43\,
	combout => \d0|w_sum[22]~44_combout\,
	cout => \d0|w_sum[22]~45\);

-- Location: LCCOMB_X39_Y26_N22
\d0|w_add[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(22) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[22]~44_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[22]~44_combout\,
	datac => \d0|w_add\(22),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(22));

-- Location: LCCOMB_X39_Y26_N14
\d0|reg_addition~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~22_combout\ = (!\reset~input_o\ & \d0|w_add\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(22),
	combout => \d0|reg_addition~22_combout\);

-- Location: FF_X38_Y26_N31
\d0|reg_addition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(22));

-- Location: LCCOMB_X38_Y26_N14
\d0|w_sum[23]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[23]~46_combout\ = (\d0|reg_addition\(23) & (!\d0|w_sum[22]~45\)) # (!\d0|reg_addition\(23) & ((\d0|w_sum[22]~45\) # (GND)))
-- \d0|w_sum[23]~47\ = CARRY((!\d0|w_sum[22]~45\) # (!\d0|reg_addition\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(23),
	datad => VCC,
	cin => \d0|w_sum[22]~45\,
	combout => \d0|w_sum[23]~46_combout\,
	cout => \d0|w_sum[23]~47\);

-- Location: LCCOMB_X39_Y26_N4
\d0|w_add[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(23) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[23]~46_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[23]~46_combout\,
	datac => \d0|w_add\(23),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(23));

-- Location: LCCOMB_X39_Y26_N12
\d0|reg_addition~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~23_combout\ = (!\reset~input_o\ & \d0|w_add\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(23),
	combout => \d0|reg_addition~23_combout\);

-- Location: FF_X38_Y26_N15
\d0|reg_addition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(23));

-- Location: LCCOMB_X38_Y26_N16
\d0|w_sum[24]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[24]~48_combout\ = (\d0|reg_addition\(24) & (\d0|w_sum[23]~47\ $ (GND))) # (!\d0|reg_addition\(24) & (!\d0|w_sum[23]~47\ & VCC))
-- \d0|w_sum[24]~49\ = CARRY((\d0|reg_addition\(24) & !\d0|w_sum[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(24),
	datad => VCC,
	cin => \d0|w_sum[23]~47\,
	combout => \d0|w_sum[24]~48_combout\,
	cout => \d0|w_sum[24]~49\);

-- Location: LCCOMB_X39_Y26_N2
\d0|w_add[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(24) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[24]~48_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(24),
	datac => \d0|w_sum[24]~48_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(24));

-- Location: LCCOMB_X39_Y26_N26
\d0|reg_addition~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~24_combout\ = (!\reset~input_o\ & \d0|w_add\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(24),
	combout => \d0|reg_addition~24_combout\);

-- Location: FF_X38_Y26_N21
\d0|reg_addition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(24));

-- Location: LCCOMB_X38_Y26_N18
\d0|w_sum[25]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[25]~50_combout\ = (\d0|reg_addition\(25) & (!\d0|w_sum[24]~49\)) # (!\d0|reg_addition\(25) & ((\d0|w_sum[24]~49\) # (GND)))
-- \d0|w_sum[25]~51\ = CARRY((!\d0|w_sum[24]~49\) # (!\d0|reg_addition\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(25),
	datad => VCC,
	cin => \d0|w_sum[24]~49\,
	combout => \d0|w_sum[25]~50_combout\,
	cout => \d0|w_sum[25]~51\);

-- Location: LCCOMB_X37_Y26_N8
\d0|w_add[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(25) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[25]~50_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[25]~50_combout\,
	datac => \d0|w_add\(25),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(25));

-- Location: LCCOMB_X37_Y26_N4
\d0|reg_addition~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~25_combout\ = (!\reset~input_o\ & \d0|w_add\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(25),
	combout => \d0|reg_addition~25_combout\);

-- Location: FF_X38_Y26_N11
\d0|reg_addition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(25));

-- Location: LCCOMB_X38_Y26_N20
\d0|w_sum[26]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[26]~52_combout\ = (\d0|reg_addition\(26) & (\d0|w_sum[25]~51\ $ (GND))) # (!\d0|reg_addition\(26) & (!\d0|w_sum[25]~51\ & VCC))
-- \d0|w_sum[26]~53\ = CARRY((\d0|reg_addition\(26) & !\d0|w_sum[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(26),
	datad => VCC,
	cin => \d0|w_sum[25]~51\,
	combout => \d0|w_sum[26]~52_combout\,
	cout => \d0|w_sum[26]~53\);

-- Location: LCCOMB_X37_Y26_N2
\d0|w_add[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(26) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[26]~52_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[26]~52_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(26),
	combout => \d0|w_add\(26));

-- Location: LCCOMB_X37_Y26_N6
\d0|reg_addition~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~26_combout\ = (!\reset~input_o\ & \d0|w_add\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(26),
	combout => \d0|reg_addition~26_combout\);

-- Location: FF_X38_Y26_N1
\d0|reg_addition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(26));

-- Location: LCCOMB_X38_Y26_N22
\d0|w_sum[27]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[27]~54_combout\ = (\d0|reg_addition\(27) & (!\d0|w_sum[26]~53\)) # (!\d0|reg_addition\(27) & ((\d0|w_sum[26]~53\) # (GND)))
-- \d0|w_sum[27]~55\ = CARRY((!\d0|w_sum[26]~53\) # (!\d0|reg_addition\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(27),
	datad => VCC,
	cin => \d0|w_sum[26]~53\,
	combout => \d0|w_sum[27]~54_combout\,
	cout => \d0|w_sum[27]~55\);

-- Location: LCCOMB_X39_Y26_N24
\d0|w_add[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(27) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[27]~54_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[27]~54_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(27),
	combout => \d0|w_add\(27));

-- Location: LCCOMB_X39_Y26_N8
\d0|reg_addition~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~27_combout\ = (!\reset~input_o\ & \d0|w_add\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(27),
	combout => \d0|reg_addition~27_combout\);

-- Location: FF_X38_Y26_N29
\d0|reg_addition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(27));

-- Location: LCCOMB_X38_Y26_N24
\d0|w_sum[28]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[28]~56_combout\ = (\d0|reg_addition\(28) & (\d0|w_sum[27]~55\ $ (GND))) # (!\d0|reg_addition\(28) & (!\d0|w_sum[27]~55\ & VCC))
-- \d0|w_sum[28]~57\ = CARRY((\d0|reg_addition\(28) & !\d0|w_sum[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(28),
	datad => VCC,
	cin => \d0|w_sum[27]~55\,
	combout => \d0|w_sum[28]~56_combout\,
	cout => \d0|w_sum[28]~57\);

-- Location: LCCOMB_X37_Y24_N28
\d0|w_add[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(28) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[28]~56_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[28]~56_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(28),
	combout => \d0|w_add\(28));

-- Location: LCCOMB_X37_Y24_N10
\d0|reg_addition~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~28_combout\ = (!\reset~input_o\ & \d0|w_add\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(28),
	combout => \d0|reg_addition~28_combout\);

-- Location: FF_X38_Y26_N9
\d0|reg_addition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(28));

-- Location: LCCOMB_X38_Y26_N26
\d0|w_sum[29]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[29]~58_combout\ = (\d0|reg_addition\(29) & (!\d0|w_sum[28]~57\)) # (!\d0|reg_addition\(29) & ((\d0|w_sum[28]~57\) # (GND)))
-- \d0|w_sum[29]~59\ = CARRY((!\d0|w_sum[28]~57\) # (!\d0|reg_addition\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(29),
	datad => VCC,
	cin => \d0|w_sum[28]~57\,
	combout => \d0|w_sum[29]~58_combout\,
	cout => \d0|w_sum[29]~59\);

-- Location: LCCOMB_X39_Y26_N18
\d0|w_add[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(29) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[29]~58_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(29),
	datac => \d0|w_sum[29]~58_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(29));

-- Location: LCCOMB_X39_Y26_N30
\d0|reg_addition~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~29_combout\ = (!\reset~input_o\ & \d0|w_add\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(29),
	combout => \d0|reg_addition~29_combout\);

-- Location: FF_X38_Y26_N17
\d0|reg_addition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(29));

-- Location: LCCOMB_X38_Y26_N28
\d0|w_sum[30]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[30]~60_combout\ = (\d0|reg_addition\(30) & (\d0|w_sum[29]~59\ $ (GND))) # (!\d0|reg_addition\(30) & (!\d0|w_sum[29]~59\ & VCC))
-- \d0|w_sum[30]~61\ = CARRY((\d0|reg_addition\(30) & !\d0|w_sum[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(30),
	datad => VCC,
	cin => \d0|w_sum[29]~59\,
	combout => \d0|w_sum[30]~60_combout\,
	cout => \d0|w_sum[30]~61\);

-- Location: LCCOMB_X37_Y26_N24
\d0|w_add[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(30) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[30]~60_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[30]~60_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(30),
	combout => \d0|w_add\(30));

-- Location: LCCOMB_X37_Y26_N0
\d0|reg_addition~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~30_combout\ = (!\reset~input_o\ & \d0|w_add\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(30),
	combout => \d0|reg_addition~30_combout\);

-- Location: FF_X38_Y26_N27
\d0|reg_addition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(30));

-- Location: LCCOMB_X38_Y26_N30
\d0|w_sum[31]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[31]~62_combout\ = (\d0|reg_addition\(31) & (!\d0|w_sum[30]~61\)) # (!\d0|reg_addition\(31) & ((\d0|w_sum[30]~61\) # (GND)))
-- \d0|w_sum[31]~63\ = CARRY((!\d0|w_sum[30]~61\) # (!\d0|reg_addition\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(31),
	datad => VCC,
	cin => \d0|w_sum[30]~61\,
	combout => \d0|w_sum[31]~62_combout\,
	cout => \d0|w_sum[31]~63\);

-- Location: LCCOMB_X37_Y26_N10
\d0|w_add[31]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(31) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[31]~62_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[31]~62_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(31),
	combout => \d0|w_add\(31));

-- Location: LCCOMB_X37_Y26_N26
\d0|reg_addition~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~31_combout\ = (!\reset~input_o\ & \d0|w_add\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(31),
	combout => \d0|reg_addition~31_combout\);

-- Location: FF_X38_Y26_N19
\d0|reg_addition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(31));

-- Location: LCCOMB_X38_Y25_N0
\d0|w_sum[32]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[32]~64_combout\ = (\d0|reg_addition\(32) & (\d0|w_sum[31]~63\ $ (GND))) # (!\d0|reg_addition\(32) & (!\d0|w_sum[31]~63\ & VCC))
-- \d0|w_sum[32]~65\ = CARRY((\d0|reg_addition\(32) & !\d0|w_sum[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(32),
	datad => VCC,
	cin => \d0|w_sum[31]~63\,
	combout => \d0|w_sum[32]~64_combout\,
	cout => \d0|w_sum[32]~65\);

-- Location: LCCOMB_X37_Y25_N30
\d0|w_add[32]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(32) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[32]~64_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[32]~64_combout\,
	datac => \d0|w_add\(32),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(32));

-- Location: LCCOMB_X37_Y25_N26
\d0|reg_addition~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~32_combout\ = (!\reset~input_o\ & \d0|w_add\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(32),
	combout => \d0|reg_addition~32_combout\);

-- Location: FF_X38_Y25_N17
\d0|reg_addition[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(32));

-- Location: LCCOMB_X38_Y25_N2
\d0|w_sum[33]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[33]~66_combout\ = (\d0|reg_addition\(33) & (!\d0|w_sum[32]~65\)) # (!\d0|reg_addition\(33) & ((\d0|w_sum[32]~65\) # (GND)))
-- \d0|w_sum[33]~67\ = CARRY((!\d0|w_sum[32]~65\) # (!\d0|reg_addition\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(33),
	datad => VCC,
	cin => \d0|w_sum[32]~65\,
	combout => \d0|w_sum[33]~66_combout\,
	cout => \d0|w_sum[33]~67\);

-- Location: LCCOMB_X39_Y25_N6
\d0|w_add[33]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(33) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[33]~66_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[33]~66_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(33),
	combout => \d0|w_add\(33));

-- Location: LCCOMB_X39_Y25_N8
\d0|reg_addition~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~33_combout\ = (!\reset~input_o\ & \d0|w_add\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(33),
	combout => \d0|reg_addition~33_combout\);

-- Location: FF_X38_Y25_N19
\d0|reg_addition[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(33));

-- Location: LCCOMB_X38_Y25_N4
\d0|w_sum[34]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[34]~68_combout\ = (\d0|reg_addition\(34) & (\d0|w_sum[33]~67\ $ (GND))) # (!\d0|reg_addition\(34) & (!\d0|w_sum[33]~67\ & VCC))
-- \d0|w_sum[34]~69\ = CARRY((\d0|reg_addition\(34) & !\d0|w_sum[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(34),
	datad => VCC,
	cin => \d0|w_sum[33]~67\,
	combout => \d0|w_sum[34]~68_combout\,
	cout => \d0|w_sum[34]~69\);

-- Location: LCCOMB_X39_Y25_N24
\d0|w_add[34]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(34) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[34]~68_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[34]~68_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(34),
	combout => \d0|w_add\(34));

-- Location: LCCOMB_X39_Y25_N12
\d0|reg_addition~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~34_combout\ = (!\reset~input_o\ & \d0|w_add\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(34),
	combout => \d0|reg_addition~34_combout\);

-- Location: FF_X39_Y25_N13
\d0|reg_addition[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(34));

-- Location: LCCOMB_X38_Y25_N6
\d0|w_sum[35]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[35]~70_combout\ = (\d0|reg_addition\(35) & (!\d0|w_sum[34]~69\)) # (!\d0|reg_addition\(35) & ((\d0|w_sum[34]~69\) # (GND)))
-- \d0|w_sum[35]~71\ = CARRY((!\d0|w_sum[34]~69\) # (!\d0|reg_addition\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(35),
	datad => VCC,
	cin => \d0|w_sum[34]~69\,
	combout => \d0|w_sum[35]~70_combout\,
	cout => \d0|w_sum[35]~71\);

-- Location: LCCOMB_X37_Y25_N20
\d0|w_add[35]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(35) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[35]~70_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[35]~70_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(35),
	combout => \d0|w_add\(35));

-- Location: LCCOMB_X37_Y25_N16
\d0|reg_addition~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~35_combout\ = (!\reset~input_o\ & \d0|w_add\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(35),
	combout => \d0|reg_addition~35_combout\);

-- Location: FF_X37_Y25_N17
\d0|reg_addition[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(35));

-- Location: LCCOMB_X38_Y25_N8
\d0|w_sum[36]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[36]~72_combout\ = (\d0|reg_addition\(36) & (\d0|w_sum[35]~71\ $ (GND))) # (!\d0|reg_addition\(36) & (!\d0|w_sum[35]~71\ & VCC))
-- \d0|w_sum[36]~73\ = CARRY((\d0|reg_addition\(36) & !\d0|w_sum[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(36),
	datad => VCC,
	cin => \d0|w_sum[35]~71\,
	combout => \d0|w_sum[36]~72_combout\,
	cout => \d0|w_sum[36]~73\);

-- Location: LCCOMB_X37_Y25_N2
\d0|w_add[36]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(36) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[36]~72_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[36]~72_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(36),
	combout => \d0|w_add\(36));

-- Location: LCCOMB_X37_Y25_N4
\d0|reg_addition~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~36_combout\ = (!\reset~input_o\ & \d0|w_add\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(36),
	combout => \d0|reg_addition~36_combout\);

-- Location: FF_X38_Y25_N29
\d0|reg_addition[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(36));

-- Location: LCCOMB_X38_Y25_N10
\d0|w_sum[37]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[37]~74_combout\ = (\d0|reg_addition\(37) & (!\d0|w_sum[36]~73\)) # (!\d0|reg_addition\(37) & ((\d0|w_sum[36]~73\) # (GND)))
-- \d0|w_sum[37]~75\ = CARRY((!\d0|w_sum[36]~73\) # (!\d0|reg_addition\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(37),
	datad => VCC,
	cin => \d0|w_sum[36]~73\,
	combout => \d0|w_sum[37]~74_combout\,
	cout => \d0|w_sum[37]~75\);

-- Location: LCCOMB_X39_Y25_N10
\d0|w_add[37]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(37) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[37]~74_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[37]~74_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(37),
	combout => \d0|w_add\(37));

-- Location: LCCOMB_X39_Y25_N14
\d0|reg_addition~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~37_combout\ = (\d0|w_add\(37) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(37),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~37_combout\);

-- Location: FF_X39_Y25_N15
\d0|reg_addition[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(37));

-- Location: LCCOMB_X38_Y25_N12
\d0|w_sum[38]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[38]~76_combout\ = (\d0|reg_addition\(38) & (\d0|w_sum[37]~75\ $ (GND))) # (!\d0|reg_addition\(38) & (!\d0|w_sum[37]~75\ & VCC))
-- \d0|w_sum[38]~77\ = CARRY((\d0|reg_addition\(38) & !\d0|w_sum[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(38),
	datad => VCC,
	cin => \d0|w_sum[37]~75\,
	combout => \d0|w_sum[38]~76_combout\,
	cout => \d0|w_sum[38]~77\);

-- Location: LCCOMB_X37_Y25_N12
\d0|w_add[38]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(38) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[38]~76_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[38]~76_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(38),
	combout => \d0|w_add\(38));

-- Location: LCCOMB_X37_Y25_N6
\d0|reg_addition~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~38_combout\ = (!\reset~input_o\ & \d0|w_add\(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(38),
	combout => \d0|reg_addition~38_combout\);

-- Location: FF_X38_Y25_N7
\d0|reg_addition[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(38));

-- Location: LCCOMB_X38_Y25_N14
\d0|w_sum[39]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[39]~78_combout\ = (\d0|reg_addition\(39) & (!\d0|w_sum[38]~77\)) # (!\d0|reg_addition\(39) & ((\d0|w_sum[38]~77\) # (GND)))
-- \d0|w_sum[39]~79\ = CARRY((!\d0|w_sum[38]~77\) # (!\d0|reg_addition\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(39),
	datad => VCC,
	cin => \d0|w_sum[38]~77\,
	combout => \d0|w_sum[39]~78_combout\,
	cout => \d0|w_sum[39]~79\);

-- Location: LCCOMB_X37_Y25_N18
\d0|w_add[39]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(39) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[39]~78_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(39),
	datac => \d0|w_sum[39]~78_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(39));

-- Location: LCCOMB_X37_Y25_N14
\d0|reg_addition~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~39_combout\ = (!\reset~input_o\ & \d0|w_add\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \d0|w_add\(39),
	combout => \d0|reg_addition~39_combout\);

-- Location: FF_X38_Y25_N13
\d0|reg_addition[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(39));

-- Location: LCCOMB_X38_Y25_N16
\d0|w_sum[40]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[40]~80_combout\ = (\d0|reg_addition\(40) & (\d0|w_sum[39]~79\ $ (GND))) # (!\d0|reg_addition\(40) & (!\d0|w_sum[39]~79\ & VCC))
-- \d0|w_sum[40]~81\ = CARRY((\d0|reg_addition\(40) & !\d0|w_sum[39]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(40),
	datad => VCC,
	cin => \d0|w_sum[39]~79\,
	combout => \d0|w_sum[40]~80_combout\,
	cout => \d0|w_sum[40]~81\);

-- Location: LCCOMB_X37_Y25_N24
\d0|w_add[40]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(40) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[40]~80_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[40]~80_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(40),
	combout => \d0|w_add\(40));

-- Location: LCCOMB_X36_Y25_N4
\d0|reg_addition~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~40_combout\ = (\d0|w_add\(40) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(40),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~40_combout\);

-- Location: FF_X36_Y25_N5
\d0|reg_addition[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(40));

-- Location: LCCOMB_X38_Y25_N18
\d0|w_sum[41]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[41]~82_combout\ = (\d0|reg_addition\(41) & (!\d0|w_sum[40]~81\)) # (!\d0|reg_addition\(41) & ((\d0|w_sum[40]~81\) # (GND)))
-- \d0|w_sum[41]~83\ = CARRY((!\d0|w_sum[40]~81\) # (!\d0|reg_addition\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(41),
	datad => VCC,
	cin => \d0|w_sum[40]~81\,
	combout => \d0|w_sum[41]~82_combout\,
	cout => \d0|w_sum[41]~83\);

-- Location: LCCOMB_X37_Y25_N22
\d0|w_add[41]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(41) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[41]~82_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[41]~82_combout\,
	datac => \d0|w_add\(41),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(41));

-- Location: LCCOMB_X37_Y25_N0
\d0|reg_addition~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~41_combout\ = (!\reset~input_o\ & \d0|w_add\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(41),
	combout => \d0|reg_addition~41_combout\);

-- Location: FF_X38_Y25_N21
\d0|reg_addition[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(41));

-- Location: LCCOMB_X38_Y25_N20
\d0|w_sum[42]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[42]~84_combout\ = (\d0|reg_addition\(42) & (\d0|w_sum[41]~83\ $ (GND))) # (!\d0|reg_addition\(42) & (!\d0|w_sum[41]~83\ & VCC))
-- \d0|w_sum[42]~85\ = CARRY((\d0|reg_addition\(42) & !\d0|w_sum[41]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(42),
	datad => VCC,
	cin => \d0|w_sum[41]~83\,
	combout => \d0|w_sum[42]~84_combout\,
	cout => \d0|w_sum[42]~85\);

-- Location: LCCOMB_X39_Y25_N16
\d0|w_add[42]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(42) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[42]~84_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[42]~84_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(42),
	combout => \d0|w_add\(42));

-- Location: LCCOMB_X39_Y25_N4
\d0|reg_addition~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~42_combout\ = (\d0|w_add\(42) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(42),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~42_combout\);

-- Location: FF_X39_Y25_N5
\d0|reg_addition[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(42));

-- Location: LCCOMB_X38_Y25_N22
\d0|w_sum[43]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[43]~86_combout\ = (\d0|reg_addition\(43) & (!\d0|w_sum[42]~85\)) # (!\d0|reg_addition\(43) & ((\d0|w_sum[42]~85\) # (GND)))
-- \d0|w_sum[43]~87\ = CARRY((!\d0|w_sum[42]~85\) # (!\d0|reg_addition\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(43),
	datad => VCC,
	cin => \d0|w_sum[42]~85\,
	combout => \d0|w_sum[43]~86_combout\,
	cout => \d0|w_sum[43]~87\);

-- Location: LCCOMB_X39_Y25_N18
\d0|w_add[43]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(43) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[43]~86_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[43]~86_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(43),
	combout => \d0|w_add\(43));

-- Location: LCCOMB_X39_Y25_N26
\d0|reg_addition~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~43_combout\ = (\d0|w_add\(43) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(43),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~43_combout\);

-- Location: FF_X39_Y25_N27
\d0|reg_addition[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(43));

-- Location: LCCOMB_X38_Y25_N24
\d0|w_sum[44]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[44]~88_combout\ = (\d0|reg_addition\(44) & (\d0|w_sum[43]~87\ $ (GND))) # (!\d0|reg_addition\(44) & (!\d0|w_sum[43]~87\ & VCC))
-- \d0|w_sum[44]~89\ = CARRY((\d0|reg_addition\(44) & !\d0|w_sum[43]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(44),
	datad => VCC,
	cin => \d0|w_sum[43]~87\,
	combout => \d0|w_sum[44]~88_combout\,
	cout => \d0|w_sum[44]~89\);

-- Location: LCCOMB_X37_Y25_N28
\d0|w_add[44]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(44) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[44]~88_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[44]~88_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(44),
	combout => \d0|w_add\(44));

-- Location: LCCOMB_X36_Y25_N6
\d0|reg_addition~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~44_combout\ = (!\reset~input_o\ & \d0|w_add\(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(44),
	combout => \d0|reg_addition~44_combout\);

-- Location: FF_X37_Y25_N15
\d0|reg_addition[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(44));

-- Location: LCCOMB_X38_Y25_N26
\d0|w_sum[45]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[45]~90_combout\ = (\d0|reg_addition\(45) & (!\d0|w_sum[44]~89\)) # (!\d0|reg_addition\(45) & ((\d0|w_sum[44]~89\) # (GND)))
-- \d0|w_sum[45]~91\ = CARRY((!\d0|w_sum[44]~89\) # (!\d0|reg_addition\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(45),
	datad => VCC,
	cin => \d0|w_sum[44]~89\,
	combout => \d0|w_sum[45]~90_combout\,
	cout => \d0|w_sum[45]~91\);

-- Location: LCCOMB_X39_Y25_N28
\d0|w_add[45]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(45) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[45]~90_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[45]~90_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(45),
	combout => \d0|w_add\(45));

-- Location: LCCOMB_X39_Y25_N0
\d0|reg_addition~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~45_combout\ = (\d0|w_add\(45) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(45),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~45_combout\);

-- Location: FF_X39_Y25_N1
\d0|reg_addition[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(45));

-- Location: LCCOMB_X38_Y25_N28
\d0|w_sum[46]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[46]~92_combout\ = (\d0|reg_addition\(46) & (\d0|w_sum[45]~91\ $ (GND))) # (!\d0|reg_addition\(46) & (!\d0|w_sum[45]~91\ & VCC))
-- \d0|w_sum[46]~93\ = CARRY((\d0|reg_addition\(46) & !\d0|w_sum[45]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(46),
	datad => VCC,
	cin => \d0|w_sum[45]~91\,
	combout => \d0|w_sum[46]~92_combout\,
	cout => \d0|w_sum[46]~93\);

-- Location: LCCOMB_X37_Y25_N10
\d0|w_add[46]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(46) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[46]~92_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[46]~92_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(46),
	combout => \d0|w_add\(46));

-- Location: LCCOMB_X37_Y25_N8
\d0|reg_addition~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~46_combout\ = (!\reset~input_o\ & \d0|w_add\(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(46),
	combout => \d0|reg_addition~46_combout\);

-- Location: FF_X37_Y25_N9
\d0|reg_addition[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(46));

-- Location: LCCOMB_X38_Y25_N30
\d0|w_sum[47]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[47]~94_combout\ = (\d0|reg_addition\(47) & (!\d0|w_sum[46]~93\)) # (!\d0|reg_addition\(47) & ((\d0|w_sum[46]~93\) # (GND)))
-- \d0|w_sum[47]~95\ = CARRY((!\d0|w_sum[46]~93\) # (!\d0|reg_addition\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(47),
	datad => VCC,
	cin => \d0|w_sum[46]~93\,
	combout => \d0|w_sum[47]~94_combout\,
	cout => \d0|w_sum[47]~95\);

-- Location: LCCOMB_X39_Y25_N2
\d0|w_add[47]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(47) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[47]~94_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_sum[47]~94_combout\,
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_add\(47),
	combout => \d0|w_add\(47));

-- Location: LCCOMB_X39_Y25_N22
\d0|reg_addition~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~47_combout\ = (\d0|w_add\(47) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(47),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~47_combout\);

-- Location: FF_X39_Y25_N23
\d0|reg_addition[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(47));

-- Location: LCCOMB_X38_Y24_N0
\d0|w_sum[48]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[48]~96_combout\ = (\d0|reg_addition\(48) & (\d0|w_sum[47]~95\ $ (GND))) # (!\d0|reg_addition\(48) & (!\d0|w_sum[47]~95\ & VCC))
-- \d0|w_sum[48]~97\ = CARRY((\d0|reg_addition\(48) & !\d0|w_sum[47]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(48),
	datad => VCC,
	cin => \d0|w_sum[47]~95\,
	combout => \d0|w_sum[48]~96_combout\,
	cout => \d0|w_sum[48]~97\);

-- Location: LCCOMB_X39_Y24_N18
\d0|w_add[48]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(48) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[48]~96_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(48),
	datac => \d0|w_sum[48]~96_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(48));

-- Location: LCCOMB_X39_Y24_N20
\d0|reg_addition~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~48_combout\ = (\d0|w_add\(48) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(48),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~48_combout\);

-- Location: FF_X39_Y24_N21
\d0|reg_addition[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(48));

-- Location: LCCOMB_X38_Y24_N2
\d0|w_sum[49]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[49]~98_combout\ = (\d0|reg_addition\(49) & (!\d0|w_sum[48]~97\)) # (!\d0|reg_addition\(49) & ((\d0|w_sum[48]~97\) # (GND)))
-- \d0|w_sum[49]~99\ = CARRY((!\d0|w_sum[48]~97\) # (!\d0|reg_addition\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(49),
	datad => VCC,
	cin => \d0|w_sum[48]~97\,
	combout => \d0|w_sum[49]~98_combout\,
	cout => \d0|w_sum[49]~99\);

-- Location: LCCOMB_X39_Y24_N24
\d0|w_add[49]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(49) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[49]~98_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[49]~98_combout\,
	datab => \d0|w_add\(49),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(49));

-- Location: LCCOMB_X39_Y24_N30
\d0|reg_addition~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~49_combout\ = (\d0|w_add\(49) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(49),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~49_combout\);

-- Location: FF_X39_Y24_N31
\d0|reg_addition[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(49));

-- Location: LCCOMB_X38_Y24_N4
\d0|w_sum[50]~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[50]~100_combout\ = (\d0|reg_addition\(50) & (\d0|w_sum[49]~99\ $ (GND))) # (!\d0|reg_addition\(50) & (!\d0|w_sum[49]~99\ & VCC))
-- \d0|w_sum[50]~101\ = CARRY((\d0|reg_addition\(50) & !\d0|w_sum[49]~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(50),
	datad => VCC,
	cin => \d0|w_sum[49]~99\,
	combout => \d0|w_sum[50]~100_combout\,
	cout => \d0|w_sum[50]~101\);

-- Location: LCCOMB_X37_Y24_N14
\d0|w_add[50]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(50) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[50]~100_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[50]~100_combout\,
	datac => \d0|w_add\(50),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(50));

-- Location: LCCOMB_X37_Y24_N16
\d0|reg_addition~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~50_combout\ = (!\reset~input_o\ & \d0|w_add\(50))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d0|w_add\(50),
	combout => \d0|reg_addition~50_combout\);

-- Location: FF_X38_Y24_N29
\d0|reg_addition[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(50));

-- Location: LCCOMB_X38_Y24_N6
\d0|w_sum[51]~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[51]~102_combout\ = (\d0|reg_addition\(51) & (!\d0|w_sum[50]~101\)) # (!\d0|reg_addition\(51) & ((\d0|w_sum[50]~101\) # (GND)))
-- \d0|w_sum[51]~103\ = CARRY((!\d0|w_sum[50]~101\) # (!\d0|reg_addition\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(51),
	datad => VCC,
	cin => \d0|w_sum[50]~101\,
	combout => \d0|w_sum[51]~102_combout\,
	cout => \d0|w_sum[51]~103\);

-- Location: LCCOMB_X39_Y24_N22
\d0|w_add[51]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(51) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[51]~102_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(51),
	datac => \d0|w_sum[51]~102_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(51));

-- Location: LCCOMB_X39_Y24_N0
\d0|reg_addition~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~51_combout\ = (\d0|w_add\(51) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d0|w_add\(51),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~51_combout\);

-- Location: FF_X39_Y24_N1
\d0|reg_addition[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(51));

-- Location: LCCOMB_X38_Y24_N8
\d0|w_sum[52]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[52]~104_combout\ = (\d0|reg_addition\(52) & (\d0|w_sum[51]~103\ $ (GND))) # (!\d0|reg_addition\(52) & (!\d0|w_sum[51]~103\ & VCC))
-- \d0|w_sum[52]~105\ = CARRY((\d0|reg_addition\(52) & !\d0|w_sum[51]~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(52),
	datad => VCC,
	cin => \d0|w_sum[51]~103\,
	combout => \d0|w_sum[52]~104_combout\,
	cout => \d0|w_sum[52]~105\);

-- Location: LCCOMB_X39_Y24_N4
\d0|w_add[52]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(52) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[52]~104_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[52]~104_combout\,
	datac => \d0|w_add\(52),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(52));

-- Location: LCCOMB_X39_Y24_N6
\d0|reg_addition~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~52_combout\ = (\d0|w_add\(52) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d0|w_add\(52),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~52_combout\);

-- Location: FF_X39_Y24_N7
\d0|reg_addition[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(52));

-- Location: LCCOMB_X38_Y24_N10
\d0|w_sum[53]~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[53]~106_combout\ = (\d0|reg_addition\(53) & (!\d0|w_sum[52]~105\)) # (!\d0|reg_addition\(53) & ((\d0|w_sum[52]~105\) # (GND)))
-- \d0|w_sum[53]~107\ = CARRY((!\d0|w_sum[52]~105\) # (!\d0|reg_addition\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(53),
	datad => VCC,
	cin => \d0|w_sum[52]~105\,
	combout => \d0|w_sum[53]~106_combout\,
	cout => \d0|w_sum[53]~107\);

-- Location: LCCOMB_X39_Y24_N14
\d0|w_add[53]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(53) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[53]~106_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[53]~106_combout\,
	datac => \d0|w_add\(53),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(53));

-- Location: LCCOMB_X39_Y25_N20
\d0|reg_addition~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~53_combout\ = (!\reset~input_o\ & \d0|w_add\(53))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(53),
	combout => \d0|reg_addition~53_combout\);

-- Location: FF_X39_Y25_N21
\d0|reg_addition[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(53));

-- Location: LCCOMB_X38_Y24_N12
\d0|w_sum[54]~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[54]~108_combout\ = (\d0|reg_addition\(54) & (\d0|w_sum[53]~107\ $ (GND))) # (!\d0|reg_addition\(54) & (!\d0|w_sum[53]~107\ & VCC))
-- \d0|w_sum[54]~109\ = CARRY((\d0|reg_addition\(54) & !\d0|w_sum[53]~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(54),
	datad => VCC,
	cin => \d0|w_sum[53]~107\,
	combout => \d0|w_sum[54]~108_combout\,
	cout => \d0|w_sum[54]~109\);

-- Location: LCCOMB_X39_Y24_N8
\d0|w_add[54]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(54) = (GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_sum[54]~108_combout\)) # (!GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_add\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_sum[54]~108_combout\,
	datac => \d0|w_add\(54),
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(54));

-- Location: LCCOMB_X39_Y24_N28
\d0|reg_addition~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~54_combout\ = (\d0|w_add\(54) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d0|w_add\(54),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~54_combout\);

-- Location: FF_X39_Y24_N29
\d0|reg_addition[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(54));

-- Location: LCCOMB_X38_Y24_N14
\d0|w_sum[55]~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[55]~110_combout\ = (\d0|reg_addition\(55) & (!\d0|w_sum[54]~109\)) # (!\d0|reg_addition\(55) & ((\d0|w_sum[54]~109\) # (GND)))
-- \d0|w_sum[55]~111\ = CARRY((!\d0|w_sum[54]~109\) # (!\d0|reg_addition\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(55),
	datad => VCC,
	cin => \d0|w_sum[54]~109\,
	combout => \d0|w_sum[55]~110_combout\,
	cout => \d0|w_sum[55]~111\);

-- Location: LCCOMB_X37_Y24_N8
\d0|w_add[55]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(55) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[55]~110_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(55),
	datac => \d0|w_sum[55]~110_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(55));

-- Location: LCCOMB_X37_Y24_N26
\d0|reg_addition~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~55_combout\ = (\d0|w_add\(55) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(55),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~55_combout\);

-- Location: FF_X38_Y24_N11
\d0|reg_addition[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(55));

-- Location: LCCOMB_X38_Y24_N16
\d0|w_sum[56]~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[56]~112_combout\ = (\d0|reg_addition\(56) & (\d0|w_sum[55]~111\ $ (GND))) # (!\d0|reg_addition\(56) & (!\d0|w_sum[55]~111\ & VCC))
-- \d0|w_sum[56]~113\ = CARRY((\d0|reg_addition\(56) & !\d0|w_sum[55]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(56),
	datad => VCC,
	cin => \d0|w_sum[55]~111\,
	combout => \d0|w_sum[56]~112_combout\,
	cout => \d0|w_sum[56]~113\);

-- Location: LCCOMB_X39_Y24_N26
\d0|w_add[56]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(56) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[56]~112_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(56),
	datac => \d0|w_sum[56]~112_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(56));

-- Location: LCCOMB_X39_Y24_N12
\d0|reg_addition~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~56_combout\ = (!\reset~input_o\ & \d0|w_add\(56))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \d0|w_add\(56),
	combout => \d0|reg_addition~56_combout\);

-- Location: FF_X38_Y24_N23
\d0|reg_addition[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(56));

-- Location: LCCOMB_X38_Y24_N18
\d0|w_sum[57]~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[57]~114_combout\ = (\d0|reg_addition\(57) & (!\d0|w_sum[56]~113\)) # (!\d0|reg_addition\(57) & ((\d0|w_sum[56]~113\) # (GND)))
-- \d0|w_sum[57]~115\ = CARRY((!\d0|w_sum[56]~113\) # (!\d0|reg_addition\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(57),
	datad => VCC,
	cin => \d0|w_sum[56]~113\,
	combout => \d0|w_sum[57]~114_combout\,
	cout => \d0|w_sum[57]~115\);

-- Location: LCCOMB_X39_Y24_N16
\d0|w_add[57]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(57) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[57]~114_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(57),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[57]~114_combout\,
	combout => \d0|w_add\(57));

-- Location: LCCOMB_X39_Y25_N30
\d0|reg_addition~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~57_combout\ = (\d0|w_add\(57) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(57),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~57_combout\);

-- Location: FF_X39_Y25_N31
\d0|reg_addition[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(57));

-- Location: LCCOMB_X38_Y24_N20
\d0|w_sum[58]~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[58]~116_combout\ = (\d0|reg_addition\(58) & (\d0|w_sum[57]~115\ $ (GND))) # (!\d0|reg_addition\(58) & (!\d0|w_sum[57]~115\ & VCC))
-- \d0|w_sum[58]~117\ = CARRY((\d0|reg_addition\(58) & !\d0|w_sum[57]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d0|reg_addition\(58),
	datad => VCC,
	cin => \d0|w_sum[57]~115\,
	combout => \d0|w_sum[58]~116_combout\,
	cout => \d0|w_sum[58]~117\);

-- Location: LCCOMB_X37_Y24_N30
\d0|w_add[58]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(58) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[58]~116_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(58),
	datac => \d0|w_sum[58]~116_combout\,
	datad => \read~inputclkctrl_outclk\,
	combout => \d0|w_add\(58));

-- Location: LCCOMB_X37_Y24_N12
\d0|reg_addition~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~58_combout\ = (\d0|w_add\(58) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(58),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~58_combout\);

-- Location: FF_X37_Y24_N13
\d0|reg_addition[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(58));

-- Location: LCCOMB_X38_Y24_N22
\d0|w_sum[59]~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[59]~118_combout\ = (\d0|reg_addition\(59) & (!\d0|w_sum[58]~117\)) # (!\d0|reg_addition\(59) & ((\d0|w_sum[58]~117\) # (GND)))
-- \d0|w_sum[59]~119\ = CARRY((!\d0|w_sum[58]~117\) # (!\d0|reg_addition\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(59),
	datad => VCC,
	cin => \d0|w_sum[58]~117\,
	combout => \d0|w_sum[59]~118_combout\,
	cout => \d0|w_sum[59]~119\);

-- Location: LCCOMB_X37_Y24_N24
\d0|w_add[59]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(59) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[59]~118_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(59),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[59]~118_combout\,
	combout => \d0|w_add\(59));

-- Location: LCCOMB_X37_Y24_N18
\d0|reg_addition~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~59_combout\ = (\d0|w_add\(59) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(59),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~59_combout\);

-- Location: FF_X37_Y24_N19
\d0|reg_addition[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(59));

-- Location: LCCOMB_X38_Y24_N24
\d0|w_sum[60]~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[60]~120_combout\ = (\d0|reg_addition\(60) & (\d0|w_sum[59]~119\ $ (GND))) # (!\d0|reg_addition\(60) & (!\d0|w_sum[59]~119\ & VCC))
-- \d0|w_sum[60]~121\ = CARRY((\d0|reg_addition\(60) & !\d0|w_sum[59]~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(60),
	datad => VCC,
	cin => \d0|w_sum[59]~119\,
	combout => \d0|w_sum[60]~120_combout\,
	cout => \d0|w_sum[60]~121\);

-- Location: LCCOMB_X37_Y24_N2
\d0|w_add[60]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(60) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[60]~120_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(60),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[60]~120_combout\,
	combout => \d0|w_add\(60));

-- Location: LCCOMB_X37_Y24_N0
\d0|reg_addition~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~60_combout\ = (!\reset~input_o\ & \d0|w_add\(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \d0|w_add\(60),
	combout => \d0|reg_addition~60_combout\);

-- Location: FF_X38_Y24_N17
\d0|reg_addition[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(60));

-- Location: LCCOMB_X38_Y24_N26
\d0|w_sum[61]~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[61]~122_combout\ = (\d0|reg_addition\(61) & (!\d0|w_sum[60]~121\)) # (!\d0|reg_addition\(61) & ((\d0|w_sum[60]~121\) # (GND)))
-- \d0|w_sum[61]~123\ = CARRY((!\d0|w_sum[60]~121\) # (!\d0|reg_addition\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(61),
	datad => VCC,
	cin => \d0|w_sum[60]~121\,
	combout => \d0|w_sum[61]~122_combout\,
	cout => \d0|w_sum[61]~123\);

-- Location: LCCOMB_X37_Y24_N4
\d0|w_add[61]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(61) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[61]~122_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(61),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[61]~122_combout\,
	combout => \d0|w_add\(61));

-- Location: LCCOMB_X37_Y24_N6
\d0|reg_addition~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~61_combout\ = (\d0|w_add\(61) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0|w_add\(61),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~61_combout\);

-- Location: FF_X38_Y24_N25
\d0|reg_addition[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	asdata => \d0|reg_addition~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(61));

-- Location: LCCOMB_X38_Y24_N28
\d0|w_sum[62]~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[62]~124_combout\ = (\d0|reg_addition\(62) & (\d0|w_sum[61]~123\ $ (GND))) # (!\d0|reg_addition\(62) & (!\d0|w_sum[61]~123\ & VCC))
-- \d0|w_sum[62]~125\ = CARRY((\d0|reg_addition\(62) & !\d0|w_sum[61]~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d0|reg_addition\(62),
	datad => VCC,
	cin => \d0|w_sum[61]~123\,
	combout => \d0|w_sum[62]~124_combout\,
	cout => \d0|w_sum[62]~125\);

-- Location: LCCOMB_X37_Y24_N22
\d0|w_add[62]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(62) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[62]~124_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(62),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[62]~124_combout\,
	combout => \d0|w_add\(62));

-- Location: LCCOMB_X37_Y24_N20
\d0|reg_addition~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~62_combout\ = (\d0|w_add\(62) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(62),
	datac => \reset~input_o\,
	combout => \d0|reg_addition~62_combout\);

-- Location: FF_X37_Y24_N21
\d0|reg_addition[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(62));

-- Location: LCCOMB_X38_Y24_N30
\d0|w_sum[63]~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_sum[63]~126_combout\ = \d0|w_sum[62]~125\ $ (\d0|reg_addition\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d0|reg_addition\(63),
	cin => \d0|w_sum[62]~125\,
	combout => \d0|w_sum[63]~126_combout\);

-- Location: LCCOMB_X39_Y24_N10
\d0|w_add[63]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|w_add\(63) = (GLOBAL(\read~inputclkctrl_outclk\) & ((\d0|w_sum[63]~126_combout\))) # (!GLOBAL(\read~inputclkctrl_outclk\) & (\d0|w_add\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(63),
	datac => \read~inputclkctrl_outclk\,
	datad => \d0|w_sum[63]~126_combout\,
	combout => \d0|w_add\(63));

-- Location: LCCOMB_X39_Y24_N2
\d0|reg_addition~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d0|reg_addition~63_combout\ = (\d0|w_add\(63) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0|w_add\(63),
	datad => \reset~input_o\,
	combout => \d0|reg_addition~63_combout\);

-- Location: FF_X39_Y24_N3
\d0|reg_addition[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \read~inputclkctrl_outclk\,
	d => \d0|reg_addition~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0|reg_addition\(63));

-- Location: IOIBUF_X52_Y9_N1
\cypher[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(0),
	o => \cypher[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\cypher[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(1),
	o => \cypher[1]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\cypher[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(2),
	o => \cypher[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\cypher[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(3),
	o => \cypher[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\cypher[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(4),
	o => \cypher[4]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\cypher[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(5),
	o => \cypher[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\cypher[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(6),
	o => \cypher[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\cypher[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(7),
	o => \cypher[7]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\cypher[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(8),
	o => \cypher[8]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\cypher[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(9),
	o => \cypher[9]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\cypher[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(10),
	o => \cypher[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\cypher[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(11),
	o => \cypher[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\cypher[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(12),
	o => \cypher[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\cypher[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(13),
	o => \cypher[13]~input_o\);

-- Location: IOIBUF_X18_Y41_N8
\cypher[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(14),
	o => \cypher[14]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\cypher[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cypher(15),
	o => \cypher[15]~input_o\);

ww_find <= \find~output_o\;

ww_additionresult(0) <= \additionresult[0]~output_o\;

ww_additionresult(1) <= \additionresult[1]~output_o\;

ww_additionresult(2) <= \additionresult[2]~output_o\;

ww_additionresult(3) <= \additionresult[3]~output_o\;

ww_additionresult(4) <= \additionresult[4]~output_o\;

ww_additionresult(5) <= \additionresult[5]~output_o\;

ww_additionresult(6) <= \additionresult[6]~output_o\;

ww_additionresult(7) <= \additionresult[7]~output_o\;

ww_additionresult(8) <= \additionresult[8]~output_o\;

ww_additionresult(9) <= \additionresult[9]~output_o\;

ww_additionresult(10) <= \additionresult[10]~output_o\;

ww_additionresult(11) <= \additionresult[11]~output_o\;

ww_additionresult(12) <= \additionresult[12]~output_o\;

ww_additionresult(13) <= \additionresult[13]~output_o\;

ww_additionresult(14) <= \additionresult[14]~output_o\;

ww_additionresult(15) <= \additionresult[15]~output_o\;

ww_additionresult(16) <= \additionresult[16]~output_o\;

ww_additionresult(17) <= \additionresult[17]~output_o\;

ww_additionresult(18) <= \additionresult[18]~output_o\;

ww_additionresult(19) <= \additionresult[19]~output_o\;

ww_additionresult(20) <= \additionresult[20]~output_o\;

ww_additionresult(21) <= \additionresult[21]~output_o\;

ww_additionresult(22) <= \additionresult[22]~output_o\;

ww_additionresult(23) <= \additionresult[23]~output_o\;

ww_additionresult(24) <= \additionresult[24]~output_o\;

ww_additionresult(25) <= \additionresult[25]~output_o\;

ww_additionresult(26) <= \additionresult[26]~output_o\;

ww_additionresult(27) <= \additionresult[27]~output_o\;

ww_additionresult(28) <= \additionresult[28]~output_o\;

ww_additionresult(29) <= \additionresult[29]~output_o\;

ww_additionresult(30) <= \additionresult[30]~output_o\;

ww_additionresult(31) <= \additionresult[31]~output_o\;

ww_additionresult(32) <= \additionresult[32]~output_o\;

ww_additionresult(33) <= \additionresult[33]~output_o\;

ww_additionresult(34) <= \additionresult[34]~output_o\;

ww_additionresult(35) <= \additionresult[35]~output_o\;

ww_additionresult(36) <= \additionresult[36]~output_o\;

ww_additionresult(37) <= \additionresult[37]~output_o\;

ww_additionresult(38) <= \additionresult[38]~output_o\;

ww_additionresult(39) <= \additionresult[39]~output_o\;

ww_additionresult(40) <= \additionresult[40]~output_o\;

ww_additionresult(41) <= \additionresult[41]~output_o\;

ww_additionresult(42) <= \additionresult[42]~output_o\;

ww_additionresult(43) <= \additionresult[43]~output_o\;

ww_additionresult(44) <= \additionresult[44]~output_o\;

ww_additionresult(45) <= \additionresult[45]~output_o\;

ww_additionresult(46) <= \additionresult[46]~output_o\;

ww_additionresult(47) <= \additionresult[47]~output_o\;

ww_additionresult(48) <= \additionresult[48]~output_o\;

ww_additionresult(49) <= \additionresult[49]~output_o\;

ww_additionresult(50) <= \additionresult[50]~output_o\;

ww_additionresult(51) <= \additionresult[51]~output_o\;

ww_additionresult(52) <= \additionresult[52]~output_o\;

ww_additionresult(53) <= \additionresult[53]~output_o\;

ww_additionresult(54) <= \additionresult[54]~output_o\;

ww_additionresult(55) <= \additionresult[55]~output_o\;

ww_additionresult(56) <= \additionresult[56]~output_o\;

ww_additionresult(57) <= \additionresult[57]~output_o\;

ww_additionresult(58) <= \additionresult[58]~output_o\;

ww_additionresult(59) <= \additionresult[59]~output_o\;

ww_additionresult(60) <= \additionresult[60]~output_o\;

ww_additionresult(61) <= \additionresult[61]~output_o\;

ww_additionresult(62) <= \additionresult[62]~output_o\;

ww_additionresult(63) <= \additionresult[63]~output_o\;
END structure;


