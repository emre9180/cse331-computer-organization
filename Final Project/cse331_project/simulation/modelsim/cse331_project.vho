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

-- DATE "01/17/2023 22:57:20"

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

ENTITY 	mips IS
    PORT (
	clock : IN std_logic;
	pc : IN std_logic_vector(31 DOWNTO 0);
	instruction : IN std_logic_vector(31 DOWNTO 0);
	newPc : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- instruction[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[8]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[10]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[11]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[17]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[18]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[19]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[20]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[21]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[23]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[28]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[29]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newPc[31]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_newPc : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c11|ALUCtr[1]~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c11|WideOr5~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \newPc[0]~output_o\ : std_logic;
SIGNAL \newPc[1]~output_o\ : std_logic;
SIGNAL \newPc[2]~output_o\ : std_logic;
SIGNAL \newPc[3]~output_o\ : std_logic;
SIGNAL \newPc[4]~output_o\ : std_logic;
SIGNAL \newPc[5]~output_o\ : std_logic;
SIGNAL \newPc[6]~output_o\ : std_logic;
SIGNAL \newPc[7]~output_o\ : std_logic;
SIGNAL \newPc[8]~output_o\ : std_logic;
SIGNAL \newPc[9]~output_o\ : std_logic;
SIGNAL \newPc[10]~output_o\ : std_logic;
SIGNAL \newPc[11]~output_o\ : std_logic;
SIGNAL \newPc[12]~output_o\ : std_logic;
SIGNAL \newPc[13]~output_o\ : std_logic;
SIGNAL \newPc[14]~output_o\ : std_logic;
SIGNAL \newPc[15]~output_o\ : std_logic;
SIGNAL \newPc[16]~output_o\ : std_logic;
SIGNAL \newPc[17]~output_o\ : std_logic;
SIGNAL \newPc[18]~output_o\ : std_logic;
SIGNAL \newPc[19]~output_o\ : std_logic;
SIGNAL \newPc[20]~output_o\ : std_logic;
SIGNAL \newPc[21]~output_o\ : std_logic;
SIGNAL \newPc[22]~output_o\ : std_logic;
SIGNAL \newPc[23]~output_o\ : std_logic;
SIGNAL \newPc[24]~output_o\ : std_logic;
SIGNAL \newPc[25]~output_o\ : std_logic;
SIGNAL \newPc[26]~output_o\ : std_logic;
SIGNAL \newPc[27]~output_o\ : std_logic;
SIGNAL \newPc[28]~output_o\ : std_logic;
SIGNAL \newPc[29]~output_o\ : std_logic;
SIGNAL \newPc[30]~output_o\ : std_logic;
SIGNAL \newPc[31]~output_o\ : std_logic;
SIGNAL \instruction[16]~input_o\ : std_logic;
SIGNAL \instruction[19]~input_o\ : std_logic;
SIGNAL \instruction[18]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \instruction[29]~input_o\ : std_logic;
SIGNAL \instruction[30]~input_o\ : std_logic;
SIGNAL \instruction[28]~input_o\ : std_logic;
SIGNAL \instruction[27]~input_o\ : std_logic;
SIGNAL \instruction[31]~input_o\ : std_logic;
SIGNAL \instruction[26]~input_o\ : std_logic;
SIGNAL \c11|MemRd~0_combout\ : std_logic;
SIGNAL \c11|Decoder0~4_combout\ : std_logic;
SIGNAL \c11|MemRd~1_combout\ : std_logic;
SIGNAL \instruction[21]~input_o\ : std_logic;
SIGNAL \c11|Decoder0~3_combout\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \c11|WideOr2~0_combout\ : std_logic;
SIGNAL \c11|WideOr2~1_combout\ : std_logic;
SIGNAL \mux2|mux1|out~0_combout\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \c11|comb~9_combout\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \c11|comb~10_combout\ : std_logic;
SIGNAL \c11|ALUCtr[2]~9_combout\ : std_logic;
SIGNAL \c11|Equal0~0_combout\ : std_logic;
SIGNAL \c11|ALUCtr[2]~10_combout\ : std_logic;
SIGNAL \c11|Decoder0~5_combout\ : std_logic;
SIGNAL \c11|Decoder0~0_combout\ : std_logic;
SIGNAL \c11|comb~8_combout\ : std_logic;
SIGNAL \c11|comb~7_combout\ : std_logic;
SIGNAL \c11|ALUCtr[1]~11_combout\ : std_logic;
SIGNAL \c11|ALUCtr[1]~11clkctrl_outclk\ : std_logic;
SIGNAL \c11|Selector8~0_combout\ : std_logic;
SIGNAL \c11|ALUCtr[2]~4_combout\ : std_logic;
SIGNAL \c11|ALUCtr[2]~12_combout\ : std_logic;
SIGNAL \c11|Selector8~1_combout\ : std_logic;
SIGNAL \c11|WideOr1~0_combout\ : std_logic;
SIGNAL \c11|WideOr1~1_combout\ : std_logic;
SIGNAL \instruction[20]~input_o\ : std_logic;
SIGNAL \c11|RegDst~0_combout\ : std_logic;
SIGNAL \c11|RegDst~1_combout\ : std_logic;
SIGNAL \mux1|mux3|out~0_combout\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \mux1|mux1|out~0_combout\ : std_logic;
SIGNAL \instruction[17]~input_o\ : std_logic;
SIGNAL \mux1|mux4|out~0_combout\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \mux1|mux2|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~606_combout\ : std_logic;
SIGNAL \reg1|registers~607_combout\ : std_logic;
SIGNAL \reg1|registers~240_q\ : std_logic;
SIGNAL \reg1|registers~600_combout\ : std_logic;
SIGNAL \reg1|registers~601_combout\ : std_logic;
SIGNAL \reg1|registers~208_q\ : std_logic;
SIGNAL \instruction[22]~input_o\ : std_logic;
SIGNAL \instruction[23]~input_o\ : std_logic;
SIGNAL \reg1|registers~224feeder_combout\ : std_logic;
SIGNAL \reg1|registers~602_combout\ : std_logic;
SIGNAL \reg1|registers~603_combout\ : std_logic;
SIGNAL \reg1|registers~224_q\ : std_logic;
SIGNAL \reg1|registers~604_combout\ : std_logic;
SIGNAL \reg1|registers~605_combout\ : std_logic;
SIGNAL \reg1|registers~192_q\ : std_logic;
SIGNAL \reg1|registers~273_combout\ : std_logic;
SIGNAL \reg1|registers~274_combout\ : std_logic;
SIGNAL \instruction[25]~input_o\ : std_logic;
SIGNAL \reg1|registers~576_combout\ : std_logic;
SIGNAL \reg1|registers~577_combout\ : std_logic;
SIGNAL \reg1|registers~160_q\ : std_logic;
SIGNAL \reg1|registers~578_combout\ : std_logic;
SIGNAL \reg1|registers~579_combout\ : std_logic;
SIGNAL \reg1|registers~144_q\ : std_logic;
SIGNAL \reg1|registers~128feeder_combout\ : std_logic;
SIGNAL \reg1|registers~580_combout\ : std_logic;
SIGNAL \reg1|registers~581_combout\ : std_logic;
SIGNAL \reg1|registers~128_q\ : std_logic;
SIGNAL \reg1|registers~266_combout\ : std_logic;
SIGNAL \reg1|registers~267_combout\ : std_logic;
SIGNAL \instruction[24]~input_o\ : std_logic;
SIGNAL \reg1|registers~32feeder_combout\ : std_logic;
SIGNAL \reg1|registers~592_combout\ : std_logic;
SIGNAL \reg1|registers~593_combout\ : std_logic;
SIGNAL \reg1|registers~32_q\ : std_logic;
SIGNAL \reg1|registers~48feeder_combout\ : std_logic;
SIGNAL \reg1|registers~598_combout\ : std_logic;
SIGNAL \reg1|registers~599_combout\ : std_logic;
SIGNAL \reg1|registers~48_q\ : std_logic;
SIGNAL \reg1|registers~0feeder_combout\ : std_logic;
SIGNAL \reg1|registers~596_combout\ : std_logic;
SIGNAL \reg1|registers~597_combout\ : std_logic;
SIGNAL \reg1|registers~0_q\ : std_logic;
SIGNAL \reg1|registers~594_combout\ : std_logic;
SIGNAL \reg1|registers~595_combout\ : std_logic;
SIGNAL \reg1|registers~16_q\ : std_logic;
SIGNAL \reg1|registers~270_combout\ : std_logic;
SIGNAL \reg1|registers~271_combout\ : std_logic;
SIGNAL \reg1|registers~590_combout\ : std_logic;
SIGNAL \reg1|registers~591_combout\ : std_logic;
SIGNAL \reg1|registers~112_q\ : std_logic;
SIGNAL \reg1|registers~80feeder_combout\ : std_logic;
SIGNAL \reg1|registers~584_combout\ : std_logic;
SIGNAL \reg1|registers~585_combout\ : std_logic;
SIGNAL \reg1|registers~80_q\ : std_logic;
SIGNAL \reg1|registers~96feeder_combout\ : std_logic;
SIGNAL \reg1|registers~586_combout\ : std_logic;
SIGNAL \reg1|registers~587_combout\ : std_logic;
SIGNAL \reg1|registers~96_q\ : std_logic;
SIGNAL \reg1|registers~64feeder_combout\ : std_logic;
SIGNAL \reg1|registers~588_combout\ : std_logic;
SIGNAL \reg1|registers~589_combout\ : std_logic;
SIGNAL \reg1|registers~64_q\ : std_logic;
SIGNAL \reg1|registers~268_combout\ : std_logic;
SIGNAL \reg1|registers~269_combout\ : std_logic;
SIGNAL \reg1|registers~272_combout\ : std_logic;
SIGNAL \reg1|registers~275_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~0_combout\ : std_logic;
SIGNAL \c11|Selector6~6_combout\ : std_logic;
SIGNAL \c11|Selector6~3_combout\ : std_logic;
SIGNAL \c11|Selector6~14_combout\ : std_logic;
SIGNAL \c11|Selector6~13_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~5_combout\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \alu1|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~1_combout\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \alu1|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \reg1|registers~113feeder_combout\ : std_logic;
SIGNAL \reg1|registers~113_q\ : std_logic;
SIGNAL \reg1|registers~293_combout\ : std_logic;
SIGNAL \reg1|registers~241_q\ : std_logic;
SIGNAL \reg1|registers~177feeder_combout\ : std_logic;
SIGNAL \reg1|registers~582_combout\ : std_logic;
SIGNAL \reg1|registers~583_combout\ : std_logic;
SIGNAL \reg1|registers~177_q\ : std_logic;
SIGNAL \reg1|registers~294_combout\ : std_logic;
SIGNAL \reg1|registers~97_q\ : std_logic;
SIGNAL \reg1|registers~225_q\ : std_logic;
SIGNAL \reg1|registers~33_q\ : std_logic;
SIGNAL \reg1|registers~161feeder_combout\ : std_logic;
SIGNAL \reg1|registers~161_q\ : std_logic;
SIGNAL \reg1|registers~286_combout\ : std_logic;
SIGNAL \reg1|registers~287_combout\ : std_logic;
SIGNAL \reg1|registers~145feeder_combout\ : std_logic;
SIGNAL \reg1|registers~145_q\ : std_logic;
SIGNAL \reg1|registers~209_q\ : std_logic;
SIGNAL \reg1|registers~81feeder_combout\ : std_logic;
SIGNAL \reg1|registers~81_q\ : std_logic;
SIGNAL \reg1|registers~17feeder_combout\ : std_logic;
SIGNAL \reg1|registers~17_q\ : std_logic;
SIGNAL \reg1|registers~288_combout\ : std_logic;
SIGNAL \reg1|registers~289_combout\ : std_logic;
SIGNAL \reg1|registers~65feeder_combout\ : std_logic;
SIGNAL \reg1|registers~65_q\ : std_logic;
SIGNAL \reg1|registers~193feeder_combout\ : std_logic;
SIGNAL \reg1|registers~193_q\ : std_logic;
SIGNAL \reg1|registers~1_q\ : std_logic;
SIGNAL \reg1|registers~129feeder_combout\ : std_logic;
SIGNAL \reg1|registers~129_q\ : std_logic;
SIGNAL \reg1|registers~290_combout\ : std_logic;
SIGNAL \reg1|registers~291_combout\ : std_logic;
SIGNAL \reg1|registers~292_combout\ : std_logic;
SIGNAL \reg1|registers~295_combout\ : std_logic;
SIGNAL \c7|mux16|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \reg1|registers~245_q\ : std_logic;
SIGNAL \reg1|registers~53feeder_combout\ : std_logic;
SIGNAL \reg1|registers~53_q\ : std_logic;
SIGNAL \reg1|registers~117_q\ : std_logic;
SIGNAL \reg1|registers~373_combout\ : std_logic;
SIGNAL \reg1|registers~181_q\ : std_logic;
SIGNAL \reg1|registers~374_combout\ : std_logic;
SIGNAL \reg1|registers~85feeder_combout\ : std_logic;
SIGNAL \reg1|registers~85_q\ : std_logic;
SIGNAL \reg1|registers~21feeder_combout\ : std_logic;
SIGNAL \reg1|registers~21_q\ : std_logic;
SIGNAL \reg1|registers~368_combout\ : std_logic;
SIGNAL \reg1|registers~149feeder_combout\ : std_logic;
SIGNAL \reg1|registers~149_q\ : std_logic;
SIGNAL \reg1|registers~213feeder_combout\ : std_logic;
SIGNAL \reg1|registers~213_q\ : std_logic;
SIGNAL \reg1|registers~369_combout\ : std_logic;
SIGNAL \reg1|registers~197feeder_combout\ : std_logic;
SIGNAL \reg1|registers~197_q\ : std_logic;
SIGNAL \reg1|registers~69_q\ : std_logic;
SIGNAL \reg1|registers~5feeder_combout\ : std_logic;
SIGNAL \reg1|registers~5_q\ : std_logic;
SIGNAL \reg1|registers~133feeder_combout\ : std_logic;
SIGNAL \reg1|registers~133_q\ : std_logic;
SIGNAL \reg1|registers~370_combout\ : std_logic;
SIGNAL \reg1|registers~371_combout\ : std_logic;
SIGNAL \reg1|registers~372_combout\ : std_logic;
SIGNAL \reg1|registers~101feeder_combout\ : std_logic;
SIGNAL \reg1|registers~101_q\ : std_logic;
SIGNAL \reg1|registers~165_q\ : std_logic;
SIGNAL \reg1|registers~37_q\ : std_logic;
SIGNAL \reg1|registers~366_combout\ : std_logic;
SIGNAL \reg1|registers~367_combout\ : std_logic;
SIGNAL \reg1|registers~375_combout\ : std_logic;
SIGNAL \alu1|adder0|adder1|full4|and1~combout\ : std_logic;
SIGNAL \alu1|adder0|adder2|full1|and1~combout\ : std_logic;
SIGNAL \reg1|registers~52feeder_combout\ : std_logic;
SIGNAL \reg1|registers~52_q\ : std_logic;
SIGNAL \reg1|registers~36_q\ : std_logic;
SIGNAL \reg1|registers~20_q\ : std_logic;
SIGNAL \reg1|registers~360_combout\ : std_logic;
SIGNAL \reg1|registers~361_combout\ : std_logic;
SIGNAL \reg1|registers~116feeder_combout\ : std_logic;
SIGNAL \reg1|registers~116_q\ : std_logic;
SIGNAL \reg1|registers~84feeder_combout\ : std_logic;
SIGNAL \reg1|registers~84_q\ : std_logic;
SIGNAL \reg1|registers~100_q\ : std_logic;
SIGNAL \reg1|registers~68_q\ : std_logic;
SIGNAL \reg1|registers~358_combout\ : std_logic;
SIGNAL \reg1|registers~359_combout\ : std_logic;
SIGNAL \reg1|registers~362_combout\ : std_logic;
SIGNAL \reg1|registers~132feeder_combout\ : std_logic;
SIGNAL \reg1|registers~132_q\ : std_logic;
SIGNAL \reg1|registers~148_q\ : std_logic;
SIGNAL \reg1|registers~356_combout\ : std_logic;
SIGNAL \reg1|registers~180_q\ : std_logic;
SIGNAL \reg1|registers~164_q\ : std_logic;
SIGNAL \reg1|registers~357_combout\ : std_logic;
SIGNAL \reg1|registers~244_q\ : std_logic;
SIGNAL \reg1|registers~196feeder_combout\ : std_logic;
SIGNAL \reg1|registers~196_q\ : std_logic;
SIGNAL \reg1|registers~228_q\ : std_logic;
SIGNAL \reg1|registers~363_combout\ : std_logic;
SIGNAL \reg1|registers~212_q\ : std_logic;
SIGNAL \reg1|registers~364_combout\ : std_logic;
SIGNAL \reg1|registers~365_combout\ : std_logic;
SIGNAL \reg1|registers~243_q\ : std_logic;
SIGNAL \reg1|registers~115feeder_combout\ : std_logic;
SIGNAL \reg1|registers~115_q\ : std_logic;
SIGNAL \reg1|registers~51feeder_combout\ : std_logic;
SIGNAL \reg1|registers~51_q\ : std_logic;
SIGNAL \reg1|registers~179feeder_combout\ : std_logic;
SIGNAL \reg1|registers~179_q\ : std_logic;
SIGNAL \reg1|registers~333_combout\ : std_logic;
SIGNAL \reg1|registers~334_combout\ : std_logic;
SIGNAL \reg1|registers~211feeder_combout\ : std_logic;
SIGNAL \reg1|registers~211_q\ : std_logic;
SIGNAL \reg1|registers~19_q\ : std_logic;
SIGNAL \reg1|registers~147_q\ : std_logic;
SIGNAL \reg1|registers~326_combout\ : std_logic;
SIGNAL \reg1|registers~327_combout\ : std_logic;
SIGNAL \reg1|registers~35_q\ : std_logic;
SIGNAL \reg1|registers~99_q\ : std_logic;
SIGNAL \reg1|registers~328_combout\ : std_logic;
SIGNAL \reg1|registers~163_q\ : std_logic;
SIGNAL \reg1|registers~227_q\ : std_logic;
SIGNAL \reg1|registers~329_combout\ : std_logic;
SIGNAL \reg1|registers~131feeder_combout\ : std_logic;
SIGNAL \reg1|registers~131_q\ : std_logic;
SIGNAL \reg1|registers~195feeder_combout\ : std_logic;
SIGNAL \reg1|registers~195_q\ : std_logic;
SIGNAL \reg1|registers~67feeder_combout\ : std_logic;
SIGNAL \reg1|registers~67_q\ : std_logic;
SIGNAL \reg1|registers~3feeder_combout\ : std_logic;
SIGNAL \reg1|registers~3_q\ : std_logic;
SIGNAL \reg1|registers~330_combout\ : std_logic;
SIGNAL \reg1|registers~331_combout\ : std_logic;
SIGNAL \reg1|registers~332_combout\ : std_logic;
SIGNAL \reg1|registers~335_combout\ : std_logic;
SIGNAL \alu1|adder0|adder1|full3|and1~combout\ : std_logic;
SIGNAL \alu1|adder0|adder1|full2|and1~0_combout\ : std_logic;
SIGNAL \alu1|adder0|adder1|full2|and1~combout\ : std_logic;
SIGNAL \reg1|registers~66_q\ : std_logic;
SIGNAL \reg1|registers~82feeder_combout\ : std_logic;
SIGNAL \reg1|registers~82_q\ : std_logic;
SIGNAL \reg1|registers~306_combout\ : std_logic;
SIGNAL \reg1|registers~98_q\ : std_logic;
SIGNAL \reg1|registers~114_q\ : std_logic;
SIGNAL \reg1|registers~307_combout\ : std_logic;
SIGNAL \reg1|registers~226_q\ : std_logic;
SIGNAL \reg1|registers~210_q\ : std_logic;
SIGNAL \reg1|registers~194_q\ : std_logic;
SIGNAL \reg1|registers~313_combout\ : std_logic;
SIGNAL \reg1|registers~314_combout\ : std_logic;
SIGNAL \reg1|registers~50_q\ : std_logic;
SIGNAL \reg1|registers~18feeder_combout\ : std_logic;
SIGNAL \reg1|registers~18_q\ : std_logic;
SIGNAL \reg1|registers~2_q\ : std_logic;
SIGNAL \reg1|registers~34_q\ : std_logic;
SIGNAL \reg1|registers~310_combout\ : std_logic;
SIGNAL \reg1|registers~311_combout\ : std_logic;
SIGNAL \reg1|registers~178feeder_combout\ : std_logic;
SIGNAL \reg1|registers~178_q\ : std_logic;
SIGNAL \reg1|registers~146_q\ : std_logic;
SIGNAL \reg1|registers~162feeder_combout\ : std_logic;
SIGNAL \reg1|registers~162_q\ : std_logic;
SIGNAL \reg1|registers~130feeder_combout\ : std_logic;
SIGNAL \reg1|registers~130_q\ : std_logic;
SIGNAL \reg1|registers~308_combout\ : std_logic;
SIGNAL \reg1|registers~309_combout\ : std_logic;
SIGNAL \reg1|registers~312_combout\ : std_logic;
SIGNAL \reg1|registers~315_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full4|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full1|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full2|xor2~combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full2|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full4|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full4|or1~1_combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full4|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full1|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~5_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \c7|mux14|out~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~6_combout\ : std_logic;
SIGNAL \mux2|mux12|out~0_combout\ : std_logic;
SIGNAL \mux2|mux11|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \mux2|mux10|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \mux2|mux9|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~27_combout\ : std_logic;
SIGNAL \mux2|mux13|out~0_combout\ : std_logic;
SIGNAL \mux2|mux14|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \c7|mux14|out~3_combout\ : std_logic;
SIGNAL \c7|mux14|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~109_q\ : std_logic;
SIGNAL \reg1|registers~45_q\ : std_logic;
SIGNAL \reg1|registers~173feeder_combout\ : std_logic;
SIGNAL \reg1|registers~173_q\ : std_logic;
SIGNAL \reg1|registers~526_combout\ : std_logic;
SIGNAL \reg1|registers~527_combout\ : std_logic;
SIGNAL \reg1|registers~205feeder_combout\ : std_logic;
SIGNAL \reg1|registers~205_q\ : std_logic;
SIGNAL \reg1|registers~77feeder_combout\ : std_logic;
SIGNAL \reg1|registers~77_q\ : std_logic;
SIGNAL \reg1|registers~141feeder_combout\ : std_logic;
SIGNAL \reg1|registers~141_q\ : std_logic;
SIGNAL \reg1|registers~13feeder_combout\ : std_logic;
SIGNAL \reg1|registers~13_q\ : std_logic;
SIGNAL \reg1|registers~530_combout\ : std_logic;
SIGNAL \reg1|registers~531_combout\ : std_logic;
SIGNAL \reg1|registers~221_q\ : std_logic;
SIGNAL \reg1|registers~157_q\ : std_logic;
SIGNAL \reg1|registers~93_q\ : std_logic;
SIGNAL \reg1|registers~29_q\ : std_logic;
SIGNAL \reg1|registers~528_combout\ : std_logic;
SIGNAL \reg1|registers~529_combout\ : std_logic;
SIGNAL \reg1|registers~532_combout\ : std_logic;
SIGNAL \reg1|registers~253_q\ : std_logic;
SIGNAL \reg1|registers~61_q\ : std_logic;
SIGNAL \reg1|registers~125_q\ : std_logic;
SIGNAL \reg1|registers~533_combout\ : std_logic;
SIGNAL \reg1|registers~189feeder_combout\ : std_logic;
SIGNAL \reg1|registers~189_q\ : std_logic;
SIGNAL \reg1|registers~534_combout\ : std_logic;
SIGNAL \reg1|registers~535_combout\ : std_logic;
SIGNAL \alu1|adder0|adder2|full3|and1~combout\ : std_logic;
SIGNAL \alu1|adder0|adder3|full2|and1~combout\ : std_logic;
SIGNAL \alu1|adder0|adder4|full1|and1~combout\ : std_logic;
SIGNAL \alu1|adder0|adder3|full4|and1~combout\ : std_logic;
SIGNAL \reg1|registers~252_q\ : std_logic;
SIGNAL \reg1|registers~220_q\ : std_logic;
SIGNAL \reg1|registers~204_q\ : std_logic;
SIGNAL \reg1|registers~236_q\ : std_logic;
SIGNAL \reg1|registers~513_combout\ : std_logic;
SIGNAL \reg1|registers~514_combout\ : std_logic;
SIGNAL \reg1|registers~60feeder_combout\ : std_logic;
SIGNAL \reg1|registers~60_q\ : std_logic;
SIGNAL \reg1|registers~44_q\ : std_logic;
SIGNAL \reg1|registers~12feeder_combout\ : std_logic;
SIGNAL \reg1|registers~12_q\ : std_logic;
SIGNAL \reg1|registers~28feeder_combout\ : std_logic;
SIGNAL \reg1|registers~28_q\ : std_logic;
SIGNAL \reg1|registers~510_combout\ : std_logic;
SIGNAL \reg1|registers~511_combout\ : std_logic;
SIGNAL \reg1|registers~92feeder_combout\ : std_logic;
SIGNAL \reg1|registers~92_q\ : std_logic;
SIGNAL \reg1|registers~124feeder_combout\ : std_logic;
SIGNAL \reg1|registers~124_q\ : std_logic;
SIGNAL \reg1|registers~76feeder_combout\ : std_logic;
SIGNAL \reg1|registers~76_q\ : std_logic;
SIGNAL \reg1|registers~108_q\ : std_logic;
SIGNAL \reg1|registers~508_combout\ : std_logic;
SIGNAL \reg1|registers~509_combout\ : std_logic;
SIGNAL \reg1|registers~512_combout\ : std_logic;
SIGNAL \reg1|registers~140_q\ : std_logic;
SIGNAL \reg1|registers~156_q\ : std_logic;
SIGNAL \reg1|registers~506_combout\ : std_logic;
SIGNAL \reg1|registers~172_q\ : std_logic;
SIGNAL \reg1|registers~507_combout\ : std_logic;
SIGNAL \reg1|registers~515_combout\ : std_logic;
SIGNAL \reg1|registers~235_q\ : std_logic;
SIGNAL \reg1|registers~171_q\ : std_logic;
SIGNAL \reg1|registers~107_q\ : std_logic;
SIGNAL \reg1|registers~43_q\ : std_logic;
SIGNAL \reg1|registers~488_combout\ : std_logic;
SIGNAL \reg1|registers~489_combout\ : std_logic;
SIGNAL \reg1|registers~203_q\ : std_logic;
SIGNAL \reg1|registers~139_q\ : std_logic;
SIGNAL \reg1|registers~11feeder_combout\ : std_logic;
SIGNAL \reg1|registers~11_q\ : std_logic;
SIGNAL \reg1|registers~75feeder_combout\ : std_logic;
SIGNAL \reg1|registers~75_q\ : std_logic;
SIGNAL \reg1|registers~490_combout\ : std_logic;
SIGNAL \reg1|registers~491_combout\ : std_logic;
SIGNAL \reg1|registers~492_combout\ : std_logic;
SIGNAL \reg1|registers~251feeder_combout\ : std_logic;
SIGNAL \reg1|registers~251_q\ : std_logic;
SIGNAL \reg1|registers~187_q\ : std_logic;
SIGNAL \reg1|registers~59_q\ : std_logic;
SIGNAL \reg1|registers~493_combout\ : std_logic;
SIGNAL \reg1|registers~494_combout\ : std_logic;
SIGNAL \reg1|registers~219_q\ : std_logic;
SIGNAL \reg1|registers~91_q\ : std_logic;
SIGNAL \reg1|registers~27_q\ : std_logic;
SIGNAL \reg1|registers~155_q\ : std_logic;
SIGNAL \reg1|registers~486_combout\ : std_logic;
SIGNAL \reg1|registers~487_combout\ : std_logic;
SIGNAL \reg1|registers~495_combout\ : std_logic;
SIGNAL \alu1|adder0|adder3|full3|and1~combout\ : std_logic;
SIGNAL \reg1|registers~250_q\ : std_logic;
SIGNAL \reg1|registers~234_q\ : std_logic;
SIGNAL \reg1|registers~202_q\ : std_logic;
SIGNAL \reg1|registers~218_q\ : std_logic;
SIGNAL \reg1|registers~483_combout\ : std_logic;
SIGNAL \reg1|registers~484_combout\ : std_logic;
SIGNAL \reg1|registers~10_q\ : std_logic;
SIGNAL \reg1|registers~42_q\ : std_logic;
SIGNAL \reg1|registers~480_combout\ : std_logic;
SIGNAL \reg1|registers~58feeder_combout\ : std_logic;
SIGNAL \reg1|registers~58_q\ : std_logic;
SIGNAL \reg1|registers~26feeder_combout\ : std_logic;
SIGNAL \reg1|registers~26_q\ : std_logic;
SIGNAL \reg1|registers~481_combout\ : std_logic;
SIGNAL \reg1|registers~154feeder_combout\ : std_logic;
SIGNAL \reg1|registers~154_q\ : std_logic;
SIGNAL \reg1|registers~170feeder_combout\ : std_logic;
SIGNAL \reg1|registers~170_q\ : std_logic;
SIGNAL \reg1|registers~138feeder_combout\ : std_logic;
SIGNAL \reg1|registers~138_q\ : std_logic;
SIGNAL \reg1|registers~478_combout\ : std_logic;
SIGNAL \reg1|registers~186feeder_combout\ : std_logic;
SIGNAL \reg1|registers~186_q\ : std_logic;
SIGNAL \reg1|registers~479_combout\ : std_logic;
SIGNAL \reg1|registers~482_combout\ : std_logic;
SIGNAL \reg1|registers~74_q\ : std_logic;
SIGNAL \reg1|registers~476_combout\ : std_logic;
SIGNAL \reg1|registers~122_q\ : std_logic;
SIGNAL \reg1|registers~106feeder_combout\ : std_logic;
SIGNAL \reg1|registers~106_q\ : std_logic;
SIGNAL \reg1|registers~477_combout\ : std_logic;
SIGNAL \reg1|registers~485_combout\ : std_logic;
SIGNAL \reg1|registers~41feeder_combout\ : std_logic;
SIGNAL \reg1|registers~41_q\ : std_logic;
SIGNAL \reg1|registers~169feeder_combout\ : std_logic;
SIGNAL \reg1|registers~169_q\ : std_logic;
SIGNAL \reg1|registers~446_combout\ : std_logic;
SIGNAL \reg1|registers~233_q\ : std_logic;
SIGNAL \reg1|registers~105_q\ : std_logic;
SIGNAL \reg1|registers~447_combout\ : std_logic;
SIGNAL \reg1|registers~137feeder_combout\ : std_logic;
SIGNAL \reg1|registers~137_q\ : std_logic;
SIGNAL \reg1|registers~9feeder_combout\ : std_logic;
SIGNAL \reg1|registers~9_q\ : std_logic;
SIGNAL \reg1|registers~450_combout\ : std_logic;
SIGNAL \reg1|registers~201feeder_combout\ : std_logic;
SIGNAL \reg1|registers~201_q\ : std_logic;
SIGNAL \reg1|registers~73feeder_combout\ : std_logic;
SIGNAL \reg1|registers~73_q\ : std_logic;
SIGNAL \reg1|registers~451_combout\ : std_logic;
SIGNAL \reg1|registers~217_q\ : std_logic;
SIGNAL \reg1|registers~153_q\ : std_logic;
SIGNAL \reg1|registers~89feeder_combout\ : std_logic;
SIGNAL \reg1|registers~89_q\ : std_logic;
SIGNAL \reg1|registers~25_q\ : std_logic;
SIGNAL \reg1|registers~448_combout\ : std_logic;
SIGNAL \reg1|registers~449_combout\ : std_logic;
SIGNAL \reg1|registers~452_combout\ : std_logic;
SIGNAL \reg1|registers~249_q\ : std_logic;
SIGNAL \reg1|registers~121_q\ : std_logic;
SIGNAL \reg1|registers~57feeder_combout\ : std_logic;
SIGNAL \reg1|registers~57_q\ : std_logic;
SIGNAL \reg1|registers~453_combout\ : std_logic;
SIGNAL \reg1|registers~454_combout\ : std_logic;
SIGNAL \reg1|registers~455_combout\ : std_logic;
SIGNAL \alu1|adder0|adder3|full1|and1~combout\ : std_logic;
SIGNAL \reg1|registers~168_q\ : std_logic;
SIGNAL \reg1|registers~136_q\ : std_logic;
SIGNAL \reg1|registers~152_q\ : std_logic;
SIGNAL \reg1|registers~426_combout\ : std_logic;
SIGNAL \reg1|registers~427_combout\ : std_logic;
SIGNAL \reg1|registers~120_q\ : std_logic;
SIGNAL \reg1|registers~72_q\ : std_logic;
SIGNAL \reg1|registers~104_q\ : std_logic;
SIGNAL \reg1|registers~428_combout\ : std_logic;
SIGNAL \reg1|registers~88feeder_combout\ : std_logic;
SIGNAL \reg1|registers~88_q\ : std_logic;
SIGNAL \reg1|registers~429_combout\ : std_logic;
SIGNAL \reg1|registers~56feeder_combout\ : std_logic;
SIGNAL \reg1|registers~56_q\ : std_logic;
SIGNAL \reg1|registers~40_q\ : std_logic;
SIGNAL \reg1|registers~8feeder_combout\ : std_logic;
SIGNAL \reg1|registers~8_q\ : std_logic;
SIGNAL \reg1|registers~24feeder_combout\ : std_logic;
SIGNAL \reg1|registers~24_q\ : std_logic;
SIGNAL \reg1|registers~430_combout\ : std_logic;
SIGNAL \reg1|registers~431_combout\ : std_logic;
SIGNAL \reg1|registers~432_combout\ : std_logic;
SIGNAL \reg1|registers~248_q\ : std_logic;
SIGNAL \reg1|registers~216feeder_combout\ : std_logic;
SIGNAL \reg1|registers~216_q\ : std_logic;
SIGNAL \reg1|registers~200feeder_combout\ : std_logic;
SIGNAL \reg1|registers~200_q\ : std_logic;
SIGNAL \reg1|registers~232_q\ : std_logic;
SIGNAL \reg1|registers~433_combout\ : std_logic;
SIGNAL \reg1|registers~434_combout\ : std_logic;
SIGNAL \reg1|registers~435_combout\ : std_logic;
SIGNAL \alu1|adder0|adder2|full4|and1~combout\ : std_logic;
SIGNAL \reg1|registers~199_q\ : std_logic;
SIGNAL \reg1|registers~135feeder_combout\ : std_logic;
SIGNAL \reg1|registers~135_q\ : std_logic;
SIGNAL \reg1|registers~7feeder_combout\ : std_logic;
SIGNAL \reg1|registers~7_q\ : std_logic;
SIGNAL \reg1|registers~71feeder_combout\ : std_logic;
SIGNAL \reg1|registers~71_q\ : std_logic;
SIGNAL \reg1|registers~420_combout\ : std_logic;
SIGNAL \reg1|registers~421_combout\ : std_logic;
SIGNAL \reg1|registers~39_q\ : std_logic;
SIGNAL \reg1|registers~103_q\ : std_logic;
SIGNAL \reg1|registers~418_combout\ : std_logic;
SIGNAL \reg1|registers~167_q\ : std_logic;
SIGNAL \reg1|registers~231_q\ : std_logic;
SIGNAL \reg1|registers~419_combout\ : std_logic;
SIGNAL \reg1|registers~422_combout\ : std_logic;
SIGNAL \reg1|registers~87feeder_combout\ : std_logic;
SIGNAL \reg1|registers~87_q\ : std_logic;
SIGNAL \reg1|registers~215_q\ : std_logic;
SIGNAL \reg1|registers~23_q\ : std_logic;
SIGNAL \reg1|registers~151feeder_combout\ : std_logic;
SIGNAL \reg1|registers~151_q\ : std_logic;
SIGNAL \reg1|registers~416_combout\ : std_logic;
SIGNAL \reg1|registers~417_combout\ : std_logic;
SIGNAL \reg1|registers~247_q\ : std_logic;
SIGNAL \reg1|registers~183feeder_combout\ : std_logic;
SIGNAL \reg1|registers~183_q\ : std_logic;
SIGNAL \reg1|registers~423_combout\ : std_logic;
SIGNAL \reg1|registers~119_q\ : std_logic;
SIGNAL \reg1|registers~424_combout\ : std_logic;
SIGNAL \reg1|registers~425_combout\ : std_logic;
SIGNAL \alu1|adder0|adder2|full2|and1~combout\ : std_logic;
SIGNAL \reg1|registers~214feeder_combout\ : std_logic;
SIGNAL \reg1|registers~214_q\ : std_logic;
SIGNAL \reg1|registers~198feeder_combout\ : std_logic;
SIGNAL \reg1|registers~198_q\ : std_logic;
SIGNAL \reg1|registers~393_combout\ : std_logic;
SIGNAL \reg1|registers~230_q\ : std_logic;
SIGNAL \reg1|registers~394_combout\ : std_logic;
SIGNAL \reg1|registers~118feeder_combout\ : std_logic;
SIGNAL \reg1|registers~118_q\ : std_logic;
SIGNAL \reg1|registers~102feeder_combout\ : std_logic;
SIGNAL \reg1|registers~102_q\ : std_logic;
SIGNAL \reg1|registers~70_q\ : std_logic;
SIGNAL \reg1|registers~86feeder_combout\ : std_logic;
SIGNAL \reg1|registers~86_q\ : std_logic;
SIGNAL \reg1|registers~386_combout\ : std_logic;
SIGNAL \reg1|registers~387_combout\ : std_logic;
SIGNAL \reg1|registers~182_q\ : std_logic;
SIGNAL \reg1|registers~150feeder_combout\ : std_logic;
SIGNAL \reg1|registers~150_q\ : std_logic;
SIGNAL \reg1|registers~166feeder_combout\ : std_logic;
SIGNAL \reg1|registers~166_q\ : std_logic;
SIGNAL \reg1|registers~134_q\ : std_logic;
SIGNAL \reg1|registers~388_combout\ : std_logic;
SIGNAL \reg1|registers~389_combout\ : std_logic;
SIGNAL \reg1|registers~54feeder_combout\ : std_logic;
SIGNAL \reg1|registers~54_q\ : std_logic;
SIGNAL \reg1|registers~22_q\ : std_logic;
SIGNAL \reg1|registers~6_q\ : std_logic;
SIGNAL \reg1|registers~38_q\ : std_logic;
SIGNAL \reg1|registers~390_combout\ : std_logic;
SIGNAL \reg1|registers~391_combout\ : std_logic;
SIGNAL \reg1|registers~392_combout\ : std_logic;
SIGNAL \reg1|registers~395_combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full4|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full1|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full4|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full1|or1~0_combout\ : std_logic;
SIGNAL \c7|mux14|out~5_combout\ : std_logic;
SIGNAL \c7|mux14|out~6_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full1|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full1|or1~1_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full2|or1~1_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full3|or1~1_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full3|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full4|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full2|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full1|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full2|xor2~combout\ : std_logic;
SIGNAL \c7|mux14|out~1_combout\ : std_logic;
SIGNAL \c7|mux14|out~4_combout\ : std_logic;
SIGNAL \reg1|registers~237feeder_combout\ : std_logic;
SIGNAL \reg1|registers~237_q\ : std_logic;
SIGNAL \reg1|registers~516_combout\ : std_logic;
SIGNAL \reg1|registers~517_combout\ : std_logic;
SIGNAL \reg1|registers~523_combout\ : std_logic;
SIGNAL \reg1|registers~524_combout\ : std_logic;
SIGNAL \reg1|registers~520_combout\ : std_logic;
SIGNAL \reg1|registers~521_combout\ : std_logic;
SIGNAL \reg1|registers~518_combout\ : std_logic;
SIGNAL \reg1|registers~519_combout\ : std_logic;
SIGNAL \reg1|registers~522_combout\ : std_logic;
SIGNAL \reg1|registers~525_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \alu1|ShiftRight0~4_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~5_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~6_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \c7|mux13|out~5_combout\ : std_logic;
SIGNAL \c7|mux13|out~7_combout\ : std_logic;
SIGNAL \c7|mux13|out~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full1|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full1|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full1|xor2~combout\ : std_logic;
SIGNAL \c7|mux13|out~3_combout\ : std_logic;
SIGNAL \c7|mux13|out~4_combout\ : std_logic;
SIGNAL \c7|mux13|out~6_combout\ : std_logic;
SIGNAL \reg1|registers~188_q\ : std_logic;
SIGNAL \reg1|registers~496_combout\ : std_logic;
SIGNAL \reg1|registers~497_combout\ : std_logic;
SIGNAL \reg1|registers~503_combout\ : std_logic;
SIGNAL \reg1|registers~504_combout\ : std_logic;
SIGNAL \reg1|registers~500_combout\ : std_logic;
SIGNAL \reg1|registers~501_combout\ : std_logic;
SIGNAL \reg1|registers~498_combout\ : std_logic;
SIGNAL \reg1|registers~499_combout\ : std_logic;
SIGNAL \reg1|registers~502_combout\ : std_logic;
SIGNAL \reg1|registers~505_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \alu1|ShiftRight0~37_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~31_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~38_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~39_combout\ : std_logic;
SIGNAL \c7|mux9|out~4_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~1_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~4_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full4|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux12|or1~6_combout\ : std_logic;
SIGNAL \c7|mux12|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~123feeder_combout\ : std_logic;
SIGNAL \reg1|registers~123_q\ : std_logic;
SIGNAL \reg1|registers~473_combout\ : std_logic;
SIGNAL \reg1|registers~474_combout\ : std_logic;
SIGNAL \reg1|registers~468_combout\ : std_logic;
SIGNAL \reg1|registers~469_combout\ : std_logic;
SIGNAL \reg1|registers~470_combout\ : std_logic;
SIGNAL \reg1|registers~471_combout\ : std_logic;
SIGNAL \reg1|registers~472_combout\ : std_logic;
SIGNAL \reg1|registers~466_combout\ : std_logic;
SIGNAL \reg1|registers~467_combout\ : std_logic;
SIGNAL \reg1|registers~475_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~3_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~4_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~1_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~18_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~32_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~33_combout\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux11|or1~5_combout\ : std_logic;
SIGNAL \c7|mux11|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~90_q\ : std_logic;
SIGNAL \reg1|registers~456_combout\ : std_logic;
SIGNAL \reg1|registers~457_combout\ : std_logic;
SIGNAL \reg1|registers~458_combout\ : std_logic;
SIGNAL \reg1|registers~459_combout\ : std_logic;
SIGNAL \reg1|registers~460_combout\ : std_logic;
SIGNAL \reg1|registers~461_combout\ : std_logic;
SIGNAL \reg1|registers~462_combout\ : std_logic;
SIGNAL \reg1|registers~463_combout\ : std_logic;
SIGNAL \reg1|registers~464_combout\ : std_logic;
SIGNAL \reg1|registers~465_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \alu1|ShiftRight0~41_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~19_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~20_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \c7|mux10|out~3_combout\ : std_logic;
SIGNAL \c7|mux10|out~4_combout\ : std_logic;
SIGNAL \c7|mux10|out~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full2|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full1|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full2|xor2~combout\ : std_logic;
SIGNAL \c7|mux10|out~1_combout\ : std_logic;
SIGNAL \c7|mux10|out~2_combout\ : std_logic;
SIGNAL \c7|mux10|out~5_combout\ : std_logic;
SIGNAL \reg1|registers~185feeder_combout\ : std_logic;
SIGNAL \reg1|registers~185_q\ : std_logic;
SIGNAL \reg1|registers~443_combout\ : std_logic;
SIGNAL \reg1|registers~444_combout\ : std_logic;
SIGNAL \reg1|registers~436_combout\ : std_logic;
SIGNAL \reg1|registers~437_combout\ : std_logic;
SIGNAL \reg1|registers~438_combout\ : std_logic;
SIGNAL \reg1|registers~439_combout\ : std_logic;
SIGNAL \reg1|registers~440_combout\ : std_logic;
SIGNAL \reg1|registers~441_combout\ : std_logic;
SIGNAL \reg1|registers~442_combout\ : std_logic;
SIGNAL \reg1|registers~445_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \c7|mux9|out~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder3|full1|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder3|full1|xor2~combout\ : std_logic;
SIGNAL \c7|mux9|out~1_combout\ : std_logic;
SIGNAL \c7|mux9|out~2_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~7_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~8_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~9_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \c7|mux9|out~3_combout\ : std_logic;
SIGNAL \c7|mux9|out~5_combout\ : std_logic;
SIGNAL \c7|mux9|out~6_combout\ : std_logic;
SIGNAL \reg1|registers~184_q\ : std_logic;
SIGNAL \reg1|registers~406_combout\ : std_logic;
SIGNAL \reg1|registers~407_combout\ : std_logic;
SIGNAL \reg1|registers~408_combout\ : std_logic;
SIGNAL \reg1|registers~409_combout\ : std_logic;
SIGNAL \reg1|registers~410_combout\ : std_logic;
SIGNAL \reg1|registers~411_combout\ : std_logic;
SIGNAL \reg1|registers~412_combout\ : std_logic;
SIGNAL \reg1|registers~413_combout\ : std_logic;
SIGNAL \reg1|registers~414_combout\ : std_logic;
SIGNAL \reg1|registers~415_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \c7|mux8|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~55feeder_combout\ : std_logic;
SIGNAL \reg1|registers~55_q\ : std_logic;
SIGNAL \reg1|registers~403_combout\ : std_logic;
SIGNAL \reg1|registers~404_combout\ : std_logic;
SIGNAL \reg1|registers~400_combout\ : std_logic;
SIGNAL \reg1|registers~401_combout\ : std_logic;
SIGNAL \reg1|registers~398_combout\ : std_logic;
SIGNAL \reg1|registers~399_combout\ : std_logic;
SIGNAL \reg1|registers~402_combout\ : std_logic;
SIGNAL \reg1|registers~396_combout\ : std_logic;
SIGNAL \reg1|registers~397_combout\ : std_logic;
SIGNAL \reg1|registers~405_combout\ : std_logic;
SIGNAL \mux2|mux8|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~42_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~35_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~8_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~7_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~4_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full4|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full4|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~6_combout\ : std_logic;
SIGNAL \alu1|mux3|mux8|or1~7_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \c7|mux7|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~246_q\ : std_logic;
SIGNAL \reg1|registers~383_combout\ : std_logic;
SIGNAL \reg1|registers~384_combout\ : std_logic;
SIGNAL \reg1|registers~376_combout\ : std_logic;
SIGNAL \reg1|registers~377_combout\ : std_logic;
SIGNAL \reg1|registers~380_combout\ : std_logic;
SIGNAL \reg1|registers~381_combout\ : std_logic;
SIGNAL \reg1|registers~378_combout\ : std_logic;
SIGNAL \reg1|registers~379_combout\ : std_logic;
SIGNAL \reg1|registers~382_combout\ : std_logic;
SIGNAL \reg1|registers~385_combout\ : std_logic;
SIGNAL \mux2|mux7|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full3|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~1_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~28_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~29_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux7|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \reg1|registers~95_q\ : std_logic;
SIGNAL \reg1|registers~223_q\ : std_logic;
SIGNAL \reg1|registers~159_q\ : std_logic;
SIGNAL \reg1|registers~31_q\ : std_logic;
SIGNAL \reg1|registers~566_combout\ : std_logic;
SIGNAL \reg1|registers~567_combout\ : std_logic;
SIGNAL \reg1|registers~15feeder_combout\ : std_logic;
SIGNAL \reg1|registers~15_q\ : std_logic;
SIGNAL \reg1|registers~79feeder_combout\ : std_logic;
SIGNAL \reg1|registers~79_q\ : std_logic;
SIGNAL \reg1|registers~570_combout\ : std_logic;
SIGNAL \reg1|registers~143_q\ : std_logic;
SIGNAL \reg1|registers~207_q\ : std_logic;
SIGNAL \reg1|registers~571_combout\ : std_logic;
SIGNAL \reg1|registers~47_q\ : std_logic;
SIGNAL \reg1|registers~111_q\ : std_logic;
SIGNAL \reg1|registers~568_combout\ : std_logic;
SIGNAL \reg1|registers~175feeder_combout\ : std_logic;
SIGNAL \reg1|registers~175_q\ : std_logic;
SIGNAL \reg1|registers~239_q\ : std_logic;
SIGNAL \reg1|registers~569_combout\ : std_logic;
SIGNAL \reg1|registers~572_combout\ : std_logic;
SIGNAL \reg1|registers~63_q\ : std_logic;
SIGNAL \reg1|registers~191feeder_combout\ : std_logic;
SIGNAL \reg1|registers~191_q\ : std_logic;
SIGNAL \reg1|registers~573_combout\ : std_logic;
SIGNAL \reg1|registers~127_q\ : std_logic;
SIGNAL \reg1|registers~574_combout\ : std_logic;
SIGNAL \reg1|registers~575_combout\ : std_logic;
SIGNAL \c7|mux16|out~1_combout\ : std_logic;
SIGNAL \c7|mux16|out~2_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \c7|mux16|out~3_combout\ : std_logic;
SIGNAL \c7|mux16|out~4_combout\ : std_logic;
SIGNAL \c7|mux16|out~5_combout\ : std_logic;
SIGNAL \reg1|registers~238_q\ : std_logic;
SIGNAL \reg1|registers~254_q\ : std_logic;
SIGNAL \reg1|registers~222_q\ : std_logic;
SIGNAL \reg1|registers~543_combout\ : std_logic;
SIGNAL \reg1|registers~544_combout\ : std_logic;
SIGNAL \reg1|registers~126_q\ : std_logic;
SIGNAL \reg1|registers~94feeder_combout\ : std_logic;
SIGNAL \reg1|registers~94_q\ : std_logic;
SIGNAL \reg1|registers~78_q\ : std_logic;
SIGNAL \reg1|registers~536_combout\ : std_logic;
SIGNAL \reg1|registers~110_q\ : std_logic;
SIGNAL \reg1|registers~537_combout\ : std_logic;
SIGNAL \reg1|registers~46_q\ : std_logic;
SIGNAL \reg1|registers~14_q\ : std_logic;
SIGNAL \reg1|registers~540_combout\ : std_logic;
SIGNAL \reg1|registers~62_q\ : std_logic;
SIGNAL \reg1|registers~30feeder_combout\ : std_logic;
SIGNAL \reg1|registers~30_q\ : std_logic;
SIGNAL \reg1|registers~541_combout\ : std_logic;
SIGNAL \reg1|registers~174_q\ : std_logic;
SIGNAL \reg1|registers~142_q\ : std_logic;
SIGNAL \reg1|registers~538_combout\ : std_logic;
SIGNAL \reg1|registers~190_q\ : std_logic;
SIGNAL \reg1|registers~158feeder_combout\ : std_logic;
SIGNAL \reg1|registers~158_q\ : std_logic;
SIGNAL \reg1|registers~539_combout\ : std_logic;
SIGNAL \reg1|registers~542_combout\ : std_logic;
SIGNAL \reg1|registers~545_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full4|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full4|xor2~combout\ : std_logic;
SIGNAL \c7|mux16|out~6_combout\ : std_logic;
SIGNAL \alu1|adder0|adder4|full2|and1~combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full2|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full4|xor2~combout\ : std_logic;
SIGNAL \c7|mux16|out~7_combout\ : std_logic;
SIGNAL \c7|mux16|out~8_combout\ : std_logic;
SIGNAL \reg1|registers~255_q\ : std_logic;
SIGNAL \reg1|registers~563_combout\ : std_logic;
SIGNAL \reg1|registers~564_combout\ : std_logic;
SIGNAL \reg1|registers~556_combout\ : std_logic;
SIGNAL \reg1|registers~557_combout\ : std_logic;
SIGNAL \reg1|registers~560_combout\ : std_logic;
SIGNAL \reg1|registers~561_combout\ : std_logic;
SIGNAL \reg1|registers~558_combout\ : std_logic;
SIGNAL \reg1|registers~559_combout\ : std_logic;
SIGNAL \reg1|registers~562_combout\ : std_logic;
SIGNAL \reg1|registers~565_combout\ : std_logic;
SIGNAL \mux2|mux16|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~16_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~17_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~23_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~24_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~25_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~1_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux6|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \c7|mux5|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~4_q\ : std_logic;
SIGNAL \reg1|registers~340_combout\ : std_logic;
SIGNAL \reg1|registers~341_combout\ : std_logic;
SIGNAL \reg1|registers~338_combout\ : std_logic;
SIGNAL \reg1|registers~339_combout\ : std_logic;
SIGNAL \reg1|registers~342_combout\ : std_logic;
SIGNAL \reg1|registers~343_combout\ : std_logic;
SIGNAL \reg1|registers~344_combout\ : std_logic;
SIGNAL \reg1|registers~336_combout\ : std_logic;
SIGNAL \reg1|registers~337_combout\ : std_logic;
SIGNAL \reg1|registers~345_combout\ : std_logic;
SIGNAL \mux2|mux5|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~12_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~14_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~1_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~3_combout\ : std_logic;
SIGNAL \alu1|adder1|adder2|full1|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder2|full1|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux5|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \c7|mux4|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~83feeder_combout\ : std_logic;
SIGNAL \reg1|registers~83_q\ : std_logic;
SIGNAL \reg1|registers~316_combout\ : std_logic;
SIGNAL \reg1|registers~317_combout\ : std_logic;
SIGNAL \reg1|registers~323_combout\ : std_logic;
SIGNAL \reg1|registers~324_combout\ : std_logic;
SIGNAL \reg1|registers~320_combout\ : std_logic;
SIGNAL \reg1|registers~321_combout\ : std_logic;
SIGNAL \reg1|registers~318_combout\ : std_logic;
SIGNAL \reg1|registers~319_combout\ : std_logic;
SIGNAL \reg1|registers~322_combout\ : std_logic;
SIGNAL \reg1|registers~325_combout\ : std_logic;
SIGNAL \mux2|mux4|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~21_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~36_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~40_combout\ : std_logic;
SIGNAL \alu1|mux3|mux4|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux4|or1~2_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full4|xor2~combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full4|xor2~0_combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full4|xor2~combout\ : std_logic;
SIGNAL \alu1|mux3|mux4|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux4|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux4|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \c7|mux6|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~229feeder_combout\ : std_logic;
SIGNAL \reg1|registers~229_q\ : std_logic;
SIGNAL \reg1|registers~346_combout\ : std_logic;
SIGNAL \reg1|registers~347_combout\ : std_logic;
SIGNAL \reg1|registers~353_combout\ : std_logic;
SIGNAL \reg1|registers~354_combout\ : std_logic;
SIGNAL \reg1|registers~350_combout\ : std_logic;
SIGNAL \reg1|registers~351_combout\ : std_logic;
SIGNAL \reg1|registers~348_combout\ : std_logic;
SIGNAL \reg1|registers~349_combout\ : std_logic;
SIGNAL \reg1|registers~352_combout\ : std_logic;
SIGNAL \reg1|registers~355_combout\ : std_logic;
SIGNAL \mux2|mux6|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~13_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~10_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~30_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~34_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~5_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|adder1|adder1|full3|xor2~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux3|or1~7_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \c7|mux3|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~242feeder_combout\ : std_logic;
SIGNAL \reg1|registers~242_q\ : std_logic;
SIGNAL \reg1|registers~303_combout\ : std_logic;
SIGNAL \reg1|registers~304_combout\ : std_logic;
SIGNAL \reg1|registers~296_combout\ : std_logic;
SIGNAL \reg1|registers~297_combout\ : std_logic;
SIGNAL \reg1|registers~300_combout\ : std_logic;
SIGNAL \reg1|registers~301_combout\ : std_logic;
SIGNAL \reg1|registers~298_combout\ : std_logic;
SIGNAL \reg1|registers~299_combout\ : std_logic;
SIGNAL \reg1|registers~302_combout\ : std_logic;
SIGNAL \reg1|registers~305_combout\ : std_logic;
SIGNAL \mux2|mux3|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~22_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~26_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~1_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~3_combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full2|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full2|xor2~0_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~5_combout\ : std_logic;
SIGNAL \alu1|mux3|mux2|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \c7|mux2|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~49feeder_combout\ : std_logic;
SIGNAL \reg1|registers~49_q\ : std_logic;
SIGNAL \reg1|registers~283_combout\ : std_logic;
SIGNAL \reg1|registers~284_combout\ : std_logic;
SIGNAL \reg1|registers~276_combout\ : std_logic;
SIGNAL \reg1|registers~277_combout\ : std_logic;
SIGNAL \reg1|registers~278_combout\ : std_logic;
SIGNAL \reg1|registers~279_combout\ : std_logic;
SIGNAL \reg1|registers~280_combout\ : std_logic;
SIGNAL \reg1|registers~281_combout\ : std_logic;
SIGNAL \reg1|registers~282_combout\ : std_logic;
SIGNAL \reg1|registers~285_combout\ : std_logic;
SIGNAL \mux2|mux2|out~0_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~11_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~15_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~2_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~3_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~4_combout\ : std_logic;
SIGNAL \alu1|mux3|mux1|or1~6_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \c7|mux1|out~0_combout\ : std_logic;
SIGNAL \reg1|registers~176feeder_combout\ : std_logic;
SIGNAL \reg1|registers~176_q\ : std_logic;
SIGNAL \reg1|registers~256_combout\ : std_logic;
SIGNAL \reg1|registers~257_combout\ : std_logic;
SIGNAL \reg1|registers~260_combout\ : std_logic;
SIGNAL \reg1|registers~261_combout\ : std_logic;
SIGNAL \reg1|registers~258_combout\ : std_logic;
SIGNAL \reg1|registers~259_combout\ : std_logic;
SIGNAL \reg1|registers~262_combout\ : std_logic;
SIGNAL \reg1|registers~263_combout\ : std_logic;
SIGNAL \reg1|registers~264_combout\ : std_logic;
SIGNAL \reg1|registers~265_combout\ : std_logic;
SIGNAL \mem1|memdata_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \c7|mux15|out~3_combout\ : std_logic;
SIGNAL \c7|mux15|out~8_combout\ : std_logic;
SIGNAL \c7|mux15|out~1_combout\ : std_logic;
SIGNAL \c7|mux15|out~0_combout\ : std_logic;
SIGNAL \c7|mux15|out~2_combout\ : std_logic;
SIGNAL \alu1|adder1|adder4|full3|or1~0_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \c7|mux15|out~4_combout\ : std_logic;
SIGNAL \c7|mux15|out~5_combout\ : std_logic;
SIGNAL \c7|mux15|out~6_combout\ : std_logic;
SIGNAL \c7|mux15|out~7_combout\ : std_logic;
SIGNAL \c7|mux15|out~9_combout\ : std_logic;
SIGNAL \reg1|registers~206_q\ : std_logic;
SIGNAL \reg1|registers~553_combout\ : std_logic;
SIGNAL \reg1|registers~554_combout\ : std_logic;
SIGNAL \reg1|registers~550_combout\ : std_logic;
SIGNAL \reg1|registers~551_combout\ : std_logic;
SIGNAL \reg1|registers~548_combout\ : std_logic;
SIGNAL \reg1|registers~549_combout\ : std_logic;
SIGNAL \reg1|registers~552_combout\ : std_logic;
SIGNAL \reg1|registers~546_combout\ : std_logic;
SIGNAL \reg1|registers~547_combout\ : std_logic;
SIGNAL \reg1|registers~555_combout\ : std_logic;
SIGNAL \mux2|mux15|out~0_combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full3|xor2~combout\ : std_logic;
SIGNAL \alu1|adder2|adder1|full1|xor1~combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~1_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~2_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~3_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~4_combout\ : std_logic;
SIGNAL \alu1|adder2|adder4|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~5_combout\ : std_logic;
SIGNAL \c11|Decoder0~1_combout\ : std_logic;
SIGNAL \c11|WideOr5~0_combout\ : std_logic;
SIGNAL \c11|WideOr5~1_combout\ : std_logic;
SIGNAL \c11|WideOr5~1clkctrl_outclk\ : std_logic;
SIGNAL \c11|branch_equal~combout\ : std_logic;
SIGNAL \c11|Decoder0~2_combout\ : std_logic;
SIGNAL \c11|branch_not~combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~6_combout\ : std_logic;
SIGNAL \c11|WideOr8~0_combout\ : std_logic;
SIGNAL \c11|WideOr8~1_combout\ : std_logic;
SIGNAL \c11|Selector5~0_combout\ : std_logic;
SIGNAL \c11|Equal5~0_combout\ : std_logic;
SIGNAL \c11|Selector5~1_combout\ : std_logic;
SIGNAL \c11|jump~combout\ : std_logic;
SIGNAL \c11|WideOr0~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~7_combout\ : std_logic;
SIGNAL \pc[0]~input_o\ : std_logic;
SIGNAL \mx1|m2|mux1|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux1|out~1_combout\ : std_logic;
SIGNAL \pc[1]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder1|full2|xor2~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux2|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux2|out~1_combout\ : std_logic;
SIGNAL \add1|adder1|adder1|full2|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder1|full2|or1~0_combout\ : std_logic;
SIGNAL \pc[2]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder1|full3|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~8_combout\ : std_logic;
SIGNAL \mx1|m2|mux3|out~9_combout\ : std_logic;
SIGNAL \add1|adder1|adder1|full3|and1~combout\ : std_logic;
SIGNAL \pc[3]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder1|full3|or1~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder1|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux4|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux4|out~1_combout\ : std_logic;
SIGNAL \add2|adder1|adder1|full4|or1~0_combout\ : std_logic;
SIGNAL \pc[4]~input_o\ : std_logic;
SIGNAL \add1|adder1|adder1|full4|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder2|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux5|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux5|out~1_combout\ : std_logic;
SIGNAL \add1|adder1|adder2|full1|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder2|full1|or1~0_combout\ : std_logic;
SIGNAL \pc[5]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder2|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux6|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux6|out~1_combout\ : std_logic;
SIGNAL \add1|adder1|adder2|full2|and1~combout\ : std_logic;
SIGNAL \pc[6]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder2|full2|or1~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder2|full3|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux7|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux7|out~1_combout\ : std_logic;
SIGNAL \add2|adder1|adder2|full3|or1~0_combout\ : std_logic;
SIGNAL \pc[7]~input_o\ : std_logic;
SIGNAL \add1|adder1|adder2|full3|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder2|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux8|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux8|out~1_combout\ : std_logic;
SIGNAL \add1|adder1|adder2|full4|and1~combout\ : std_logic;
SIGNAL \pc[8]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder2|full4|or1~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder3|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux9|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux9|out~1_combout\ : std_logic;
SIGNAL \pc[9]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder3|full1|or1~0_combout\ : std_logic;
SIGNAL \add1|adder1|adder3|full1|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder3|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux10|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux10|out~1_combout\ : std_logic;
SIGNAL \pc[10]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder3|full2|or1~0_combout\ : std_logic;
SIGNAL \add1|adder1|adder3|full2|and1~combout\ : std_logic;
SIGNAL \mx1|m2|mux11|out~0_combout\ : std_logic;
SIGNAL \mx1|m2|mux11|out~1_combout\ : std_logic;
SIGNAL \add2|adder1|adder3|full3|or1~0_combout\ : std_logic;
SIGNAL \pc[11]~input_o\ : std_logic;
SIGNAL \add1|adder1|adder3|full3|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder3|full4|xor2~combout\ : std_logic;
SIGNAL \add1|adder1|adder3|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux12|out~0_combout\ : std_logic;
SIGNAL \pc[12]~input_o\ : std_logic;
SIGNAL \add1|adder1|adder4|full1|xor2~combout\ : std_logic;
SIGNAL \add2|adder1|adder3|full4|or1~0_combout\ : std_logic;
SIGNAL \add1|adder1|adder3|full4|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux13|out~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full1|or1~0_combout\ : std_logic;
SIGNAL \add1|adder1|adder4|full1|and1~combout\ : std_logic;
SIGNAL \mx1|m2|mux14|out~0_combout\ : std_logic;
SIGNAL \pc[13]~input_o\ : std_logic;
SIGNAL \mx1|m2|mux14|out~1_combout\ : std_logic;
SIGNAL \pc[14]~input_o\ : std_logic;
SIGNAL \add2|adder1|adder4|full2|or1~0_combout\ : std_logic;
SIGNAL \add1|adder1|adder4|full2|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full3|xor2~combout\ : std_logic;
SIGNAL \add1|adder1|adder4|full3|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux15|out~0_combout\ : std_logic;
SIGNAL \pc[15]~input_o\ : std_logic;
SIGNAL \add1|adder1|adder4|full4|xor2~combout\ : std_logic;
SIGNAL \add1|adder1|adder4|full3|and1~combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full3|or1~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m2|mux16|out~0_combout\ : std_logic;
SIGNAL \add2|adder1|adder4|full4|or1~0_combout\ : std_logic;
SIGNAL \pc[16]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder1|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux1|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder1|full1|and1~combout\ : std_logic;
SIGNAL \pc[17]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder1|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux2|out~0_combout\ : std_logic;
SIGNAL \pc[18]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder1|full2|and1~combout\ : std_logic;
SIGNAL \add1|adder2|adder1|full3|xor2~combout\ : std_logic;
SIGNAL \add2|adder2|adder1|full3|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux3|out~0_combout\ : std_logic;
SIGNAL \pc[19]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder1|full4|xor2~combout\ : std_logic;
SIGNAL \add2|adder2|adder1|full3|and1~combout\ : std_logic;
SIGNAL \mx1|m1|mux4|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder1|full4|and1~combout\ : std_logic;
SIGNAL \pc[20]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder2|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux5|out~0_combout\ : std_logic;
SIGNAL \add1|adder2|adder2|full1|and1~combout\ : std_logic;
SIGNAL \pc[21]~input_o\ : std_logic;
SIGNAL \add2|adder2|adder2|full2|xor2~combout\ : std_logic;
SIGNAL \add1|adder2|adder2|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux6|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder2|full2|and1~combout\ : std_logic;
SIGNAL \pc[22]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder2|full3|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux7|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder2|full3|and1~combout\ : std_logic;
SIGNAL \pc[23]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder2|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux8|out~0_combout\ : std_logic;
SIGNAL \pc[24]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder2|full4|and1~combout\ : std_logic;
SIGNAL \add2|adder2|adder3|full1|xor2~combout\ : std_logic;
SIGNAL \add1|adder2|adder3|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux9|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder3|full1|and1~combout\ : std_logic;
SIGNAL \pc[25]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder3|full2|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux10|out~0_combout\ : std_logic;
SIGNAL \pc[26]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder3|full3|xor2~combout\ : std_logic;
SIGNAL \add2|adder2|adder3|full2|and1~combout\ : std_logic;
SIGNAL \mx1|m1|mux11|out~0_combout\ : std_logic;
SIGNAL \pc[27]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder3|full3|and1~combout\ : std_logic;
SIGNAL \add2|adder2|adder3|full4|xor2~combout\ : std_logic;
SIGNAL \add1|adder2|adder3|full4|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux12|out~0_combout\ : std_logic;
SIGNAL \add2|adder2|adder3|full4|and1~combout\ : std_logic;
SIGNAL \pc[28]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder4|full1|xor2~combout\ : std_logic;
SIGNAL \mx1|m1|mux13|out~0_combout\ : std_logic;
SIGNAL \pc[29]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder4|full2|xor2~combout\ : std_logic;
SIGNAL \add2|adder2|adder4|full1|and1~combout\ : std_logic;
SIGNAL \mx1|m1|mux14|out~0_combout\ : std_logic;
SIGNAL \pc[30]~input_o\ : std_logic;
SIGNAL \mx1|m1|mux15|out~0_combout\ : std_logic;
SIGNAL \add1|adder2|adder4|full2|and1~combout\ : std_logic;
SIGNAL \mx1|m1|mux15|out~1_combout\ : std_logic;
SIGNAL \pc[31]~input_o\ : std_logic;
SIGNAL \add1|adder2|adder4|full4|xor2~combout\ : std_logic;
SIGNAL \add2|adder2|adder4|full3|and1~combout\ : std_logic;
SIGNAL \mx1|m1|mux16|out~0_combout\ : std_logic;
SIGNAL \c11|ALUCtr\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_pc <= pc;
ww_instruction <= instruction;
newPc <= ww_newPc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \reg1|registers~565_combout\ & \reg1|registers~555_combout\ & 
\reg1|registers~525_combout\ & \reg1|registers~505_combout\ & \reg1|registers~475_combout\ & \reg1|registers~465_combout\ & \reg1|registers~445_combout\ & \reg1|registers~415_combout\ & \reg1|registers~405_combout\ & \reg1|registers~385_combout\ & 
\reg1|registers~355_combout\ & \reg1|registers~345_combout\ & \reg1|registers~325_combout\ & \reg1|registers~305_combout\ & \reg1|registers~285_combout\ & \reg1|registers~265_combout\);

\mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\alu1|mux3|mux8|or1~7_combout\ & \alu1|mux3|mux7|or1~6_combout\ & \alu1|mux3|mux6|or1~6_combout\ & \alu1|mux3|mux5|or1~6_combout\ & \alu1|mux3|mux4|or1~6_combout\ & 
\alu1|mux3|mux3|or1~7_combout\ & \alu1|mux3|mux2|or1~6_combout\ & \alu1|mux3|mux1|or1~6_combout\);

\mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\alu1|mux3|mux8|or1~7_combout\ & \alu1|mux3|mux7|or1~6_combout\ & \alu1|mux3|mux6|or1~6_combout\ & \alu1|mux3|mux5|or1~6_combout\ & \alu1|mux3|mux4|or1~6_combout\ & 
\alu1|mux3|mux3|or1~7_combout\ & \alu1|mux3|mux2|or1~6_combout\ & \alu1|mux3|mux1|or1~6_combout\);

\mem1|memdata_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mem1|memdata_rtl_0|auto_generated|ram_block1a1\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mem1|memdata_rtl_0|auto_generated|ram_block1a2\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mem1|memdata_rtl_0|auto_generated|ram_block1a3\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mem1|memdata_rtl_0|auto_generated|ram_block1a4\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mem1|memdata_rtl_0|auto_generated|ram_block1a5\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mem1|memdata_rtl_0|auto_generated|ram_block1a6\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mem1|memdata_rtl_0|auto_generated|ram_block1a7\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mem1|memdata_rtl_0|auto_generated|ram_block1a8\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mem1|memdata_rtl_0|auto_generated|ram_block1a9\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mem1|memdata_rtl_0|auto_generated|ram_block1a10\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mem1|memdata_rtl_0|auto_generated|ram_block1a11\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mem1|memdata_rtl_0|auto_generated|ram_block1a12\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mem1|memdata_rtl_0|auto_generated|ram_block1a13\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mem1|memdata_rtl_0|auto_generated|ram_block1a14\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mem1|memdata_rtl_0|auto_generated|ram_block1a15\ <= \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\c11|ALUCtr[1]~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \c11|ALUCtr[1]~11_combout\);

\c11|WideOr5~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \c11|WideOr5~1_combout\);

-- Location: IOOBUF_X52_Y23_N9
\newPc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux1|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[0]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\newPc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux2|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[1]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\newPc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux3|out~9_combout\,
	devoe => ww_devoe,
	o => \newPc[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\newPc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux4|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[3]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\newPc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux5|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[4]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\newPc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux6|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[5]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\newPc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux7|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[6]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\newPc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux8|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\newPc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux9|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[8]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\newPc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux10|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[9]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\newPc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux11|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[10]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\newPc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux12|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\newPc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux13|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[12]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\newPc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux14|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[13]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\newPc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux15|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[14]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\newPc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m2|mux16|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[15]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\newPc[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux1|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\newPc[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux2|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[17]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\newPc[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux3|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[18]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\newPc[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux4|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[19]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\newPc[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux5|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[20]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\newPc[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux6|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[21]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\newPc[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux7|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\newPc[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux8|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[23]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\newPc[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux9|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[24]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\newPc[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux10|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[25]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\newPc[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux11|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[26]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\newPc[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux12|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[27]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\newPc[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux13|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[28]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\newPc[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux14|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[29]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\newPc[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux15|out~1_combout\,
	devoe => ww_devoe,
	o => \newPc[30]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\newPc[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx1|m1|mux16|out~0_combout\,
	devoe => ww_devoe,
	o => \newPc[31]~output_o\);

-- Location: IOIBUF_X31_Y41_N15
\instruction[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(16),
	o => \instruction[16]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\instruction[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(19),
	o => \instruction[19]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\instruction[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(18),
	o => \instruction[18]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y28_N8
\instruction[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(29),
	o => \instruction[29]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\instruction[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(30),
	o => \instruction[30]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\instruction[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(28),
	o => \instruction[28]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\instruction[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(27),
	o => \instruction[27]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\instruction[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(31),
	o => \instruction[31]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\instruction[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(26),
	o => \instruction[26]~input_o\);

-- Location: LCCOMB_X51_Y28_N10
\c11|MemRd~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|MemRd~0_combout\ = (!\instruction[28]~input_o\ & (\instruction[27]~input_o\ & (\instruction[31]~input_o\ & \instruction[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datab => \instruction[27]~input_o\,
	datac => \instruction[31]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|MemRd~0_combout\);

-- Location: LCCOMB_X36_Y33_N24
\c11|Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~4_combout\ = (!\instruction[30]~input_o\ & (\instruction[29]~input_o\ & \c11|MemRd~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[30]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \c11|MemRd~0_combout\,
	combout => \c11|Decoder0~4_combout\);

-- Location: LCCOMB_X38_Y33_N30
\c11|MemRd~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|MemRd~1_combout\ = (\c11|MemRd~0_combout\ & !\instruction[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|MemRd~0_combout\,
	datad => \instruction[30]~input_o\,
	combout => \c11|MemRd~1_combout\);

-- Location: IOIBUF_X41_Y41_N22
\instruction[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(21),
	o => \instruction[21]~input_o\);

-- Location: LCCOMB_X36_Y33_N20
\c11|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~3_combout\ = (!\instruction[30]~input_o\ & (!\instruction[29]~input_o\ & \c11|MemRd~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[30]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \c11|MemRd~0_combout\,
	combout => \c11|Decoder0~3_combout\);

-- Location: IOIBUF_X27_Y0_N8
\instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X43_Y28_N20
\c11|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr2~0_combout\ = (\instruction[28]~input_o\ & (\instruction[27]~input_o\)) # (!\instruction[28]~input_o\ & (!\instruction[27]~input_o\ & \instruction[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datac => \instruction[27]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|WideOr2~0_combout\);

-- Location: LCCOMB_X43_Y28_N10
\c11|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr2~1_combout\ = (\instruction[30]~input_o\) # ((\instruction[29]~input_o\) # ((\instruction[31]~input_o\) # (\c11|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \instruction[29]~input_o\,
	datac => \instruction[31]~input_o\,
	datad => \c11|WideOr2~0_combout\,
	combout => \c11|WideOr2~1_combout\);

-- Location: LCCOMB_X37_Y28_N30
\mux2|mux1|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux1|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[2]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datac => \reg1|registers~265_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux1|out~0_combout\);

-- Location: IOIBUF_X41_Y41_N8
\instruction[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\instruction[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: LCCOMB_X41_Y30_N12
\c11|comb~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|comb~9_combout\ = (\instruction[4]~input_o\) # ((\instruction[9]~input_o\ & ((\instruction[7]~input_o\) # (\instruction[8]~input_o\))) # (!\instruction[9]~input_o\ & (!\instruction[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[8]~input_o\,
	combout => \c11|comb~9_combout\);

-- Location: IOIBUF_X38_Y0_N8
\instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: LCCOMB_X41_Y30_N22
\c11|comb~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|comb~10_combout\ = (\c11|comb~9_combout\) # ((\instruction[9]~input_o\ & (\instruction[5]~input_o\ & \instruction[6]~input_o\)) # (!\instruction[9]~input_o\ & ((\instruction[5]~input_o\) # (\instruction[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \c11|comb~9_combout\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[6]~input_o\,
	combout => \c11|comb~10_combout\);

-- Location: LCCOMB_X41_Y30_N16
\c11|ALUCtr[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr[2]~9_combout\ = (\instruction[9]~input_o\ & ((!\instruction[5]~input_o\) # (!\instruction[7]~input_o\))) # (!\instruction[9]~input_o\ & (\instruction[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[5]~input_o\,
	combout => \c11|ALUCtr[2]~9_combout\);

-- Location: LCCOMB_X41_Y33_N16
\c11|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Equal0~0_combout\ = (!\instruction[8]~input_o\ & (!\instruction[6]~input_o\ & !\instruction[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datac => \instruction[6]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \c11|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y30_N26
\c11|ALUCtr[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr[2]~10_combout\ = ((!\c11|ALUCtr[2]~9_combout\ & \c11|Equal0~0_combout\)) # (!\c11|comb~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|ALUCtr[2]~9_combout\,
	datac => \c11|comb~10_combout\,
	datad => \c11|Equal0~0_combout\,
	combout => \c11|ALUCtr[2]~10_combout\);

-- Location: LCCOMB_X48_Y30_N24
\c11|Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~5_combout\ = (!\instruction[28]~input_o\ & (!\instruction[29]~input_o\ & !\instruction[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|Decoder0~5_combout\);

-- Location: LCCOMB_X43_Y31_N16
\c11|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~0_combout\ = (!\instruction[30]~input_o\ & (!\instruction[31]~input_o\ & !\instruction[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datac => \instruction[31]~input_o\,
	datad => \instruction[27]~input_o\,
	combout => \c11|Decoder0~0_combout\);

-- Location: LCCOMB_X41_Y31_N2
\c11|comb~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|comb~8_combout\ = (((!\c11|Decoder0~0_combout\) # (!\c11|Decoder0~5_combout\)) # (!\c11|ALUCtr[2]~10_combout\)) # (!\c11|comb~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|comb~10_combout\,
	datab => \c11|ALUCtr[2]~10_combout\,
	datac => \c11|Decoder0~5_combout\,
	datad => \c11|Decoder0~0_combout\,
	combout => \c11|comb~8_combout\);

-- Location: LCCOMB_X41_Y31_N8
\c11|comb~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|comb~7_combout\ = (\c11|Decoder0~5_combout\ & (\c11|Decoder0~0_combout\ & ((\c11|comb~10_combout\) # (!\c11|ALUCtr[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|comb~10_combout\,
	datab => \c11|ALUCtr[2]~10_combout\,
	datac => \c11|Decoder0~5_combout\,
	datad => \c11|Decoder0~0_combout\,
	combout => \c11|comb~7_combout\);

-- Location: LCCOMB_X41_Y31_N28
\c11|ALUCtr[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr\(1) = (\c11|comb~7_combout\ & ((\c11|ALUCtr\(1)) # (!\c11|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|comb~8_combout\,
	datac => \c11|comb~7_combout\,
	datad => \c11|ALUCtr\(1),
	combout => \c11|ALUCtr\(1));

-- Location: LCCOMB_X48_Y30_N30
\c11|ALUCtr[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr[1]~11_combout\ = ((\c11|ALUCtr[2]~10_combout\) # (!\c11|Decoder0~5_combout\)) # (!\c11|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Decoder0~0_combout\,
	datac => \c11|ALUCtr[2]~10_combout\,
	datad => \c11|Decoder0~5_combout\,
	combout => \c11|ALUCtr[1]~11_combout\);

-- Location: CLKCTRL_G5
\c11|ALUCtr[1]~11clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \c11|ALUCtr[1]~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c11|ALUCtr[1]~11clkctrl_outclk\);

-- Location: LCCOMB_X41_Y30_N14
\c11|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector8~0_combout\ = (\instruction[29]~input_o\ & \instruction[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[29]~input_o\,
	datad => \instruction[28]~input_o\,
	combout => \c11|Selector8~0_combout\);

-- Location: LCCOMB_X41_Y30_N2
\c11|ALUCtr[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr[2]~4_combout\ = (\instruction[9]~input_o\ & (\instruction[7]~input_o\)) # (!\instruction[9]~input_o\ & ((\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[5]~input_o\,
	combout => \c11|ALUCtr[2]~4_combout\);

-- Location: LCCOMB_X41_Y30_N0
\c11|ALUCtr[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr[2]~12_combout\ = (\instruction[6]~input_o\) # ((\instruction[8]~input_o\) # ((\instruction[4]~input_o\) # (\c11|ALUCtr[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[8]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \c11|ALUCtr[2]~4_combout\,
	combout => \c11|ALUCtr[2]~12_combout\);

-- Location: LCCOMB_X42_Y30_N18
\c11|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector8~1_combout\ = (\c11|Decoder0~0_combout\ & ((\c11|Selector8~0_combout\) # ((\c11|ALUCtr[2]~12_combout\ & \c11|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Selector8~0_combout\,
	datab => \c11|Decoder0~0_combout\,
	datac => \c11|ALUCtr[2]~12_combout\,
	datad => \c11|Decoder0~5_combout\,
	combout => \c11|Selector8~1_combout\);

-- Location: LCCOMB_X34_Y30_N30
\c11|ALUCtr[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr\(2) = (GLOBAL(\c11|ALUCtr[1]~11clkctrl_outclk\) & ((\c11|Selector8~1_combout\))) # (!GLOBAL(\c11|ALUCtr[1]~11clkctrl_outclk\) & (\c11|ALUCtr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datac => \c11|ALUCtr[1]~11clkctrl_outclk\,
	datad => \c11|Selector8~1_combout\,
	combout => \c11|ALUCtr\(2));

-- Location: LCCOMB_X43_Y28_N16
\c11|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr1~0_combout\ = (\instruction[30]~input_o\ & (((!\instruction[29]~input_o\)))) # (!\instruction[30]~input_o\ & (\instruction[31]~input_o\ & ((\instruction[26]~input_o\) # (!\instruction[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \instruction[31]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|WideOr1~0_combout\);

-- Location: LCCOMB_X43_Y28_N22
\c11|WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr1~1_combout\ = (\instruction[28]~input_o\ & ((\instruction[27]~input_o\) # ((\instruction[29]~input_o\) # (\c11|WideOr1~0_combout\)))) # (!\instruction[28]~input_o\ & ((\instruction[29]~input_o\ $ (\c11|WideOr1~0_combout\)) # 
-- (!\instruction[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datab => \instruction[27]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \c11|WideOr1~0_combout\,
	combout => \c11|WideOr1~1_combout\);

-- Location: IOIBUF_X38_Y41_N8
\instruction[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(20),
	o => \instruction[20]~input_o\);

-- Location: LCCOMB_X43_Y28_N24
\c11|RegDst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|RegDst~0_combout\ = (\instruction[28]~input_o\) # ((\instruction[26]~input_o\) # (\instruction[29]~input_o\ $ (\instruction[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datab => \instruction[29]~input_o\,
	datac => \instruction[27]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|RegDst~0_combout\);

-- Location: LCCOMB_X43_Y28_N26
\c11|RegDst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|RegDst~1_combout\ = (\instruction[30]~input_o\) # ((\instruction[31]~input_o\) # (\c11|RegDst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datac => \instruction[31]~input_o\,
	datad => \c11|RegDst~0_combout\,
	combout => \c11|RegDst~1_combout\);

-- Location: LCCOMB_X32_Y28_N22
\mux1|mux3|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux3|out~0_combout\ = (\c11|RegDst~1_combout\ & ((\instruction[20]~input_o\))) # (!\c11|RegDst~1_combout\ & (\instruction[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[16]~input_o\,
	datac => \instruction[20]~input_o\,
	datad => \c11|RegDst~1_combout\,
	combout => \mux1|mux3|out~0_combout\);

-- Location: IOIBUF_X52_Y18_N8
\instruction[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: LCCOMB_X32_Y28_N10
\mux1|mux1|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux1|out~0_combout\ = (\c11|RegDst~1_combout\ & (\instruction[18]~input_o\)) # (!\c11|RegDst~1_combout\ & ((\instruction[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[14]~input_o\,
	datad => \c11|RegDst~1_combout\,
	combout => \mux1|mux1|out~0_combout\);

-- Location: IOIBUF_X52_Y23_N1
\instruction[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(17),
	o => \instruction[17]~input_o\);

-- Location: LCCOMB_X39_Y28_N30
\mux1|mux4|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux4|out~0_combout\ = (\c11|RegDst~1_combout\ & (\instruction[21]~input_o\)) # (!\c11|RegDst~1_combout\ & ((\instruction[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[17]~input_o\,
	datad => \c11|RegDst~1_combout\,
	combout => \mux1|mux4|out~0_combout\);

-- Location: IOIBUF_X34_Y41_N8
\instruction[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: LCCOMB_X32_Y28_N0
\mux1|mux2|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux2|out~0_combout\ = (\c11|RegDst~1_combout\ & ((\instruction[19]~input_o\))) # (!\c11|RegDst~1_combout\ & (\instruction[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[15]~input_o\,
	datac => \instruction[19]~input_o\,
	datad => \c11|RegDst~1_combout\,
	combout => \mux1|mux2|out~0_combout\);

-- Location: LCCOMB_X39_Y27_N24
\reg1|registers~606\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~606_combout\ = (\mux1|mux3|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (\mux1|mux4|out~0_combout\ & \mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~606_combout\);

-- Location: LCCOMB_X35_Y27_N2
\reg1|registers~607\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~607_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~606_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~606_combout\,
	combout => \reg1|registers~607_combout\);

-- Location: FF_X35_Y28_N15
\reg1|registers~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux1|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~240_q\);

-- Location: LCCOMB_X32_Y28_N4
\reg1|registers~600\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~600_combout\ = (\mux1|mux1|out~0_combout\ & (!\mux1|mux2|out~0_combout\ & (\mux1|mux4|out~0_combout\ & \mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux1|out~0_combout\,
	datab => \mux1|mux2|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~600_combout\);

-- Location: LCCOMB_X35_Y30_N14
\reg1|registers~601\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~601_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~600_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~600_combout\,
	combout => \reg1|registers~601_combout\);

-- Location: FF_X34_Y28_N25
\reg1|registers~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~208_q\);

-- Location: IOIBUF_X52_Y32_N8
\instruction[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(22),
	o => \instruction[22]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\instruction[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(23),
	o => \instruction[23]~input_o\);

-- Location: LCCOMB_X36_Y32_N2
\reg1|registers~224feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~224feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~224feeder_combout\);

-- Location: LCCOMB_X39_Y27_N28
\reg1|registers~602\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~602_combout\ = (\mux1|mux3|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (\mux1|mux4|out~0_combout\ & \mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~602_combout\);

-- Location: LCCOMB_X39_Y27_N10
\reg1|registers~603\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~603_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~602_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~602_combout\,
	combout => \reg1|registers~603_combout\);

-- Location: FF_X36_Y32_N3
\reg1|registers~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~224feeder_combout\,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~224_q\);

-- Location: LCCOMB_X39_Y27_N20
\reg1|registers~604\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~604_combout\ = (\mux1|mux3|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (\mux1|mux4|out~0_combout\ & !\mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~604_combout\);

-- Location: LCCOMB_X39_Y27_N18
\reg1|registers~605\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~605_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~604_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~604_combout\,
	combout => \reg1|registers~605_combout\);

-- Location: FF_X34_Y28_N11
\reg1|registers~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~192_q\);

-- Location: LCCOMB_X36_Y32_N14
\reg1|registers~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~273_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~224_q\) # ((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & (((!\instruction[22]~input_o\ & \reg1|registers~192_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~224_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~192_q\,
	combout => \reg1|registers~273_combout\);

-- Location: LCCOMB_X37_Y31_N22
\reg1|registers~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~274_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~273_combout\ & (\reg1|registers~240_q\)) # (!\reg1|registers~273_combout\ & ((\reg1|registers~208_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~240_q\,
	datab => \reg1|registers~208_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~273_combout\,
	combout => \reg1|registers~274_combout\);

-- Location: IOIBUF_X52_Y32_N22
\instruction[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(25),
	o => \instruction[25]~input_o\);

-- Location: LCCOMB_X39_Y32_N0
\reg1|registers~576\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~576_combout\ = (\mux1|mux4|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (\mux1|mux2|out~0_combout\ & !\mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~576_combout\);

-- Location: LCCOMB_X39_Y32_N10
\reg1|registers~577\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~577_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~576_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~576_combout\,
	combout => \reg1|registers~577_combout\);

-- Location: FF_X37_Y28_N25
\reg1|registers~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~160_q\);

-- Location: LCCOMB_X39_Y27_N26
\reg1|registers~578\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~578_combout\ = (!\mux1|mux3|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (\mux1|mux4|out~0_combout\ & !\mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~578_combout\);

-- Location: LCCOMB_X39_Y27_N0
\reg1|registers~579\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~579_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~578_combout\,
	combout => \reg1|registers~579_combout\);

-- Location: FF_X35_Y28_N5
\reg1|registers~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~144_q\);

-- Location: LCCOMB_X38_Y28_N24
\reg1|registers~128feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~128feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~128feeder_combout\);

-- Location: LCCOMB_X32_Y28_N16
\reg1|registers~580\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~580_combout\ = (!\mux1|mux1|out~0_combout\ & (!\mux1|mux2|out~0_combout\ & (\mux1|mux4|out~0_combout\ & !\mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux1|out~0_combout\,
	datab => \mux1|mux2|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~580_combout\);

-- Location: LCCOMB_X37_Y32_N0
\reg1|registers~581\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~581_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~580_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~580_combout\,
	combout => \reg1|registers~581_combout\);

-- Location: FF_X38_Y28_N25
\reg1|registers~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~128feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~128_q\);

-- Location: LCCOMB_X35_Y28_N4
\reg1|registers~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~266_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & (\reg1|registers~144_q\)) # (!\instruction[22]~input_o\ & ((\reg1|registers~128_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~144_q\,
	datad => \reg1|registers~128_q\,
	combout => \reg1|registers~266_combout\);

-- Location: LCCOMB_X36_Y27_N10
\reg1|registers~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~267_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~266_combout\ & ((\reg1|registers~176_q\))) # (!\reg1|registers~266_combout\ & (\reg1|registers~160_q\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~160_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~266_combout\,
	datad => \reg1|registers~176_q\,
	combout => \reg1|registers~267_combout\);

-- Location: IOIBUF_X36_Y41_N1
\instruction[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(24),
	o => \instruction[24]~input_o\);

-- Location: LCCOMB_X37_Y31_N6
\reg1|registers~32feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~32feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~32feeder_combout\);

-- Location: LCCOMB_X39_Y32_N20
\reg1|registers~592\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~592_combout\ = (!\mux1|mux4|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (\mux1|mux2|out~0_combout\ & !\mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~592_combout\);

-- Location: LCCOMB_X39_Y32_N6
\reg1|registers~593\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~593_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~592_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~592_combout\,
	combout => \reg1|registers~593_combout\);

-- Location: FF_X37_Y31_N7
\reg1|registers~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~32feeder_combout\,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~32_q\);

-- Location: LCCOMB_X38_Y28_N12
\reg1|registers~48feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~48feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~48feeder_combout\);

-- Location: LCCOMB_X39_Y27_N8
\reg1|registers~598\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~598_combout\ = (!\mux1|mux3|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (!\mux1|mux4|out~0_combout\ & \mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~598_combout\);

-- Location: LCCOMB_X39_Y27_N30
\reg1|registers~599\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~599_combout\ = (\reg1|registers~598_combout\ & \c11|WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|registers~598_combout\,
	datac => \c11|WideOr1~1_combout\,
	combout => \reg1|registers~599_combout\);

-- Location: FF_X38_Y28_N13
\reg1|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~48feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~48_q\);

-- Location: LCCOMB_X38_Y30_N14
\reg1|registers~0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~0feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~0feeder_combout\);

-- Location: LCCOMB_X39_Y32_N16
\reg1|registers~596\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~596_combout\ = (!\mux1|mux4|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (!\mux1|mux2|out~0_combout\ & !\mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~596_combout\);

-- Location: LCCOMB_X39_Y32_N30
\reg1|registers~597\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~597_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~596_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~596_combout\,
	combout => \reg1|registers~597_combout\);

-- Location: FF_X38_Y30_N15
\reg1|registers~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~0feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~0_q\);

-- Location: LCCOMB_X39_Y27_N4
\reg1|registers~594\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~594_combout\ = (!\mux1|mux3|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (!\mux1|mux4|out~0_combout\ & !\mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~594_combout\);

-- Location: LCCOMB_X39_Y27_N22
\reg1|registers~595\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~595_combout\ = (\reg1|registers~594_combout\ & \c11|WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|registers~594_combout\,
	datac => \c11|WideOr1~1_combout\,
	combout => \reg1|registers~595_combout\);

-- Location: FF_X38_Y30_N13
\reg1|registers~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~16_q\);

-- Location: LCCOMB_X38_Y30_N18
\reg1|registers~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~270_combout\ = (\instruction[22]~input_o\ & ((\instruction[23]~input_o\) # ((\reg1|registers~16_q\)))) # (!\instruction[22]~input_o\ & (!\instruction[23]~input_o\ & (\reg1|registers~0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~0_q\,
	datad => \reg1|registers~16_q\,
	combout => \reg1|registers~270_combout\);

-- Location: LCCOMB_X37_Y31_N14
\reg1|registers~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~271_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~270_combout\ & ((\reg1|registers~48_q\))) # (!\reg1|registers~270_combout\ & (\reg1|registers~32_q\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~32_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~48_q\,
	datad => \reg1|registers~270_combout\,
	combout => \reg1|registers~271_combout\);

-- Location: LCCOMB_X39_Y27_N14
\reg1|registers~590\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~590_combout\ = (\mux1|mux3|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (!\mux1|mux4|out~0_combout\ & \mux1|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux3|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux2|out~0_combout\,
	combout => \reg1|registers~590_combout\);

-- Location: LCCOMB_X34_Y27_N8
\reg1|registers~591\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~591_combout\ = (\reg1|registers~590_combout\ & \c11|WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|registers~590_combout\,
	datad => \c11|WideOr1~1_combout\,
	combout => \reg1|registers~591_combout\);

-- Location: FF_X39_Y28_N5
\reg1|registers~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux1|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~112_q\);

-- Location: LCCOMB_X37_Y31_N8
\reg1|registers~80feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~80feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~80feeder_combout\);

-- Location: LCCOMB_X39_Y32_N2
\reg1|registers~584\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~584_combout\ = (!\mux1|mux4|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (!\mux1|mux2|out~0_combout\ & \mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~584_combout\);

-- Location: LCCOMB_X39_Y32_N28
\reg1|registers~585\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~585_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~584_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~584_combout\,
	combout => \reg1|registers~585_combout\);

-- Location: FF_X37_Y31_N9
\reg1|registers~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~80feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~80_q\);

-- Location: LCCOMB_X36_Y32_N28
\reg1|registers~96feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~96feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~96feeder_combout\);

-- Location: LCCOMB_X39_Y32_N18
\reg1|registers~586\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~586_combout\ = (!\mux1|mux4|out~0_combout\ & (!\mux1|mux1|out~0_combout\ & (\mux1|mux2|out~0_combout\ & \mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~586_combout\);

-- Location: LCCOMB_X38_Y31_N22
\reg1|registers~587\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~587_combout\ = (\reg1|registers~586_combout\ & \c11|WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|registers~586_combout\,
	datad => \c11|WideOr1~1_combout\,
	combout => \reg1|registers~587_combout\);

-- Location: FF_X36_Y32_N29
\reg1|registers~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~96feeder_combout\,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~96_q\);

-- Location: LCCOMB_X39_Y28_N12
\reg1|registers~64feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~64feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~64feeder_combout\);

-- Location: LCCOMB_X32_Y28_N26
\reg1|registers~588\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~588_combout\ = (!\mux1|mux1|out~0_combout\ & (!\mux1|mux2|out~0_combout\ & (!\mux1|mux4|out~0_combout\ & \mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux1|out~0_combout\,
	datab => \mux1|mux2|out~0_combout\,
	datac => \mux1|mux4|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~588_combout\);

-- Location: LCCOMB_X39_Y28_N4
\reg1|registers~589\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~589_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~588_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~588_combout\,
	combout => \reg1|registers~589_combout\);

-- Location: FF_X39_Y28_N13
\reg1|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~64feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~64_q\);

-- Location: LCCOMB_X36_Y32_N20
\reg1|registers~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~268_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~96_q\) # ((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & (((!\instruction[22]~input_o\ & \reg1|registers~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~96_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~64_q\,
	combout => \reg1|registers~268_combout\);

-- Location: LCCOMB_X37_Y31_N12
\reg1|registers~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~269_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~268_combout\ & (\reg1|registers~112_q\)) # (!\reg1|registers~268_combout\ & ((\reg1|registers~80_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~112_q\,
	datab => \reg1|registers~80_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~268_combout\,
	combout => \reg1|registers~269_combout\);

-- Location: LCCOMB_X37_Y31_N16
\reg1|registers~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~272_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~269_combout\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & (\reg1|registers~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~271_combout\,
	datad => \reg1|registers~269_combout\,
	combout => \reg1|registers~272_combout\);

-- Location: LCCOMB_X37_Y31_N4
\reg1|registers~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~275_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~272_combout\ & (\reg1|registers~274_combout\)) # (!\reg1|registers~272_combout\ & ((\reg1|registers~267_combout\))))) # (!\instruction[25]~input_o\ & 
-- (((\reg1|registers~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~274_combout\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~267_combout\,
	datad => \reg1|registers~272_combout\,
	combout => \reg1|registers~275_combout\);

-- Location: LCCOMB_X34_Y29_N24
\alu1|mux3|mux1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~0_combout\ = (!\c11|ALUCtr\(1) & ((\mux2|mux1|out~0_combout\ & (\c11|ALUCtr\(2) $ (!\reg1|registers~275_combout\))) # (!\mux2|mux1|out~0_combout\ & (!\c11|ALUCtr\(2) & \reg1|registers~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux1|out~0_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \c11|ALUCtr\(2),
	datad => \reg1|registers~275_combout\,
	combout => \alu1|mux3|mux1|or1~0_combout\);

-- Location: LCCOMB_X41_Y30_N18
\c11|Selector6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector6~6_combout\ = (\instruction[7]~input_o\ & ((\instruction[6]~input_o\) # (\instruction[9]~input_o\ $ (\instruction[5]~input_o\)))) # (!\instruction[7]~input_o\ & (((\instruction[5]~input_o\)) # (!\instruction[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[6]~input_o\,
	combout => \c11|Selector6~6_combout\);

-- Location: LCCOMB_X41_Y30_N10
\c11|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector6~3_combout\ = (\instruction[8]~input_o\) # ((\instruction[4]~input_o\) # (\c11|Selector6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[8]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \c11|Selector6~6_combout\,
	combout => \c11|Selector6~3_combout\);

-- Location: LCCOMB_X41_Y30_N4
\c11|Selector6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector6~14_combout\ = (\c11|Selector6~3_combout\ & (!\instruction[28]~input_o\ & (!\instruction[29]~input_o\ & !\instruction[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Selector6~3_combout\,
	datab => \instruction[28]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|Selector6~14_combout\);

-- Location: LCCOMB_X41_Y30_N28
\c11|Selector6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector6~13_combout\ = (\c11|Decoder0~0_combout\ & ((\c11|Selector6~14_combout\) # ((\instruction[26]~input_o\ & \c11|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Selector6~14_combout\,
	datab => \instruction[26]~input_o\,
	datac => \c11|Decoder0~0_combout\,
	datad => \c11|Selector8~0_combout\,
	combout => \c11|Selector6~13_combout\);

-- Location: LCCOMB_X36_Y30_N2
\c11|ALUCtr[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|ALUCtr\(0) = (GLOBAL(\c11|ALUCtr[1]~11clkctrl_outclk\) & (\c11|Selector6~13_combout\)) # (!GLOBAL(\c11|ALUCtr[1]~11clkctrl_outclk\) & ((\c11|ALUCtr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr[1]~11clkctrl_outclk\,
	datab => \c11|Selector6~13_combout\,
	datad => \c11|ALUCtr\(0),
	combout => \c11|ALUCtr\(0));

-- Location: LCCOMB_X36_Y30_N28
\alu1|mux3|mux1|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~5_combout\ = (\c11|ALUCtr\(1) & (\c11|ALUCtr\(2) & !\c11|ALUCtr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux1|or1~5_combout\);

-- Location: IOIBUF_X52_Y19_N1
\instruction[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\instruction[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\instruction[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: LCCOMB_X31_Y30_N2
\alu1|ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~0_combout\ = (!\instruction[11]~input_o\ & !\instruction[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[11]~input_o\,
	datad => \instruction[10]~input_o\,
	combout => \alu1|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X34_Y29_N30
\alu1|mux3|mux1|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~1_combout\ = (\c11|ALUCtr\(0) & ((\c11|ALUCtr\(2)) # ((!\instruction[12]~input_o\ & \alu1|ShiftLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \alu1|ShiftLeft0~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux1|or1~1_combout\);

-- Location: IOIBUF_X52_Y30_N1
\instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: LCCOMB_X38_Y27_N4
\alu1|ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~2_combout\ = (\instruction[11]~input_o\) # (\instruction[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \alu1|ShiftLeft0~2_combout\);

-- Location: IOIBUF_X34_Y0_N1
\instruction[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: LCCOMB_X35_Y29_N22
\alu1|mux3|mux2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~0_combout\ = (!\alu1|ShiftLeft0~2_combout\ & (\c11|ALUCtr\(1) & (!\c11|ALUCtr\(2) & !\instruction[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \c11|ALUCtr\(2),
	datad => \instruction[13]~input_o\,
	combout => \alu1|mux3|mux2|or1~0_combout\);

-- Location: LCCOMB_X34_Y29_N14
\alu1|ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~3_combout\ = (\instruction[10]~input_o\ & (\mux2|mux1|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux1|out~0_combout\,
	datad => \mux2|mux2|out~0_combout\,
	combout => \alu1|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X34_Y26_N16
\reg1|registers~113feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~113feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~113feeder_combout\);

-- Location: FF_X34_Y26_N17
\reg1|registers~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~113feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~113_q\);

-- Location: LCCOMB_X34_Y26_N6
\reg1|registers~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~293_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~113_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & (\reg1|registers~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~49_q\,
	datad => \reg1|registers~113_q\,
	combout => \reg1|registers~293_combout\);

-- Location: FF_X35_Y29_N21
\reg1|registers~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~241_q\);

-- Location: LCCOMB_X36_Y26_N20
\reg1|registers~177feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~177feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~177feeder_combout\);

-- Location: LCCOMB_X39_Y32_N4
\reg1|registers~582\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~582_combout\ = (\mux1|mux4|out~0_combout\ & (\mux1|mux1|out~0_combout\ & (\mux1|mux2|out~0_combout\ & !\mux1|mux3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux4|out~0_combout\,
	datab => \mux1|mux1|out~0_combout\,
	datac => \mux1|mux2|out~0_combout\,
	datad => \mux1|mux3|out~0_combout\,
	combout => \reg1|registers~582_combout\);

-- Location: LCCOMB_X38_Y32_N6
\reg1|registers~583\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~583_combout\ = (\c11|WideOr1~1_combout\ & \reg1|registers~582_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|WideOr1~1_combout\,
	datad => \reg1|registers~582_combout\,
	combout => \reg1|registers~583_combout\);

-- Location: FF_X36_Y26_N21
\reg1|registers~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~177feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~177_q\);

-- Location: LCCOMB_X36_Y26_N8
\reg1|registers~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~294_combout\ = (\reg1|registers~293_combout\ & (((\reg1|registers~241_q\)) # (!\instruction[25]~input_o\))) # (!\reg1|registers~293_combout\ & (\instruction[25]~input_o\ & ((\reg1|registers~177_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~293_combout\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~241_q\,
	datad => \reg1|registers~177_q\,
	combout => \reg1|registers~294_combout\);

-- Location: FF_X38_Y27_N25
\reg1|registers~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~97_q\);

-- Location: FF_X37_Y27_N7
\reg1|registers~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~225_q\);

-- Location: FF_X38_Y29_N21
\reg1|registers~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~33_q\);

-- Location: LCCOMB_X37_Y27_N24
\reg1|registers~161feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~161feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~161feeder_combout\);

-- Location: FF_X37_Y27_N25
\reg1|registers~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~161feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~161_q\);

-- Location: LCCOMB_X37_Y27_N0
\reg1|registers~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~286_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~161_q\))) # (!\instruction[25]~input_o\ & (\reg1|registers~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~33_q\,
	datad => \reg1|registers~161_q\,
	combout => \reg1|registers~286_combout\);

-- Location: LCCOMB_X37_Y27_N6
\reg1|registers~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~287_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~286_combout\ & ((\reg1|registers~225_q\))) # (!\reg1|registers~286_combout\ & (\reg1|registers~97_q\)))) # (!\instruction[24]~input_o\ & (((\reg1|registers~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~97_q\,
	datac => \reg1|registers~225_q\,
	datad => \reg1|registers~286_combout\,
	combout => \reg1|registers~287_combout\);

-- Location: LCCOMB_X38_Y33_N24
\reg1|registers~145feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~145feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~145feeder_combout\);

-- Location: FF_X38_Y33_N25
\reg1|registers~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~145feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~145_q\);

-- Location: FF_X35_Y30_N1
\reg1|registers~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~209_q\);

-- Location: LCCOMB_X39_Y30_N8
\reg1|registers~81feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~81feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~81feeder_combout\);

-- Location: FF_X39_Y30_N9
\reg1|registers~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~81feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~81_q\);

-- Location: LCCOMB_X35_Y30_N20
\reg1|registers~17feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~17feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~17feeder_combout\);

-- Location: FF_X35_Y30_N21
\reg1|registers~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~17feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~17_q\);

-- Location: LCCOMB_X39_Y30_N2
\reg1|registers~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~288_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~81_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & ((\reg1|registers~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~81_q\,
	datad => \reg1|registers~17_q\,
	combout => \reg1|registers~288_combout\);

-- Location: LCCOMB_X38_Y33_N26
\reg1|registers~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~289_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~288_combout\ & ((\reg1|registers~209_q\))) # (!\reg1|registers~288_combout\ & (\reg1|registers~145_q\)))) # (!\instruction[25]~input_o\ & (((\reg1|registers~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~145_q\,
	datac => \reg1|registers~209_q\,
	datad => \reg1|registers~288_combout\,
	combout => \reg1|registers~289_combout\);

-- Location: LCCOMB_X37_Y33_N4
\reg1|registers~65feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~65feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~65feeder_combout\);

-- Location: FF_X37_Y33_N5
\reg1|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~65feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~65_q\);

-- Location: LCCOMB_X37_Y32_N28
\reg1|registers~193feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~193feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~193feeder_combout\);

-- Location: FF_X37_Y32_N29
\reg1|registers~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~193feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~193_q\);

-- Location: FF_X34_Y29_N9
\reg1|registers~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux2|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~1_q\);

-- Location: LCCOMB_X34_Y33_N28
\reg1|registers~129feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~129feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~129feeder_combout\);

-- Location: FF_X34_Y33_N29
\reg1|registers~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~129feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~129_q\);

-- Location: LCCOMB_X34_Y33_N30
\reg1|registers~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~290_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~129_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & (\reg1|registers~1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~1_q\,
	datad => \reg1|registers~129_q\,
	combout => \reg1|registers~290_combout\);

-- Location: LCCOMB_X38_Y33_N12
\reg1|registers~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~291_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~290_combout\ & ((\reg1|registers~193_q\))) # (!\reg1|registers~290_combout\ & (\reg1|registers~65_q\)))) # (!\instruction[24]~input_o\ & (((\reg1|registers~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~65_q\,
	datac => \reg1|registers~193_q\,
	datad => \reg1|registers~290_combout\,
	combout => \reg1|registers~291_combout\);

-- Location: LCCOMB_X38_Y33_N14
\reg1|registers~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~292_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & (\reg1|registers~289_combout\)) # (!\instruction[22]~input_o\ & ((\reg1|registers~291_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~289_combout\,
	datad => \reg1|registers~291_combout\,
	combout => \reg1|registers~292_combout\);

-- Location: LCCOMB_X37_Y31_N26
\reg1|registers~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~295_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~292_combout\ & (\reg1|registers~294_combout\)) # (!\reg1|registers~292_combout\ & ((\reg1|registers~287_combout\))))) # (!\instruction[23]~input_o\ & 
-- (((\reg1|registers~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~294_combout\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~287_combout\,
	datad => \reg1|registers~292_combout\,
	combout => \reg1|registers~295_combout\);

-- Location: LCCOMB_X34_Y29_N8
\c7|mux16|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~0_combout\ = (!\instruction[12]~input_o\ & !\instruction[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[12]~input_o\,
	datad => \instruction[13]~input_o\,
	combout => \c7|mux16|out~0_combout\);

-- Location: LCCOMB_X38_Y27_N10
\alu1|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~4_combout\ = (!\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & ((\mux2|mux1|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux3|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux3|out~0_combout\,
	datad => \mux2|mux1|out~0_combout\,
	combout => \alu1|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X38_Y27_N8
\alu1|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~5_combout\ = (\alu1|ShiftLeft0~4_combout\) # ((\mux2|mux2|out~0_combout\ & (\instruction[10]~input_o\ & !\instruction[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux2|out~0_combout\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \alu1|ShiftLeft0~4_combout\,
	combout => \alu1|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X38_Y26_N26
\alu1|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~8_combout\ = (\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & (\mux2|mux2|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux4|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \mux2|mux2|out~0_combout\,
	datad => \mux2|mux4|out~0_combout\,
	combout => \alu1|ShiftLeft0~8_combout\);

-- Location: FF_X37_Y30_N7
\reg1|registers~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux6|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~245_q\);

-- Location: LCCOMB_X34_Y27_N14
\reg1|registers~53feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~53feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~53feeder_combout\);

-- Location: FF_X34_Y27_N15
\reg1|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~53feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~53_q\);

-- Location: FF_X34_Y27_N13
\reg1|registers~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux6|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~117_q\);

-- Location: LCCOMB_X34_Y27_N12
\reg1|registers~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~373_combout\ = (\instruction[24]~input_o\ & (((\reg1|registers~117_q\) # (\instruction[25]~input_o\)))) # (!\instruction[24]~input_o\ & (\reg1|registers~53_q\ & ((!\instruction[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~53_q\,
	datac => \reg1|registers~117_q\,
	datad => \instruction[25]~input_o\,
	combout => \reg1|registers~373_combout\);

-- Location: FF_X38_Y32_N11
\reg1|registers~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux6|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~181_q\);

-- Location: LCCOMB_X37_Y27_N20
\reg1|registers~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~374_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~373_combout\ & (\reg1|registers~245_q\)) # (!\reg1|registers~373_combout\ & ((\reg1|registers~181_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~245_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~373_combout\,
	datad => \reg1|registers~181_q\,
	combout => \reg1|registers~374_combout\);

-- Location: LCCOMB_X32_Y31_N4
\reg1|registers~85feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~85feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~85feeder_combout\);

-- Location: FF_X32_Y31_N5
\reg1|registers~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~85feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~85_q\);

-- Location: LCCOMB_X32_Y31_N10
\reg1|registers~21feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~21feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~21feeder_combout\);

-- Location: FF_X32_Y31_N11
\reg1|registers~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~21feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~21_q\);

-- Location: LCCOMB_X32_Y31_N6
\reg1|registers~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~368_combout\ = (\instruction[25]~input_o\ & (\instruction[24]~input_o\)) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & (\reg1|registers~85_q\)) # (!\instruction[24]~input_o\ & ((\reg1|registers~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~85_q\,
	datad => \reg1|registers~21_q\,
	combout => \reg1|registers~368_combout\);

-- Location: LCCOMB_X36_Y31_N4
\reg1|registers~149feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~149feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~149feeder_combout\);

-- Location: FF_X36_Y31_N5
\reg1|registers~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~149feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~149_q\);

-- Location: LCCOMB_X36_Y31_N14
\reg1|registers~213feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~213feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~213feeder_combout\);

-- Location: FF_X36_Y31_N15
\reg1|registers~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~213feeder_combout\,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~213_q\);

-- Location: LCCOMB_X36_Y31_N18
\reg1|registers~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~369_combout\ = (\reg1|registers~368_combout\ & (((\reg1|registers~213_q\) # (!\instruction[25]~input_o\)))) # (!\reg1|registers~368_combout\ & (\reg1|registers~149_q\ & ((\instruction[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~368_combout\,
	datab => \reg1|registers~149_q\,
	datac => \reg1|registers~213_q\,
	datad => \instruction[25]~input_o\,
	combout => \reg1|registers~369_combout\);

-- Location: LCCOMB_X37_Y32_N26
\reg1|registers~197feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~197feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~197feeder_combout\);

-- Location: FF_X37_Y32_N27
\reg1|registers~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~197feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~197_q\);

-- Location: FF_X37_Y30_N29
\reg1|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux6|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~69_q\);

-- Location: LCCOMB_X39_Y32_N12
\reg1|registers~5feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~5feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~5feeder_combout\);

-- Location: FF_X39_Y32_N13
\reg1|registers~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~5feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~5_q\);

-- Location: LCCOMB_X37_Y32_N24
\reg1|registers~133feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~133feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~133feeder_combout\);

-- Location: FF_X37_Y32_N25
\reg1|registers~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~133feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~133_q\);

-- Location: LCCOMB_X37_Y32_N12
\reg1|registers~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~370_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~133_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & (\reg1|registers~5_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~5_q\,
	datad => \reg1|registers~133_q\,
	combout => \reg1|registers~370_combout\);

-- Location: LCCOMB_X37_Y30_N28
\reg1|registers~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~371_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~370_combout\ & (\reg1|registers~197_q\)) # (!\reg1|registers~370_combout\ & ((\reg1|registers~69_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~197_q\,
	datac => \reg1|registers~69_q\,
	datad => \reg1|registers~370_combout\,
	combout => \reg1|registers~371_combout\);

-- Location: LCCOMB_X37_Y27_N22
\reg1|registers~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~372_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & (\reg1|registers~369_combout\)) # (!\instruction[22]~input_o\ & ((\reg1|registers~371_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~369_combout\,
	datad => \reg1|registers~371_combout\,
	combout => \reg1|registers~372_combout\);

-- Location: LCCOMB_X38_Y31_N24
\reg1|registers~101feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~101feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~101feeder_combout\);

-- Location: FF_X38_Y31_N25
\reg1|registers~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~101feeder_combout\,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~101_q\);

-- Location: FF_X37_Y27_N17
\reg1|registers~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux6|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~165_q\);

-- Location: FF_X38_Y29_N15
\reg1|registers~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux6|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~37_q\);

-- Location: LCCOMB_X37_Y27_N16
\reg1|registers~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~366_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & (\reg1|registers~165_q\)) # (!\instruction[25]~input_o\ & ((\reg1|registers~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~165_q\,
	datad => \reg1|registers~37_q\,
	combout => \reg1|registers~366_combout\);

-- Location: LCCOMB_X38_Y31_N18
\reg1|registers~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~367_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~366_combout\ & ((\reg1|registers~229_q\))) # (!\reg1|registers~366_combout\ & (\reg1|registers~101_q\)))) # (!\instruction[24]~input_o\ & (((\reg1|registers~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~101_q\,
	datac => \reg1|registers~366_combout\,
	datad => \reg1|registers~229_q\,
	combout => \reg1|registers~367_combout\);

-- Location: LCCOMB_X37_Y27_N26
\reg1|registers~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~375_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~372_combout\ & (\reg1|registers~374_combout\)) # (!\reg1|registers~372_combout\ & ((\reg1|registers~367_combout\))))) # (!\instruction[23]~input_o\ & 
-- (((\reg1|registers~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~374_combout\,
	datac => \reg1|registers~372_combout\,
	datad => \reg1|registers~367_combout\,
	combout => \reg1|registers~375_combout\);

-- Location: LCCOMB_X37_Y28_N2
\alu1|adder0|adder1|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder1|full4|and1~combout\ = (\mux2|mux3|out~0_combout\) # ((\mux2|mux1|out~0_combout\) # ((\mux2|mux2|out~0_combout\) # (\mux2|mux4|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux3|out~0_combout\,
	datab => \mux2|mux1|out~0_combout\,
	datac => \mux2|mux2|out~0_combout\,
	datad => \mux2|mux4|out~0_combout\,
	combout => \alu1|adder0|adder1|full4|and1~combout\);

-- Location: LCCOMB_X39_Y28_N18
\alu1|adder0|adder2|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder2|full1|and1~combout\ = (\alu1|adder0|adder1|full4|and1~combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[6]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \reg1|registers~345_combout\,
	datac => \c11|WideOr2~1_combout\,
	datad => \alu1|adder0|adder1|full4|and1~combout\,
	combout => \alu1|adder0|adder2|full1|and1~combout\);

-- Location: LCCOMB_X39_Y29_N8
\reg1|registers~52feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~52feeder_combout\ = \c7|mux5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux5|out~0_combout\,
	combout => \reg1|registers~52feeder_combout\);

-- Location: FF_X39_Y29_N9
\reg1|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~52feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~52_q\);

-- Location: FF_X38_Y29_N31
\reg1|registers~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~36_q\);

-- Location: FF_X37_Y29_N15
\reg1|registers~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~20_q\);

-- Location: LCCOMB_X37_Y29_N14
\reg1|registers~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~360_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & (\reg1|registers~20_q\)) # (!\instruction[22]~input_o\ & ((\reg1|registers~4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~20_q\,
	datad => \reg1|registers~4_q\,
	combout => \reg1|registers~360_combout\);

-- Location: LCCOMB_X38_Y29_N30
\reg1|registers~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~361_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~360_combout\ & (\reg1|registers~52_q\)) # (!\reg1|registers~360_combout\ & ((\reg1|registers~36_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~52_q\,
	datac => \reg1|registers~36_q\,
	datad => \reg1|registers~360_combout\,
	combout => \reg1|registers~361_combout\);

-- Location: LCCOMB_X39_Y28_N6
\reg1|registers~116feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~116feeder_combout\ = \c7|mux5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux5|out~0_combout\,
	combout => \reg1|registers~116feeder_combout\);

-- Location: FF_X39_Y28_N7
\reg1|registers~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~116feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~116_q\);

-- Location: LCCOMB_X35_Y32_N24
\reg1|registers~84feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~84feeder_combout\ = \c7|mux5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux5|out~0_combout\,
	combout => \reg1|registers~84feeder_combout\);

-- Location: FF_X35_Y32_N25
\reg1|registers~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~84feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~84_q\);

-- Location: FF_X36_Y32_N17
\reg1|registers~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~100_q\);

-- Location: FF_X39_Y28_N31
\reg1|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~68_q\);

-- Location: LCCOMB_X36_Y32_N16
\reg1|registers~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~358_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~100_q\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & ((\reg1|registers~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~100_q\,
	datad => \reg1|registers~68_q\,
	combout => \reg1|registers~358_combout\);

-- Location: LCCOMB_X35_Y32_N2
\reg1|registers~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~359_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~358_combout\ & (\reg1|registers~116_q\)) # (!\reg1|registers~358_combout\ & ((\reg1|registers~84_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~116_q\,
	datab => \reg1|registers~84_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~358_combout\,
	combout => \reg1|registers~359_combout\);

-- Location: LCCOMB_X38_Y32_N20
\reg1|registers~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~362_combout\ = (\instruction[25]~input_o\ & (((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~359_combout\))) # (!\instruction[24]~input_o\ & (\reg1|registers~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~361_combout\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~359_combout\,
	datad => \instruction[24]~input_o\,
	combout => \reg1|registers~362_combout\);

-- Location: LCCOMB_X34_Y32_N22
\reg1|registers~132feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~132feeder_combout\ = \c7|mux5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux5|out~0_combout\,
	combout => \reg1|registers~132feeder_combout\);

-- Location: FF_X34_Y32_N23
\reg1|registers~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~132feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~132_q\);

-- Location: FF_X38_Y32_N15
\reg1|registers~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~148_q\);

-- Location: LCCOMB_X38_Y32_N14
\reg1|registers~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~356_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~148_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~132_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~132_q\,
	datac => \reg1|registers~148_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~356_combout\);

-- Location: FF_X38_Y32_N9
\reg1|registers~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~180_q\);

-- Location: FF_X34_Y32_N13
\reg1|registers~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~164_q\);

-- Location: LCCOMB_X38_Y32_N8
\reg1|registers~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~357_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~356_combout\ & (\reg1|registers~180_q\)) # (!\reg1|registers~356_combout\ & ((\reg1|registers~164_q\))))) # (!\instruction[23]~input_o\ & (\reg1|registers~356_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~356_combout\,
	datac => \reg1|registers~180_q\,
	datad => \reg1|registers~164_q\,
	combout => \reg1|registers~357_combout\);

-- Location: FF_X32_Y30_N31
\reg1|registers~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux5|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~244_q\);

-- Location: LCCOMB_X31_Y32_N24
\reg1|registers~196feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~196feeder_combout\ = \c7|mux5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux5|out~0_combout\,
	combout => \reg1|registers~196feeder_combout\);

-- Location: FF_X31_Y32_N25
\reg1|registers~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~196feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~196_q\);

-- Location: FF_X36_Y32_N7
\reg1|registers~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~228_q\);

-- Location: LCCOMB_X36_Y32_N6
\reg1|registers~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~363_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & ((\reg1|registers~228_q\))) # (!\instruction[23]~input_o\ & (\reg1|registers~196_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~196_q\,
	datac => \reg1|registers~228_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~363_combout\);

-- Location: FF_X32_Y30_N21
\reg1|registers~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~212_q\);

-- Location: LCCOMB_X37_Y32_N2
\reg1|registers~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~364_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~363_combout\ & (\reg1|registers~244_q\)) # (!\reg1|registers~363_combout\ & ((\reg1|registers~212_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~244_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~363_combout\,
	datad => \reg1|registers~212_q\,
	combout => \reg1|registers~364_combout\);

-- Location: LCCOMB_X38_Y32_N18
\reg1|registers~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~365_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~362_combout\ & ((\reg1|registers~364_combout\))) # (!\reg1|registers~362_combout\ & (\reg1|registers~357_combout\)))) # (!\instruction[25]~input_o\ & 
-- (\reg1|registers~362_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~362_combout\,
	datac => \reg1|registers~357_combout\,
	datad => \reg1|registers~364_combout\,
	combout => \reg1|registers~365_combout\);

-- Location: FF_X31_Y30_N13
\reg1|registers~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~243_q\);

-- Location: LCCOMB_X34_Y26_N8
\reg1|registers~115feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~115feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~115feeder_combout\);

-- Location: FF_X34_Y26_N9
\reg1|registers~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~115feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~115_q\);

-- Location: LCCOMB_X36_Y26_N4
\reg1|registers~51feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~51feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~51feeder_combout\);

-- Location: FF_X36_Y26_N5
\reg1|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~51feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~51_q\);

-- Location: LCCOMB_X36_Y26_N10
\reg1|registers~179feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~179feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~179feeder_combout\);

-- Location: FF_X36_Y26_N11
\reg1|registers~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~179feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~179_q\);

-- Location: LCCOMB_X36_Y26_N24
\reg1|registers~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~333_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~179_q\))) # (!\instruction[25]~input_o\ & (\reg1|registers~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~51_q\,
	datad => \reg1|registers~179_q\,
	combout => \reg1|registers~333_combout\);

-- Location: LCCOMB_X38_Y30_N8
\reg1|registers~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~334_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~333_combout\ & (\reg1|registers~243_q\)) # (!\reg1|registers~333_combout\ & ((\reg1|registers~115_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~243_q\,
	datac => \reg1|registers~115_q\,
	datad => \reg1|registers~333_combout\,
	combout => \reg1|registers~334_combout\);

-- Location: LCCOMB_X38_Y26_N24
\reg1|registers~211feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~211feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~211feeder_combout\);

-- Location: FF_X38_Y26_N25
\reg1|registers~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~211feeder_combout\,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~211_q\);

-- Location: FF_X37_Y29_N1
\reg1|registers~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~19_q\);

-- Location: FF_X37_Y29_N7
\reg1|registers~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~147_q\);

-- Location: LCCOMB_X37_Y29_N0
\reg1|registers~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~326_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~147_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & (\reg1|registers~19_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~19_q\,
	datad => \reg1|registers~147_q\,
	combout => \reg1|registers~326_combout\);

-- Location: LCCOMB_X38_Y26_N10
\reg1|registers~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~327_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~326_combout\ & (\reg1|registers~211_q\)) # (!\reg1|registers~326_combout\ & ((\reg1|registers~83_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~211_q\,
	datac => \reg1|registers~326_combout\,
	datad => \reg1|registers~83_q\,
	combout => \reg1|registers~327_combout\);

-- Location: FF_X36_Y28_N3
\reg1|registers~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~35_q\);

-- Location: FF_X36_Y28_N21
\reg1|registers~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~99_q\);

-- Location: LCCOMB_X36_Y28_N2
\reg1|registers~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~328_combout\ = (\instruction[25]~input_o\ & (\instruction[24]~input_o\)) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~99_q\))) # (!\instruction[24]~input_o\ & (\reg1|registers~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~35_q\,
	datad => \reg1|registers~99_q\,
	combout => \reg1|registers~328_combout\);

-- Location: FF_X37_Y27_N5
\reg1|registers~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~163_q\);

-- Location: FF_X37_Y27_N3
\reg1|registers~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux4|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~227_q\);

-- Location: LCCOMB_X37_Y27_N2
\reg1|registers~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~329_combout\ = (\reg1|registers~328_combout\ & (((\reg1|registers~227_q\) # (!\instruction[25]~input_o\)))) # (!\reg1|registers~328_combout\ & (\reg1|registers~163_q\ & ((\instruction[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~328_combout\,
	datab => \reg1|registers~163_q\,
	datac => \reg1|registers~227_q\,
	datad => \instruction[25]~input_o\,
	combout => \reg1|registers~329_combout\);

-- Location: LCCOMB_X37_Y32_N4
\reg1|registers~131feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~131feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~131feeder_combout\);

-- Location: FF_X37_Y32_N5
\reg1|registers~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~131feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~131_q\);

-- Location: LCCOMB_X37_Y32_N22
\reg1|registers~195feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~195feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~195feeder_combout\);

-- Location: FF_X37_Y32_N23
\reg1|registers~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~195feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~195_q\);

-- Location: LCCOMB_X32_Y32_N4
\reg1|registers~67feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~67feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~67feeder_combout\);

-- Location: FF_X32_Y32_N5
\reg1|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~67feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~67_q\);

-- Location: LCCOMB_X32_Y32_N6
\reg1|registers~3feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~3feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~3feeder_combout\);

-- Location: FF_X32_Y32_N7
\reg1|registers~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~3feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~3_q\);

-- Location: LCCOMB_X32_Y32_N18
\reg1|registers~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~330_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~67_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & ((\reg1|registers~3_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~67_q\,
	datad => \reg1|registers~3_q\,
	combout => \reg1|registers~330_combout\);

-- Location: LCCOMB_X37_Y32_N14
\reg1|registers~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~331_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~330_combout\ & ((\reg1|registers~195_q\))) # (!\reg1|registers~330_combout\ & (\reg1|registers~131_q\)))) # (!\instruction[25]~input_o\ & (((\reg1|registers~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~131_q\,
	datac => \reg1|registers~195_q\,
	datad => \reg1|registers~330_combout\,
	combout => \reg1|registers~331_combout\);

-- Location: LCCOMB_X38_Y30_N2
\reg1|registers~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~332_combout\ = (\instruction[22]~input_o\ & (\instruction[23]~input_o\)) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & (\reg1|registers~329_combout\)) # (!\instruction[23]~input_o\ & ((\reg1|registers~331_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~329_combout\,
	datad => \reg1|registers~331_combout\,
	combout => \reg1|registers~332_combout\);

-- Location: LCCOMB_X38_Y30_N10
\reg1|registers~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~335_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~332_combout\ & (\reg1|registers~334_combout\)) # (!\reg1|registers~332_combout\ & ((\reg1|registers~327_combout\))))) # (!\instruction[22]~input_o\ & 
-- (((\reg1|registers~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~334_combout\,
	datac => \reg1|registers~327_combout\,
	datad => \reg1|registers~332_combout\,
	combout => \reg1|registers~335_combout\);

-- Location: LCCOMB_X37_Y28_N22
\alu1|adder0|adder1|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder1|full3|and1~combout\ = (\mux2|mux1|out~0_combout\) # ((\mux2|mux2|out~0_combout\) # (\mux2|mux3|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux1|out~0_combout\,
	datab => \mux2|mux2|out~0_combout\,
	datac => \mux2|mux3|out~0_combout\,
	combout => \alu1|adder0|adder1|full3|and1~combout\);

-- Location: LCCOMB_X37_Y29_N12
\alu1|adder0|adder1|full2|and1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder1|full2|and1~0_combout\ = (\instruction[2]~input_o\) # (\instruction[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[2]~input_o\,
	datad => \instruction[3]~input_o\,
	combout => \alu1|adder0|adder1|full2|and1~0_combout\);

-- Location: LCCOMB_X37_Y28_N10
\alu1|adder0|adder1|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder1|full2|and1~combout\ = (\c11|WideOr2~1_combout\ & (\alu1|adder0|adder1|full2|and1~0_combout\)) # (!\c11|WideOr2~1_combout\ & (((\reg1|registers~265_combout\) # (\reg1|registers~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \alu1|adder0|adder1|full2|and1~0_combout\,
	datac => \reg1|registers~265_combout\,
	datad => \reg1|registers~285_combout\,
	combout => \alu1|adder0|adder1|full2|and1~combout\);

-- Location: FF_X39_Y30_N23
\reg1|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~66_q\);

-- Location: LCCOMB_X39_Y30_N20
\reg1|registers~82feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~82feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~82feeder_combout\);

-- Location: FF_X39_Y30_N21
\reg1|registers~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~82feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~82_q\);

-- Location: LCCOMB_X39_Y30_N22
\reg1|registers~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~306_combout\ = (\instruction[22]~input_o\ & ((\instruction[23]~input_o\) # ((\reg1|registers~82_q\)))) # (!\instruction[22]~input_o\ & (!\instruction[23]~input_o\ & (\reg1|registers~66_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~66_q\,
	datad => \reg1|registers~82_q\,
	combout => \reg1|registers~306_combout\);

-- Location: FF_X38_Y27_N5
\reg1|registers~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~98_q\);

-- Location: FF_X39_Y28_N25
\reg1|registers~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~114_q\);

-- Location: LCCOMB_X39_Y28_N24
\reg1|registers~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~307_combout\ = (\reg1|registers~306_combout\ & (((\reg1|registers~114_q\) # (!\instruction[23]~input_o\)))) # (!\reg1|registers~306_combout\ & (\reg1|registers~98_q\ & ((\instruction[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~306_combout\,
	datab => \reg1|registers~98_q\,
	datac => \reg1|registers~114_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~307_combout\);

-- Location: FF_X37_Y27_N29
\reg1|registers~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~226_q\);

-- Location: FF_X34_Y28_N23
\reg1|registers~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~210_q\);

-- Location: FF_X34_Y28_N29
\reg1|registers~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~194_q\);

-- Location: LCCOMB_X34_Y28_N28
\reg1|registers~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~313_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & (\reg1|registers~210_q\)) # (!\instruction[22]~input_o\ & ((\reg1|registers~194_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~210_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~194_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~313_combout\);

-- Location: LCCOMB_X38_Y28_N18
\reg1|registers~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~314_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~313_combout\ & ((\reg1|registers~242_q\))) # (!\reg1|registers~313_combout\ & (\reg1|registers~226_q\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~226_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~242_q\,
	datad => \reg1|registers~313_combout\,
	combout => \reg1|registers~314_combout\);

-- Location: FF_X38_Y28_N21
\reg1|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~50_q\);

-- Location: LCCOMB_X39_Y29_N20
\reg1|registers~18feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~18feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~18feeder_combout\);

-- Location: FF_X39_Y29_N21
\reg1|registers~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~18feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~18_q\);

-- Location: FF_X38_Y29_N29
\reg1|registers~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~2_q\);

-- Location: FF_X38_Y29_N7
\reg1|registers~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~34_q\);

-- Location: LCCOMB_X38_Y29_N28
\reg1|registers~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~310_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~34_q\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & (\reg1|registers~2_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~2_q\,
	datad => \reg1|registers~34_q\,
	combout => \reg1|registers~310_combout\);

-- Location: LCCOMB_X39_Y29_N26
\reg1|registers~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~311_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~310_combout\ & (\reg1|registers~50_q\)) # (!\reg1|registers~310_combout\ & ((\reg1|registers~18_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~50_q\,
	datab => \reg1|registers~18_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~310_combout\,
	combout => \reg1|registers~311_combout\);

-- Location: LCCOMB_X38_Y32_N30
\reg1|registers~178feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~178feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~178feeder_combout\);

-- Location: FF_X38_Y32_N31
\reg1|registers~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~178feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~178_q\);

-- Location: FF_X38_Y32_N25
\reg1|registers~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux3|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~146_q\);

-- Location: LCCOMB_X37_Y27_N14
\reg1|registers~162feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~162feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~162feeder_combout\);

-- Location: FF_X37_Y27_N15
\reg1|registers~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~162feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~162_q\);

-- Location: LCCOMB_X38_Y28_N4
\reg1|registers~130feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~130feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~130feeder_combout\);

-- Location: FF_X38_Y28_N5
\reg1|registers~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~130feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~130_q\);

-- Location: LCCOMB_X37_Y27_N10
\reg1|registers~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~308_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~162_q\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & ((\reg1|registers~130_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~162_q\,
	datad => \reg1|registers~130_q\,
	combout => \reg1|registers~308_combout\);

-- Location: LCCOMB_X38_Y32_N24
\reg1|registers~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~309_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~308_combout\ & (\reg1|registers~178_q\)) # (!\reg1|registers~308_combout\ & ((\reg1|registers~146_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~178_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~146_q\,
	datad => \reg1|registers~308_combout\,
	combout => \reg1|registers~309_combout\);

-- Location: LCCOMB_X38_Y28_N0
\reg1|registers~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~312_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~309_combout\))) # (!\instruction[25]~input_o\ & (\reg1|registers~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~311_combout\,
	datad => \reg1|registers~309_combout\,
	combout => \reg1|registers~312_combout\);

-- Location: LCCOMB_X38_Y28_N28
\reg1|registers~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~315_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~312_combout\ & ((\reg1|registers~314_combout\))) # (!\reg1|registers~312_combout\ & (\reg1|registers~307_combout\)))) # (!\instruction[24]~input_o\ & 
-- (((\reg1|registers~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~307_combout\,
	datab => \reg1|registers~314_combout\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~312_combout\,
	combout => \reg1|registers~315_combout\);

-- Location: LCCOMB_X37_Y28_N20
\alu1|adder2|adder1|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full2|or1~0_combout\ = (\mux2|mux2|out~0_combout\ & (\reg1|registers~295_combout\ & ((\reg1|registers~275_combout\) # (!\mux2|mux1|out~0_combout\)))) # (!\mux2|mux2|out~0_combout\ & (\mux2|mux1|out~0_combout\ & 
-- ((\reg1|registers~295_combout\) # (\reg1|registers~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux1|out~0_combout\,
	datab => \reg1|registers~295_combout\,
	datac => \mux2|mux2|out~0_combout\,
	datad => \reg1|registers~275_combout\,
	combout => \alu1|adder2|adder1|full2|or1~0_combout\);

-- Location: LCCOMB_X37_Y28_N16
\alu1|adder2|adder1|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full3|or1~0_combout\ = (\reg1|registers~315_combout\ & ((\alu1|adder2|adder1|full2|or1~0_combout\) # (\alu1|adder0|adder1|full2|and1~combout\ $ (\mux2|mux3|out~0_combout\)))) # (!\reg1|registers~315_combout\ & 
-- (\alu1|adder2|adder1|full2|or1~0_combout\ & (\alu1|adder0|adder1|full2|and1~combout\ $ (\mux2|mux3|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder0|adder1|full2|and1~combout\,
	datab => \reg1|registers~315_combout\,
	datac => \mux2|mux3|out~0_combout\,
	datad => \alu1|adder2|adder1|full2|or1~0_combout\,
	combout => \alu1|adder2|adder1|full3|or1~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\alu1|adder2|adder1|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full4|or1~0_combout\ = (\reg1|registers~335_combout\ & ((\alu1|adder2|adder1|full3|or1~0_combout\) # (\mux2|mux4|out~0_combout\ $ (\alu1|adder0|adder1|full3|and1~combout\)))) # (!\reg1|registers~335_combout\ & 
-- (\alu1|adder2|adder1|full3|or1~0_combout\ & (\mux2|mux4|out~0_combout\ $ (\alu1|adder0|adder1|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux4|out~0_combout\,
	datab => \reg1|registers~335_combout\,
	datac => \alu1|adder0|adder1|full3|and1~combout\,
	datad => \alu1|adder2|adder1|full3|or1~0_combout\,
	combout => \alu1|adder2|adder1|full4|or1~0_combout\);

-- Location: LCCOMB_X37_Y28_N18
\alu1|adder2|adder2|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full1|or1~0_combout\ = (\reg1|registers~365_combout\ & ((\alu1|adder2|adder1|full4|or1~0_combout\) # (\alu1|adder0|adder1|full4|and1~combout\ $ (\mux2|mux5|out~0_combout\)))) # (!\reg1|registers~365_combout\ & 
-- (\alu1|adder2|adder1|full4|or1~0_combout\ & (\alu1|adder0|adder1|full4|and1~combout\ $ (\mux2|mux5|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \alu1|adder0|adder1|full4|and1~combout\,
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|adder2|adder1|full4|or1~0_combout\,
	combout => \alu1|adder2|adder2|full1|or1~0_combout\);

-- Location: LCCOMB_X37_Y30_N8
\alu1|adder2|adder2|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full2|xor2~combout\ = \reg1|registers~375_combout\ $ (\alu1|adder0|adder2|full1|and1~combout\ $ (\alu1|adder2|adder2|full1|or1~0_combout\ $ (\mux2|mux6|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~375_combout\,
	datab => \alu1|adder0|adder2|full1|and1~combout\,
	datac => \alu1|adder2|adder2|full1|or1~0_combout\,
	datad => \mux2|mux6|out~0_combout\,
	combout => \alu1|adder2|adder2|full2|xor2~combout\);

-- Location: LCCOMB_X37_Y30_N18
\alu1|adder1|adder2|full2|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full2|xor2~0_combout\ = \reg1|registers~375_combout\ $ (((\c11|WideOr2~1_combout\ & ((\instruction[7]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~375_combout\,
	datab => \c11|WideOr2~1_combout\,
	datac => \reg1|registers~355_combout\,
	datad => \instruction[7]~input_o\,
	combout => \alu1|adder1|adder2|full2|xor2~0_combout\);

-- Location: LCCOMB_X38_Y30_N0
\alu1|adder1|adder1|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full4|or1~0_combout\ = (\reg1|registers~335_combout\ & ((\c11|WideOr2~1_combout\ & (\instruction[5]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~325_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~335_combout\,
	datab => \instruction[5]~input_o\,
	datac => \reg1|registers~325_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder1|full4|or1~0_combout\);

-- Location: LCCOMB_X38_Y30_N30
\alu1|adder1|adder1|full4|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full4|or1~1_combout\ = (\reg1|registers~335_combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[5]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~335_combout\,
	datab => \instruction[5]~input_o\,
	datac => \reg1|registers~325_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder1|full4|or1~1_combout\);

-- Location: LCCOMB_X37_Y31_N18
\alu1|adder1|adder1|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full2|or1~0_combout\ = (\reg1|registers~295_combout\ & ((\mux2|mux2|out~0_combout\) # ((\reg1|registers~275_combout\ & \mux2|mux1|out~0_combout\)))) # (!\reg1|registers~295_combout\ & (\reg1|registers~275_combout\ & 
-- (\mux2|mux1|out~0_combout\ & \mux2|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~295_combout\,
	datab => \reg1|registers~275_combout\,
	datac => \mux2|mux1|out~0_combout\,
	datad => \mux2|mux2|out~0_combout\,
	combout => \alu1|adder1|adder1|full2|or1~0_combout\);

-- Location: LCCOMB_X37_Y31_N20
\alu1|adder1|adder1|full4|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full4|or1~2_combout\ = (\alu1|adder1|adder1|full4|or1~1_combout\ & ((\reg1|registers~315_combout\ & ((\mux2|mux3|out~0_combout\) # (\alu1|adder1|adder1|full2|or1~0_combout\))) # (!\reg1|registers~315_combout\ & 
-- (\mux2|mux3|out~0_combout\ & \alu1|adder1|adder1|full2|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~315_combout\,
	datab => \mux2|mux3|out~0_combout\,
	datac => \alu1|adder1|adder1|full4|or1~1_combout\,
	datad => \alu1|adder1|adder1|full2|or1~0_combout\,
	combout => \alu1|adder1|adder1|full4|or1~2_combout\);

-- Location: LCCOMB_X37_Y31_N24
\alu1|adder1|adder2|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full1|or1~0_combout\ = (\reg1|registers~365_combout\ & ((\alu1|adder1|adder1|full4|or1~0_combout\) # ((\mux2|mux5|out~0_combout\) # (\alu1|adder1|adder1|full4|or1~2_combout\)))) # (!\reg1|registers~365_combout\ & 
-- (\mux2|mux5|out~0_combout\ & ((\alu1|adder1|adder1|full4|or1~0_combout\) # (\alu1|adder1|adder1|full4|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \alu1|adder1|adder1|full4|or1~0_combout\,
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|adder1|adder1|full4|or1~2_combout\,
	combout => \alu1|adder1|adder2|full1|or1~0_combout\);

-- Location: LCCOMB_X37_Y30_N12
\alu1|mux3|mux6|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~4_combout\ = (\c11|ALUCtr\(0) & (\alu1|adder2|adder2|full2|xor2~combout\)) # (!\c11|ALUCtr\(0) & ((\alu1|adder1|adder2|full2|xor2~0_combout\ $ (\alu1|adder1|adder2|full1|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder2|full2|xor2~combout\,
	datab => \alu1|adder1|adder2|full2|xor2~0_combout\,
	datac => \alu1|adder1|adder2|full1|or1~0_combout\,
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux6|or1~4_combout\);

-- Location: LCCOMB_X37_Y30_N14
\alu1|mux3|mux6|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~5_combout\ = (\c11|ALUCtr\(2) & (\mux2|mux6|out~0_combout\ & (\reg1|registers~375_combout\))) # (!\c11|ALUCtr\(2) & (((\alu1|mux3|mux6|or1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux6|out~0_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \reg1|registers~375_combout\,
	datad => \alu1|mux3|mux6|or1~4_combout\,
	combout => \alu1|mux3|mux6|or1~5_combout\);

-- Location: LCCOMB_X38_Y26_N20
\alu1|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~13_combout\ = (\instruction[11]~input_o\ & ((\mux2|mux4|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux6|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \mux2|mux6|out~0_combout\,
	datad => \mux2|mux4|out~0_combout\,
	combout => \alu1|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X38_Y26_N2
\alu1|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~14_combout\ = (\instruction[10]~input_o\ & (\alu1|ShiftLeft0~9_combout\)) # (!\instruction[10]~input_o\ & ((\alu1|ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \alu1|ShiftLeft0~9_combout\,
	datad => \alu1|ShiftLeft0~13_combout\,
	combout => \alu1|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X35_Y27_N22
\alu1|ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~15_combout\ = (\instruction[12]~input_o\ & (!\instruction[11]~input_o\ & (\alu1|ShiftLeft0~3_combout\))) # (!\instruction[12]~input_o\ & (((\alu1|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \alu1|ShiftLeft0~3_combout\,
	datad => \alu1|ShiftLeft0~14_combout\,
	combout => \alu1|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X31_Y30_N12
\alu1|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~12_combout\ = (\instruction[12]~input_o\ & !\instruction[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[12]~input_o\,
	datad => \instruction[13]~input_o\,
	combout => \alu1|ShiftLeft0~12_combout\);

-- Location: M9K_X33_Y30_N0
\mem1|memdata_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "main_memory:mem1|altsyncram:memdata_rtl_0|altsyncram_o0e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \c11|Decoder0~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \c11|Decoder0~4_combout\,
	ena1 => \c11|MemRd~1_combout\,
	portadatain => \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem1|memdata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X35_Y27_N26
\c7|mux14|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~2_combout\ = (!\instruction[12]~input_o\ & (\alu1|ShiftRight0~17_combout\ & (!\instruction[13]~input_o\ & \c11|ALUCtr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \alu1|ShiftRight0~17_combout\,
	datac => \instruction[13]~input_o\,
	datad => \c11|ALUCtr\(2),
	combout => \c7|mux14|out~2_combout\);

-- Location: LCCOMB_X34_Y30_N22
\alu1|mux3|mux3|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~6_combout\ = (\c11|ALUCtr\(1) & \c11|ALUCtr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c11|ALUCtr\(1),
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux3|or1~6_combout\);

-- Location: LCCOMB_X36_Y29_N6
\mux2|mux12|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux12|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[13]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~475_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[13]~input_o\,
	datac => \reg1|registers~475_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux12|out~0_combout\);

-- Location: LCCOMB_X34_Y28_N10
\mux2|mux11|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux11|out~0_combout\ = (\c11|WideOr2~1_combout\ & ((\instruction[12]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~465_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~465_combout\,
	datab => \c11|WideOr2~1_combout\,
	datad => \instruction[12]~input_o\,
	combout => \mux2|mux11|out~0_combout\);

-- Location: LCCOMB_X35_Y27_N30
\alu1|ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~33_combout\ = (\instruction[10]~input_o\ & ((\mux2|mux11|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux12|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux12|out~0_combout\,
	datad => \mux2|mux11|out~0_combout\,
	combout => \alu1|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X34_Y28_N6
\mux2|mux10|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux10|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[11]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~445_combout\,
	combout => \mux2|mux10|out~0_combout\);

-- Location: LCCOMB_X36_Y27_N26
\alu1|ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~26_combout\ = (!\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & (\mux2|mux8|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux10|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux8|out~0_combout\,
	datad => \mux2|mux10|out~0_combout\,
	combout => \alu1|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X34_Y28_N0
\mux2|mux9|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux9|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[10]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~415_combout\,
	combout => \mux2|mux9|out~0_combout\);

-- Location: LCCOMB_X36_Y27_N24
\alu1|ShiftLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~23_combout\ = (\instruction[11]~input_o\ & ((\mux2|mux7|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux9|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \mux2|mux7|out~0_combout\,
	combout => \alu1|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X36_Y27_N8
\alu1|ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~27_combout\ = (\alu1|ShiftLeft0~26_combout\) # ((\instruction[10]~input_o\ & \alu1|ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \alu1|ShiftLeft0~26_combout\,
	datad => \alu1|ShiftLeft0~23_combout\,
	combout => \alu1|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X31_Y29_N8
\alu1|ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~27_combout\ = (\instruction[13]~input_o\) # ((\instruction[11]~input_o\ & !\instruction[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[13]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \alu1|ShiftRight0~27_combout\);

-- Location: LCCOMB_X31_Y28_N0
\mux2|mux13|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux13|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[14]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~505_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[14]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~505_combout\,
	combout => \mux2|mux13|out~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\mux2|mux14|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux14|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[15]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~525_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[15]~input_o\,
	datac => \reg1|registers~525_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux14|out~0_combout\);

-- Location: LCCOMB_X31_Y28_N4
\alu1|ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~38_combout\ = (\instruction[10]~input_o\ & (\mux2|mux13|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux14|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux13|out~0_combout\,
	datad => \mux2|mux14|out~0_combout\,
	combout => \alu1|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X35_Y27_N16
\alu1|ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~39_combout\ = (\c7|mux16|out~0_combout\ & (((!\alu1|ShiftRight0~27_combout\ & \alu1|ShiftLeft0~38_combout\)))) # (!\c7|mux16|out~0_combout\ & ((\alu1|ShiftLeft0~27_combout\) # ((\alu1|ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux16|out~0_combout\,
	datab => \alu1|ShiftLeft0~27_combout\,
	datac => \alu1|ShiftRight0~27_combout\,
	datad => \alu1|ShiftLeft0~38_combout\,
	combout => \alu1|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X35_Y27_N6
\alu1|ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~40_combout\ = (\alu1|ShiftLeft0~39_combout\ & (((\alu1|ShiftLeft0~15_combout\) # (!\alu1|ShiftRight0~27_combout\)))) # (!\alu1|ShiftLeft0~39_combout\ & (\alu1|ShiftLeft0~33_combout\ & (\alu1|ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~33_combout\,
	datab => \alu1|ShiftLeft0~39_combout\,
	datac => \alu1|ShiftRight0~27_combout\,
	datad => \alu1|ShiftLeft0~15_combout\,
	combout => \alu1|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X35_Y27_N8
\c7|mux14|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~3_combout\ = (\alu1|mux3|mux3|or1~6_combout\ & ((\c7|mux14|out~2_combout\) # ((!\c11|ALUCtr\(2) & \alu1|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux14|out~2_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \alu1|mux3|mux3|or1~6_combout\,
	datad => \alu1|ShiftLeft0~40_combout\,
	combout => \c7|mux14|out~3_combout\);

-- Location: LCCOMB_X35_Y30_N30
\c7|mux14|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~0_combout\ = (!\c11|ALUCtr\(2) & !\c11|ALUCtr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \c7|mux14|out~0_combout\);

-- Location: FF_X38_Y31_N13
\reg1|registers~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~109_q\);

-- Location: FF_X39_Y27_N7
\reg1|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~45_q\);

-- Location: LCCOMB_X39_Y27_N16
\reg1|registers~173feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~173feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~173feeder_combout\);

-- Location: FF_X39_Y27_N17
\reg1|registers~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~173feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~173_q\);

-- Location: LCCOMB_X39_Y27_N6
\reg1|registers~526\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~526_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~173_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & (\reg1|registers~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~45_q\,
	datad => \reg1|registers~173_q\,
	combout => \reg1|registers~526_combout\);

-- Location: LCCOMB_X38_Y31_N12
\reg1|registers~527\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~527_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~526_combout\ & (\reg1|registers~237_q\)) # (!\reg1|registers~526_combout\ & ((\reg1|registers~109_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~526_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~237_q\,
	datac => \reg1|registers~109_q\,
	datad => \reg1|registers~526_combout\,
	combout => \reg1|registers~527_combout\);

-- Location: LCCOMB_X36_Y33_N2
\reg1|registers~205feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~205feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~205feeder_combout\);

-- Location: FF_X36_Y33_N3
\reg1|registers~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~205feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~205_q\);

-- Location: LCCOMB_X36_Y33_N4
\reg1|registers~77feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~77feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~77feeder_combout\);

-- Location: FF_X36_Y33_N5
\reg1|registers~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~77feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~77_q\);

-- Location: LCCOMB_X32_Y27_N12
\reg1|registers~141feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~141feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~141feeder_combout\);

-- Location: FF_X32_Y27_N13
\reg1|registers~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~141feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~141_q\);

-- Location: LCCOMB_X32_Y27_N26
\reg1|registers~13feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~13feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~13feeder_combout\);

-- Location: FF_X32_Y27_N27
\reg1|registers~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~13feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~13_q\);

-- Location: LCCOMB_X32_Y27_N30
\reg1|registers~530\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~530_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~141_q\) # ((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & (((!\instruction[24]~input_o\ & \reg1|registers~13_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~141_q\,
	datab => \instruction[25]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~13_q\,
	combout => \reg1|registers~530_combout\);

-- Location: LCCOMB_X36_Y33_N14
\reg1|registers~531\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~531_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~530_combout\ & (\reg1|registers~205_q\)) # (!\reg1|registers~530_combout\ & ((\reg1|registers~77_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~530_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~205_q\,
	datac => \reg1|registers~77_q\,
	datad => \reg1|registers~530_combout\,
	combout => \reg1|registers~531_combout\);

-- Location: FF_X36_Y31_N21
\reg1|registers~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~221_q\);

-- Location: FF_X36_Y31_N11
\reg1|registers~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~157_q\);

-- Location: FF_X39_Y30_N1
\reg1|registers~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~93_q\);

-- Location: FF_X35_Y30_N17
\reg1|registers~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~29_q\);

-- Location: LCCOMB_X39_Y30_N0
\reg1|registers~528\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~528_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~93_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & ((\reg1|registers~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~93_q\,
	datad => \reg1|registers~29_q\,
	combout => \reg1|registers~528_combout\);

-- Location: LCCOMB_X36_Y31_N10
\reg1|registers~529\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~529_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~528_combout\ & (\reg1|registers~221_q\)) # (!\reg1|registers~528_combout\ & ((\reg1|registers~157_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~528_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~221_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~157_q\,
	datad => \reg1|registers~528_combout\,
	combout => \reg1|registers~529_combout\);

-- Location: LCCOMB_X36_Y31_N2
\reg1|registers~532\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~532_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\) # (\reg1|registers~529_combout\)))) # (!\instruction[22]~input_o\ & (\reg1|registers~531_combout\ & (!\instruction[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~531_combout\,
	datab => \instruction[22]~input_o\,
	datac => \instruction[23]~input_o\,
	datad => \reg1|registers~529_combout\,
	combout => \reg1|registers~532_combout\);

-- Location: FF_X35_Y27_N3
\reg1|registers~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~253_q\);

-- Location: FF_X34_Y27_N7
\reg1|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~61_q\);

-- Location: FF_X34_Y27_N25
\reg1|registers~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux14|out~4_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~125_q\);

-- Location: LCCOMB_X34_Y27_N6
\reg1|registers~533\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~533_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~125_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & (\reg1|registers~61_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~61_q\,
	datad => \reg1|registers~125_q\,
	combout => \reg1|registers~533_combout\);

-- Location: LCCOMB_X35_Y27_N0
\reg1|registers~189feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~189feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~189feeder_combout\);

-- Location: FF_X35_Y27_N1
\reg1|registers~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~189feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~189_q\);

-- Location: LCCOMB_X35_Y26_N20
\reg1|registers~534\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~534_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~533_combout\ & (\reg1|registers~253_q\)) # (!\reg1|registers~533_combout\ & ((\reg1|registers~189_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~533_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~253_q\,
	datac => \reg1|registers~533_combout\,
	datad => \reg1|registers~189_q\,
	combout => \reg1|registers~534_combout\);

-- Location: LCCOMB_X39_Y31_N16
\reg1|registers~535\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~535_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~532_combout\ & ((\reg1|registers~534_combout\))) # (!\reg1|registers~532_combout\ & (\reg1|registers~527_combout\)))) # (!\instruction[23]~input_o\ & 
-- (((\reg1|registers~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~527_combout\,
	datac => \reg1|registers~532_combout\,
	datad => \reg1|registers~534_combout\,
	combout => \reg1|registers~535_combout\);

-- Location: LCCOMB_X36_Y28_N26
\alu1|adder0|adder2|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder2|full3|and1~combout\ = (\mux2|mux6|out~0_combout\) # ((\mux2|mux5|out~0_combout\) # ((\mux2|mux7|out~0_combout\) # (\alu1|adder0|adder1|full4|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux6|out~0_combout\,
	datab => \mux2|mux5|out~0_combout\,
	datac => \mux2|mux7|out~0_combout\,
	datad => \alu1|adder0|adder1|full4|and1~combout\,
	combout => \alu1|adder0|adder2|full3|and1~combout\);

-- Location: LCCOMB_X34_Y28_N20
\alu1|adder0|adder3|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder3|full2|and1~combout\ = (\mux2|mux10|out~0_combout\) # ((\mux2|mux8|out~0_combout\) # ((\mux2|mux9|out~0_combout\) # (\alu1|adder0|adder2|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux10|out~0_combout\,
	datab => \mux2|mux8|out~0_combout\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \alu1|adder0|adder2|full3|and1~combout\,
	combout => \alu1|adder0|adder3|full2|and1~combout\);

-- Location: LCCOMB_X34_Y28_N16
\alu1|adder0|adder4|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder4|full1|and1~combout\ = (\mux2|mux12|out~0_combout\) # ((\mux2|mux11|out~0_combout\) # ((\mux2|mux13|out~0_combout\) # (\alu1|adder0|adder3|full2|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux12|out~0_combout\,
	datab => \mux2|mux11|out~0_combout\,
	datac => \mux2|mux13|out~0_combout\,
	datad => \alu1|adder0|adder3|full2|and1~combout\,
	combout => \alu1|adder0|adder4|full1|and1~combout\);

-- Location: LCCOMB_X34_Y28_N18
\alu1|adder0|adder3|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder3|full4|and1~combout\ = (\mux2|mux12|out~0_combout\) # ((\mux2|mux11|out~0_combout\) # (\alu1|adder0|adder3|full2|and1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux2|mux12|out~0_combout\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \alu1|adder0|adder3|full2|and1~combout\,
	combout => \alu1|adder0|adder3|full4|and1~combout\);

-- Location: FF_X35_Y31_N29
\reg1|registers~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux13|out~6_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~252_q\);

-- Location: FF_X36_Y31_N27
\reg1|registers~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~220_q\);

-- Location: FF_X36_Y29_N25
\reg1|registers~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~204_q\);

-- Location: FF_X36_Y29_N3
\reg1|registers~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~236_q\);

-- Location: LCCOMB_X36_Y29_N24
\reg1|registers~513\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~513_combout\ = (\instruction[22]~input_o\ & (\instruction[23]~input_o\)) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & ((\reg1|registers~236_q\))) # (!\instruction[23]~input_o\ & (\reg1|registers~204_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~204_q\,
	datad => \reg1|registers~236_q\,
	combout => \reg1|registers~513_combout\);

-- Location: LCCOMB_X36_Y31_N26
\reg1|registers~514\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~514_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~513_combout\ & (\reg1|registers~252_q\)) # (!\reg1|registers~513_combout\ & ((\reg1|registers~220_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~513_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~252_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~220_q\,
	datad => \reg1|registers~513_combout\,
	combout => \reg1|registers~514_combout\);

-- Location: LCCOMB_X39_Y29_N24
\reg1|registers~60feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~60feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~60feeder_combout\);

-- Location: FF_X39_Y29_N25
\reg1|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~60feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~60_q\);

-- Location: FF_X38_Y29_N11
\reg1|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~44_q\);

-- Location: LCCOMB_X38_Y29_N12
\reg1|registers~12feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~12feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~12feeder_combout\);

-- Location: FF_X38_Y29_N13
\reg1|registers~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~12feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~12_q\);

-- Location: LCCOMB_X39_Y29_N12
\reg1|registers~28feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~28feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~28feeder_combout\);

-- Location: FF_X39_Y29_N13
\reg1|registers~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~28feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~28_q\);

-- Location: LCCOMB_X39_Y29_N4
\reg1|registers~510\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~510_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~28_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~12_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~12_q\,
	datab => \instruction[23]~input_o\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~28_q\,
	combout => \reg1|registers~510_combout\);

-- Location: LCCOMB_X38_Y29_N10
\reg1|registers~511\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~511_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~510_combout\ & (\reg1|registers~60_q\)) # (!\reg1|registers~510_combout\ & ((\reg1|registers~44_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~60_q\,
	datac => \reg1|registers~44_q\,
	datad => \reg1|registers~510_combout\,
	combout => \reg1|registers~511_combout\);

-- Location: LCCOMB_X35_Y32_N0
\reg1|registers~92feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~92feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~92feeder_combout\);

-- Location: FF_X35_Y32_N1
\reg1|registers~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~92feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~92_q\);

-- Location: LCCOMB_X32_Y33_N16
\reg1|registers~124feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~124feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~124feeder_combout\);

-- Location: FF_X32_Y33_N17
\reg1|registers~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~124feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~124_q\);

-- Location: LCCOMB_X36_Y33_N16
\reg1|registers~76feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~76feeder_combout\ = \c7|mux13|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux13|out~6_combout\,
	combout => \reg1|registers~76feeder_combout\);

-- Location: FF_X36_Y33_N17
\reg1|registers~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~76feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~76_q\);

-- Location: FF_X36_Y32_N23
\reg1|registers~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~108_q\);

-- Location: LCCOMB_X36_Y32_N22
\reg1|registers~508\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~508_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & ((\reg1|registers~108_q\))) # (!\instruction[23]~input_o\ & (\reg1|registers~76_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~76_q\,
	datac => \reg1|registers~108_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~508_combout\);

-- Location: LCCOMB_X35_Y32_N18
\reg1|registers~509\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~509_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~508_combout\ & ((\reg1|registers~124_q\))) # (!\reg1|registers~508_combout\ & (\reg1|registers~92_q\)))) # (!\instruction[22]~input_o\ & (((\reg1|registers~508_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~92_q\,
	datac => \reg1|registers~124_q\,
	datad => \reg1|registers~508_combout\,
	combout => \reg1|registers~509_combout\);

-- Location: LCCOMB_X36_Y31_N22
\reg1|registers~512\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~512_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~509_combout\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & (\reg1|registers~511_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~511_combout\,
	datad => \reg1|registers~509_combout\,
	combout => \reg1|registers~512_combout\);

-- Location: FF_X34_Y32_N3
\reg1|registers~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~140_q\);

-- Location: FF_X36_Y31_N1
\reg1|registers~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~156_q\);

-- Location: LCCOMB_X36_Y31_N0
\reg1|registers~506\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~506_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~156_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~140_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~140_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~156_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~506_combout\);

-- Location: FF_X34_Y32_N29
\reg1|registers~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~172_q\);

-- Location: LCCOMB_X35_Y31_N2
\reg1|registers~507\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~507_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~506_combout\ & (\reg1|registers~188_q\)) # (!\reg1|registers~506_combout\ & ((\reg1|registers~172_q\))))) # (!\instruction[23]~input_o\ & (\reg1|registers~506_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~506_combout\,
	datac => \reg1|registers~188_q\,
	datad => \reg1|registers~172_q\,
	combout => \reg1|registers~507_combout\);

-- Location: LCCOMB_X36_Y31_N8
\reg1|registers~515\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~515_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~512_combout\ & (\reg1|registers~514_combout\)) # (!\reg1|registers~512_combout\ & ((\reg1|registers~507_combout\))))) # (!\instruction[25]~input_o\ & 
-- (((\reg1|registers~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~514_combout\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~512_combout\,
	datad => \reg1|registers~507_combout\,
	combout => \reg1|registers~515_combout\);

-- Location: FF_X36_Y29_N27
\reg1|registers~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~235_q\);

-- Location: FF_X34_Y32_N7
\reg1|registers~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~171_q\);

-- Location: FF_X34_Y31_N19
\reg1|registers~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~107_q\);

-- Location: FF_X38_Y29_N9
\reg1|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~43_q\);

-- Location: LCCOMB_X34_Y31_N18
\reg1|registers~488\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~488_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~107_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & ((\reg1|registers~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~107_q\,
	datad => \reg1|registers~43_q\,
	combout => \reg1|registers~488_combout\);

-- Location: LCCOMB_X34_Y32_N6
\reg1|registers~489\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~489_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~488_combout\ & (\reg1|registers~235_q\)) # (!\reg1|registers~488_combout\ & ((\reg1|registers~171_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~488_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~235_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~171_q\,
	datad => \reg1|registers~488_combout\,
	combout => \reg1|registers~489_combout\);

-- Location: FF_X36_Y29_N13
\reg1|registers~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~203_q\);

-- Location: FF_X34_Y32_N17
\reg1|registers~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~139_q\);

-- Location: LCCOMB_X32_Y32_N26
\reg1|registers~11feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~11feeder_combout\ = \c7|mux12|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux12|out~0_combout\,
	combout => \reg1|registers~11feeder_combout\);

-- Location: FF_X32_Y32_N27
\reg1|registers~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~11feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~11_q\);

-- Location: LCCOMB_X32_Y32_N16
\reg1|registers~75feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~75feeder_combout\ = \c7|mux12|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux12|out~0_combout\,
	combout => \reg1|registers~75feeder_combout\);

-- Location: FF_X32_Y32_N17
\reg1|registers~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~75feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~75_q\);

-- Location: LCCOMB_X32_Y32_N22
\reg1|registers~490\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~490_combout\ = (\instruction[25]~input_o\ & (((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~75_q\))) # (!\instruction[24]~input_o\ & (\reg1|registers~11_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~11_q\,
	datab => \instruction[25]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~75_q\,
	combout => \reg1|registers~490_combout\);

-- Location: LCCOMB_X34_Y32_N16
\reg1|registers~491\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~491_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~490_combout\ & (\reg1|registers~203_q\)) # (!\reg1|registers~490_combout\ & ((\reg1|registers~139_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~490_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~203_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~139_q\,
	datad => \reg1|registers~490_combout\,
	combout => \reg1|registers~491_combout\);

-- Location: LCCOMB_X34_Y32_N18
\reg1|registers~492\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~492_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & (\reg1|registers~489_combout\)) # (!\instruction[23]~input_o\ & ((\reg1|registers~491_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~489_combout\,
	datab => \reg1|registers~491_combout\,
	datac => \instruction[22]~input_o\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~492_combout\);

-- Location: LCCOMB_X35_Y32_N28
\reg1|registers~251feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~251feeder_combout\ = \c7|mux12|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux12|out~0_combout\,
	combout => \reg1|registers~251feeder_combout\);

-- Location: FF_X35_Y32_N29
\reg1|registers~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~251feeder_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~251_q\);

-- Location: FF_X36_Y26_N31
\reg1|registers~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~187_q\);

-- Location: FF_X36_Y26_N1
\reg1|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~59_q\);

-- Location: LCCOMB_X36_Y26_N0
\reg1|registers~493\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~493_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~187_q\) # ((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & (((\reg1|registers~59_q\ & !\instruction[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~187_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~59_q\,
	datad => \instruction[24]~input_o\,
	combout => \reg1|registers~493_combout\);

-- Location: LCCOMB_X36_Y27_N22
\reg1|registers~494\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~494_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~493_combout\ & (\reg1|registers~251_q\)) # (!\reg1|registers~493_combout\ & ((\reg1|registers~123_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~493_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~251_q\,
	datab => \reg1|registers~123_q\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~493_combout\,
	combout => \reg1|registers~494_combout\);

-- Location: FF_X35_Y30_N15
\reg1|registers~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~219_q\);

-- Location: FF_X35_Y32_N17
\reg1|registers~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~91_q\);

-- Location: FF_X35_Y30_N9
\reg1|registers~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~27_q\);

-- Location: FF_X38_Y32_N27
\reg1|registers~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux12|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~155_q\);

-- Location: LCCOMB_X38_Y32_N26
\reg1|registers~486\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~486_combout\ = (\instruction[25]~input_o\ & (((\reg1|registers~155_q\) # (\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & (\reg1|registers~27_q\ & ((!\instruction[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~27_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~155_q\,
	datad => \instruction[24]~input_o\,
	combout => \reg1|registers~486_combout\);

-- Location: LCCOMB_X35_Y32_N16
\reg1|registers~487\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~487_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~486_combout\ & (\reg1|registers~219_q\)) # (!\reg1|registers~486_combout\ & ((\reg1|registers~91_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~486_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~219_q\,
	datac => \reg1|registers~91_q\,
	datad => \reg1|registers~486_combout\,
	combout => \reg1|registers~487_combout\);

-- Location: LCCOMB_X35_Y32_N26
\reg1|registers~495\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~495_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~492_combout\ & (\reg1|registers~494_combout\)) # (!\reg1|registers~492_combout\ & ((\reg1|registers~487_combout\))))) # (!\instruction[22]~input_o\ & 
-- (\reg1|registers~492_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~492_combout\,
	datac => \reg1|registers~494_combout\,
	datad => \reg1|registers~487_combout\,
	combout => \reg1|registers~495_combout\);

-- Location: LCCOMB_X34_Y28_N26
\alu1|adder0|adder3|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder3|full3|and1~combout\ = (\alu1|adder0|adder3|full2|and1~combout\) # ((\c11|WideOr2~1_combout\ & ((\instruction[12]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~465_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~465_combout\,
	datab => \instruction[12]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \alu1|adder0|adder3|full2|and1~combout\,
	combout => \alu1|adder0|adder3|full3|and1~combout\);

-- Location: FF_X35_Y31_N25
\reg1|registers~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux11|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~250_q\);

-- Location: FF_X36_Y29_N31
\reg1|registers~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~234_q\);

-- Location: FF_X36_Y29_N1
\reg1|registers~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~202_q\);

-- Location: FF_X36_Y31_N31
\reg1|registers~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~218_q\);

-- Location: LCCOMB_X36_Y31_N30
\reg1|registers~483\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~483_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~218_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~202_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~202_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~218_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~483_combout\);

-- Location: LCCOMB_X36_Y29_N28
\reg1|registers~484\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~484_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~483_combout\ & (\reg1|registers~250_q\)) # (!\reg1|registers~483_combout\ & ((\reg1|registers~234_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~483_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~250_q\,
	datac => \reg1|registers~234_q\,
	datad => \reg1|registers~483_combout\,
	combout => \reg1|registers~484_combout\);

-- Location: FF_X38_Y29_N19
\reg1|registers~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~10_q\);

-- Location: FF_X38_Y29_N25
\reg1|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~42_q\);

-- Location: LCCOMB_X38_Y29_N18
\reg1|registers~480\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~480_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~42_q\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & (\reg1|registers~10_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~10_q\,
	datad => \reg1|registers~42_q\,
	combout => \reg1|registers~480_combout\);

-- Location: LCCOMB_X39_Y29_N14
\reg1|registers~58feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~58feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~58feeder_combout\);

-- Location: FF_X39_Y29_N15
\reg1|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~58feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~58_q\);

-- Location: LCCOMB_X39_Y29_N16
\reg1|registers~26feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~26feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~26feeder_combout\);

-- Location: FF_X39_Y29_N17
\reg1|registers~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~26feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~26_q\);

-- Location: LCCOMB_X39_Y29_N10
\reg1|registers~481\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~481_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~480_combout\ & (\reg1|registers~58_q\)) # (!\reg1|registers~480_combout\ & ((\reg1|registers~26_q\))))) # (!\instruction[22]~input_o\ & (\reg1|registers~480_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~480_combout\,
	datac => \reg1|registers~58_q\,
	datad => \reg1|registers~26_q\,
	combout => \reg1|registers~481_combout\);

-- Location: LCCOMB_X35_Y33_N8
\reg1|registers~154feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~154feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~154feeder_combout\);

-- Location: FF_X35_Y33_N9
\reg1|registers~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~154feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~154_q\);

-- Location: LCCOMB_X34_Y33_N24
\reg1|registers~170feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~170feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~170feeder_combout\);

-- Location: FF_X34_Y33_N25
\reg1|registers~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~170feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~170_q\);

-- Location: LCCOMB_X34_Y33_N22
\reg1|registers~138feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~138feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~138feeder_combout\);

-- Location: FF_X34_Y33_N23
\reg1|registers~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~138feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~138_q\);

-- Location: LCCOMB_X34_Y33_N26
\reg1|registers~478\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~478_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~170_q\) # ((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~138_q\ & !\instruction[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~170_q\,
	datac => \reg1|registers~138_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~478_combout\);

-- Location: LCCOMB_X35_Y33_N6
\reg1|registers~186feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~186feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~186feeder_combout\);

-- Location: FF_X35_Y33_N7
\reg1|registers~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~186feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~186_q\);

-- Location: LCCOMB_X35_Y33_N18
\reg1|registers~479\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~479_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~478_combout\ & ((\reg1|registers~186_q\))) # (!\reg1|registers~478_combout\ & (\reg1|registers~154_q\)))) # (!\instruction[22]~input_o\ & (((\reg1|registers~478_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~154_q\,
	datac => \reg1|registers~478_combout\,
	datad => \reg1|registers~186_q\,
	combout => \reg1|registers~479_combout\);

-- Location: LCCOMB_X35_Y33_N28
\reg1|registers~482\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~482_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~479_combout\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & (\reg1|registers~481_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~481_combout\,
	datad => \reg1|registers~479_combout\,
	combout => \reg1|registers~482_combout\);

-- Location: FF_X39_Y30_N11
\reg1|registers~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~74_q\);

-- Location: LCCOMB_X39_Y30_N10
\reg1|registers~476\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~476_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~90_q\) # ((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & (((\reg1|registers~74_q\ & !\instruction[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~90_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~74_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~476_combout\);

-- Location: FF_X34_Y27_N3
\reg1|registers~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~122_q\);

-- Location: LCCOMB_X38_Y31_N16
\reg1|registers~106feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~106feeder_combout\ = \c7|mux11|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux11|out~0_combout\,
	combout => \reg1|registers~106feeder_combout\);

-- Location: FF_X38_Y31_N17
\reg1|registers~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~106feeder_combout\,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~106_q\);

-- Location: LCCOMB_X34_Y27_N2
\reg1|registers~477\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~477_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~476_combout\ & (\reg1|registers~122_q\)) # (!\reg1|registers~476_combout\ & ((\reg1|registers~106_q\))))) # (!\instruction[23]~input_o\ & (\reg1|registers~476_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~476_combout\,
	datac => \reg1|registers~122_q\,
	datad => \reg1|registers~106_q\,
	combout => \reg1|registers~477_combout\);

-- Location: LCCOMB_X34_Y27_N16
\reg1|registers~485\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~485_combout\ = (\reg1|registers~482_combout\ & ((\reg1|registers~484_combout\) # ((!\instruction[24]~input_o\)))) # (!\reg1|registers~482_combout\ & (((\instruction[24]~input_o\ & \reg1|registers~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~484_combout\,
	datab => \reg1|registers~482_combout\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~477_combout\,
	combout => \reg1|registers~485_combout\);

-- Location: LCCOMB_X35_Y34_N30
\reg1|registers~41feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~41feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~41feeder_combout\);

-- Location: FF_X35_Y34_N31
\reg1|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~41feeder_combout\,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~41_q\);

-- Location: LCCOMB_X35_Y34_N0
\reg1|registers~169feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~169feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~169feeder_combout\);

-- Location: FF_X35_Y34_N1
\reg1|registers~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~169feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~169_q\);

-- Location: LCCOMB_X35_Y34_N26
\reg1|registers~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~446_combout\ = (\instruction[24]~input_o\ & (((\instruction[25]~input_o\)))) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~169_q\))) # (!\instruction[25]~input_o\ & (\reg1|registers~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~41_q\,
	datab => \instruction[24]~input_o\,
	datac => \instruction[25]~input_o\,
	datad => \reg1|registers~169_q\,
	combout => \reg1|registers~446_combout\);

-- Location: FF_X36_Y32_N9
\reg1|registers~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~233_q\);

-- Location: FF_X36_Y32_N19
\reg1|registers~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~105_q\);

-- Location: LCCOMB_X36_Y32_N8
\reg1|registers~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~447_combout\ = (\reg1|registers~446_combout\ & (((\reg1|registers~233_q\)) # (!\instruction[24]~input_o\))) # (!\reg1|registers~446_combout\ & (\instruction[24]~input_o\ & ((\reg1|registers~105_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~446_combout\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~233_q\,
	datad => \reg1|registers~105_q\,
	combout => \reg1|registers~447_combout\);

-- Location: LCCOMB_X32_Y27_N4
\reg1|registers~137feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~137feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~137feeder_combout\);

-- Location: FF_X32_Y27_N5
\reg1|registers~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~137feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~137_q\);

-- Location: LCCOMB_X32_Y27_N18
\reg1|registers~9feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~9feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~9feeder_combout\);

-- Location: FF_X32_Y27_N19
\reg1|registers~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~9feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~9_q\);

-- Location: LCCOMB_X32_Y27_N14
\reg1|registers~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~450_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~137_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & ((\reg1|registers~9_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~137_q\,
	datad => \reg1|registers~9_q\,
	combout => \reg1|registers~450_combout\);

-- Location: LCCOMB_X36_Y33_N26
\reg1|registers~201feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~201feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~201feeder_combout\);

-- Location: FF_X36_Y33_N27
\reg1|registers~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~201feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~201_q\);

-- Location: LCCOMB_X36_Y33_N0
\reg1|registers~73feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~73feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~73feeder_combout\);

-- Location: FF_X36_Y33_N1
\reg1|registers~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~73feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~73_q\);

-- Location: LCCOMB_X36_Y33_N30
\reg1|registers~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~451_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~450_combout\ & (\reg1|registers~201_q\)) # (!\reg1|registers~450_combout\ & ((\reg1|registers~73_q\))))) # (!\instruction[24]~input_o\ & (\reg1|registers~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~450_combout\,
	datac => \reg1|registers~201_q\,
	datad => \reg1|registers~73_q\,
	combout => \reg1|registers~451_combout\);

-- Location: FF_X35_Y30_N27
\reg1|registers~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~217_q\);

-- Location: FF_X36_Y31_N13
\reg1|registers~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~153_q\);

-- Location: LCCOMB_X32_Y31_N28
\reg1|registers~89feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~89feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~89feeder_combout\);

-- Location: FF_X32_Y31_N29
\reg1|registers~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~89feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~89_q\);

-- Location: FF_X35_Y30_N25
\reg1|registers~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~25_q\);

-- Location: LCCOMB_X32_Y31_N14
\reg1|registers~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~448_combout\ = (\instruction[25]~input_o\ & (((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & (\reg1|registers~89_q\)) # (!\instruction[24]~input_o\ & ((\reg1|registers~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~89_q\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~25_q\,
	combout => \reg1|registers~448_combout\);

-- Location: LCCOMB_X36_Y31_N12
\reg1|registers~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~449_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~448_combout\ & (\reg1|registers~217_q\)) # (!\reg1|registers~448_combout\ & ((\reg1|registers~153_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~217_q\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~153_q\,
	datad => \reg1|registers~448_combout\,
	combout => \reg1|registers~449_combout\);

-- Location: LCCOMB_X36_Y32_N30
\reg1|registers~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~452_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~449_combout\))) # (!\instruction[22]~input_o\ & (\reg1|registers~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~451_combout\,
	datad => \reg1|registers~449_combout\,
	combout => \reg1|registers~452_combout\);

-- Location: FF_X34_Y31_N13
\reg1|registers~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~249_q\);

-- Location: FF_X34_Y27_N19
\reg1|registers~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux10|out~5_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~121_q\);

-- Location: LCCOMB_X34_Y27_N28
\reg1|registers~57feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~57feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~57feeder_combout\);

-- Location: FF_X34_Y27_N29
\reg1|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~57feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~57_q\);

-- Location: LCCOMB_X34_Y27_N18
\reg1|registers~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~453_combout\ = (\instruction[24]~input_o\ & ((\instruction[25]~input_o\) # ((\reg1|registers~121_q\)))) # (!\instruction[24]~input_o\ & (!\instruction[25]~input_o\ & ((\reg1|registers~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~121_q\,
	datad => \reg1|registers~57_q\,
	combout => \reg1|registers~453_combout\);

-- Location: LCCOMB_X32_Y31_N0
\reg1|registers~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~454_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~453_combout\ & (\reg1|registers~249_q\)) # (!\reg1|registers~453_combout\ & ((\reg1|registers~185_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~453_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~249_q\,
	datac => \reg1|registers~453_combout\,
	datad => \reg1|registers~185_q\,
	combout => \reg1|registers~454_combout\);

-- Location: LCCOMB_X36_Y32_N4
\reg1|registers~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~455_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~452_combout\ & ((\reg1|registers~454_combout\))) # (!\reg1|registers~452_combout\ & (\reg1|registers~447_combout\)))) # (!\instruction[23]~input_o\ & 
-- (((\reg1|registers~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~447_combout\,
	datac => \reg1|registers~452_combout\,
	datad => \reg1|registers~454_combout\,
	combout => \reg1|registers~455_combout\);

-- Location: LCCOMB_X36_Y28_N22
\alu1|adder0|adder3|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder3|full1|and1~combout\ = (\alu1|adder0|adder2|full3|and1~combout\) # ((\mux2|mux9|out~0_combout\) # (\mux2|mux8|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder0|adder2|full3|and1~combout\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \mux2|mux8|out~0_combout\,
	combout => \alu1|adder0|adder3|full1|and1~combout\);

-- Location: FF_X34_Y32_N11
\reg1|registers~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~168_q\);

-- Location: FF_X34_Y32_N25
\reg1|registers~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~136_q\);

-- Location: FF_X38_Y32_N29
\reg1|registers~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~152_q\);

-- Location: LCCOMB_X38_Y32_N28
\reg1|registers~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~426_combout\ = (\instruction[23]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~152_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~136_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~136_q\,
	datac => \reg1|registers~152_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~426_combout\);

-- Location: LCCOMB_X38_Y32_N22
\reg1|registers~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~427_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~426_combout\ & ((\reg1|registers~184_q\))) # (!\reg1|registers~426_combout\ & (\reg1|registers~168_q\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~168_q\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~184_q\,
	datad => \reg1|registers~426_combout\,
	combout => \reg1|registers~427_combout\);

-- Location: FF_X39_Y28_N27
\reg1|registers~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~120_q\);

-- Location: FF_X39_Y28_N21
\reg1|registers~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~72_q\);

-- Location: FF_X36_Y32_N1
\reg1|registers~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~104_q\);

-- Location: LCCOMB_X36_Y32_N0
\reg1|registers~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~428_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & ((\reg1|registers~104_q\))) # (!\instruction[23]~input_o\ & (\reg1|registers~72_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~72_q\,
	datac => \reg1|registers~104_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~428_combout\);

-- Location: LCCOMB_X35_Y32_N12
\reg1|registers~88feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~88feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~88feeder_combout\);

-- Location: FF_X35_Y32_N13
\reg1|registers~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~88feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~88_q\);

-- Location: LCCOMB_X35_Y32_N22
\reg1|registers~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~429_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~428_combout\ & (\reg1|registers~120_q\)) # (!\reg1|registers~428_combout\ & ((\reg1|registers~88_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~120_q\,
	datac => \reg1|registers~428_combout\,
	datad => \reg1|registers~88_q\,
	combout => \reg1|registers~429_combout\);

-- Location: LCCOMB_X38_Y26_N8
\reg1|registers~56feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~56feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~56feeder_combout\);

-- Location: FF_X38_Y26_N9
\reg1|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~56feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~56_q\);

-- Location: FF_X36_Y28_N25
\reg1|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~40_q\);

-- Location: LCCOMB_X39_Y31_N14
\reg1|registers~8feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~8feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~8feeder_combout\);

-- Location: FF_X39_Y31_N15
\reg1|registers~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~8feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~8_q\);

-- Location: LCCOMB_X39_Y31_N12
\reg1|registers~24feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~24feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~24feeder_combout\);

-- Location: FF_X39_Y31_N13
\reg1|registers~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~24feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~24_q\);

-- Location: LCCOMB_X39_Y31_N26
\reg1|registers~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~430_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~24_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~8_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~8_q\,
	datad => \reg1|registers~24_q\,
	combout => \reg1|registers~430_combout\);

-- Location: LCCOMB_X36_Y28_N24
\reg1|registers~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~431_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~430_combout\ & (\reg1|registers~56_q\)) # (!\reg1|registers~430_combout\ & ((\reg1|registers~40_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~430_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~56_q\,
	datac => \reg1|registers~40_q\,
	datad => \reg1|registers~430_combout\,
	combout => \reg1|registers~431_combout\);

-- Location: LCCOMB_X36_Y28_N30
\reg1|registers~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~432_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~429_combout\) # ((\instruction[25]~input_o\)))) # (!\instruction[24]~input_o\ & (((!\instruction[25]~input_o\ & \reg1|registers~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~429_combout\,
	datac => \instruction[25]~input_o\,
	datad => \reg1|registers~431_combout\,
	combout => \reg1|registers~432_combout\);

-- Location: FF_X37_Y30_N3
\reg1|registers~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux9|out~6_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~248_q\);

-- Location: LCCOMB_X37_Y26_N12
\reg1|registers~216feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~216feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~216feeder_combout\);

-- Location: FF_X37_Y26_N13
\reg1|registers~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~216feeder_combout\,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~216_q\);

-- Location: LCCOMB_X37_Y26_N22
\reg1|registers~200feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~200feeder_combout\ = \c7|mux9|out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux9|out~6_combout\,
	combout => \reg1|registers~200feeder_combout\);

-- Location: FF_X37_Y26_N23
\reg1|registers~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~200feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~200_q\);

-- Location: FF_X36_Y32_N11
\reg1|registers~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~232_q\);

-- Location: LCCOMB_X36_Y32_N10
\reg1|registers~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~433_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & ((\reg1|registers~232_q\))) # (!\instruction[23]~input_o\ & (\reg1|registers~200_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~200_q\,
	datac => \reg1|registers~232_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~433_combout\);

-- Location: LCCOMB_X36_Y32_N12
\reg1|registers~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~434_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~433_combout\ & (\reg1|registers~248_q\)) # (!\reg1|registers~433_combout\ & ((\reg1|registers~216_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~248_q\,
	datac => \reg1|registers~216_q\,
	datad => \reg1|registers~433_combout\,
	combout => \reg1|registers~434_combout\);

-- Location: LCCOMB_X36_Y28_N8
\reg1|registers~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~435_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~432_combout\ & ((\reg1|registers~434_combout\))) # (!\reg1|registers~432_combout\ & (\reg1|registers~427_combout\)))) # (!\instruction[25]~input_o\ & 
-- (((\reg1|registers~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~427_combout\,
	datac => \reg1|registers~432_combout\,
	datad => \reg1|registers~434_combout\,
	combout => \reg1|registers~435_combout\);

-- Location: LCCOMB_X36_Y28_N28
\alu1|adder0|adder2|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder2|full4|and1~combout\ = (\alu1|adder0|adder2|full3|and1~combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[9]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \c11|WideOr2~1_combout\,
	datac => \alu1|adder0|adder2|full3|and1~combout\,
	datad => \reg1|registers~405_combout\,
	combout => \alu1|adder0|adder2|full4|and1~combout\);

-- Location: FF_X34_Y28_N9
\reg1|registers~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~199_q\);

-- Location: LCCOMB_X39_Y32_N8
\reg1|registers~135feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~135feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~135feeder_combout\);

-- Location: FF_X39_Y32_N9
\reg1|registers~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~135feeder_combout\,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~135_q\);

-- Location: LCCOMB_X32_Y32_N10
\reg1|registers~7feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~7feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~7feeder_combout\);

-- Location: FF_X32_Y32_N11
\reg1|registers~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~7feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~7_q\);

-- Location: LCCOMB_X32_Y32_N20
\reg1|registers~71feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~71feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~71feeder_combout\);

-- Location: FF_X32_Y32_N21
\reg1|registers~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~71feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~71_q\);

-- Location: LCCOMB_X32_Y32_N2
\reg1|registers~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~420_combout\ = (\instruction[25]~input_o\ & (((\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~71_q\))) # (!\instruction[24]~input_o\ & (\reg1|registers~7_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~7_q\,
	datab => \instruction[25]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~71_q\,
	combout => \reg1|registers~420_combout\);

-- Location: LCCOMB_X39_Y32_N26
\reg1|registers~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~421_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~420_combout\ & (\reg1|registers~199_q\)) # (!\reg1|registers~420_combout\ & ((\reg1|registers~135_q\))))) # (!\instruction[25]~input_o\ & (((\reg1|registers~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~199_q\,
	datac => \reg1|registers~135_q\,
	datad => \reg1|registers~420_combout\,
	combout => \reg1|registers~421_combout\);

-- Location: FF_X36_Y28_N11
\reg1|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~39_q\);

-- Location: FF_X36_Y28_N1
\reg1|registers~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~103_q\);

-- Location: LCCOMB_X36_Y28_N10
\reg1|registers~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~418_combout\ = (\instruction[25]~input_o\ & (\instruction[24]~input_o\)) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~103_q\))) # (!\instruction[24]~input_o\ & (\reg1|registers~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~39_q\,
	datad => \reg1|registers~103_q\,
	combout => \reg1|registers~418_combout\);

-- Location: FF_X34_Y32_N5
\reg1|registers~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~167_q\);

-- Location: FF_X36_Y29_N9
\reg1|registers~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~231_q\);

-- Location: LCCOMB_X34_Y32_N4
\reg1|registers~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~419_combout\ = (\reg1|registers~418_combout\ & (((\reg1|registers~231_q\)) # (!\instruction[25]~input_o\))) # (!\reg1|registers~418_combout\ & (\instruction[25]~input_o\ & (\reg1|registers~167_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~418_combout\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~167_q\,
	datad => \reg1|registers~231_q\,
	combout => \reg1|registers~419_combout\);

-- Location: LCCOMB_X39_Y32_N24
\reg1|registers~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~422_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~419_combout\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & (\reg1|registers~421_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~421_combout\,
	datad => \reg1|registers~419_combout\,
	combout => \reg1|registers~422_combout\);

-- Location: LCCOMB_X35_Y32_N4
\reg1|registers~87feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~87feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~87feeder_combout\);

-- Location: FF_X35_Y32_N5
\reg1|registers~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~87feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~87_q\);

-- Location: FF_X35_Y30_N11
\reg1|registers~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~215_q\);

-- Location: FF_X35_Y30_N29
\reg1|registers~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~23_q\);

-- Location: LCCOMB_X36_Y31_N28
\reg1|registers~151feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~151feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~151feeder_combout\);

-- Location: FF_X36_Y31_N29
\reg1|registers~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~151feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~151_q\);

-- Location: LCCOMB_X36_Y31_N6
\reg1|registers~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~416_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~151_q\))) # (!\instruction[25]~input_o\ & (\reg1|registers~23_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~23_q\,
	datad => \reg1|registers~151_q\,
	combout => \reg1|registers~416_combout\);

-- Location: LCCOMB_X35_Y30_N10
\reg1|registers~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~417_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~416_combout\ & ((\reg1|registers~215_q\))) # (!\reg1|registers~416_combout\ & (\reg1|registers~87_q\)))) # (!\instruction[24]~input_o\ & (((\reg1|registers~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~87_q\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~215_q\,
	datad => \reg1|registers~416_combout\,
	combout => \reg1|registers~417_combout\);

-- Location: FF_X32_Y30_N15
\reg1|registers~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux8|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~247_q\);

-- Location: LCCOMB_X32_Y26_N12
\reg1|registers~183feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~183feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~183feeder_combout\);

-- Location: FF_X32_Y26_N13
\reg1|registers~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~183feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~183_q\);

-- Location: LCCOMB_X32_Y26_N14
\reg1|registers~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~423_combout\ = (\instruction[25]~input_o\ & (((\instruction[24]~input_o\) # (\reg1|registers~183_q\)))) # (!\instruction[25]~input_o\ & (\reg1|registers~55_q\ & (!\instruction[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~55_q\,
	datab => \instruction[25]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~183_q\,
	combout => \reg1|registers~423_combout\);

-- Location: FF_X32_Y28_N11
\reg1|registers~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux8|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~119_q\);

-- Location: LCCOMB_X39_Y32_N14
\reg1|registers~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~424_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~423_combout\ & (\reg1|registers~247_q\)) # (!\reg1|registers~423_combout\ & ((\reg1|registers~119_q\))))) # (!\instruction[24]~input_o\ & (((\reg1|registers~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~247_q\,
	datac => \reg1|registers~423_combout\,
	datad => \reg1|registers~119_q\,
	combout => \reg1|registers~424_combout\);

-- Location: LCCOMB_X38_Y32_N12
\reg1|registers~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~425_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~422_combout\ & ((\reg1|registers~424_combout\))) # (!\reg1|registers~422_combout\ & (\reg1|registers~417_combout\)))) # (!\instruction[22]~input_o\ & 
-- (\reg1|registers~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~422_combout\,
	datac => \reg1|registers~417_combout\,
	datad => \reg1|registers~424_combout\,
	combout => \reg1|registers~425_combout\);

-- Location: LCCOMB_X37_Y28_N28
\alu1|adder0|adder2|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder2|full2|and1~combout\ = (\mux2|mux6|out~0_combout\) # ((\mux2|mux5|out~0_combout\) # (\alu1|adder0|adder1|full4|and1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux2|mux6|out~0_combout\,
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|adder0|adder1|full4|and1~combout\,
	combout => \alu1|adder0|adder2|full2|and1~combout\);

-- Location: LCCOMB_X34_Y29_N20
\reg1|registers~214feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~214feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~214feeder_combout\);

-- Location: FF_X34_Y29_N21
\reg1|registers~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~214feeder_combout\,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~214_q\);

-- Location: LCCOMB_X36_Y29_N18
\reg1|registers~198feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~198feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~198feeder_combout\);

-- Location: FF_X36_Y29_N19
\reg1|registers~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~198feeder_combout\,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~198_q\);

-- Location: LCCOMB_X34_Y29_N2
\reg1|registers~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~393_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~214_q\) # ((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & (((!\instruction[23]~input_o\ & \reg1|registers~198_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~214_q\,
	datac => \instruction[23]~input_o\,
	datad => \reg1|registers~198_q\,
	combout => \reg1|registers~393_combout\);

-- Location: FF_X36_Y29_N17
\reg1|registers~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~230_q\);

-- Location: LCCOMB_X36_Y29_N14
\reg1|registers~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~394_combout\ = (\reg1|registers~393_combout\ & (((\reg1|registers~246_q\)) # (!\instruction[23]~input_o\))) # (!\reg1|registers~393_combout\ & (\instruction[23]~input_o\ & ((\reg1|registers~230_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~393_combout\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~246_q\,
	datad => \reg1|registers~230_q\,
	combout => \reg1|registers~394_combout\);

-- Location: LCCOMB_X38_Y33_N16
\reg1|registers~118feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~118feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~118feeder_combout\);

-- Location: FF_X38_Y33_N17
\reg1|registers~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~118feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~118_q\);

-- Location: LCCOMB_X38_Y31_N20
\reg1|registers~102feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~102feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~102feeder_combout\);

-- Location: FF_X38_Y31_N21
\reg1|registers~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~102feeder_combout\,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~102_q\);

-- Location: FF_X39_Y30_N5
\reg1|registers~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~70_q\);

-- Location: LCCOMB_X39_Y30_N6
\reg1|registers~86feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~86feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~86feeder_combout\);

-- Location: FF_X39_Y30_N7
\reg1|registers~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~86feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~86_q\);

-- Location: LCCOMB_X39_Y30_N4
\reg1|registers~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~386_combout\ = (\instruction[23]~input_o\ & (\instruction[22]~input_o\)) # (!\instruction[23]~input_o\ & ((\instruction[22]~input_o\ & ((\reg1|registers~86_q\))) # (!\instruction[22]~input_o\ & (\reg1|registers~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~70_q\,
	datad => \reg1|registers~86_q\,
	combout => \reg1|registers~386_combout\);

-- Location: LCCOMB_X38_Y33_N10
\reg1|registers~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~387_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~386_combout\ & (\reg1|registers~118_q\)) # (!\reg1|registers~386_combout\ & ((\reg1|registers~102_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~118_q\,
	datac => \reg1|registers~102_q\,
	datad => \reg1|registers~386_combout\,
	combout => \reg1|registers~387_combout\);

-- Location: FF_X35_Y33_N11
\reg1|registers~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~182_q\);

-- Location: LCCOMB_X35_Y33_N24
\reg1|registers~150feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~150feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~150feeder_combout\);

-- Location: FF_X35_Y33_N25
\reg1|registers~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~150feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~150_q\);

-- Location: LCCOMB_X34_Y32_N30
\reg1|registers~166feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~166feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~166feeder_combout\);

-- Location: FF_X34_Y32_N31
\reg1|registers~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~166feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~166_q\);

-- Location: FF_X34_Y32_N1
\reg1|registers~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~134_q\);

-- Location: LCCOMB_X34_Y32_N0
\reg1|registers~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~388_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & (\reg1|registers~166_q\)) # (!\instruction[23]~input_o\ & ((\reg1|registers~134_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~166_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~134_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~388_combout\);

-- Location: LCCOMB_X35_Y33_N22
\reg1|registers~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~389_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~388_combout\ & (\reg1|registers~182_q\)) # (!\reg1|registers~388_combout\ & ((\reg1|registers~150_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~182_q\,
	datab => \reg1|registers~150_q\,
	datac => \instruction[22]~input_o\,
	datad => \reg1|registers~388_combout\,
	combout => \reg1|registers~389_combout\);

-- Location: LCCOMB_X36_Y26_N22
\reg1|registers~54feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~54feeder_combout\ = \c7|mux7|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux7|out~0_combout\,
	combout => \reg1|registers~54feeder_combout\);

-- Location: FF_X36_Y26_N23
\reg1|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~54feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~54_q\);

-- Location: FF_X37_Y29_N25
\reg1|registers~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~22_q\);

-- Location: FF_X38_Y29_N23
\reg1|registers~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~6_q\);

-- Location: FF_X38_Y29_N17
\reg1|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux7|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~38_q\);

-- Location: LCCOMB_X38_Y29_N22
\reg1|registers~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~390_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~38_q\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & (\reg1|registers~6_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~6_q\,
	datad => \reg1|registers~38_q\,
	combout => \reg1|registers~390_combout\);

-- Location: LCCOMB_X37_Y29_N24
\reg1|registers~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~391_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~390_combout\ & (\reg1|registers~54_q\)) # (!\reg1|registers~390_combout\ & ((\reg1|registers~22_q\))))) # (!\instruction[22]~input_o\ & (((\reg1|registers~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~54_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~22_q\,
	datad => \reg1|registers~390_combout\,
	combout => \reg1|registers~391_combout\);

-- Location: LCCOMB_X37_Y29_N16
\reg1|registers~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~392_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~389_combout\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & ((\reg1|registers~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~389_combout\,
	datad => \reg1|registers~391_combout\,
	combout => \reg1|registers~392_combout\);

-- Location: LCCOMB_X37_Y29_N26
\reg1|registers~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~395_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~392_combout\ & (\reg1|registers~394_combout\)) # (!\reg1|registers~392_combout\ & ((\reg1|registers~387_combout\))))) # (!\instruction[24]~input_o\ & 
-- (((\reg1|registers~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~394_combout\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~387_combout\,
	datad => \reg1|registers~392_combout\,
	combout => \reg1|registers~395_combout\);

-- Location: LCCOMB_X37_Y28_N6
\alu1|adder2|adder2|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full2|or1~0_combout\ = (\reg1|registers~375_combout\ & ((\alu1|adder2|adder2|full1|or1~0_combout\) # (\mux2|mux6|out~0_combout\ $ (\alu1|adder0|adder2|full1|and1~combout\)))) # (!\reg1|registers~375_combout\ & 
-- (\alu1|adder2|adder2|full1|or1~0_combout\ & (\mux2|mux6|out~0_combout\ $ (\alu1|adder0|adder2|full1|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~375_combout\,
	datab => \mux2|mux6|out~0_combout\,
	datac => \alu1|adder0|adder2|full1|and1~combout\,
	datad => \alu1|adder2|adder2|full1|or1~0_combout\,
	combout => \alu1|adder2|adder2|full2|or1~0_combout\);

-- Location: LCCOMB_X37_Y28_N12
\alu1|adder2|adder2|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full3|or1~0_combout\ = (\reg1|registers~395_combout\ & ((\alu1|adder2|adder2|full2|or1~0_combout\) # (\mux2|mux7|out~0_combout\ $ (\alu1|adder0|adder2|full2|and1~combout\)))) # (!\reg1|registers~395_combout\ & 
-- (\alu1|adder2|adder2|full2|or1~0_combout\ & (\mux2|mux7|out~0_combout\ $ (\alu1|adder0|adder2|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux7|out~0_combout\,
	datab => \alu1|adder0|adder2|full2|and1~combout\,
	datac => \reg1|registers~395_combout\,
	datad => \alu1|adder2|adder2|full2|or1~0_combout\,
	combout => \alu1|adder2|adder2|full3|or1~0_combout\);

-- Location: LCCOMB_X37_Y28_N26
\alu1|adder2|adder2|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full4|or1~0_combout\ = (\reg1|registers~425_combout\ & ((\alu1|adder2|adder2|full3|or1~0_combout\) # (\mux2|mux8|out~0_combout\ $ (\alu1|adder0|adder2|full3|and1~combout\)))) # (!\reg1|registers~425_combout\ & 
-- (\alu1|adder2|adder2|full3|or1~0_combout\ & (\mux2|mux8|out~0_combout\ $ (\alu1|adder0|adder2|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux8|out~0_combout\,
	datab => \reg1|registers~425_combout\,
	datac => \alu1|adder0|adder2|full3|and1~combout\,
	datad => \alu1|adder2|adder2|full3|or1~0_combout\,
	combout => \alu1|adder2|adder2|full4|or1~0_combout\);

-- Location: LCCOMB_X36_Y28_N4
\alu1|adder2|adder3|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full1|or1~0_combout\ = (\reg1|registers~435_combout\ & ((\alu1|adder2|adder2|full4|or1~0_combout\) # (\alu1|adder0|adder2|full4|and1~combout\ $ (\mux2|mux9|out~0_combout\)))) # (!\reg1|registers~435_combout\ & 
-- (\alu1|adder2|adder2|full4|or1~0_combout\ & (\alu1|adder0|adder2|full4|and1~combout\ $ (\mux2|mux9|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~435_combout\,
	datab => \alu1|adder0|adder2|full4|and1~combout\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \alu1|adder2|adder2|full4|or1~0_combout\,
	combout => \alu1|adder2|adder3|full1|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N20
\alu1|adder2|adder3|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full2|or1~0_combout\ = (\reg1|registers~455_combout\ & ((\alu1|adder2|adder3|full1|or1~0_combout\) # (\alu1|adder0|adder3|full1|and1~combout\ $ (\mux2|mux10|out~0_combout\)))) # (!\reg1|registers~455_combout\ & 
-- (\alu1|adder2|adder3|full1|or1~0_combout\ & (\alu1|adder0|adder3|full1|and1~combout\ $ (\mux2|mux10|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~455_combout\,
	datab => \alu1|adder0|adder3|full1|and1~combout\,
	datac => \mux2|mux10|out~0_combout\,
	datad => \alu1|adder2|adder3|full1|or1~0_combout\,
	combout => \alu1|adder2|adder3|full2|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N6
\alu1|adder2|adder3|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full3|or1~0_combout\ = (\reg1|registers~485_combout\ & ((\alu1|adder2|adder3|full2|or1~0_combout\) # (\mux2|mux11|out~0_combout\ $ (\alu1|adder0|adder3|full2|and1~combout\)))) # (!\reg1|registers~485_combout\ & 
-- (\alu1|adder2|adder3|full2|or1~0_combout\ & (\mux2|mux11|out~0_combout\ $ (\alu1|adder0|adder3|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux11|out~0_combout\,
	datab => \reg1|registers~485_combout\,
	datac => \alu1|adder0|adder3|full2|and1~combout\,
	datad => \alu1|adder2|adder3|full2|or1~0_combout\,
	combout => \alu1|adder2|adder3|full3|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N10
\alu1|adder2|adder3|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full4|or1~0_combout\ = (\reg1|registers~495_combout\ & ((\alu1|adder2|adder3|full3|or1~0_combout\) # (\mux2|mux12|out~0_combout\ $ (\alu1|adder0|adder3|full3|and1~combout\)))) # (!\reg1|registers~495_combout\ & 
-- (\alu1|adder2|adder3|full3|or1~0_combout\ & (\mux2|mux12|out~0_combout\ $ (\alu1|adder0|adder3|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~495_combout\,
	datab => \mux2|mux12|out~0_combout\,
	datac => \alu1|adder0|adder3|full3|and1~combout\,
	datad => \alu1|adder2|adder3|full3|or1~0_combout\,
	combout => \alu1|adder2|adder3|full4|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N12
\alu1|adder2|adder4|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full1|or1~0_combout\ = (\reg1|registers~515_combout\ & ((\alu1|adder2|adder3|full4|or1~0_combout\) # (\mux2|mux13|out~0_combout\ $ (\alu1|adder0|adder3|full4|and1~combout\)))) # (!\reg1|registers~515_combout\ & 
-- (\alu1|adder2|adder3|full4|or1~0_combout\ & (\mux2|mux13|out~0_combout\ $ (\alu1|adder0|adder3|full4|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux13|out~0_combout\,
	datab => \alu1|adder0|adder3|full4|and1~combout\,
	datac => \reg1|registers~515_combout\,
	datad => \alu1|adder2|adder3|full4|or1~0_combout\,
	combout => \alu1|adder2|adder4|full1|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N28
\c7|mux14|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~5_combout\ = \mux2|mux14|out~0_combout\ $ (((!\c11|ALUCtr\(2) & (\alu1|adder0|adder4|full1|and1~combout\ $ (\alu1|adder2|adder4|full1|or1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder0|adder4|full1|and1~combout\,
	datab => \mux2|mux14|out~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|adder2|adder4|full1|or1~0_combout\,
	combout => \c7|mux14|out~5_combout\);

-- Location: LCCOMB_X35_Y28_N30
\c7|mux14|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~6_combout\ = (\reg1|registers~535_combout\ & ((\c7|mux14|out~5_combout\ & (\c11|ALUCtr\(2))) # (!\c7|mux14|out~5_combout\ & ((\c11|ALUCtr\(0)))))) # (!\reg1|registers~535_combout\ & (((\c11|ALUCtr\(0) & \c7|mux14|out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \reg1|registers~535_combout\,
	datac => \c11|ALUCtr\(0),
	datad => \c7|mux14|out~5_combout\,
	combout => \c7|mux14|out~6_combout\);

-- Location: LCCOMB_X32_Y28_N14
\alu1|adder1|adder4|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full1|or1~0_combout\ = (\reg1|registers~515_combout\ & ((\c11|WideOr2~1_combout\ & ((\instruction[14]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~505_combout\,
	datab => \instruction[14]~input_o\,
	datac => \reg1|registers~515_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder4|full1|or1~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\alu1|adder1|adder4|full1|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full1|or1~1_combout\ = (\reg1|registers~515_combout\) # ((\c11|WideOr2~1_combout\ & ((\instruction[14]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~505_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~505_combout\,
	datab => \instruction[14]~input_o\,
	datac => \reg1|registers~515_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder4|full1|or1~1_combout\);

-- Location: LCCOMB_X36_Y32_N24
\alu1|adder1|adder3|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full2|or1~0_combout\ = (\reg1|registers~455_combout\ & ((\c11|WideOr2~1_combout\ & (\instruction[11]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~445_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \reg1|registers~455_combout\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~445_combout\,
	combout => \alu1|adder1|adder3|full2|or1~0_combout\);

-- Location: LCCOMB_X36_Y32_N26
\alu1|adder1|adder3|full2|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full2|or1~1_combout\ = (\reg1|registers~455_combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[11]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~445_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \reg1|registers~455_combout\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~445_combout\,
	combout => \alu1|adder1|adder3|full2|or1~1_combout\);

-- Location: LCCOMB_X37_Y29_N8
\alu1|adder1|adder2|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full3|or1~0_combout\ = (\reg1|registers~395_combout\ & ((\c11|WideOr2~1_combout\ & (\instruction[8]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~385_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \reg1|registers~385_combout\,
	datac => \reg1|registers~395_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder2|full3|or1~0_combout\);

-- Location: LCCOMB_X37_Y29_N18
\alu1|adder1|adder2|full3|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full3|or1~1_combout\ = (\reg1|registers~395_combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[8]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \reg1|registers~385_combout\,
	datac => \reg1|registers~395_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder2|full3|or1~1_combout\);

-- Location: LCCOMB_X37_Y31_N2
\alu1|adder1|adder2|full3|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full3|or1~2_combout\ = (\alu1|adder1|adder2|full3|or1~1_combout\ & ((\reg1|registers~375_combout\ & ((\mux2|mux6|out~0_combout\) # (\alu1|adder1|adder2|full1|or1~0_combout\))) # (!\reg1|registers~375_combout\ & 
-- (\mux2|mux6|out~0_combout\ & \alu1|adder1|adder2|full1|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~375_combout\,
	datab => \alu1|adder1|adder2|full3|or1~1_combout\,
	datac => \mux2|mux6|out~0_combout\,
	datad => \alu1|adder1|adder2|full1|or1~0_combout\,
	combout => \alu1|adder1|adder2|full3|or1~2_combout\);

-- Location: LCCOMB_X37_Y31_N10
\alu1|adder1|adder2|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full4|or1~0_combout\ = (\mux2|mux8|out~0_combout\ & ((\alu1|adder1|adder2|full3|or1~0_combout\) # ((\reg1|registers~425_combout\) # (\alu1|adder1|adder2|full3|or1~2_combout\)))) # (!\mux2|mux8|out~0_combout\ & 
-- (\reg1|registers~425_combout\ & ((\alu1|adder1|adder2|full3|or1~0_combout\) # (\alu1|adder1|adder2|full3|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux8|out~0_combout\,
	datab => \alu1|adder1|adder2|full3|or1~0_combout\,
	datac => \reg1|registers~425_combout\,
	datad => \alu1|adder1|adder2|full3|or1~2_combout\,
	combout => \alu1|adder1|adder2|full4|or1~0_combout\);

-- Location: LCCOMB_X35_Y31_N12
\alu1|adder1|adder3|full2|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full2|or1~2_combout\ = (\alu1|adder1|adder3|full2|or1~1_combout\ & ((\reg1|registers~435_combout\ & ((\mux2|mux9|out~0_combout\) # (\alu1|adder1|adder2|full4|or1~0_combout\))) # (!\reg1|registers~435_combout\ & 
-- (\mux2|mux9|out~0_combout\ & \alu1|adder1|adder2|full4|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~435_combout\,
	datab => \alu1|adder1|adder3|full2|or1~1_combout\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \alu1|adder1|adder2|full4|or1~0_combout\,
	combout => \alu1|adder1|adder3|full2|or1~2_combout\);

-- Location: LCCOMB_X35_Y31_N4
\alu1|adder1|adder3|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full3|or1~0_combout\ = (\reg1|registers~485_combout\ & ((\alu1|adder1|adder3|full2|or1~0_combout\) # ((\mux2|mux11|out~0_combout\) # (\alu1|adder1|adder3|full2|or1~2_combout\)))) # (!\reg1|registers~485_combout\ & 
-- (\mux2|mux11|out~0_combout\ & ((\alu1|adder1|adder3|full2|or1~0_combout\) # (\alu1|adder1|adder3|full2|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~485_combout\,
	datab => \alu1|adder1|adder3|full2|or1~0_combout\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \alu1|adder1|adder3|full2|or1~2_combout\,
	combout => \alu1|adder1|adder3|full3|or1~0_combout\);

-- Location: LCCOMB_X36_Y30_N20
\alu1|adder1|adder4|full1|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full1|or1~2_combout\ = (\alu1|adder1|adder4|full1|or1~1_combout\ & ((\mux2|mux12|out~0_combout\ & ((\reg1|registers~495_combout\) # (\alu1|adder1|adder3|full3|or1~0_combout\))) # (!\mux2|mux12|out~0_combout\ & 
-- (\reg1|registers~495_combout\ & \alu1|adder1|adder3|full3|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux12|out~0_combout\,
	datab => \reg1|registers~495_combout\,
	datac => \alu1|adder1|adder4|full1|or1~1_combout\,
	datad => \alu1|adder1|adder3|full3|or1~0_combout\,
	combout => \alu1|adder1|adder4|full1|or1~2_combout\);

-- Location: LCCOMB_X36_Y30_N26
\alu1|adder1|adder4|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full2|xor2~combout\ = \mux2|mux14|out~0_combout\ $ (\reg1|registers~535_combout\ $ (((\alu1|adder1|adder4|full1|or1~0_combout\) # (\alu1|adder1|adder4|full1|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder4|full1|or1~0_combout\,
	datab => \mux2|mux14|out~0_combout\,
	datac => \reg1|registers~535_combout\,
	datad => \alu1|adder1|adder4|full1|or1~2_combout\,
	combout => \alu1|adder1|adder4|full2|xor2~combout\);

-- Location: LCCOMB_X35_Y27_N12
\c7|mux14|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~1_combout\ = (!\c11|ALUCtr\(1) & ((\c7|mux14|out~6_combout\) # ((\c7|mux14|out~0_combout\ & \alu1|adder1|adder4|full2|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c7|mux14|out~0_combout\,
	datac => \c7|mux14|out~6_combout\,
	datad => \alu1|adder1|adder4|full2|xor2~combout\,
	combout => \c7|mux14|out~1_combout\);

-- Location: LCCOMB_X35_Y27_N14
\c7|mux14|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux14|out~4_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a13\)) # (!\c11|Decoder0~3_combout\ & (((\c7|mux14|out~3_combout\) # (\c7|mux14|out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a13\,
	datab => \c11|Decoder0~3_combout\,
	datac => \c7|mux14|out~3_combout\,
	datad => \c7|mux14|out~1_combout\,
	combout => \c7|mux14|out~4_combout\);

-- Location: LCCOMB_X38_Y31_N14
\reg1|registers~237feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~237feeder_combout\ = \c7|mux14|out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux14|out~4_combout\,
	combout => \reg1|registers~237feeder_combout\);

-- Location: FF_X38_Y31_N15
\reg1|registers~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~237feeder_combout\,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~237_q\);

-- Location: LCCOMB_X39_Y27_N12
\reg1|registers~516\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~516_combout\ = (\instruction[20]~input_o\ & (((\instruction[21]~input_o\)))) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~173_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~45_q\,
	datab => \instruction[20]~input_o\,
	datac => \instruction[21]~input_o\,
	datad => \reg1|registers~173_q\,
	combout => \reg1|registers~516_combout\);

-- Location: LCCOMB_X38_Y31_N8
\reg1|registers~517\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~517_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~516_combout\ & (\reg1|registers~237_q\)) # (!\reg1|registers~516_combout\ & ((\reg1|registers~109_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~516_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~237_q\,
	datac => \reg1|registers~516_combout\,
	datad => \reg1|registers~109_q\,
	combout => \reg1|registers~517_combout\);

-- Location: LCCOMB_X34_Y27_N24
\reg1|registers~523\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~523_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~125_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~125_q\,
	datad => \reg1|registers~61_q\,
	combout => \reg1|registers~523_combout\);

-- Location: LCCOMB_X35_Y27_N4
\reg1|registers~524\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~524_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~523_combout\ & ((\reg1|registers~253_q\))) # (!\reg1|registers~523_combout\ & (\reg1|registers~189_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~523_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~189_q\,
	datac => \reg1|registers~253_q\,
	datad => \reg1|registers~523_combout\,
	combout => \reg1|registers~524_combout\);

-- Location: LCCOMB_X32_Y27_N20
\reg1|registers~520\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~520_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~141_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & (\reg1|registers~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~13_q\,
	datad => \reg1|registers~141_q\,
	combout => \reg1|registers~520_combout\);

-- Location: LCCOMB_X36_Y33_N28
\reg1|registers~521\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~521_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~520_combout\ & (\reg1|registers~205_q\)) # (!\reg1|registers~520_combout\ & ((\reg1|registers~77_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~520_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~205_q\,
	datac => \reg1|registers~77_q\,
	datad => \reg1|registers~520_combout\,
	combout => \reg1|registers~521_combout\);

-- Location: LCCOMB_X35_Y30_N16
\reg1|registers~518\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~518_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~93_q\))) # (!\instruction[20]~input_o\ & (\reg1|registers~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~29_q\,
	datad => \reg1|registers~93_q\,
	combout => \reg1|registers~518_combout\);

-- Location: LCCOMB_X36_Y31_N20
\reg1|registers~519\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~519_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~518_combout\ & ((\reg1|registers~221_q\))) # (!\reg1|registers~518_combout\ & (\reg1|registers~157_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~518_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~157_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~221_q\,
	datad => \reg1|registers~518_combout\,
	combout => \reg1|registers~519_combout\);

-- Location: LCCOMB_X38_Y31_N6
\reg1|registers~522\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~522_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & ((\reg1|registers~519_combout\))) # (!\instruction[18]~input_o\ & (\reg1|registers~521_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~521_combout\,
	datad => \reg1|registers~519_combout\,
	combout => \reg1|registers~522_combout\);

-- Location: LCCOMB_X38_Y31_N4
\reg1|registers~525\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~525_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~522_combout\ & ((\reg1|registers~524_combout\))) # (!\reg1|registers~522_combout\ & (\reg1|registers~517_combout\)))) # (!\instruction[19]~input_o\ & 
-- (((\reg1|registers~522_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~517_combout\,
	datac => \reg1|registers~524_combout\,
	datad => \reg1|registers~522_combout\,
	combout => \reg1|registers~525_combout\);

-- Location: LCCOMB_X31_Y28_N26
\alu1|ShiftRight0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~4_combout\ = (!\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & ((\mux2|mux14|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux13|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux13|out~0_combout\,
	datac => \instruction[11]~input_o\,
	datad => \mux2|mux14|out~0_combout\,
	combout => \alu1|ShiftRight0~4_combout\);

-- Location: LCCOMB_X31_Y28_N20
\alu1|ShiftRight0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~5_combout\ = (\instruction[10]~input_o\ & (\mux2|mux16|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux15|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \mux2|mux16|out~0_combout\,
	datad => \mux2|mux15|out~0_combout\,
	combout => \alu1|ShiftRight0~5_combout\);

-- Location: LCCOMB_X31_Y28_N2
\alu1|ShiftRight0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~6_combout\ = (\alu1|ShiftRight0~4_combout\) # ((\instruction[11]~input_o\ & \alu1|ShiftRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \alu1|ShiftRight0~4_combout\,
	datad => \alu1|ShiftRight0~5_combout\,
	combout => \alu1|ShiftRight0~6_combout\);

-- Location: LCCOMB_X36_Y27_N12
\alu1|ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~30_combout\ = (\instruction[10]~input_o\ & ((\mux2|mux10|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux11|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \mux2|mux10|out~0_combout\,
	combout => \alu1|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X31_Y28_N18
\alu1|ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~35_combout\ = (\instruction[10]~input_o\ & (\mux2|mux12|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux13|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \mux2|mux12|out~0_combout\,
	datad => \mux2|mux13|out~0_combout\,
	combout => \alu1|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X35_Y27_N24
\alu1|ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~24_combout\ = (\instruction[10]~input_o\ & (\alu1|ShiftLeft0~19_combout\)) # (!\instruction[10]~input_o\ & ((\alu1|ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~19_combout\,
	datab => \instruction[10]~input_o\,
	datad => \alu1|ShiftLeft0~23_combout\,
	combout => \alu1|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X31_Y30_N26
\alu1|ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~36_combout\ = (\c7|mux16|out~0_combout\ & (\alu1|ShiftLeft0~35_combout\ & (!\alu1|ShiftRight0~27_combout\))) # (!\c7|mux16|out~0_combout\ & (((\alu1|ShiftRight0~27_combout\) # (\alu1|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~35_combout\,
	datab => \c7|mux16|out~0_combout\,
	datac => \alu1|ShiftRight0~27_combout\,
	datad => \alu1|ShiftLeft0~24_combout\,
	combout => \alu1|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X31_Y30_N28
\alu1|ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~37_combout\ = (\alu1|ShiftRight0~27_combout\ & ((\alu1|ShiftLeft0~36_combout\ & ((\alu1|ShiftLeft0~11_combout\))) # (!\alu1|ShiftLeft0~36_combout\ & (\alu1|ShiftLeft0~30_combout\)))) # (!\alu1|ShiftRight0~27_combout\ & 
-- (((\alu1|ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~30_combout\,
	datab => \alu1|ShiftRight0~27_combout\,
	datac => \alu1|ShiftLeft0~36_combout\,
	datad => \alu1|ShiftLeft0~11_combout\,
	combout => \alu1|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X34_Y30_N2
\c7|mux13|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~5_combout\ = (\c11|ALUCtr\(2) & (\alu1|ShiftRight0~6_combout\ & (\c7|mux16|out~0_combout\))) # (!\c11|ALUCtr\(2) & (((\alu1|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~6_combout\,
	datab => \c7|mux16|out~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|ShiftLeft0~37_combout\,
	combout => \c7|mux13|out~5_combout\);

-- Location: LCCOMB_X35_Y31_N22
\c7|mux13|out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~7_combout\ = (\c11|ALUCtr\(1) & (\c11|ALUCtr\(0) & \c7|mux13|out~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|ALUCtr\(1),
	datac => \c11|ALUCtr\(0),
	datad => \c7|mux13|out~5_combout\,
	combout => \c7|mux13|out~7_combout\);

-- Location: LCCOMB_X35_Y31_N14
\c7|mux13|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~2_combout\ = (\c11|ALUCtr\(2) & ((\mux2|mux13|out~0_combout\ & ((\reg1|registers~515_combout\) # (\c11|ALUCtr\(0)))) # (!\mux2|mux13|out~0_combout\ & (\reg1|registers~515_combout\ & \c11|ALUCtr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux13|out~0_combout\,
	datab => \reg1|registers~515_combout\,
	datac => \c11|ALUCtr\(0),
	datad => \c11|ALUCtr\(2),
	combout => \c7|mux13|out~2_combout\);

-- Location: LCCOMB_X34_Y31_N10
\alu1|adder1|adder4|full1|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full1|xor2~0_combout\ = \reg1|registers~515_combout\ $ (((\c11|WideOr2~1_combout\ & (\instruction[14]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~505_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \reg1|registers~515_combout\,
	datac => \instruction[14]~input_o\,
	datad => \reg1|registers~505_combout\,
	combout => \alu1|adder1|adder4|full1|xor2~0_combout\);

-- Location: LCCOMB_X35_Y31_N20
\alu1|adder1|adder4|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full1|xor2~combout\ = \alu1|adder1|adder4|full1|xor2~0_combout\ $ (((\mux2|mux12|out~0_combout\ & ((\alu1|adder1|adder3|full3|or1~0_combout\) # (\reg1|registers~495_combout\))) # (!\mux2|mux12|out~0_combout\ & 
-- (\alu1|adder1|adder3|full3|or1~0_combout\ & \reg1|registers~495_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder4|full1|xor2~0_combout\,
	datab => \mux2|mux12|out~0_combout\,
	datac => \alu1|adder1|adder3|full3|or1~0_combout\,
	datad => \reg1|registers~495_combout\,
	combout => \alu1|adder1|adder4|full1|xor2~combout\);

-- Location: LCCOMB_X35_Y28_N24
\alu1|adder2|adder4|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full1|xor2~combout\ = \mux2|mux13|out~0_combout\ $ (\alu1|adder0|adder3|full4|and1~combout\ $ (\reg1|registers~515_combout\ $ (\alu1|adder2|adder3|full4|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux13|out~0_combout\,
	datab => \alu1|adder0|adder3|full4|and1~combout\,
	datac => \reg1|registers~515_combout\,
	datad => \alu1|adder2|adder3|full4|or1~0_combout\,
	combout => \alu1|adder2|adder4|full1|xor2~combout\);

-- Location: LCCOMB_X35_Y31_N10
\c7|mux13|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~3_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\alu1|adder2|adder4|full1|xor2~combout\))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder4|full1|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \alu1|adder1|adder4|full1|xor2~combout\,
	datac => \c11|ALUCtr\(0),
	datad => \alu1|adder2|adder4|full1|xor2~combout\,
	combout => \c7|mux13|out~3_combout\);

-- Location: LCCOMB_X35_Y31_N16
\c7|mux13|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~4_combout\ = (!\c11|ALUCtr\(1) & ((\c7|mux13|out~2_combout\) # (\c7|mux13|out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|ALUCtr\(1),
	datac => \c7|mux13|out~2_combout\,
	datad => \c7|mux13|out~3_combout\,
	combout => \c7|mux13|out~4_combout\);

-- Location: LCCOMB_X35_Y31_N28
\c7|mux13|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux13|out~6_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a12\)) # (!\c11|Decoder0~3_combout\ & (((\c7|mux13|out~7_combout\) # (\c7|mux13|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Decoder0~3_combout\,
	datab => \mem1|memdata_rtl_0|auto_generated|ram_block1a12\,
	datac => \c7|mux13|out~7_combout\,
	datad => \c7|mux13|out~4_combout\,
	combout => \c7|mux13|out~6_combout\);

-- Location: FF_X35_Y31_N3
\reg1|registers~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux13|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~188_q\);

-- Location: LCCOMB_X34_Y32_N2
\reg1|registers~496\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~496_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & ((\reg1|registers~156_q\))) # (!\instruction[18]~input_o\ & (\reg1|registers~140_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~140_q\,
	datad => \reg1|registers~156_q\,
	combout => \reg1|registers~496_combout\);

-- Location: LCCOMB_X34_Y32_N28
\reg1|registers~497\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~497_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~496_combout\ & (\reg1|registers~188_q\)) # (!\reg1|registers~496_combout\ & ((\reg1|registers~172_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~496_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~188_q\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~172_q\,
	datad => \reg1|registers~496_combout\,
	combout => \reg1|registers~497_combout\);

-- Location: LCCOMB_X36_Y29_N2
\reg1|registers~503\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~503_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~236_q\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~204_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~236_q\,
	datad => \reg1|registers~204_q\,
	combout => \reg1|registers~503_combout\);

-- Location: LCCOMB_X36_Y31_N16
\reg1|registers~504\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~504_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~503_combout\ & ((\reg1|registers~252_q\))) # (!\reg1|registers~503_combout\ & (\reg1|registers~220_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~503_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~220_q\,
	datac => \reg1|registers~252_q\,
	datad => \reg1|registers~503_combout\,
	combout => \reg1|registers~504_combout\);

-- Location: LCCOMB_X39_Y29_N22
\reg1|registers~500\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~500_combout\ = (\instruction[18]~input_o\ & (((\instruction[19]~input_o\) # (\reg1|registers~28_q\)))) # (!\instruction[18]~input_o\ & (\reg1|registers~12_q\ & (!\instruction[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~12_q\,
	datab => \instruction[18]~input_o\,
	datac => \instruction[19]~input_o\,
	datad => \reg1|registers~28_q\,
	combout => \reg1|registers~500_combout\);

-- Location: LCCOMB_X39_Y29_N6
\reg1|registers~501\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~501_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~500_combout\ & (\reg1|registers~60_q\)) # (!\reg1|registers~500_combout\ & ((\reg1|registers~44_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~500_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~60_q\,
	datac => \reg1|registers~500_combout\,
	datad => \reg1|registers~44_q\,
	combout => \reg1|registers~501_combout\);

-- Location: LCCOMB_X36_Y33_N18
\reg1|registers~498\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~498_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~108_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & ((\reg1|registers~76_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~108_q\,
	datad => \reg1|registers~76_q\,
	combout => \reg1|registers~498_combout\);

-- Location: LCCOMB_X32_Y33_N6
\reg1|registers~499\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~499_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~498_combout\ & (\reg1|registers~124_q\)) # (!\reg1|registers~498_combout\ & ((\reg1|registers~92_q\))))) # (!\instruction[18]~input_o\ & (((\reg1|registers~498_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~124_q\,
	datac => \reg1|registers~498_combout\,
	datad => \reg1|registers~92_q\,
	combout => \reg1|registers~499_combout\);

-- Location: LCCOMB_X32_Y31_N2
\reg1|registers~502\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~502_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~499_combout\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & (\reg1|registers~501_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~501_combout\,
	datad => \reg1|registers~499_combout\,
	combout => \reg1|registers~502_combout\);

-- Location: LCCOMB_X32_Y31_N16
\reg1|registers~505\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~505_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~502_combout\ & ((\reg1|registers~504_combout\))) # (!\reg1|registers~502_combout\ & (\reg1|registers~497_combout\)))) # (!\instruction[21]~input_o\ & 
-- (((\reg1|registers~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~497_combout\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~504_combout\,
	datad => \reg1|registers~502_combout\,
	combout => \reg1|registers~505_combout\);

-- Location: LCCOMB_X31_Y28_N6
\alu1|ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~37_combout\ = (\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & ((\mux2|mux15|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux13|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux13|out~0_combout\,
	datac => \instruction[11]~input_o\,
	datad => \mux2|mux15|out~0_combout\,
	combout => \alu1|ShiftRight0~37_combout\);

-- Location: LCCOMB_X31_Y28_N28
\alu1|ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~31_combout\ = (\instruction[11]~input_o\ & ((\mux2|mux14|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux12|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \mux2|mux12|out~0_combout\,
	datad => \mux2|mux14|out~0_combout\,
	combout => \alu1|ShiftRight0~31_combout\);

-- Location: LCCOMB_X31_Y28_N16
\alu1|ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~38_combout\ = (\alu1|ShiftRight0~37_combout\) # ((!\instruction[10]~input_o\ & \alu1|ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~37_combout\,
	datac => \instruction[10]~input_o\,
	datad => \alu1|ShiftRight0~31_combout\,
	combout => \alu1|ShiftRight0~38_combout\);

-- Location: LCCOMB_X31_Y30_N24
\alu1|ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~39_combout\ = (\instruction[12]~input_o\ & (\alu1|ShiftLeft0~0_combout\ & (\mux2|mux16|out~0_combout\))) # (!\instruction[12]~input_o\ & (((\alu1|ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~0_combout\,
	datab => \instruction[12]~input_o\,
	datac => \mux2|mux16|out~0_combout\,
	datad => \alu1|ShiftRight0~38_combout\,
	combout => \alu1|ShiftRight0~39_combout\);

-- Location: LCCOMB_X35_Y30_N0
\c7|mux9|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~4_combout\ = (!\instruction[13]~input_o\ & \c11|ALUCtr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datad => \c11|ALUCtr\(2),
	combout => \c7|mux9|out~4_combout\);

-- Location: LCCOMB_X32_Y29_N2
\alu1|ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~32_combout\ = (\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & ((\mux2|mux9|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux10|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux10|out~0_combout\,
	datad => \mux2|mux9|out~0_combout\,
	combout => \alu1|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X32_Y29_N16
\alu1|ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~34_combout\ = (\alu1|ShiftLeft0~32_combout\) # ((\alu1|ShiftLeft0~33_combout\ & !\instruction[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~33_combout\,
	datab => \instruction[11]~input_o\,
	datad => \alu1|ShiftLeft0~32_combout\,
	combout => \alu1|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X32_Y29_N18
\alu1|mux3|mux12|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~0_combout\ = (!\instruction[12]~input_o\ & ((\instruction[13]~input_o\ & ((\alu1|ShiftLeft0~7_combout\))) # (!\instruction[13]~input_o\ & (\alu1|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \alu1|ShiftLeft0~34_combout\,
	datac => \instruction[13]~input_o\,
	datad => \alu1|ShiftLeft0~7_combout\,
	combout => \alu1|mux3|mux12|or1~0_combout\);

-- Location: LCCOMB_X34_Y30_N6
\alu1|mux3|mux12|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~1_combout\ = (!\c11|ALUCtr\(2) & ((\alu1|mux3|mux12|or1~0_combout\) # ((\alu1|ShiftLeft0~12_combout\ & \alu1|ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \alu1|ShiftLeft0~12_combout\,
	datac => \alu1|ShiftLeft0~20_combout\,
	datad => \alu1|mux3|mux12|or1~0_combout\,
	combout => \alu1|mux3|mux12|or1~1_combout\);

-- Location: LCCOMB_X34_Y30_N4
\alu1|mux3|mux12|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~2_combout\ = (\alu1|mux3|mux3|or1~6_combout\ & ((\alu1|mux3|mux12|or1~1_combout\) # ((\alu1|ShiftRight0~39_combout\ & \c7|mux9|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux3|or1~6_combout\,
	datab => \alu1|ShiftRight0~39_combout\,
	datac => \c7|mux9|out~4_combout\,
	datad => \alu1|mux3|mux12|or1~1_combout\,
	combout => \alu1|mux3|mux12|or1~2_combout\);

-- Location: LCCOMB_X35_Y32_N8
\alu1|mux3|mux12|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~3_combout\ = (\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\reg1|registers~495_combout\) # (\mux2|mux12|out~0_combout\))) # (!\c11|ALUCtr\(0) & (\reg1|registers~495_combout\ & \mux2|mux12|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \c11|ALUCtr\(0),
	datac => \reg1|registers~495_combout\,
	datad => \mux2|mux12|out~0_combout\,
	combout => \alu1|mux3|mux12|or1~3_combout\);

-- Location: LCCOMB_X36_Y30_N10
\alu1|mux3|mux12|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~4_combout\ = (!\c11|ALUCtr\(0) & (\mux2|mux12|out~0_combout\ $ (\reg1|registers~495_combout\ $ (\alu1|adder1|adder3|full3|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux12|out~0_combout\,
	datab => \c11|ALUCtr\(0),
	datac => \reg1|registers~495_combout\,
	datad => \alu1|adder1|adder3|full3|or1~0_combout\,
	combout => \alu1|mux3|mux12|or1~4_combout\);

-- Location: LCCOMB_X35_Y28_N8
\alu1|adder2|adder3|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full4|xor2~combout\ = \reg1|registers~495_combout\ $ (\mux2|mux12|out~0_combout\ $ (\alu1|adder0|adder3|full3|and1~combout\ $ (\alu1|adder2|adder3|full3|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~495_combout\,
	datab => \mux2|mux12|out~0_combout\,
	datac => \alu1|adder0|adder3|full3|and1~combout\,
	datad => \alu1|adder2|adder3|full3|or1~0_combout\,
	combout => \alu1|adder2|adder3|full4|xor2~combout\);

-- Location: LCCOMB_X35_Y32_N10
\alu1|mux3|mux12|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~5_combout\ = (!\c11|ALUCtr\(2) & ((\alu1|mux3|mux12|or1~4_combout\) # ((\c11|ALUCtr\(0) & \alu1|adder2|adder3|full4|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \c11|ALUCtr\(0),
	datac => \alu1|mux3|mux12|or1~4_combout\,
	datad => \alu1|adder2|adder3|full4|xor2~combout\,
	combout => \alu1|mux3|mux12|or1~5_combout\);

-- Location: LCCOMB_X35_Y32_N20
\alu1|mux3|mux12|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux12|or1~6_combout\ = (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux12|or1~3_combout\) # (\alu1|mux3|mux12|or1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux12|or1~3_combout\,
	datad => \alu1|mux3|mux12|or1~5_combout\,
	combout => \alu1|mux3|mux12|or1~6_combout\);

-- Location: LCCOMB_X35_Y32_N30
\c7|mux12|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux12|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a11\)) # (!\c11|Decoder0~3_combout\ & (((\alu1|mux3|mux12|or1~2_combout\) # (\alu1|mux3|mux12|or1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a11\,
	datab => \c11|Decoder0~3_combout\,
	datac => \alu1|mux3|mux12|or1~2_combout\,
	datad => \alu1|mux3|mux12|or1~6_combout\,
	combout => \c7|mux12|out~0_combout\);

-- Location: LCCOMB_X36_Y27_N18
\reg1|registers~123feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~123feeder_combout\ = \c7|mux12|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux12|out~0_combout\,
	combout => \reg1|registers~123feeder_combout\);

-- Location: FF_X36_Y27_N19
\reg1|registers~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~123feeder_combout\,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~123_q\);

-- Location: LCCOMB_X36_Y26_N30
\reg1|registers~473\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~473_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & (\reg1|registers~187_q\)) # (!\instruction[21]~input_o\ & ((\reg1|registers~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~187_q\,
	datad => \reg1|registers~59_q\,
	combout => \reg1|registers~473_combout\);

-- Location: LCCOMB_X36_Y27_N16
\reg1|registers~474\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~474_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~473_combout\ & ((\reg1|registers~251_q\))) # (!\reg1|registers~473_combout\ & (\reg1|registers~123_q\)))) # (!\instruction[20]~input_o\ & (((\reg1|registers~473_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~123_q\,
	datac => \reg1|registers~473_combout\,
	datad => \reg1|registers~251_q\,
	combout => \reg1|registers~474_combout\);

-- Location: LCCOMB_X38_Y29_N8
\reg1|registers~468\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~468_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~107_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & (\reg1|registers~43_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~43_q\,
	datad => \reg1|registers~107_q\,
	combout => \reg1|registers~468_combout\);

-- Location: LCCOMB_X36_Y29_N26
\reg1|registers~469\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~469_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~468_combout\ & ((\reg1|registers~235_q\))) # (!\reg1|registers~468_combout\ & (\reg1|registers~171_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~468_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~171_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~235_q\,
	datad => \reg1|registers~468_combout\,
	combout => \reg1|registers~469_combout\);

-- Location: LCCOMB_X32_Y32_N8
\reg1|registers~470\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~470_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~75_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & (\reg1|registers~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~11_q\,
	datad => \reg1|registers~75_q\,
	combout => \reg1|registers~470_combout\);

-- Location: LCCOMB_X36_Y29_N12
\reg1|registers~471\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~471_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~470_combout\ & ((\reg1|registers~203_q\))) # (!\reg1|registers~470_combout\ & (\reg1|registers~139_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~470_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~139_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~203_q\,
	datad => \reg1|registers~470_combout\,
	combout => \reg1|registers~471_combout\);

-- Location: LCCOMB_X36_Y29_N22
\reg1|registers~472\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~472_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~469_combout\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~471_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~469_combout\,
	datad => \reg1|registers~471_combout\,
	combout => \reg1|registers~472_combout\);

-- Location: LCCOMB_X35_Y30_N8
\reg1|registers~466\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~466_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~155_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & (\reg1|registers~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~27_q\,
	datad => \reg1|registers~155_q\,
	combout => \reg1|registers~466_combout\);

-- Location: LCCOMB_X35_Y32_N14
\reg1|registers~467\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~467_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~466_combout\ & ((\reg1|registers~219_q\))) # (!\reg1|registers~466_combout\ & (\reg1|registers~91_q\)))) # (!\instruction[20]~input_o\ & (((\reg1|registers~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~91_q\,
	datac => \reg1|registers~219_q\,
	datad => \reg1|registers~466_combout\,
	combout => \reg1|registers~467_combout\);

-- Location: LCCOMB_X36_Y29_N4
\reg1|registers~475\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~475_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~472_combout\ & (\reg1|registers~474_combout\)) # (!\reg1|registers~472_combout\ & ((\reg1|registers~467_combout\))))) # (!\instruction[18]~input_o\ & 
-- (((\reg1|registers~472_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~474_combout\,
	datac => \reg1|registers~472_combout\,
	datad => \reg1|registers~467_combout\,
	combout => \reg1|registers~475_combout\);

-- Location: LCCOMB_X35_Y31_N30
\alu1|mux3|mux11|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~3_combout\ = (\c11|ALUCtr\(2) & ((\reg1|registers~485_combout\ & ((\mux2|mux11|out~0_combout\) # (\c11|ALUCtr\(0)))) # (!\reg1|registers~485_combout\ & (\mux2|mux11|out~0_combout\ & \c11|ALUCtr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~485_combout\,
	datab => \mux2|mux11|out~0_combout\,
	datac => \c11|ALUCtr\(0),
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux11|or1~3_combout\);

-- Location: LCCOMB_X35_Y31_N18
\alu1|adder1|adder3|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full3|xor2~combout\ = \reg1|registers~485_combout\ $ (\mux2|mux11|out~0_combout\ $ (((\alu1|adder1|adder3|full2|or1~0_combout\) # (\alu1|adder1|adder3|full2|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~485_combout\,
	datab => \alu1|adder1|adder3|full2|or1~0_combout\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \alu1|adder1|adder3|full2|or1~2_combout\,
	combout => \alu1|adder1|adder3|full3|xor2~combout\);

-- Location: LCCOMB_X35_Y28_N26
\alu1|adder2|adder3|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full3|xor2~combout\ = \mux2|mux11|out~0_combout\ $ (\reg1|registers~485_combout\ $ (\alu1|adder0|adder3|full2|and1~combout\ $ (\alu1|adder2|adder3|full2|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux11|out~0_combout\,
	datab => \reg1|registers~485_combout\,
	datac => \alu1|adder0|adder3|full2|and1~combout\,
	datad => \alu1|adder2|adder3|full2|or1~0_combout\,
	combout => \alu1|adder2|adder3|full3|xor2~combout\);

-- Location: LCCOMB_X35_Y31_N8
\alu1|mux3|mux11|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~4_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\alu1|adder2|adder3|full3|xor2~combout\))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder3|full3|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder3|full3|xor2~combout\,
	datab => \c11|ALUCtr\(2),
	datac => \c11|ALUCtr\(0),
	datad => \alu1|adder2|adder3|full3|xor2~combout\,
	combout => \alu1|mux3|mux11|or1~4_combout\);

-- Location: LCCOMB_X36_Y27_N30
\alu1|ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~29_combout\ = (\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & (\mux2|mux8|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux9|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux8|out~0_combout\,
	datad => \mux2|mux9|out~0_combout\,
	combout => \alu1|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X36_Y27_N2
\alu1|ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~31_combout\ = (\alu1|ShiftLeft0~29_combout\) # ((!\instruction[11]~input_o\ & \alu1|ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \alu1|ShiftLeft0~29_combout\,
	datad => \alu1|ShiftLeft0~30_combout\,
	combout => \alu1|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X34_Y27_N10
\alu1|mux3|mux11|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~0_combout\ = (!\instruction[12]~input_o\ & ((\instruction[13]~input_o\ & ((\alu1|ShiftLeft0~5_combout\))) # (!\instruction[13]~input_o\ & (\alu1|ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \instruction[13]~input_o\,
	datac => \alu1|ShiftLeft0~31_combout\,
	datad => \alu1|ShiftLeft0~5_combout\,
	combout => \alu1|mux3|mux11|or1~0_combout\);

-- Location: LCCOMB_X35_Y31_N26
\alu1|mux3|mux11|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~1_combout\ = (!\c11|ALUCtr\(2) & ((\alu1|mux3|mux11|or1~0_combout\) # ((\alu1|ShiftLeft0~12_combout\ & \alu1|ShiftLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~12_combout\,
	datab => \alu1|mux3|mux11|or1~0_combout\,
	datac => \alu1|ShiftLeft0~17_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux11|or1~1_combout\);

-- Location: LCCOMB_X31_Y29_N6
\alu1|ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~18_combout\ = (\instruction[11]~input_o\ & ((\mux2|mux13|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux11|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \mux2|mux13|out~0_combout\,
	combout => \alu1|ShiftRight0~18_combout\);

-- Location: LCCOMB_X31_Y29_N10
\alu1|ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~32_combout\ = (\instruction[10]~input_o\ & ((\alu1|ShiftRight0~31_combout\))) # (!\instruction[10]~input_o\ & (\alu1|ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~18_combout\,
	datac => \instruction[10]~input_o\,
	datad => \alu1|ShiftRight0~31_combout\,
	combout => \alu1|ShiftRight0~32_combout\);

-- Location: LCCOMB_X31_Y29_N24
\alu1|ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~33_combout\ = (\instruction[12]~input_o\ & (((!\instruction[11]~input_o\ & \alu1|ShiftRight0~5_combout\)))) # (!\instruction[12]~input_o\ & (\alu1|ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~32_combout\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \alu1|ShiftRight0~5_combout\,
	combout => \alu1|ShiftRight0~33_combout\);

-- Location: LCCOMB_X35_Y31_N0
\alu1|mux3|mux11|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~2_combout\ = (\alu1|mux3|mux3|or1~6_combout\ & ((\alu1|mux3|mux11|or1~1_combout\) # ((\alu1|ShiftRight0~33_combout\ & \c7|mux9|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux11|or1~1_combout\,
	datab => \alu1|ShiftRight0~33_combout\,
	datac => \alu1|mux3|mux3|or1~6_combout\,
	datad => \c7|mux9|out~4_combout\,
	combout => \alu1|mux3|mux11|or1~2_combout\);

-- Location: LCCOMB_X35_Y31_N6
\alu1|mux3|mux11|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux11|or1~5_combout\ = (\alu1|mux3|mux11|or1~2_combout\) # ((!\c11|ALUCtr\(1) & ((\alu1|mux3|mux11|or1~3_combout\) # (\alu1|mux3|mux11|or1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux11|or1~3_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux11|or1~4_combout\,
	datad => \alu1|mux3|mux11|or1~2_combout\,
	combout => \alu1|mux3|mux11|or1~5_combout\);

-- Location: LCCOMB_X35_Y31_N24
\c7|mux11|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux11|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a10\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux11|or1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a10\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux11|or1~5_combout\,
	combout => \c7|mux11|out~0_combout\);

-- Location: FF_X39_Y30_N13
\reg1|registers~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux11|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~90_q\);

-- Location: LCCOMB_X39_Y30_N12
\reg1|registers~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~456_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~90_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & ((\reg1|registers~74_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~90_q\,
	datad => \reg1|registers~74_q\,
	combout => \reg1|registers~456_combout\);

-- Location: LCCOMB_X38_Y31_N30
\reg1|registers~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~457_combout\ = (\reg1|registers~456_combout\ & (((\reg1|registers~122_q\) # (!\instruction[19]~input_o\)))) # (!\reg1|registers~456_combout\ & (\reg1|registers~106_q\ & (\instruction[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~456_combout\,
	datab => \reg1|registers~106_q\,
	datac => \instruction[19]~input_o\,
	datad => \reg1|registers~122_q\,
	combout => \reg1|registers~457_combout\);

-- Location: LCCOMB_X34_Y33_N0
\reg1|registers~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~458_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~170_q\) # ((\instruction[18]~input_o\)))) # (!\instruction[19]~input_o\ & (((\reg1|registers~138_q\ & !\instruction[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~170_q\,
	datac => \reg1|registers~138_q\,
	datad => \instruction[18]~input_o\,
	combout => \reg1|registers~458_combout\);

-- Location: LCCOMB_X35_Y33_N20
\reg1|registers~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~459_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~458_combout\ & ((\reg1|registers~186_q\))) # (!\reg1|registers~458_combout\ & (\reg1|registers~154_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~154_q\,
	datac => \reg1|registers~458_combout\,
	datad => \reg1|registers~186_q\,
	combout => \reg1|registers~459_combout\);

-- Location: LCCOMB_X38_Y29_N24
\reg1|registers~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~460_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~42_q\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~10_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~42_q\,
	datad => \reg1|registers~10_q\,
	combout => \reg1|registers~460_combout\);

-- Location: LCCOMB_X39_Y29_N0
\reg1|registers~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~461_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~460_combout\ & (\reg1|registers~58_q\)) # (!\reg1|registers~460_combout\ & ((\reg1|registers~26_q\))))) # (!\instruction[18]~input_o\ & (\reg1|registers~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~460_combout\,
	datac => \reg1|registers~58_q\,
	datad => \reg1|registers~26_q\,
	combout => \reg1|registers~461_combout\);

-- Location: LCCOMB_X35_Y30_N4
\reg1|registers~462\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~462_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~459_combout\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & ((\reg1|registers~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~459_combout\,
	datad => \reg1|registers~461_combout\,
	combout => \reg1|registers~462_combout\);

-- Location: LCCOMB_X36_Y29_N0
\reg1|registers~463\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~463_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~218_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~202_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~202_q\,
	datad => \reg1|registers~218_q\,
	combout => \reg1|registers~463_combout\);

-- Location: LCCOMB_X36_Y29_N30
\reg1|registers~464\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~464_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~463_combout\ & (\reg1|registers~250_q\)) # (!\reg1|registers~463_combout\ & ((\reg1|registers~234_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~463_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~250_q\,
	datac => \reg1|registers~234_q\,
	datad => \reg1|registers~463_combout\,
	combout => \reg1|registers~464_combout\);

-- Location: LCCOMB_X35_Y30_N22
\reg1|registers~465\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~465_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~462_combout\ & ((\reg1|registers~464_combout\))) # (!\reg1|registers~462_combout\ & (\reg1|registers~457_combout\)))) # (!\instruction[20]~input_o\ & 
-- (((\reg1|registers~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~457_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~462_combout\,
	datad => \reg1|registers~464_combout\,
	combout => \reg1|registers~465_combout\);

-- Location: LCCOMB_X34_Y31_N4
\alu1|ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~41_combout\ = (\instruction[11]~input_o\ & (((\mux2|mux12|out~0_combout\)))) # (!\instruction[11]~input_o\ & (!\c11|WideOr2~1_combout\ & (\reg1|registers~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \instruction[11]~input_o\,
	datac => \reg1|registers~445_combout\,
	datad => \mux2|mux12|out~0_combout\,
	combout => \alu1|ShiftRight0~41_combout\);

-- Location: LCCOMB_X32_Y27_N24
\alu1|ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~19_combout\ = (\instruction[10]~input_o\ & ((\alu1|ShiftRight0~18_combout\))) # (!\instruction[10]~input_o\ & (\alu1|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \alu1|ShiftRight0~41_combout\,
	datad => \alu1|ShiftRight0~18_combout\,
	combout => \alu1|ShiftRight0~19_combout\);

-- Location: LCCOMB_X35_Y27_N10
\alu1|ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~20_combout\ = (\instruction[12]~input_o\ & ((\alu1|ShiftRight0~17_combout\))) # (!\instruction[12]~input_o\ & (\alu1|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datac => \alu1|ShiftRight0~19_combout\,
	datad => \alu1|ShiftRight0~17_combout\,
	combout => \alu1|ShiftRight0~20_combout\);

-- Location: LCCOMB_X35_Y27_N18
\alu1|ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~28_combout\ = (!\instruction[13]~input_o\ & ((\instruction[12]~input_o\ & ((\alu1|ShiftLeft0~14_combout\))) # (!\instruction[12]~input_o\ & (\alu1|ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \instruction[13]~input_o\,
	datac => \alu1|ShiftLeft0~27_combout\,
	datad => \alu1|ShiftLeft0~14_combout\,
	combout => \alu1|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X31_Y29_N0
\alu1|ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~18_combout\ = (\instruction[13]~input_o\ & (!\instruction[11]~input_o\ & !\instruction[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[13]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \alu1|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X35_Y27_N28
\c7|mux10|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~3_combout\ = (!\c11|ALUCtr\(2) & ((\alu1|ShiftLeft0~28_combout\) # ((\alu1|ShiftLeft0~3_combout\ & \alu1|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~3_combout\,
	datab => \alu1|ShiftLeft0~28_combout\,
	datac => \alu1|ShiftLeft0~18_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \c7|mux10|out~3_combout\);

-- Location: LCCOMB_X34_Y31_N14
\c7|mux10|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~4_combout\ = (\alu1|mux3|mux3|or1~6_combout\ & ((\c7|mux10|out~3_combout\) # ((\alu1|ShiftRight0~20_combout\ & \c7|mux9|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux3|or1~6_combout\,
	datab => \alu1|ShiftRight0~20_combout\,
	datac => \c7|mux9|out~4_combout\,
	datad => \c7|mux10|out~3_combout\,
	combout => \c7|mux10|out~4_combout\);

-- Location: LCCOMB_X34_Y31_N8
\c7|mux10|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~0_combout\ = (\c11|ALUCtr\(2) & ((\mux2|mux10|out~0_combout\ & ((\reg1|registers~455_combout\) # (\c11|ALUCtr\(0)))) # (!\mux2|mux10|out~0_combout\ & (\reg1|registers~455_combout\ & \c11|ALUCtr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux10|out~0_combout\,
	datab => \reg1|registers~455_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \c7|mux10|out~0_combout\);

-- Location: LCCOMB_X34_Y31_N6
\alu1|adder1|adder3|full2|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full2|xor2~0_combout\ = \reg1|registers~455_combout\ $ (((\c11|WideOr2~1_combout\ & (\instruction[11]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~445_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \reg1|registers~455_combout\,
	datac => \instruction[11]~input_o\,
	datad => \reg1|registers~445_combout\,
	combout => \alu1|adder1|adder3|full2|xor2~0_combout\);

-- Location: LCCOMB_X34_Y31_N20
\alu1|adder1|adder3|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full1|or1~0_combout\ = (\mux2|mux9|out~0_combout\ & ((\reg1|registers~435_combout\) # (\alu1|adder1|adder2|full4|or1~0_combout\))) # (!\mux2|mux9|out~0_combout\ & (\reg1|registers~435_combout\ & 
-- \alu1|adder1|adder2|full4|or1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux9|out~0_combout\,
	datab => \reg1|registers~435_combout\,
	datad => \alu1|adder1|adder2|full4|or1~0_combout\,
	combout => \alu1|adder1|adder3|full1|or1~0_combout\);

-- Location: LCCOMB_X36_Y28_N18
\alu1|adder2|adder3|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full2|xor2~combout\ = \alu1|adder0|adder3|full1|and1~combout\ $ (\reg1|registers~455_combout\ $ (\alu1|adder2|adder3|full1|or1~0_combout\ $ (\mux2|mux10|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder0|adder3|full1|and1~combout\,
	datab => \reg1|registers~455_combout\,
	datac => \alu1|adder2|adder3|full1|or1~0_combout\,
	datad => \mux2|mux10|out~0_combout\,
	combout => \alu1|adder2|adder3|full2|xor2~combout\);

-- Location: LCCOMB_X34_Y31_N2
\c7|mux10|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~1_combout\ = (\c11|ALUCtr\(0) & (((\alu1|adder2|adder3|full2|xor2~combout\)))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder3|full2|xor2~0_combout\ $ ((\alu1|adder1|adder3|full1|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder3|full2|xor2~0_combout\,
	datab => \alu1|adder1|adder3|full1|or1~0_combout\,
	datac => \c11|ALUCtr\(0),
	datad => \alu1|adder2|adder3|full2|xor2~combout\,
	combout => \c7|mux10|out~1_combout\);

-- Location: LCCOMB_X34_Y31_N28
\c7|mux10|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~2_combout\ = (!\c11|ALUCtr\(1) & ((\c7|mux10|out~0_combout\) # ((!\c11|ALUCtr\(2) & \c7|mux10|out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c11|ALUCtr\(2),
	datac => \c7|mux10|out~0_combout\,
	datad => \c7|mux10|out~1_combout\,
	combout => \c7|mux10|out~2_combout\);

-- Location: LCCOMB_X34_Y31_N0
\c7|mux10|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux10|out~5_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a9\)) # (!\c11|Decoder0~3_combout\ & (((\c7|mux10|out~4_combout\) # (\c7|mux10|out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Decoder0~3_combout\,
	datab => \mem1|memdata_rtl_0|auto_generated|ram_block1a9\,
	datac => \c7|mux10|out~4_combout\,
	datad => \c7|mux10|out~2_combout\,
	combout => \c7|mux10|out~5_combout\);

-- Location: LCCOMB_X31_Y31_N8
\reg1|registers~185feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~185feeder_combout\ = \c7|mux10|out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux10|out~5_combout\,
	combout => \reg1|registers~185feeder_combout\);

-- Location: FF_X31_Y31_N9
\reg1|registers~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~185feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~185_q\);

-- Location: LCCOMB_X34_Y27_N26
\reg1|registers~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~443_combout\ = (\instruction[20]~input_o\ & (((\instruction[21]~input_o\) # (\reg1|registers~121_q\)))) # (!\instruction[20]~input_o\ & (\reg1|registers~57_q\ & (!\instruction[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~57_q\,
	datac => \instruction[21]~input_o\,
	datad => \reg1|registers~121_q\,
	combout => \reg1|registers~443_combout\);

-- Location: LCCOMB_X31_Y31_N30
\reg1|registers~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~444_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~443_combout\ & ((\reg1|registers~249_q\))) # (!\reg1|registers~443_combout\ & (\reg1|registers~185_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~443_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~185_q\,
	datac => \reg1|registers~249_q\,
	datad => \reg1|registers~443_combout\,
	combout => \reg1|registers~444_combout\);

-- Location: LCCOMB_X35_Y34_N20
\reg1|registers~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~436_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~169_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~41_q\,
	datad => \reg1|registers~169_q\,
	combout => \reg1|registers~436_combout\);

-- Location: LCCOMB_X36_Y32_N18
\reg1|registers~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~437_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~436_combout\ & ((\reg1|registers~233_q\))) # (!\reg1|registers~436_combout\ & (\reg1|registers~105_q\)))) # (!\instruction[20]~input_o\ & (\reg1|registers~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~436_combout\,
	datac => \reg1|registers~105_q\,
	datad => \reg1|registers~233_q\,
	combout => \reg1|registers~437_combout\);

-- Location: LCCOMB_X35_Y30_N24
\reg1|registers~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~438_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~89_q\))) # (!\instruction[20]~input_o\ & (\reg1|registers~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~25_q\,
	datad => \reg1|registers~89_q\,
	combout => \reg1|registers~438_combout\);

-- Location: LCCOMB_X35_Y30_N26
\reg1|registers~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~439_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~438_combout\ & ((\reg1|registers~217_q\))) # (!\reg1|registers~438_combout\ & (\reg1|registers~153_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~438_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~153_q\,
	datac => \reg1|registers~217_q\,
	datad => \reg1|registers~438_combout\,
	combout => \reg1|registers~439_combout\);

-- Location: LCCOMB_X32_Y27_N16
\reg1|registers~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~440_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~137_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & ((\reg1|registers~9_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~137_q\,
	datad => \reg1|registers~9_q\,
	combout => \reg1|registers~440_combout\);

-- Location: LCCOMB_X36_Y33_N8
\reg1|registers~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~441_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~440_combout\ & ((\reg1|registers~201_q\))) # (!\reg1|registers~440_combout\ & (\reg1|registers~73_q\)))) # (!\instruction[20]~input_o\ & (((\reg1|registers~440_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~73_q\,
	datac => \reg1|registers~201_q\,
	datad => \reg1|registers~440_combout\,
	combout => \reg1|registers~441_combout\);

-- Location: LCCOMB_X35_Y30_N12
\reg1|registers~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~442_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & (\reg1|registers~439_combout\)) # (!\instruction[18]~input_o\ & ((\reg1|registers~441_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~439_combout\,
	datad => \reg1|registers~441_combout\,
	combout => \reg1|registers~442_combout\);

-- Location: LCCOMB_X35_Y30_N18
\reg1|registers~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~445_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~442_combout\ & (\reg1|registers~444_combout\)) # (!\reg1|registers~442_combout\ & ((\reg1|registers~437_combout\))))) # (!\instruction[19]~input_o\ & 
-- (((\reg1|registers~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~444_combout\,
	datac => \reg1|registers~437_combout\,
	datad => \reg1|registers~442_combout\,
	combout => \reg1|registers~445_combout\);

-- Location: LCCOMB_X37_Y30_N20
\c7|mux9|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~0_combout\ = (\c11|ALUCtr\(2) & ((\mux2|mux9|out~0_combout\ & ((\reg1|registers~435_combout\) # (\c11|ALUCtr\(0)))) # (!\mux2|mux9|out~0_combout\ & (\reg1|registers~435_combout\ & \c11|ALUCtr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux9|out~0_combout\,
	datab => \reg1|registers~435_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \c7|mux9|out~0_combout\);

-- Location: LCCOMB_X37_Y30_N10
\alu1|adder1|adder3|full1|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder3|full1|xor2~0_combout\ = \reg1|registers~435_combout\ $ (((\c11|WideOr2~1_combout\ & ((\instruction[10]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~415_combout\,
	datab => \c11|WideOr2~1_combout\,
	datac => \instruction[10]~input_o\,
	datad => \reg1|registers~435_combout\,
	combout => \alu1|adder1|adder3|full1|xor2~0_combout\);

-- Location: LCCOMB_X37_Y30_N4
\alu1|adder2|adder3|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder3|full1|xor2~combout\ = \alu1|adder2|adder2|full4|or1~0_combout\ $ (\reg1|registers~435_combout\ $ (\mux2|mux9|out~0_combout\ $ (\alu1|adder0|adder2|full4|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder2|full4|or1~0_combout\,
	datab => \reg1|registers~435_combout\,
	datac => \mux2|mux9|out~0_combout\,
	datad => \alu1|adder0|adder2|full4|and1~combout\,
	combout => \alu1|adder2|adder3|full1|xor2~combout\);

-- Location: LCCOMB_X37_Y30_N16
\c7|mux9|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~1_combout\ = (\c11|ALUCtr\(0) & (((\alu1|adder2|adder3|full1|xor2~combout\)))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder3|full1|xor2~0_combout\ $ ((\alu1|adder1|adder2|full4|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder3|full1|xor2~0_combout\,
	datab => \alu1|adder1|adder2|full4|or1~0_combout\,
	datac => \alu1|adder2|adder3|full1|xor2~combout\,
	datad => \c11|ALUCtr\(0),
	combout => \c7|mux9|out~1_combout\);

-- Location: LCCOMB_X37_Y30_N22
\c7|mux9|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~2_combout\ = (!\c11|ALUCtr\(1) & ((\c7|mux9|out~0_combout\) # ((!\c11|ALUCtr\(2) & \c7|mux9|out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c7|mux9|out~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c7|mux9|out~1_combout\,
	combout => \c7|mux9|out~2_combout\);

-- Location: LCCOMB_X34_Y31_N24
\alu1|ShiftRight0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~7_combout\ = (\instruction[11]~input_o\ & (\mux2|mux11|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux9|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datac => \mux2|mux11|out~0_combout\,
	datad => \mux2|mux9|out~0_combout\,
	combout => \alu1|ShiftRight0~7_combout\);

-- Location: LCCOMB_X34_Y31_N30
\alu1|ShiftRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~8_combout\ = (\instruction[10]~input_o\ & (\alu1|ShiftRight0~41_combout\)) # (!\instruction[10]~input_o\ & ((\alu1|ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \alu1|ShiftRight0~41_combout\,
	datad => \alu1|ShiftRight0~7_combout\,
	combout => \alu1|ShiftRight0~8_combout\);

-- Location: LCCOMB_X34_Y30_N8
\alu1|ShiftRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~9_combout\ = (\instruction[12]~input_o\ & ((\alu1|ShiftRight0~6_combout\))) # (!\instruction[12]~input_o\ & (\alu1|ShiftRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~8_combout\,
	datab => \instruction[12]~input_o\,
	datac => \alu1|ShiftRight0~6_combout\,
	combout => \alu1|ShiftRight0~9_combout\);

-- Location: LCCOMB_X32_Y29_N0
\alu1|ShiftLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~22_combout\ = (\alu1|ShiftLeft0~0_combout\ & ((\c11|WideOr2~1_combout\ & ((\instruction[2]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~0_combout\,
	datab => \reg1|registers~265_combout\,
	datac => \c11|WideOr2~1_combout\,
	datad => \instruction[2]~input_o\,
	combout => \alu1|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X31_Y30_N14
\alu1|ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~25_combout\ = (!\instruction[12]~input_o\ & ((\instruction[13]~input_o\ & (\alu1|ShiftLeft0~22_combout\)) # (!\instruction[13]~input_o\ & ((\alu1|ShiftLeft0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \alu1|ShiftLeft0~22_combout\,
	datad => \alu1|ShiftLeft0~24_combout\,
	combout => \alu1|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X31_Y30_N16
\c7|mux9|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~3_combout\ = (!\c11|ALUCtr\(2) & ((\alu1|ShiftLeft0~25_combout\) # ((\alu1|ShiftLeft0~12_combout\ & \alu1|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~12_combout\,
	datab => \alu1|ShiftLeft0~10_combout\,
	datac => \alu1|ShiftLeft0~25_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \c7|mux9|out~3_combout\);

-- Location: LCCOMB_X34_Y30_N16
\c7|mux9|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~5_combout\ = (\alu1|mux3|mux3|or1~6_combout\ & ((\c7|mux9|out~3_combout\) # ((\alu1|ShiftRight0~9_combout\ & \c7|mux9|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux3|or1~6_combout\,
	datab => \alu1|ShiftRight0~9_combout\,
	datac => \c7|mux9|out~4_combout\,
	datad => \c7|mux9|out~3_combout\,
	combout => \c7|mux9|out~5_combout\);

-- Location: LCCOMB_X37_Y30_N2
\c7|mux9|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux9|out~6_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a8\)) # (!\c11|Decoder0~3_combout\ & (((\c7|mux9|out~2_combout\) # (\c7|mux9|out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a8\,
	datab => \c11|Decoder0~3_combout\,
	datac => \c7|mux9|out~2_combout\,
	datad => \c7|mux9|out~5_combout\,
	combout => \c7|mux9|out~6_combout\);

-- Location: FF_X38_Y32_N23
\reg1|registers~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux9|out~6_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~184_q\);

-- Location: LCCOMB_X34_Y32_N24
\reg1|registers~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~406_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & ((\reg1|registers~152_q\))) # (!\instruction[18]~input_o\ & (\reg1|registers~136_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~136_q\,
	datad => \reg1|registers~152_q\,
	combout => \reg1|registers~406_combout\);

-- Location: LCCOMB_X34_Y32_N10
\reg1|registers~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~407_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~406_combout\ & (\reg1|registers~184_q\)) # (!\reg1|registers~406_combout\ & ((\reg1|registers~168_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~184_q\,
	datac => \reg1|registers~168_q\,
	datad => \reg1|registers~406_combout\,
	combout => \reg1|registers~407_combout\);

-- Location: LCCOMB_X39_Y28_N20
\reg1|registers~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~408_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~104_q\) # ((\instruction[18]~input_o\)))) # (!\instruction[19]~input_o\ & (((\reg1|registers~72_q\ & !\instruction[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~104_q\,
	datac => \reg1|registers~72_q\,
	datad => \instruction[18]~input_o\,
	combout => \reg1|registers~408_combout\);

-- Location: LCCOMB_X39_Y28_N26
\reg1|registers~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~409_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~408_combout\ & ((\reg1|registers~120_q\))) # (!\reg1|registers~408_combout\ & (\reg1|registers~88_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~88_q\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~120_q\,
	datad => \reg1|registers~408_combout\,
	combout => \reg1|registers~409_combout\);

-- Location: LCCOMB_X39_Y31_N28
\reg1|registers~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~410_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~24_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~8_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~8_q\,
	datad => \reg1|registers~24_q\,
	combout => \reg1|registers~410_combout\);

-- Location: LCCOMB_X38_Y26_N6
\reg1|registers~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~411_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~410_combout\ & ((\reg1|registers~56_q\))) # (!\reg1|registers~410_combout\ & (\reg1|registers~40_q\)))) # (!\instruction[19]~input_o\ & (((\reg1|registers~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~40_q\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~56_q\,
	datad => \reg1|registers~410_combout\,
	combout => \reg1|registers~411_combout\);

-- Location: LCCOMB_X39_Y28_N0
\reg1|registers~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~412_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & (\reg1|registers~409_combout\)) # (!\instruction[20]~input_o\ & ((\reg1|registers~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~409_combout\,
	datad => \reg1|registers~411_combout\,
	combout => \reg1|registers~412_combout\);

-- Location: LCCOMB_X37_Y26_N20
\reg1|registers~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~413_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~232_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & ((\reg1|registers~200_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~232_q\,
	datad => \reg1|registers~200_q\,
	combout => \reg1|registers~413_combout\);

-- Location: LCCOMB_X37_Y26_N30
\reg1|registers~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~414_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~413_combout\ & (\reg1|registers~248_q\)) # (!\reg1|registers~413_combout\ & ((\reg1|registers~216_q\))))) # (!\instruction[18]~input_o\ & (((\reg1|registers~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~248_q\,
	datac => \reg1|registers~216_q\,
	datad => \reg1|registers~413_combout\,
	combout => \reg1|registers~414_combout\);

-- Location: LCCOMB_X34_Y28_N2
\reg1|registers~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~415_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~412_combout\ & ((\reg1|registers~414_combout\))) # (!\reg1|registers~412_combout\ & (\reg1|registers~407_combout\)))) # (!\instruction[21]~input_o\ & 
-- (((\reg1|registers~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~407_combout\,
	datac => \reg1|registers~412_combout\,
	datad => \reg1|registers~414_combout\,
	combout => \reg1|registers~415_combout\);

-- Location: LCCOMB_X32_Y30_N14
\c7|mux8|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux8|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a7\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux8|or1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a7\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux8|or1~7_combout\,
	combout => \c7|mux8|out~0_combout\);

-- Location: LCCOMB_X32_Y26_N22
\reg1|registers~55feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~55feeder_combout\ = \c7|mux8|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux8|out~0_combout\,
	combout => \reg1|registers~55feeder_combout\);

-- Location: FF_X32_Y26_N23
\reg1|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~55feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~55_q\);

-- Location: LCCOMB_X32_Y26_N16
\reg1|registers~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~403_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~183_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~55_q\,
	datad => \reg1|registers~183_q\,
	combout => \reg1|registers~403_combout\);

-- Location: LCCOMB_X32_Y28_N12
\reg1|registers~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~404_combout\ = (\reg1|registers~403_combout\ & (((\reg1|registers~247_q\)) # (!\instruction[20]~input_o\))) # (!\reg1|registers~403_combout\ & (\instruction[20]~input_o\ & (\reg1|registers~119_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~403_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~119_q\,
	datad => \reg1|registers~247_q\,
	combout => \reg1|registers~404_combout\);

-- Location: LCCOMB_X32_Y32_N28
\reg1|registers~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~400_combout\ = (\instruction[21]~input_o\ & (((\instruction[20]~input_o\)))) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~71_q\))) # (!\instruction[20]~input_o\ & (\reg1|registers~7_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~7_q\,
	datab => \instruction[21]~input_o\,
	datac => \instruction[20]~input_o\,
	datad => \reg1|registers~71_q\,
	combout => \reg1|registers~400_combout\);

-- Location: LCCOMB_X34_Y28_N8
\reg1|registers~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~401_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~400_combout\ & (\reg1|registers~199_q\)) # (!\reg1|registers~400_combout\ & ((\reg1|registers~135_q\))))) # (!\instruction[21]~input_o\ & (\reg1|registers~400_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~400_combout\,
	datac => \reg1|registers~199_q\,
	datad => \reg1|registers~135_q\,
	combout => \reg1|registers~401_combout\);

-- Location: LCCOMB_X36_Y28_N0
\reg1|registers~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~398_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~103_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~103_q\,
	datad => \reg1|registers~39_q\,
	combout => \reg1|registers~398_combout\);

-- Location: LCCOMB_X36_Y29_N8
\reg1|registers~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~399_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~398_combout\ & ((\reg1|registers~231_q\))) # (!\reg1|registers~398_combout\ & (\reg1|registers~167_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~167_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~231_q\,
	datad => \reg1|registers~398_combout\,
	combout => \reg1|registers~399_combout\);

-- Location: LCCOMB_X34_Y28_N14
\reg1|registers~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~402_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & ((\reg1|registers~399_combout\))) # (!\instruction[19]~input_o\ & (\reg1|registers~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~401_combout\,
	datad => \reg1|registers~399_combout\,
	combout => \reg1|registers~402_combout\);

-- Location: LCCOMB_X35_Y30_N28
\reg1|registers~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~396_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~151_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & (\reg1|registers~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~23_q\,
	datad => \reg1|registers~151_q\,
	combout => \reg1|registers~396_combout\);

-- Location: LCCOMB_X35_Y32_N6
\reg1|registers~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~397_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~396_combout\ & (\reg1|registers~215_q\)) # (!\reg1|registers~396_combout\ & ((\reg1|registers~87_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~215_q\,
	datab => \reg1|registers~87_q\,
	datac => \instruction[20]~input_o\,
	datad => \reg1|registers~396_combout\,
	combout => \reg1|registers~397_combout\);

-- Location: LCCOMB_X34_Y28_N4
\reg1|registers~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~405_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~402_combout\ & (\reg1|registers~404_combout\)) # (!\reg1|registers~402_combout\ & ((\reg1|registers~397_combout\))))) # (!\instruction[18]~input_o\ & 
-- (((\reg1|registers~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~404_combout\,
	datac => \reg1|registers~402_combout\,
	datad => \reg1|registers~397_combout\,
	combout => \reg1|registers~405_combout\);

-- Location: LCCOMB_X34_Y28_N22
\mux2|mux8|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux8|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[9]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \reg1|registers~405_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux8|out~0_combout\);

-- Location: LCCOMB_X36_Y26_N18
\alu1|ShiftLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~19_combout\ = (\instruction[11]~input_o\ & (\mux2|mux6|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux8|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \mux2|mux6|out~0_combout\,
	datad => \mux2|mux8|out~0_combout\,
	combout => \alu1|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X37_Y26_N28
\alu1|ShiftLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~20_combout\ = (\instruction[10]~input_o\ & ((\alu1|ShiftLeft0~16_combout\))) # (!\instruction[10]~input_o\ & (\alu1|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu1|ShiftLeft0~19_combout\,
	datac => \instruction[10]~input_o\,
	datad => \alu1|ShiftLeft0~16_combout\,
	combout => \alu1|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X32_Y29_N22
\alu1|ShiftLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~21_combout\ = (\instruction[12]~input_o\ & (\alu1|ShiftLeft0~7_combout\)) # (!\instruction[12]~input_o\ & ((\alu1|ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \alu1|ShiftLeft0~7_combout\,
	datad => \alu1|ShiftLeft0~20_combout\,
	combout => \alu1|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X34_Y31_N26
\alu1|ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~42_combout\ = (\instruction[11]~input_o\ & ((\c11|WideOr2~1_combout\) # ((\reg1|registers~445_combout\)))) # (!\instruction[11]~input_o\ & (((\mux2|mux8|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \instruction[11]~input_o\,
	datac => \reg1|registers~445_combout\,
	datad => \mux2|mux8|out~0_combout\,
	combout => \alu1|ShiftRight0~42_combout\);

-- Location: LCCOMB_X34_Y31_N12
\alu1|ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~35_combout\ = (\instruction[10]~input_o\ & ((\alu1|ShiftRight0~7_combout\))) # (!\instruction[10]~input_o\ & (\alu1|ShiftRight0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~42_combout\,
	datab => \instruction[10]~input_o\,
	datad => \alu1|ShiftRight0~7_combout\,
	combout => \alu1|ShiftRight0~35_combout\);

-- Location: LCCOMB_X34_Y30_N24
\alu1|mux3|mux8|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~2_combout\ = (\instruction[13]~input_o\ & (\alu1|ShiftLeft0~0_combout\ & (\mux2|mux16|out~0_combout\))) # (!\instruction[13]~input_o\ & (((\alu1|ShiftRight0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~0_combout\,
	datab => \mux2|mux16|out~0_combout\,
	datac => \instruction[13]~input_o\,
	datad => \alu1|ShiftRight0~35_combout\,
	combout => \alu1|mux3|mux8|or1~2_combout\);

-- Location: LCCOMB_X34_Y30_N0
\alu1|mux3|mux8|or1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~8_combout\ = (\instruction[12]~input_o\ & (!\instruction[13]~input_o\ & (\alu1|ShiftRight0~38_combout\))) # (!\instruction[12]~input_o\ & (((\alu1|mux3|mux8|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \alu1|ShiftRight0~38_combout\,
	datad => \alu1|mux3|mux8|or1~2_combout\,
	combout => \alu1|mux3|mux8|or1~8_combout\);

-- Location: LCCOMB_X34_Y30_N10
\alu1|mux3|mux8|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~3_combout\ = (\c11|ALUCtr\(1) & (((\alu1|mux3|mux8|or1~8_combout\)))) # (!\c11|ALUCtr\(1) & ((\reg1|registers~425_combout\) # ((\mux2|mux8|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \reg1|registers~425_combout\,
	datac => \mux2|mux8|out~0_combout\,
	datad => \alu1|mux3|mux8|or1~8_combout\,
	combout => \alu1|mux3|mux8|or1~3_combout\);

-- Location: LCCOMB_X32_Y30_N28
\alu1|mux3|mux1|or1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~7_combout\ = (\c11|ALUCtr\(1) & (!\instruction[13]~input_o\ & !\c11|ALUCtr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datac => \instruction[13]~input_o\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux1|or1~7_combout\);

-- Location: LCCOMB_X32_Y30_N4
\alu1|mux3|mux8|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~4_combout\ = (\alu1|ShiftLeft0~21_combout\ & ((\alu1|mux3|mux1|or1~7_combout\) # ((\c11|ALUCtr\(2) & \alu1|mux3|mux8|or1~3_combout\)))) # (!\alu1|ShiftLeft0~21_combout\ & (\c11|ALUCtr\(2) & (\alu1|mux3|mux8|or1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~21_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \alu1|mux3|mux8|or1~3_combout\,
	datad => \alu1|mux3|mux1|or1~7_combout\,
	combout => \alu1|mux3|mux8|or1~4_combout\);

-- Location: LCCOMB_X37_Y31_N28
\alu1|adder1|adder2|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full4|xor2~combout\ = \mux2|mux8|out~0_combout\ $ (\reg1|registers~425_combout\ $ (((\alu1|adder1|adder2|full3|or1~0_combout\) # (\alu1|adder1|adder2|full3|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux8|out~0_combout\,
	datab => \alu1|adder1|adder2|full3|or1~0_combout\,
	datac => \reg1|registers~425_combout\,
	datad => \alu1|adder1|adder2|full3|or1~2_combout\,
	combout => \alu1|adder1|adder2|full4|xor2~combout\);

-- Location: LCCOMB_X36_Y27_N28
\alu1|adder2|adder2|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full4|xor2~combout\ = \mux2|mux8|out~0_combout\ $ (\reg1|registers~425_combout\ $ (\alu1|adder0|adder2|full3|and1~combout\ $ (\alu1|adder2|adder2|full3|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux8|out~0_combout\,
	datab => \reg1|registers~425_combout\,
	datac => \alu1|adder0|adder2|full3|and1~combout\,
	datad => \alu1|adder2|adder2|full3|or1~0_combout\,
	combout => \alu1|adder2|adder2|full4|xor2~combout\);

-- Location: LCCOMB_X32_Y30_N18
\alu1|mux3|mux8|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~5_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\alu1|adder2|adder2|full4|xor2~combout\))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder2|full4|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder2|full4|xor2~combout\,
	datab => \c11|ALUCtr\(2),
	datac => \c11|ALUCtr\(0),
	datad => \alu1|adder2|adder2|full4|xor2~combout\,
	combout => \alu1|mux3|mux8|or1~5_combout\);

-- Location: LCCOMB_X32_Y30_N0
\alu1|mux3|mux8|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~6_combout\ = (\alu1|mux3|mux8|or1~5_combout\) # ((\reg1|registers~425_combout\ & (\c11|ALUCtr\(2) & \mux2|mux8|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~425_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \mux2|mux8|out~0_combout\,
	datad => \alu1|mux3|mux8|or1~5_combout\,
	combout => \alu1|mux3|mux8|or1~6_combout\);

-- Location: LCCOMB_X32_Y30_N2
\alu1|mux3|mux8|or1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux8|or1~7_combout\ = (\c11|ALUCtr\(1) & (\c11|ALUCtr\(0) & (\alu1|mux3|mux8|or1~4_combout\))) # (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux8|or1~6_combout\) # ((\c11|ALUCtr\(0) & \alu1|mux3|mux8|or1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c11|ALUCtr\(0),
	datac => \alu1|mux3|mux8|or1~4_combout\,
	datad => \alu1|mux3|mux8|or1~6_combout\,
	combout => \alu1|mux3|mux8|or1~7_combout\);

-- Location: LCCOMB_X32_Y30_N24
\c7|mux7|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux7|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a6\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux7|or1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1|memdata_rtl_0|auto_generated|ram_block1a6\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux7|or1~6_combout\,
	combout => \c7|mux7|out~0_combout\);

-- Location: FF_X32_Y30_N25
\reg1|registers~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux7|out~0_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~246_q\);

-- Location: LCCOMB_X36_Y29_N20
\reg1|registers~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~383_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~214_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & ((\reg1|registers~198_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~214_q\,
	datad => \reg1|registers~198_q\,
	combout => \reg1|registers~383_combout\);

-- Location: LCCOMB_X36_Y29_N16
\reg1|registers~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~384_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~383_combout\ & (\reg1|registers~246_q\)) # (!\reg1|registers~383_combout\ & ((\reg1|registers~230_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~246_q\,
	datac => \reg1|registers~230_q\,
	datad => \reg1|registers~383_combout\,
	combout => \reg1|registers~384_combout\);

-- Location: LCCOMB_X39_Y30_N30
\reg1|registers~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~376_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~86_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~70_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~70_q\,
	datad => \reg1|registers~86_q\,
	combout => \reg1|registers~376_combout\);

-- Location: LCCOMB_X38_Y31_N26
\reg1|registers~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~377_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~376_combout\ & ((\reg1|registers~118_q\))) # (!\reg1|registers~376_combout\ & (\reg1|registers~102_q\)))) # (!\instruction[19]~input_o\ & (((\reg1|registers~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~102_q\,
	datac => \reg1|registers~118_q\,
	datad => \reg1|registers~376_combout\,
	combout => \reg1|registers~377_combout\);

-- Location: LCCOMB_X38_Y29_N16
\reg1|registers~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~380_combout\ = (\instruction[19]~input_o\ & (((\reg1|registers~38_q\) # (\instruction[18]~input_o\)))) # (!\instruction[19]~input_o\ & (\reg1|registers~6_q\ & ((!\instruction[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~6_q\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~38_q\,
	datad => \instruction[18]~input_o\,
	combout => \reg1|registers~380_combout\);

-- Location: LCCOMB_X36_Y26_N12
\reg1|registers~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~381_combout\ = (\reg1|registers~380_combout\ & (((\reg1|registers~54_q\)) # (!\instruction[18]~input_o\))) # (!\reg1|registers~380_combout\ & (\instruction[18]~input_o\ & ((\reg1|registers~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~380_combout\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~54_q\,
	datad => \reg1|registers~22_q\,
	combout => \reg1|registers~381_combout\);

-- Location: LCCOMB_X34_Y32_N14
\reg1|registers~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~378_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~166_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & ((\reg1|registers~134_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~166_q\,
	datad => \reg1|registers~134_q\,
	combout => \reg1|registers~378_combout\);

-- Location: LCCOMB_X35_Y33_N16
\reg1|registers~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~379_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~378_combout\ & ((\reg1|registers~182_q\))) # (!\reg1|registers~378_combout\ & (\reg1|registers~150_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~150_q\,
	datac => \reg1|registers~378_combout\,
	datad => \reg1|registers~182_q\,
	combout => \reg1|registers~379_combout\);

-- Location: LCCOMB_X37_Y29_N2
\reg1|registers~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~382_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~379_combout\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & (\reg1|registers~381_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~381_combout\,
	datad => \reg1|registers~379_combout\,
	combout => \reg1|registers~382_combout\);

-- Location: LCCOMB_X37_Y29_N4
\reg1|registers~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~385_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~382_combout\ & (\reg1|registers~384_combout\)) # (!\reg1|registers~382_combout\ & ((\reg1|registers~377_combout\))))) # (!\instruction[20]~input_o\ & 
-- (((\reg1|registers~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~384_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~377_combout\,
	datad => \reg1|registers~382_combout\,
	combout => \reg1|registers~385_combout\);

-- Location: LCCOMB_X37_Y29_N30
\mux2|mux7|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux7|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[8]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datac => \reg1|registers~385_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux7|out~0_combout\);

-- Location: LCCOMB_X38_Y26_N4
\alu1|ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~16_combout\ = (\instruction[11]~input_o\ & ((\mux2|mux5|out~0_combout\))) # (!\instruction[11]~input_o\ & (\mux2|mux7|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \mux2|mux7|out~0_combout\,
	datad => \mux2|mux5|out~0_combout\,
	combout => \alu1|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X38_Y26_N14
\alu1|ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~17_combout\ = (\instruction[10]~input_o\ & ((\alu1|ShiftLeft0~13_combout\))) # (!\instruction[10]~input_o\ & (\alu1|ShiftLeft0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \alu1|ShiftLeft0~16_combout\,
	datad => \alu1|ShiftLeft0~13_combout\,
	combout => \alu1|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X32_Y30_N8
\alu1|mux3|mux7|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~2_combout\ = (\alu1|mux3|mux1|or1~7_combout\ & ((\instruction[12]~input_o\ & (\alu1|ShiftLeft0~5_combout\)) # (!\instruction[12]~input_o\ & ((\alu1|ShiftLeft0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~5_combout\,
	datab => \instruction[12]~input_o\,
	datac => \alu1|ShiftLeft0~17_combout\,
	datad => \alu1|mux3|mux1|or1~7_combout\,
	combout => \alu1|mux3|mux7|or1~2_combout\);

-- Location: LCCOMB_X37_Y29_N10
\alu1|adder1|adder2|full3|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full3|xor2~0_combout\ = \reg1|registers~395_combout\ $ (((\c11|WideOr2~1_combout\ & (\instruction[8]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~385_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \reg1|registers~385_combout\,
	datac => \reg1|registers~395_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder2|full3|xor2~0_combout\);

-- Location: LCCOMB_X37_Y30_N30
\alu1|adder1|adder2|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full3|xor2~combout\ = \alu1|adder1|adder2|full3|xor2~0_combout\ $ (((\mux2|mux6|out~0_combout\ & ((\alu1|adder1|adder2|full1|or1~0_combout\) # (\reg1|registers~375_combout\))) # (!\mux2|mux6|out~0_combout\ & 
-- (\alu1|adder1|adder2|full1|or1~0_combout\ & \reg1|registers~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux6|out~0_combout\,
	datab => \alu1|adder1|adder2|full1|or1~0_combout\,
	datac => \reg1|registers~375_combout\,
	datad => \alu1|adder1|adder2|full3|xor2~0_combout\,
	combout => \alu1|adder1|adder2|full3|xor2~combout\);

-- Location: LCCOMB_X32_Y28_N28
\alu1|adder2|adder2|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full3|xor2~combout\ = \mux2|mux7|out~0_combout\ $ (\reg1|registers~395_combout\ $ (\alu1|adder0|adder2|full2|and1~combout\ $ (\alu1|adder2|adder2|full2|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux7|out~0_combout\,
	datab => \reg1|registers~395_combout\,
	datac => \alu1|adder0|adder2|full2|and1~combout\,
	datad => \alu1|adder2|adder2|full2|or1~0_combout\,
	combout => \alu1|adder2|adder2|full3|xor2~combout\);

-- Location: LCCOMB_X32_Y30_N12
\alu1|mux3|mux7|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~0_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\alu1|adder2|adder2|full3|xor2~combout\))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder2|full3|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder2|full3|xor2~combout\,
	datab => \c11|ALUCtr\(0),
	datac => \alu1|adder2|adder2|full3|xor2~combout\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux7|or1~0_combout\);

-- Location: LCCOMB_X32_Y30_N26
\alu1|mux3|mux7|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~1_combout\ = (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux7|or1~0_combout\) # ((\alu1|adder1|adder2|full3|or1~0_combout\ & \c11|ALUCtr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder2|full3|or1~0_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \c11|ALUCtr\(1),
	datad => \alu1|mux3|mux7|or1~0_combout\,
	combout => \alu1|mux3|mux7|or1~1_combout\);

-- Location: LCCOMB_X34_Y31_N16
\alu1|ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~28_combout\ = (!\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & (\mux2|mux9|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux7|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux9|out~0_combout\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \mux2|mux7|out~0_combout\,
	combout => \alu1|ShiftRight0~28_combout\);

-- Location: LCCOMB_X34_Y31_N22
\alu1|ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~29_combout\ = (\alu1|ShiftRight0~28_combout\) # ((\instruction[10]~input_o\ & \alu1|ShiftRight0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \alu1|ShiftRight0~42_combout\,
	datad => \alu1|ShiftRight0~28_combout\,
	combout => \alu1|ShiftRight0~29_combout\);

-- Location: LCCOMB_X31_Y29_N22
\alu1|mux3|mux7|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~3_combout\ = (!\instruction[13]~input_o\ & ((\instruction[12]~input_o\ & (\alu1|ShiftRight0~32_combout\)) # (!\instruction[12]~input_o\ & ((\alu1|ShiftRight0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~32_combout\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \alu1|ShiftRight0~29_combout\,
	combout => \alu1|mux3|mux7|or1~3_combout\);

-- Location: LCCOMB_X31_Y29_N18
\alu1|mux3|mux7|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~4_combout\ = (\c11|ALUCtr\(1) & ((\alu1|mux3|mux7|or1~3_combout\) # ((\alu1|ShiftLeft0~18_combout\ & \alu1|ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \alu1|ShiftLeft0~18_combout\,
	datac => \alu1|mux3|mux7|or1~3_combout\,
	datad => \alu1|ShiftRight0~5_combout\,
	combout => \alu1|mux3|mux7|or1~4_combout\);

-- Location: LCCOMB_X31_Y29_N4
\alu1|mux3|mux7|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~5_combout\ = (\c11|ALUCtr\(2) & ((\alu1|mux3|mux7|or1~4_combout\) # ((!\c11|ALUCtr\(1) & \alu1|adder1|adder2|full3|or1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \alu1|adder1|adder2|full3|or1~1_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|mux3|mux7|or1~4_combout\,
	combout => \alu1|mux3|mux7|or1~5_combout\);

-- Location: LCCOMB_X32_Y30_N6
\alu1|mux3|mux7|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux7|or1~6_combout\ = (\alu1|mux3|mux7|or1~1_combout\) # ((\c11|ALUCtr\(0) & ((\alu1|mux3|mux7|or1~2_combout\) # (\alu1|mux3|mux7|or1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(0),
	datab => \alu1|mux3|mux7|or1~2_combout\,
	datac => \alu1|mux3|mux7|or1~1_combout\,
	datad => \alu1|mux3|mux7|or1~5_combout\,
	combout => \alu1|mux3|mux7|or1~6_combout\);

-- Location: FF_X35_Y26_N31
\reg1|registers~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~95_q\);

-- Location: FF_X35_Y26_N1
\reg1|registers~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~223_q\);

-- Location: FF_X37_Y29_N23
\reg1|registers~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~159_q\);

-- Location: FF_X37_Y29_N13
\reg1|registers~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~31_q\);

-- Location: LCCOMB_X37_Y29_N22
\reg1|registers~566\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~566_combout\ = (\instruction[25]~input_o\ & ((\instruction[24]~input_o\) # ((\reg1|registers~159_q\)))) # (!\instruction[25]~input_o\ & (!\instruction[24]~input_o\ & ((\reg1|registers~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~159_q\,
	datad => \reg1|registers~31_q\,
	combout => \reg1|registers~566_combout\);

-- Location: LCCOMB_X35_Y26_N0
\reg1|registers~567\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~567_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~566_combout\ & ((\reg1|registers~223_q\))) # (!\reg1|registers~566_combout\ & (\reg1|registers~95_q\)))) # (!\instruction[24]~input_o\ & (((\reg1|registers~566_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~95_q\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~223_q\,
	datad => \reg1|registers~566_combout\,
	combout => \reg1|registers~567_combout\);

-- Location: LCCOMB_X32_Y32_N14
\reg1|registers~15feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~15feeder_combout\ = \c7|mux16|out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux16|out~8_combout\,
	combout => \reg1|registers~15feeder_combout\);

-- Location: FF_X32_Y32_N15
\reg1|registers~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~15feeder_combout\,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~15_q\);

-- Location: LCCOMB_X32_Y32_N12
\reg1|registers~79feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~79feeder_combout\ = \c7|mux16|out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux16|out~8_combout\,
	combout => \reg1|registers~79feeder_combout\);

-- Location: FF_X32_Y32_N13
\reg1|registers~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~79feeder_combout\,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~79_q\);

-- Location: LCCOMB_X32_Y32_N30
\reg1|registers~570\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~570_combout\ = (\instruction[24]~input_o\ & (((\instruction[25]~input_o\) # (\reg1|registers~79_q\)))) # (!\instruction[24]~input_o\ & (\reg1|registers~15_q\ & (!\instruction[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \reg1|registers~15_q\,
	datac => \instruction[25]~input_o\,
	datad => \reg1|registers~79_q\,
	combout => \reg1|registers~570_combout\);

-- Location: FF_X37_Y32_N11
\reg1|registers~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~143_q\);

-- Location: FF_X37_Y32_N1
\reg1|registers~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~207_q\);

-- Location: LCCOMB_X37_Y32_N10
\reg1|registers~571\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~571_combout\ = (\instruction[25]~input_o\ & ((\reg1|registers~570_combout\ & ((\reg1|registers~207_q\))) # (!\reg1|registers~570_combout\ & (\reg1|registers~143_q\)))) # (!\instruction[25]~input_o\ & (\reg1|registers~570_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~570_combout\,
	datac => \reg1|registers~143_q\,
	datad => \reg1|registers~207_q\,
	combout => \reg1|registers~571_combout\);

-- Location: FF_X36_Y28_N7
\reg1|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~47_q\);

-- Location: FF_X36_Y28_N13
\reg1|registers~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~111_q\);

-- Location: LCCOMB_X36_Y28_N6
\reg1|registers~568\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~568_combout\ = (\instruction[25]~input_o\ & (\instruction[24]~input_o\)) # (!\instruction[25]~input_o\ & ((\instruction[24]~input_o\ & ((\reg1|registers~111_q\))) # (!\instruction[24]~input_o\ & (\reg1|registers~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~47_q\,
	datad => \reg1|registers~111_q\,
	combout => \reg1|registers~568_combout\);

-- Location: LCCOMB_X37_Y27_N8
\reg1|registers~175feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~175feeder_combout\ = \c7|mux16|out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux16|out~8_combout\,
	combout => \reg1|registers~175feeder_combout\);

-- Location: FF_X37_Y27_N9
\reg1|registers~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~175feeder_combout\,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~175_q\);

-- Location: FF_X37_Y27_N19
\reg1|registers~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~239_q\);

-- Location: LCCOMB_X37_Y27_N18
\reg1|registers~569\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~569_combout\ = (\reg1|registers~568_combout\ & (((\reg1|registers~239_q\) # (!\instruction[25]~input_o\)))) # (!\reg1|registers~568_combout\ & (\reg1|registers~175_q\ & ((\instruction[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~568_combout\,
	datab => \reg1|registers~175_q\,
	datac => \reg1|registers~239_q\,
	datad => \instruction[25]~input_o\,
	combout => \reg1|registers~569_combout\);

-- Location: LCCOMB_X37_Y27_N30
\reg1|registers~572\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~572_combout\ = (\instruction[23]~input_o\ & ((\instruction[22]~input_o\) # ((\reg1|registers~569_combout\)))) # (!\instruction[23]~input_o\ & (!\instruction[22]~input_o\ & (\reg1|registers~571_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~571_combout\,
	datad => \reg1|registers~569_combout\,
	combout => \reg1|registers~572_combout\);

-- Location: FF_X36_Y26_N15
\reg1|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~63_q\);

-- Location: LCCOMB_X36_Y26_N28
\reg1|registers~191feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~191feeder_combout\ = \c7|mux16|out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux16|out~8_combout\,
	combout => \reg1|registers~191feeder_combout\);

-- Location: FF_X36_Y26_N29
\reg1|registers~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~191feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~191_q\);

-- Location: LCCOMB_X36_Y26_N14
\reg1|registers~573\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~573_combout\ = (\instruction[24]~input_o\ & (\instruction[25]~input_o\)) # (!\instruction[24]~input_o\ & ((\instruction[25]~input_o\ & ((\reg1|registers~191_q\))) # (!\instruction[25]~input_o\ & (\reg1|registers~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datab => \instruction[25]~input_o\,
	datac => \reg1|registers~63_q\,
	datad => \reg1|registers~191_q\,
	combout => \reg1|registers~573_combout\);

-- Location: FF_X36_Y30_N5
\reg1|registers~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux16|out~8_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~127_q\);

-- Location: LCCOMB_X35_Y26_N6
\reg1|registers~574\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~574_combout\ = (\reg1|registers~573_combout\ & (((\reg1|registers~255_q\) # (!\instruction[24]~input_o\)))) # (!\reg1|registers~573_combout\ & (\reg1|registers~127_q\ & (\instruction[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~573_combout\,
	datab => \reg1|registers~127_q\,
	datac => \instruction[24]~input_o\,
	datad => \reg1|registers~255_q\,
	combout => \reg1|registers~574_combout\);

-- Location: LCCOMB_X35_Y26_N24
\reg1|registers~575\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~575_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~572_combout\ & ((\reg1|registers~574_combout\))) # (!\reg1|registers~572_combout\ & (\reg1|registers~567_combout\)))) # (!\instruction[22]~input_o\ & 
-- (((\reg1|registers~572_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~567_combout\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~572_combout\,
	datad => \reg1|registers~574_combout\,
	combout => \reg1|registers~575_combout\);

-- Location: LCCOMB_X36_Y30_N18
\c7|mux16|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~1_combout\ = (\c11|ALUCtr\(0) & (((\alu1|ShiftLeft0~0_combout\ & \c7|mux16|out~0_combout\)) # (!\c11|ALUCtr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~0_combout\,
	datab => \c7|mux16|out~0_combout\,
	datac => \c11|ALUCtr\(1),
	datad => \c11|ALUCtr\(0),
	combout => \c7|mux16|out~1_combout\);

-- Location: LCCOMB_X36_Y30_N8
\c7|mux16|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~2_combout\ = (\mux2|mux16|out~0_combout\ & ((\c7|mux16|out~1_combout\) # ((!\c11|ALUCtr\(1) & \reg1|registers~575_combout\)))) # (!\mux2|mux16|out~0_combout\ & (!\c11|ALUCtr\(1) & (\reg1|registers~575_combout\ & \c7|mux16|out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \reg1|registers~575_combout\,
	datac => \mux2|mux16|out~0_combout\,
	datad => \c7|mux16|out~1_combout\,
	combout => \c7|mux16|out~2_combout\);

-- Location: LCCOMB_X31_Y29_N20
\alu1|ShiftLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~1_combout\ = (\instruction[12]~input_o\) # ((\instruction[10]~input_o\ & !\instruction[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \alu1|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X31_Y28_N8
\alu1|ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~44_combout\ = (\alu1|ShiftLeft0~2_combout\ & (\alu1|ShiftLeft0~1_combout\)) # (!\alu1|ShiftLeft0~2_combout\ & ((\alu1|ShiftLeft0~1_combout\ & ((\mux2|mux15|out~0_combout\))) # (!\alu1|ShiftLeft0~1_combout\ & 
-- (\mux2|mux16|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \mux2|mux16|out~0_combout\,
	datad => \mux2|mux15|out~0_combout\,
	combout => \alu1|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X31_Y28_N22
\alu1|ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~45_combout\ = (\alu1|ShiftLeft0~2_combout\ & ((\alu1|ShiftLeft0~44_combout\ & ((\alu1|ShiftLeft0~34_combout\))) # (!\alu1|ShiftLeft0~44_combout\ & (\alu1|ShiftLeft0~38_combout\)))) # (!\alu1|ShiftLeft0~2_combout\ & 
-- (\alu1|ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftLeft0~44_combout\,
	datac => \alu1|ShiftLeft0~38_combout\,
	datad => \alu1|ShiftLeft0~34_combout\,
	combout => \alu1|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X36_Y30_N6
\c7|mux16|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~3_combout\ = (\c11|ALUCtr\(0) & ((\instruction[13]~input_o\ & (\alu1|ShiftLeft0~21_combout\)) # (!\instruction[13]~input_o\ & ((\alu1|ShiftLeft0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \c11|ALUCtr\(0),
	datac => \alu1|ShiftLeft0~21_combout\,
	datad => \alu1|ShiftLeft0~45_combout\,
	combout => \c7|mux16|out~3_combout\);

-- Location: LCCOMB_X36_Y30_N12
\c7|mux16|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~4_combout\ = (\c11|ALUCtr\(2) & (((\c7|mux16|out~2_combout\)))) # (!\c11|ALUCtr\(2) & (\c11|ALUCtr\(1) & ((\c7|mux16|out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \c11|ALUCtr\(1),
	datac => \c7|mux16|out~2_combout\,
	datad => \c7|mux16|out~3_combout\,
	combout => \c7|mux16|out~4_combout\);

-- Location: LCCOMB_X36_Y30_N14
\c7|mux16|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~5_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a15\)) # (!\c11|Decoder0~3_combout\ & ((\c7|mux16|out~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Decoder0~3_combout\,
	datac => \mem1|memdata_rtl_0|auto_generated|ram_block1a15\,
	datad => \c7|mux16|out~4_combout\,
	combout => \c7|mux16|out~5_combout\);

-- Location: FF_X36_Y29_N11
\reg1|registers~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~238_q\);

-- Location: FF_X35_Y29_N25
\reg1|registers~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux15|out~9_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~254_q\);

-- Location: FF_X34_Y29_N13
\reg1|registers~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~222_q\);

-- Location: LCCOMB_X34_Y29_N12
\reg1|registers~543\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~543_combout\ = (\instruction[22]~input_o\ & ((\instruction[23]~input_o\) # ((\reg1|registers~222_q\)))) # (!\instruction[22]~input_o\ & (!\instruction[23]~input_o\ & ((\reg1|registers~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \instruction[23]~input_o\,
	datac => \reg1|registers~222_q\,
	datad => \reg1|registers~206_q\,
	combout => \reg1|registers~543_combout\);

-- Location: LCCOMB_X34_Y29_N22
\reg1|registers~544\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~544_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~543_combout\ & ((\reg1|registers~254_q\))) # (!\reg1|registers~543_combout\ & (\reg1|registers~238_q\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~543_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~238_q\,
	datab => \reg1|registers~254_q\,
	datac => \instruction[23]~input_o\,
	datad => \reg1|registers~543_combout\,
	combout => \reg1|registers~544_combout\);

-- Location: FF_X32_Y28_N7
\reg1|registers~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~126_q\);

-- Location: LCCOMB_X39_Y30_N26
\reg1|registers~94feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~94feeder_combout\ = \c7|mux15|out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux15|out~9_combout\,
	combout => \reg1|registers~94feeder_combout\);

-- Location: FF_X39_Y30_N27
\reg1|registers~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~94feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~94_q\);

-- Location: FF_X39_Y30_N17
\reg1|registers~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~78_q\);

-- Location: LCCOMB_X39_Y30_N16
\reg1|registers~536\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~536_combout\ = (\instruction[22]~input_o\ & ((\reg1|registers~94_q\) # ((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & (((\reg1|registers~78_q\ & !\instruction[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~94_q\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~78_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~536_combout\);

-- Location: FF_X32_Y28_N25
\reg1|registers~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~110_q\);

-- Location: LCCOMB_X34_Y27_N20
\reg1|registers~537\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~537_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~536_combout\ & (\reg1|registers~126_q\)) # (!\reg1|registers~536_combout\ & ((\reg1|registers~110_q\))))) # (!\instruction[23]~input_o\ & (((\reg1|registers~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~126_q\,
	datac => \reg1|registers~536_combout\,
	datad => \reg1|registers~110_q\,
	combout => \reg1|registers~537_combout\);

-- Location: FF_X38_Y29_N3
\reg1|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~46_q\);

-- Location: FF_X38_Y29_N1
\reg1|registers~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~14_q\);

-- Location: LCCOMB_X38_Y29_N0
\reg1|registers~540\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~540_combout\ = (\instruction[23]~input_o\ & ((\reg1|registers~46_q\) # ((\instruction[22]~input_o\)))) # (!\instruction[23]~input_o\ & (((\reg1|registers~14_q\ & !\instruction[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \reg1|registers~46_q\,
	datac => \reg1|registers~14_q\,
	datad => \instruction[22]~input_o\,
	combout => \reg1|registers~540_combout\);

-- Location: FF_X39_Y29_N29
\reg1|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~62_q\);

-- Location: LCCOMB_X39_Y29_N18
\reg1|registers~30feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~30feeder_combout\ = \c7|mux15|out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux15|out~9_combout\,
	combout => \reg1|registers~30feeder_combout\);

-- Location: FF_X39_Y29_N19
\reg1|registers~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~30feeder_combout\,
	ena => \reg1|registers~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~30_q\);

-- Location: LCCOMB_X38_Y29_N26
\reg1|registers~541\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~541_combout\ = (\reg1|registers~540_combout\ & (((\reg1|registers~62_q\)) # (!\instruction[22]~input_o\))) # (!\reg1|registers~540_combout\ & (\instruction[22]~input_o\ & ((\reg1|registers~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~540_combout\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~62_q\,
	datad => \reg1|registers~30_q\,
	combout => \reg1|registers~541_combout\);

-- Location: FF_X34_Y32_N9
\reg1|registers~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~174_q\);

-- Location: FF_X34_Y32_N27
\reg1|registers~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~142_q\);

-- Location: LCCOMB_X34_Y32_N26
\reg1|registers~538\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~538_combout\ = (\instruction[22]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[22]~input_o\ & ((\instruction[23]~input_o\ & (\reg1|registers~174_q\)) # (!\instruction[23]~input_o\ & ((\reg1|registers~142_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datab => \reg1|registers~174_q\,
	datac => \reg1|registers~142_q\,
	datad => \instruction[23]~input_o\,
	combout => \reg1|registers~538_combout\);

-- Location: FF_X38_Y32_N3
\reg1|registers~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~190_q\);

-- Location: LCCOMB_X38_Y32_N0
\reg1|registers~158feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~158feeder_combout\ = \c7|mux15|out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux15|out~9_combout\,
	combout => \reg1|registers~158feeder_combout\);

-- Location: FF_X38_Y32_N1
\reg1|registers~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~158feeder_combout\,
	ena => \reg1|registers~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~158_q\);

-- Location: LCCOMB_X38_Y32_N2
\reg1|registers~539\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~539_combout\ = (\reg1|registers~538_combout\ & (((\reg1|registers~190_q\)) # (!\instruction[22]~input_o\))) # (!\reg1|registers~538_combout\ & (\instruction[22]~input_o\ & ((\reg1|registers~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~538_combout\,
	datab => \instruction[22]~input_o\,
	datac => \reg1|registers~190_q\,
	datad => \reg1|registers~158_q\,
	combout => \reg1|registers~539_combout\);

-- Location: LCCOMB_X37_Y29_N28
\reg1|registers~542\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~542_combout\ = (\instruction[25]~input_o\ & (((\reg1|registers~539_combout\) # (\instruction[24]~input_o\)))) # (!\instruction[25]~input_o\ & (\reg1|registers~541_combout\ & ((!\instruction[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \reg1|registers~541_combout\,
	datac => \reg1|registers~539_combout\,
	datad => \instruction[24]~input_o\,
	combout => \reg1|registers~542_combout\);

-- Location: LCCOMB_X34_Y27_N22
\reg1|registers~545\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~545_combout\ = (\instruction[24]~input_o\ & ((\reg1|registers~542_combout\ & (\reg1|registers~544_combout\)) # (!\reg1|registers~542_combout\ & ((\reg1|registers~537_combout\))))) # (!\instruction[24]~input_o\ & 
-- (((\reg1|registers~542_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~544_combout\,
	datab => \instruction[24]~input_o\,
	datac => \reg1|registers~537_combout\,
	datad => \reg1|registers~542_combout\,
	combout => \reg1|registers~545_combout\);

-- Location: LCCOMB_X35_Y26_N2
\alu1|adder1|adder4|full4|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full4|xor2~0_combout\ = \reg1|registers~575_combout\ $ (((\c11|WideOr2~1_combout\ & (\instruction[17]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~565_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[17]~input_o\,
	datab => \c11|WideOr2~1_combout\,
	datac => \reg1|registers~565_combout\,
	datad => \reg1|registers~575_combout\,
	combout => \alu1|adder1|adder4|full4|xor2~0_combout\);

-- Location: LCCOMB_X36_Y30_N16
\alu1|adder1|adder4|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full2|or1~0_combout\ = (\mux2|mux14|out~0_combout\ & ((\alu1|adder1|adder4|full1|or1~0_combout\) # ((\reg1|registers~535_combout\) # (\alu1|adder1|adder4|full1|or1~2_combout\)))) # (!\mux2|mux14|out~0_combout\ & 
-- (\reg1|registers~535_combout\ & ((\alu1|adder1|adder4|full1|or1~0_combout\) # (\alu1|adder1|adder4|full1|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder4|full1|or1~0_combout\,
	datab => \mux2|mux14|out~0_combout\,
	datac => \reg1|registers~535_combout\,
	datad => \alu1|adder1|adder4|full1|or1~2_combout\,
	combout => \alu1|adder1|adder4|full2|or1~0_combout\);

-- Location: LCCOMB_X36_Y30_N0
\alu1|adder1|adder4|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full4|xor2~combout\ = \alu1|adder1|adder4|full4|xor2~0_combout\ $ (((\reg1|registers~545_combout\ & ((\mux2|mux15|out~0_combout\) # (\alu1|adder1|adder4|full2|or1~0_combout\))) # (!\reg1|registers~545_combout\ & 
-- (\mux2|mux15|out~0_combout\ & \alu1|adder1|adder4|full2|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~545_combout\,
	datab => \mux2|mux15|out~0_combout\,
	datac => \alu1|adder1|adder4|full4|xor2~0_combout\,
	datad => \alu1|adder1|adder4|full2|or1~0_combout\,
	combout => \alu1|adder1|adder4|full4|xor2~combout\);

-- Location: LCCOMB_X36_Y30_N22
\c7|mux16|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~6_combout\ = (\alu1|adder1|adder4|full4|xor2~combout\ & ((\instruction[30]~input_o\) # ((\instruction[29]~input_o\) # (!\c11|MemRd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \c11|MemRd~0_combout\,
	datac => \instruction[29]~input_o\,
	datad => \alu1|adder1|adder4|full4|xor2~combout\,
	combout => \c7|mux16|out~6_combout\);

-- Location: LCCOMB_X36_Y28_N14
\alu1|adder0|adder4|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder0|adder4|full2|and1~combout\ = (\alu1|adder0|adder4|full1|and1~combout\) # ((\c11|WideOr2~1_combout\ & (\instruction[15]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~525_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \c11|WideOr2~1_combout\,
	datac => \reg1|registers~525_combout\,
	datad => \alu1|adder0|adder4|full1|and1~combout\,
	combout => \alu1|adder0|adder4|full2|and1~combout\);

-- Location: LCCOMB_X35_Y28_N2
\alu1|adder2|adder4|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full2|or1~0_combout\ = (\reg1|registers~535_combout\ & ((\alu1|adder2|adder4|full1|or1~0_combout\) # (\alu1|adder0|adder4|full1|and1~combout\ $ (\mux2|mux14|out~0_combout\)))) # (!\reg1|registers~535_combout\ & 
-- (\alu1|adder2|adder4|full1|or1~0_combout\ & (\alu1|adder0|adder4|full1|and1~combout\ $ (\mux2|mux14|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder0|adder4|full1|and1~combout\,
	datab => \reg1|registers~535_combout\,
	datac => \mux2|mux14|out~0_combout\,
	datad => \alu1|adder2|adder4|full1|or1~0_combout\,
	combout => \alu1|adder2|adder4|full2|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N18
\alu1|adder2|adder4|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full3|or1~0_combout\ = (\reg1|registers~545_combout\ & ((\alu1|adder2|adder4|full2|or1~0_combout\) # (\mux2|mux15|out~0_combout\ $ (\alu1|adder0|adder4|full2|and1~combout\)))) # (!\reg1|registers~545_combout\ & 
-- (\alu1|adder2|adder4|full2|or1~0_combout\ & (\mux2|mux15|out~0_combout\ $ (\alu1|adder0|adder4|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux15|out~0_combout\,
	datab => \reg1|registers~545_combout\,
	datac => \alu1|adder0|adder4|full2|and1~combout\,
	datad => \alu1|adder2|adder4|full2|or1~0_combout\,
	combout => \alu1|adder2|adder4|full3|or1~0_combout\);

-- Location: LCCOMB_X35_Y28_N16
\alu1|adder2|adder4|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full4|xor2~combout\ = \alu1|adder1|adder4|full4|xor2~0_combout\ $ (\alu1|adder2|adder4|full3|or1~0_combout\ $ (((\mux2|mux15|out~0_combout\) # (\alu1|adder0|adder4|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux15|out~0_combout\,
	datab => \alu1|adder1|adder4|full4|xor2~0_combout\,
	datac => \alu1|adder0|adder4|full2|and1~combout\,
	datad => \alu1|adder2|adder4|full3|or1~0_combout\,
	combout => \alu1|adder2|adder4|full4|xor2~combout\);

-- Location: LCCOMB_X36_Y30_N24
\c7|mux16|out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~7_combout\ = (\c11|ALUCtr\(0) & (((!\c11|Decoder0~3_combout\ & \alu1|adder2|adder4|full4|xor2~combout\)))) # (!\c11|ALUCtr\(0) & (\c7|mux16|out~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux16|out~6_combout\,
	datab => \c11|ALUCtr\(0),
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|adder2|adder4|full4|xor2~combout\,
	combout => \c7|mux16|out~7_combout\);

-- Location: LCCOMB_X36_Y30_N30
\c7|mux16|out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux16|out~8_combout\ = (\c7|mux16|out~5_combout\) # ((!\c11|ALUCtr\(2) & (!\c11|ALUCtr\(1) & \c7|mux16|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \c11|ALUCtr\(1),
	datac => \c7|mux16|out~5_combout\,
	datad => \c7|mux16|out~7_combout\,
	combout => \c7|mux16|out~8_combout\);

-- Location: FF_X36_Y30_N31
\reg1|registers~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c7|mux16|out~8_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~255_q\);

-- Location: LCCOMB_X36_Y26_N16
\reg1|registers~563\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~563_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~191_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~63_q\,
	datad => \reg1|registers~191_q\,
	combout => \reg1|registers~563_combout\);

-- Location: LCCOMB_X36_Y30_N4
\reg1|registers~564\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~564_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~563_combout\ & (\reg1|registers~255_q\)) # (!\reg1|registers~563_combout\ & ((\reg1|registers~127_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~255_q\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~127_q\,
	datad => \reg1|registers~563_combout\,
	combout => \reg1|registers~564_combout\);

-- Location: LCCOMB_X37_Y29_N20
\reg1|registers~556\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~556_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~159_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & ((\reg1|registers~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~159_q\,
	datad => \reg1|registers~31_q\,
	combout => \reg1|registers~556_combout\);

-- Location: LCCOMB_X35_Y26_N22
\reg1|registers~557\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~557_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~556_combout\ & (\reg1|registers~223_q\)) # (!\reg1|registers~556_combout\ & ((\reg1|registers~95_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~223_q\,
	datac => \reg1|registers~95_q\,
	datad => \reg1|registers~556_combout\,
	combout => \reg1|registers~557_combout\);

-- Location: LCCOMB_X32_Y32_N0
\reg1|registers~560\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~560_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~79_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & (\reg1|registers~15_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~15_q\,
	datad => \reg1|registers~79_q\,
	combout => \reg1|registers~560_combout\);

-- Location: LCCOMB_X37_Y32_N30
\reg1|registers~561\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~561_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~560_combout\ & ((\reg1|registers~207_q\))) # (!\reg1|registers~560_combout\ & (\reg1|registers~143_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~143_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~560_combout\,
	datad => \reg1|registers~207_q\,
	combout => \reg1|registers~561_combout\);

-- Location: LCCOMB_X36_Y28_N12
\reg1|registers~558\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~558_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~111_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~111_q\,
	datad => \reg1|registers~47_q\,
	combout => \reg1|registers~558_combout\);

-- Location: LCCOMB_X37_Y27_N12
\reg1|registers~559\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~559_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~558_combout\ & ((\reg1|registers~239_q\))) # (!\reg1|registers~558_combout\ & (\reg1|registers~175_q\)))) # (!\instruction[21]~input_o\ & (((\reg1|registers~558_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~175_q\,
	datac => \reg1|registers~558_combout\,
	datad => \reg1|registers~239_q\,
	combout => \reg1|registers~559_combout\);

-- Location: LCCOMB_X36_Y26_N6
\reg1|registers~562\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~562_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & ((\reg1|registers~559_combout\))) # (!\instruction[19]~input_o\ & (\reg1|registers~561_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~561_combout\,
	datad => \reg1|registers~559_combout\,
	combout => \reg1|registers~562_combout\);

-- Location: LCCOMB_X35_Y26_N4
\reg1|registers~565\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~565_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~562_combout\ & (\reg1|registers~564_combout\)) # (!\reg1|registers~562_combout\ & ((\reg1|registers~557_combout\))))) # (!\instruction[18]~input_o\ & 
-- (((\reg1|registers~562_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~564_combout\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~557_combout\,
	datad => \reg1|registers~562_combout\,
	combout => \reg1|registers~565_combout\);

-- Location: LCCOMB_X35_Y26_N16
\mux2|mux16|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux16|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[17]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~565_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[17]~input_o\,
	datac => \reg1|registers~565_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux16|out~0_combout\);

-- Location: LCCOMB_X31_Y28_N24
\alu1|ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~16_combout\ = (!\instruction[10]~input_o\ & ((\instruction[11]~input_o\ & (\mux2|mux16|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux14|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \mux2|mux16|out~0_combout\,
	datad => \mux2|mux14|out~0_combout\,
	combout => \alu1|ShiftRight0~16_combout\);

-- Location: LCCOMB_X31_Y28_N14
\alu1|ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~17_combout\ = (\alu1|ShiftRight0~16_combout\) # ((\mux2|mux15|out~0_combout\ & (!\instruction[11]~input_o\ & \instruction[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux15|out~0_combout\,
	datab => \instruction[11]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \alu1|ShiftRight0~16_combout\,
	combout => \alu1|ShiftRight0~17_combout\);

-- Location: LCCOMB_X36_Y27_N4
\alu1|ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~23_combout\ = (\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & ((\mux2|mux9|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux8|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \mux2|mux8|out~0_combout\,
	datad => \mux2|mux9|out~0_combout\,
	combout => \alu1|ShiftRight0~23_combout\);

-- Location: LCCOMB_X36_Y27_N6
\alu1|ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~24_combout\ = (\instruction[10]~input_o\ & ((\mux2|mux7|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux6|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux6|out~0_combout\,
	datad => \mux2|mux7|out~0_combout\,
	combout => \alu1|ShiftRight0~24_combout\);

-- Location: LCCOMB_X36_Y27_N20
\alu1|ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~25_combout\ = (\alu1|ShiftRight0~23_combout\) # ((!\instruction[11]~input_o\ & \alu1|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \alu1|ShiftRight0~23_combout\,
	datad => \alu1|ShiftRight0~24_combout\,
	combout => \alu1|ShiftRight0~25_combout\);

-- Location: LCCOMB_X32_Y27_N22
\alu1|mux3|mux6|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~0_combout\ = (!\instruction[12]~input_o\ & ((\instruction[13]~input_o\ & (\alu1|ShiftRight0~17_combout\)) # (!\instruction[13]~input_o\ & ((\alu1|ShiftRight0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \instruction[13]~input_o\,
	datac => \alu1|ShiftRight0~17_combout\,
	datad => \alu1|ShiftRight0~25_combout\,
	combout => \alu1|mux3|mux6|or1~0_combout\);

-- Location: LCCOMB_X32_Y27_N8
\alu1|mux3|mux6|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~1_combout\ = (\c11|ALUCtr\(1) & ((\alu1|mux3|mux6|or1~0_combout\) # ((\alu1|ShiftLeft0~12_combout\ & \alu1|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~12_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux6|or1~0_combout\,
	datad => \alu1|ShiftRight0~19_combout\,
	combout => \alu1|mux3|mux6|or1~1_combout\);

-- Location: LCCOMB_X37_Y30_N26
\alu1|mux3|mux6|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~2_combout\ = (\alu1|mux3|mux6|or1~1_combout\) # ((!\c11|ALUCtr\(1) & ((\mux2|mux6|out~0_combout\) # (\reg1|registers~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux6|out~0_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \reg1|registers~375_combout\,
	datad => \alu1|mux3|mux6|or1~1_combout\,
	combout => \alu1|mux3|mux6|or1~2_combout\);

-- Location: LCCOMB_X37_Y30_N24
\alu1|mux3|mux6|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~3_combout\ = (\alu1|ShiftLeft0~15_combout\ & ((\alu1|mux3|mux1|or1~7_combout\) # ((\c11|ALUCtr\(2) & \alu1|mux3|mux6|or1~2_combout\)))) # (!\alu1|ShiftLeft0~15_combout\ & (\c11|ALUCtr\(2) & (\alu1|mux3|mux6|or1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~15_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \alu1|mux3|mux6|or1~2_combout\,
	datad => \alu1|mux3|mux1|or1~7_combout\,
	combout => \alu1|mux3|mux6|or1~3_combout\);

-- Location: LCCOMB_X37_Y30_N0
\alu1|mux3|mux6|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux6|or1~6_combout\ = (\c11|ALUCtr\(0) & ((\alu1|mux3|mux6|or1~3_combout\) # ((!\c11|ALUCtr\(1) & \alu1|mux3|mux6|or1~5_combout\)))) # (!\c11|ALUCtr\(0) & (!\c11|ALUCtr\(1) & (\alu1|mux3|mux6|or1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(0),
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux6|or1~5_combout\,
	datad => \alu1|mux3|mux6|or1~3_combout\,
	combout => \alu1|mux3|mux6|or1~6_combout\);

-- Location: LCCOMB_X32_Y30_N30
\c7|mux5|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux5|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a4\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux5|or1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a4\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux5|or1~6_combout\,
	combout => \c7|mux5|out~0_combout\);

-- Location: FF_X38_Y29_N5
\reg1|registers~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux5|out~0_combout\,
	sload => VCC,
	ena => \reg1|registers~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~4_q\);

-- Location: LCCOMB_X38_Y29_N4
\reg1|registers~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~340_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~20_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~4_q\,
	datad => \reg1|registers~20_q\,
	combout => \reg1|registers~340_combout\);

-- Location: LCCOMB_X39_Y29_N30
\reg1|registers~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~341_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~340_combout\ & (\reg1|registers~52_q\)) # (!\reg1|registers~340_combout\ & ((\reg1|registers~36_q\))))) # (!\instruction[19]~input_o\ & (\reg1|registers~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~340_combout\,
	datac => \reg1|registers~52_q\,
	datad => \reg1|registers~36_q\,
	combout => \reg1|registers~341_combout\);

-- Location: LCCOMB_X39_Y28_N8
\reg1|registers~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~338_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~100_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & (\reg1|registers~68_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~68_q\,
	datad => \reg1|registers~100_q\,
	combout => \reg1|registers~338_combout\);

-- Location: LCCOMB_X39_Y28_N28
\reg1|registers~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~339_combout\ = (\reg1|registers~338_combout\ & ((\reg1|registers~116_q\) # ((!\instruction[18]~input_o\)))) # (!\reg1|registers~338_combout\ & (((\reg1|registers~84_q\ & \instruction[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~116_q\,
	datab => \reg1|registers~338_combout\,
	datac => \reg1|registers~84_q\,
	datad => \instruction[18]~input_o\,
	combout => \reg1|registers~339_combout\);

-- Location: LCCOMB_X39_Y28_N14
\reg1|registers~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~342_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~339_combout\))) # (!\instruction[20]~input_o\ & (\reg1|registers~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~341_combout\,
	datad => \reg1|registers~339_combout\,
	combout => \reg1|registers~342_combout\);

-- Location: LCCOMB_X31_Y32_N18
\reg1|registers~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~343_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~228_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & ((\reg1|registers~196_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~228_q\,
	datad => \reg1|registers~196_q\,
	combout => \reg1|registers~343_combout\);

-- Location: LCCOMB_X32_Y30_N20
\reg1|registers~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~344_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~343_combout\ & (\reg1|registers~244_q\)) # (!\reg1|registers~343_combout\ & ((\reg1|registers~212_q\))))) # (!\instruction[18]~input_o\ & (((\reg1|registers~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~244_q\,
	datac => \reg1|registers~212_q\,
	datad => \reg1|registers~343_combout\,
	combout => \reg1|registers~344_combout\);

-- Location: LCCOMB_X34_Y32_N20
\reg1|registers~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~336_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & ((\reg1|registers~148_q\))) # (!\instruction[18]~input_o\ & (\reg1|registers~132_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~132_q\,
	datad => \reg1|registers~148_q\,
	combout => \reg1|registers~336_combout\);

-- Location: LCCOMB_X34_Y32_N12
\reg1|registers~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~337_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~336_combout\ & (\reg1|registers~180_q\)) # (!\reg1|registers~336_combout\ & ((\reg1|registers~164_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~180_q\,
	datac => \reg1|registers~164_q\,
	datad => \reg1|registers~336_combout\,
	combout => \reg1|registers~337_combout\);

-- Location: LCCOMB_X39_Y28_N16
\reg1|registers~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~345_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~342_combout\ & (\reg1|registers~344_combout\)) # (!\reg1|registers~342_combout\ & ((\reg1|registers~337_combout\))))) # (!\instruction[21]~input_o\ & 
-- (\reg1|registers~342_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~342_combout\,
	datac => \reg1|registers~344_combout\,
	datad => \reg1|registers~337_combout\,
	combout => \reg1|registers~345_combout\);

-- Location: LCCOMB_X39_Y28_N2
\mux2|mux5|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux5|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[6]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~345_combout\,
	combout => \mux2|mux5|out~0_combout\);

-- Location: LCCOMB_X38_Y26_N28
\alu1|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~9_combout\ = (\instruction[11]~input_o\ & (\mux2|mux3|out~0_combout\)) # (!\instruction[11]~input_o\ & ((\mux2|mux5|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \mux2|mux3|out~0_combout\,
	datad => \mux2|mux5|out~0_combout\,
	combout => \alu1|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X38_Y26_N18
\alu1|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~10_combout\ = (\alu1|ShiftLeft0~8_combout\) # ((!\instruction[10]~input_o\ & \alu1|ShiftLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \alu1|ShiftLeft0~8_combout\,
	datad => \alu1|ShiftLeft0~9_combout\,
	combout => \alu1|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X31_Y30_N20
\alu1|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~11_combout\ = (\instruction[12]~input_o\ & (\alu1|ShiftLeft0~0_combout\ & (\mux2|mux1|out~0_combout\))) # (!\instruction[12]~input_o\ & (((\alu1|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~0_combout\,
	datab => \instruction[12]~input_o\,
	datac => \mux2|mux1|out~0_combout\,
	datad => \alu1|ShiftLeft0~10_combout\,
	combout => \alu1|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X38_Y26_N30
\alu1|ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~12_combout\ = (\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & (\mux2|mux8|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux7|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \mux2|mux8|out~0_combout\,
	datad => \mux2|mux7|out~0_combout\,
	combout => \alu1|ShiftRight0~12_combout\);

-- Location: LCCOMB_X38_Y26_N22
\alu1|ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~14_combout\ = (\alu1|ShiftRight0~12_combout\) # ((!\instruction[11]~input_o\ & \alu1|ShiftRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \alu1|ShiftRight0~12_combout\,
	datad => \alu1|ShiftRight0~13_combout\,
	combout => \alu1|ShiftRight0~14_combout\);

-- Location: LCCOMB_X34_Y30_N20
\alu1|mux3|mux5|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~0_combout\ = (!\instruction[12]~input_o\ & ((\instruction[13]~input_o\ & (\alu1|ShiftRight0~6_combout\)) # (!\instruction[13]~input_o\ & ((\alu1|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \alu1|ShiftRight0~6_combout\,
	datad => \alu1|ShiftRight0~14_combout\,
	combout => \alu1|mux3|mux5|or1~0_combout\);

-- Location: LCCOMB_X34_Y30_N14
\alu1|mux3|mux5|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~1_combout\ = (\c11|ALUCtr\(1) & ((\alu1|mux3|mux5|or1~0_combout\) # ((\alu1|ShiftRight0~8_combout\ & \alu1|ShiftLeft0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~8_combout\,
	datab => \alu1|ShiftLeft0~12_combout\,
	datac => \c11|ALUCtr\(1),
	datad => \alu1|mux3|mux5|or1~0_combout\,
	combout => \alu1|mux3|mux5|or1~1_combout\);

-- Location: LCCOMB_X34_Y30_N28
\alu1|mux3|mux5|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~2_combout\ = (\alu1|mux3|mux5|or1~1_combout\) # ((!\c11|ALUCtr\(1) & ((\reg1|registers~365_combout\) # (\mux2|mux5|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \mux2|mux5|out~0_combout\,
	datac => \alu1|mux3|mux5|or1~1_combout\,
	datad => \c11|ALUCtr\(1),
	combout => \alu1|mux3|mux5|or1~2_combout\);

-- Location: LCCOMB_X32_Y30_N22
\alu1|mux3|mux5|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~3_combout\ = (\alu1|ShiftLeft0~11_combout\ & ((\alu1|mux3|mux1|or1~7_combout\) # ((\alu1|mux3|mux5|or1~2_combout\ & \c11|ALUCtr\(2))))) # (!\alu1|ShiftLeft0~11_combout\ & (((\alu1|mux3|mux5|or1~2_combout\ & \c11|ALUCtr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~11_combout\,
	datab => \alu1|mux3|mux1|or1~7_combout\,
	datac => \alu1|mux3|mux5|or1~2_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux5|or1~3_combout\);

-- Location: LCCOMB_X37_Y31_N30
\alu1|adder1|adder2|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder2|full1|xor2~combout\ = \reg1|registers~365_combout\ $ (\mux2|mux5|out~0_combout\ $ (((\alu1|adder1|adder1|full4|or1~0_combout\) # (\alu1|adder1|adder1|full4|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \alu1|adder1|adder1|full4|or1~0_combout\,
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|adder1|adder1|full4|or1~2_combout\,
	combout => \alu1|adder1|adder2|full1|xor2~combout\);

-- Location: LCCOMB_X34_Y30_N12
\alu1|adder2|adder2|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder2|full1|xor2~combout\ = \reg1|registers~365_combout\ $ (\alu1|adder2|adder1|full4|or1~0_combout\ $ (\mux2|mux5|out~0_combout\ $ (\alu1|adder0|adder1|full4|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \alu1|adder2|adder1|full4|or1~0_combout\,
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|adder0|adder1|full4|and1~combout\,
	combout => \alu1|adder2|adder2|full1|xor2~combout\);

-- Location: LCCOMB_X34_Y30_N18
\alu1|mux3|mux5|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~4_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\alu1|adder2|adder2|full1|xor2~combout\))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder2|full1|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder2|full1|xor2~combout\,
	datab => \alu1|adder2|adder2|full1|xor2~combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux5|or1~4_combout\);

-- Location: LCCOMB_X32_Y30_N16
\alu1|mux3|mux5|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~5_combout\ = (\alu1|mux3|mux5|or1~4_combout\) # ((\reg1|registers~365_combout\ & (\c11|ALUCtr\(2) & \mux2|mux5|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~365_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \mux2|mux5|out~0_combout\,
	datad => \alu1|mux3|mux5|or1~4_combout\,
	combout => \alu1|mux3|mux5|or1~5_combout\);

-- Location: LCCOMB_X32_Y30_N10
\alu1|mux3|mux5|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux5|or1~6_combout\ = (\c11|ALUCtr\(1) & (\c11|ALUCtr\(0) & (\alu1|mux3|mux5|or1~3_combout\))) # (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux5|or1~5_combout\) # ((\c11|ALUCtr\(0) & \alu1|mux3|mux5|or1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c11|ALUCtr\(0),
	datac => \alu1|mux3|mux5|or1~3_combout\,
	datad => \alu1|mux3|mux5|or1~5_combout\,
	combout => \alu1|mux3|mux5|or1~6_combout\);

-- Location: LCCOMB_X31_Y30_N30
\c7|mux4|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux4|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a3\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux4|or1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a3\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux4|or1~6_combout\,
	combout => \c7|mux4|out~0_combout\);

-- Location: LCCOMB_X39_Y30_N18
\reg1|registers~83feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~83feeder_combout\ = \c7|mux4|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux4|out~0_combout\,
	combout => \reg1|registers~83feeder_combout\);

-- Location: FF_X39_Y30_N19
\reg1|registers~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~83feeder_combout\,
	ena => \reg1|registers~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~83_q\);

-- Location: LCCOMB_X37_Y29_N6
\reg1|registers~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~316_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~147_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & ((\reg1|registers~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~147_q\,
	datad => \reg1|registers~19_q\,
	combout => \reg1|registers~316_combout\);

-- Location: LCCOMB_X39_Y30_N24
\reg1|registers~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~317_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~316_combout\ & ((\reg1|registers~211_q\))) # (!\reg1|registers~316_combout\ & (\reg1|registers~83_q\)))) # (!\instruction[20]~input_o\ & (((\reg1|registers~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~83_q\,
	datac => \reg1|registers~211_q\,
	datad => \reg1|registers~316_combout\,
	combout => \reg1|registers~317_combout\);

-- Location: LCCOMB_X36_Y26_N2
\reg1|registers~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~323_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~179_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~51_q\,
	datad => \reg1|registers~179_q\,
	combout => \reg1|registers~323_combout\);

-- Location: LCCOMB_X34_Y26_N22
\reg1|registers~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~324_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~323_combout\ & ((\reg1|registers~243_q\))) # (!\reg1|registers~323_combout\ & (\reg1|registers~115_q\)))) # (!\instruction[20]~input_o\ & (((\reg1|registers~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~115_q\,
	datac => \reg1|registers~243_q\,
	datad => \reg1|registers~323_combout\,
	combout => \reg1|registers~324_combout\);

-- Location: LCCOMB_X32_Y32_N24
\reg1|registers~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~320_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~67_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~3_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~67_q\,
	datad => \reg1|registers~3_q\,
	combout => \reg1|registers~320_combout\);

-- Location: LCCOMB_X37_Y32_N8
\reg1|registers~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~321_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~320_combout\ & (\reg1|registers~195_q\)) # (!\reg1|registers~320_combout\ & ((\reg1|registers~131_q\))))) # (!\instruction[21]~input_o\ & (((\reg1|registers~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~195_q\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~131_q\,
	datad => \reg1|registers~320_combout\,
	combout => \reg1|registers~321_combout\);

-- Location: LCCOMB_X36_Y28_N20
\reg1|registers~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~318_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~99_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~99_q\,
	datad => \reg1|registers~35_q\,
	combout => \reg1|registers~318_combout\);

-- Location: LCCOMB_X37_Y27_N4
\reg1|registers~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~319_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~318_combout\ & (\reg1|registers~227_q\)) # (!\reg1|registers~318_combout\ & ((\reg1|registers~163_q\))))) # (!\instruction[21]~input_o\ & (((\reg1|registers~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~227_q\,
	datac => \reg1|registers~163_q\,
	datad => \reg1|registers~318_combout\,
	combout => \reg1|registers~319_combout\);

-- Location: LCCOMB_X38_Y30_N16
\reg1|registers~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~322_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & ((\reg1|registers~319_combout\))) # (!\instruction[19]~input_o\ & (\reg1|registers~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~321_combout\,
	datad => \reg1|registers~319_combout\,
	combout => \reg1|registers~322_combout\);

-- Location: LCCOMB_X38_Y30_N22
\reg1|registers~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~325_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~322_combout\ & ((\reg1|registers~324_combout\))) # (!\reg1|registers~322_combout\ & (\reg1|registers~317_combout\)))) # (!\instruction[18]~input_o\ & 
-- (((\reg1|registers~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~317_combout\,
	datac => \reg1|registers~324_combout\,
	datad => \reg1|registers~322_combout\,
	combout => \reg1|registers~325_combout\);

-- Location: LCCOMB_X38_Y30_N20
\mux2|mux4|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux4|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[5]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~325_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[5]~input_o\,
	datac => \reg1|registers~325_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux4|out~0_combout\);

-- Location: LCCOMB_X32_Y29_N14
\alu1|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~6_combout\ = (!\instruction[11]~input_o\ & ((\instruction[10]~input_o\ & (\mux2|mux3|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux4|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux3|out~0_combout\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \mux2|mux4|out~0_combout\,
	combout => \alu1|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X32_Y29_N24
\alu1|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~7_combout\ = (\alu1|ShiftLeft0~6_combout\) # ((\instruction[11]~input_o\ & \alu1|ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datac => \alu1|ShiftLeft0~6_combout\,
	datad => \alu1|ShiftLeft0~3_combout\,
	combout => \alu1|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X38_Y30_N12
\alu1|ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~21_combout\ = (\instruction[10]~input_o\ & ((\mux2|mux5|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux4|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux4|out~0_combout\,
	datad => \mux2|mux5|out~0_combout\,
	combout => \alu1|ShiftRight0~21_combout\);

-- Location: LCCOMB_X31_Y30_N10
\alu1|ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~36_combout\ = (\c7|mux16|out~0_combout\ & (((!\alu1|ShiftRight0~27_combout\ & \alu1|ShiftRight0~21_combout\)))) # (!\c7|mux16|out~0_combout\ & ((\alu1|ShiftRight0~35_combout\) # ((\alu1|ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~35_combout\,
	datab => \c7|mux16|out~0_combout\,
	datac => \alu1|ShiftRight0~27_combout\,
	datad => \alu1|ShiftRight0~21_combout\,
	combout => \alu1|ShiftRight0~36_combout\);

-- Location: LCCOMB_X31_Y30_N22
\alu1|ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~40_combout\ = (\alu1|ShiftRight0~36_combout\ & (((\alu1|ShiftRight0~39_combout\)) # (!\alu1|ShiftRight0~27_combout\))) # (!\alu1|ShiftRight0~36_combout\ & (\alu1|ShiftRight0~27_combout\ & (\alu1|ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~36_combout\,
	datab => \alu1|ShiftRight0~27_combout\,
	datac => \alu1|ShiftRight0~24_combout\,
	datad => \alu1|ShiftRight0~39_combout\,
	combout => \alu1|ShiftRight0~40_combout\);

-- Location: LCCOMB_X31_Y30_N4
\alu1|mux3|mux4|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux4|or1~5_combout\ = (\c11|ALUCtr\(2) & (((\alu1|ShiftRight0~40_combout\)))) # (!\c11|ALUCtr\(2) & (\alu1|ShiftLeft0~7_combout\ & (\c7|mux16|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~7_combout\,
	datab => \c7|mux16|out~0_combout\,
	datac => \alu1|ShiftRight0~40_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux4|or1~5_combout\);

-- Location: LCCOMB_X31_Y30_N8
\alu1|mux3|mux4|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux4|or1~2_combout\ = (\c11|ALUCtr\(2) & ((\reg1|registers~335_combout\ & ((\mux2|mux4|out~0_combout\) # (\c11|ALUCtr\(0)))) # (!\reg1|registers~335_combout\ & (\mux2|mux4|out~0_combout\ & \c11|ALUCtr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~335_combout\,
	datab => \mux2|mux4|out~0_combout\,
	datac => \c11|ALUCtr\(0),
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux4|or1~2_combout\);

-- Location: LCCOMB_X38_Y30_N24
\alu1|adder2|adder1|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full4|xor2~combout\ = \reg1|registers~335_combout\ $ (\mux2|mux4|out~0_combout\ $ (\alu1|adder2|adder1|full3|or1~0_combout\ $ (\alu1|adder0|adder1|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~335_combout\,
	datab => \mux2|mux4|out~0_combout\,
	datac => \alu1|adder2|adder1|full3|or1~0_combout\,
	datad => \alu1|adder0|adder1|full3|and1~combout\,
	combout => \alu1|adder2|adder1|full4|xor2~combout\);

-- Location: LCCOMB_X38_Y30_N4
\alu1|adder1|adder1|full4|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full4|xor2~0_combout\ = \reg1|registers~335_combout\ $ (((\c11|WideOr2~1_combout\ & (\instruction[5]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~325_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~335_combout\,
	datab => \instruction[5]~input_o\,
	datac => \reg1|registers~325_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \alu1|adder1|adder1|full4|xor2~0_combout\);

-- Location: LCCOMB_X38_Y30_N6
\alu1|adder1|adder1|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full4|xor2~combout\ = \alu1|adder1|adder1|full4|xor2~0_combout\ $ (((\mux2|mux3|out~0_combout\ & ((\reg1|registers~315_combout\) # (\alu1|adder1|adder1|full2|or1~0_combout\))) # (!\mux2|mux3|out~0_combout\ & 
-- (\reg1|registers~315_combout\ & \alu1|adder1|adder1|full2|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux3|out~0_combout\,
	datab => \reg1|registers~315_combout\,
	datac => \alu1|adder1|adder1|full4|xor2~0_combout\,
	datad => \alu1|adder1|adder1|full2|or1~0_combout\,
	combout => \alu1|adder1|adder1|full4|xor2~combout\);

-- Location: LCCOMB_X31_Y30_N18
\alu1|mux3|mux4|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux4|or1~3_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & (\alu1|adder2|adder1|full4|xor2~combout\)) # (!\c11|ALUCtr\(0) & ((\alu1|adder1|adder1|full4|xor2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder1|full4|xor2~combout\,
	datab => \alu1|adder1|adder1|full4|xor2~combout\,
	datac => \c11|ALUCtr\(0),
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux4|or1~3_combout\);

-- Location: LCCOMB_X31_Y30_N0
\alu1|mux3|mux4|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux4|or1~4_combout\ = (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux4|or1~2_combout\) # (\alu1|mux3|mux4|or1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux4|or1~2_combout\,
	datad => \alu1|mux3|mux4|or1~3_combout\,
	combout => \alu1|mux3|mux4|or1~4_combout\);

-- Location: LCCOMB_X31_Y30_N6
\alu1|mux3|mux4|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux4|or1~6_combout\ = (\alu1|mux3|mux4|or1~4_combout\) # ((\c11|ALUCtr\(1) & (\c11|ALUCtr\(0) & \alu1|mux3|mux4|or1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c11|ALUCtr\(0),
	datac => \alu1|mux3|mux4|or1~5_combout\,
	datad => \alu1|mux3|mux4|or1~4_combout\,
	combout => \alu1|mux3|mux4|or1~6_combout\);

-- Location: LCCOMB_X37_Y30_N6
\c7|mux6|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux6|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a5\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux6|or1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1|memdata_rtl_0|auto_generated|ram_block1a5\,
	datab => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux6|or1~6_combout\,
	combout => \c7|mux6|out~0_combout\);

-- Location: LCCOMB_X38_Y31_N10
\reg1|registers~229feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~229feeder_combout\ = \c7|mux6|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux6|out~0_combout\,
	combout => \reg1|registers~229feeder_combout\);

-- Location: FF_X38_Y31_N11
\reg1|registers~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~229feeder_combout\,
	ena => \reg1|registers~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~229_q\);

-- Location: LCCOMB_X38_Y29_N14
\reg1|registers~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~346_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~165_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~37_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~37_q\,
	datad => \reg1|registers~165_q\,
	combout => \reg1|registers~346_combout\);

-- Location: LCCOMB_X38_Y31_N0
\reg1|registers~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~347_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~346_combout\ & (\reg1|registers~229_q\)) # (!\reg1|registers~346_combout\ & ((\reg1|registers~101_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~229_q\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~346_combout\,
	datad => \reg1|registers~101_q\,
	combout => \reg1|registers~347_combout\);

-- Location: LCCOMB_X34_Y27_N0
\reg1|registers~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~353_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~117_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & (\reg1|registers~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~53_q\,
	datad => \reg1|registers~117_q\,
	combout => \reg1|registers~353_combout\);

-- Location: LCCOMB_X38_Y32_N10
\reg1|registers~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~354_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~353_combout\ & (\reg1|registers~245_q\)) # (!\reg1|registers~353_combout\ & ((\reg1|registers~181_q\))))) # (!\instruction[21]~input_o\ & (((\reg1|registers~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~245_q\,
	datac => \reg1|registers~181_q\,
	datad => \reg1|registers~353_combout\,
	combout => \reg1|registers~354_combout\);

-- Location: LCCOMB_X39_Y32_N22
\reg1|registers~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~350_combout\ = (\instruction[20]~input_o\ & (((\instruction[21]~input_o\)))) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~133_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~5_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~5_q\,
	datab => \instruction[20]~input_o\,
	datac => \instruction[21]~input_o\,
	datad => \reg1|registers~133_q\,
	combout => \reg1|registers~350_combout\);

-- Location: LCCOMB_X37_Y32_N20
\reg1|registers~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~351_combout\ = (\reg1|registers~350_combout\ & (((\reg1|registers~197_q\)) # (!\instruction[20]~input_o\))) # (!\reg1|registers~350_combout\ & (\instruction[20]~input_o\ & ((\reg1|registers~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~350_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~197_q\,
	datad => \reg1|registers~69_q\,
	combout => \reg1|registers~351_combout\);

-- Location: LCCOMB_X32_Y31_N20
\reg1|registers~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~348_combout\ = (\instruction[20]~input_o\ & ((\instruction[21]~input_o\) # ((\reg1|registers~85_q\)))) # (!\instruction[20]~input_o\ & (!\instruction[21]~input_o\ & ((\reg1|registers~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~85_q\,
	datad => \reg1|registers~21_q\,
	combout => \reg1|registers~348_combout\);

-- Location: LCCOMB_X36_Y31_N24
\reg1|registers~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~349_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~348_combout\ & (\reg1|registers~213_q\)) # (!\reg1|registers~348_combout\ & ((\reg1|registers~149_q\))))) # (!\instruction[21]~input_o\ & (((\reg1|registers~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~213_q\,
	datac => \reg1|registers~149_q\,
	datad => \reg1|registers~348_combout\,
	combout => \reg1|registers~349_combout\);

-- Location: LCCOMB_X37_Y32_N6
\reg1|registers~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~352_combout\ = (\instruction[18]~input_o\ & (((\instruction[19]~input_o\) # (\reg1|registers~349_combout\)))) # (!\instruction[18]~input_o\ & (\reg1|registers~351_combout\ & (!\instruction[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~351_combout\,
	datac => \instruction[19]~input_o\,
	datad => \reg1|registers~349_combout\,
	combout => \reg1|registers~352_combout\);

-- Location: LCCOMB_X37_Y32_N16
\reg1|registers~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~355_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~352_combout\ & ((\reg1|registers~354_combout\))) # (!\reg1|registers~352_combout\ & (\reg1|registers~347_combout\)))) # (!\instruction[19]~input_o\ & 
-- (((\reg1|registers~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~347_combout\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~354_combout\,
	datad => \reg1|registers~352_combout\,
	combout => \reg1|registers~355_combout\);

-- Location: LCCOMB_X36_Y28_N16
\mux2|mux6|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux6|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[7]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[7]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~355_combout\,
	combout => \mux2|mux6|out~0_combout\);

-- Location: LCCOMB_X38_Y26_N0
\alu1|ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~13_combout\ = (\instruction[10]~input_o\ & (\mux2|mux6|out~0_combout\)) # (!\instruction[10]~input_o\ & ((\mux2|mux5|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \mux2|mux6|out~0_combout\,
	datad => \mux2|mux5|out~0_combout\,
	combout => \alu1|ShiftRight0~13_combout\);

-- Location: LCCOMB_X38_Y27_N24
\alu1|ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~10_combout\ = (\instruction[10]~input_o\ & ((\mux2|mux4|out~0_combout\))) # (!\instruction[10]~input_o\ & (\mux2|mux3|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \mux2|mux3|out~0_combout\,
	datad => \mux2|mux4|out~0_combout\,
	combout => \alu1|ShiftRight0~10_combout\);

-- Location: LCCOMB_X38_Y27_N2
\alu1|ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~30_combout\ = (\c7|mux16|out~0_combout\ & (\alu1|ShiftRight0~10_combout\ & (!\alu1|ShiftRight0~27_combout\))) # (!\c7|mux16|out~0_combout\ & (((\alu1|ShiftRight0~27_combout\) # (\alu1|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux16|out~0_combout\,
	datab => \alu1|ShiftRight0~10_combout\,
	datac => \alu1|ShiftRight0~27_combout\,
	datad => \alu1|ShiftRight0~29_combout\,
	combout => \alu1|ShiftRight0~30_combout\);

-- Location: LCCOMB_X38_Y27_N0
\alu1|ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~34_combout\ = (\alu1|ShiftRight0~27_combout\ & ((\alu1|ShiftRight0~30_combout\ & ((\alu1|ShiftRight0~33_combout\))) # (!\alu1|ShiftRight0~30_combout\ & (\alu1|ShiftRight0~13_combout\)))) # (!\alu1|ShiftRight0~27_combout\ & 
-- (((\alu1|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~13_combout\,
	datab => \alu1|ShiftRight0~27_combout\,
	datac => \alu1|ShiftRight0~33_combout\,
	datad => \alu1|ShiftRight0~30_combout\,
	combout => \alu1|ShiftRight0~34_combout\);

-- Location: LCCOMB_X38_Y27_N26
\alu1|mux3|mux3|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~5_combout\ = (\c11|ALUCtr\(2) & (((\alu1|ShiftRight0~34_combout\)))) # (!\c11|ALUCtr\(2) & (\c7|mux16|out~0_combout\ & (\alu1|ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux16|out~0_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \alu1|ShiftLeft0~5_combout\,
	datad => \alu1|ShiftRight0~34_combout\,
	combout => \alu1|mux3|mux3|or1~5_combout\);

-- Location: LCCOMB_X38_Y27_N14
\alu1|adder2|adder1|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full3|xor2~combout\ = \mux2|mux3|out~0_combout\ $ (\alu1|adder2|adder1|full2|or1~0_combout\ $ (\reg1|registers~315_combout\ $ (\alu1|adder0|adder1|full2|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux3|out~0_combout\,
	datab => \alu1|adder2|adder1|full2|or1~0_combout\,
	datac => \reg1|registers~315_combout\,
	datad => \alu1|adder0|adder1|full2|and1~combout\,
	combout => \alu1|adder2|adder1|full3|xor2~combout\);

-- Location: LCCOMB_X38_Y28_N2
\alu1|adder1|adder1|full3|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder1|full3|xor2~0_combout\ = \reg1|registers~315_combout\ $ (((\c11|WideOr2~1_combout\ & ((\instruction[4]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \reg1|registers~305_combout\,
	datac => \instruction[4]~input_o\,
	datad => \reg1|registers~315_combout\,
	combout => \alu1|adder1|adder1|full3|xor2~0_combout\);

-- Location: LCCOMB_X38_Y27_N22
\alu1|mux3|mux3|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~3_combout\ = (\c11|ALUCtr\(0) & (((\alu1|adder2|adder1|full3|xor2~combout\)))) # (!\c11|ALUCtr\(0) & (\alu1|adder1|adder1|full2|or1~0_combout\ $ (((\alu1|adder1|adder1|full3|xor2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder1|full2|or1~0_combout\,
	datab => \alu1|adder2|adder1|full3|xor2~combout\,
	datac => \alu1|adder1|adder1|full3|xor2~0_combout\,
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux3|or1~3_combout\);

-- Location: LCCOMB_X38_Y27_N28
\alu1|mux3|mux3|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~2_combout\ = (\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & ((\mux2|mux3|out~0_combout\) # (\reg1|registers~315_combout\))) # (!\c11|ALUCtr\(0) & (\mux2|mux3|out~0_combout\ & \reg1|registers~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(0),
	datab => \mux2|mux3|out~0_combout\,
	datac => \reg1|registers~315_combout\,
	datad => \c11|ALUCtr\(2),
	combout => \alu1|mux3|mux3|or1~2_combout\);

-- Location: LCCOMB_X38_Y27_N16
\alu1|mux3|mux3|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~4_combout\ = (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux3|or1~2_combout\) # ((!\c11|ALUCtr\(2) & \alu1|mux3|mux3|or1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \c11|ALUCtr\(2),
	datac => \alu1|mux3|mux3|or1~3_combout\,
	datad => \alu1|mux3|mux3|or1~2_combout\,
	combout => \alu1|mux3|mux3|or1~4_combout\);

-- Location: LCCOMB_X38_Y27_N6
\alu1|mux3|mux3|or1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux3|or1~7_combout\ = (\alu1|mux3|mux3|or1~4_combout\) # ((\c11|ALUCtr\(0) & (\c11|ALUCtr\(1) & \alu1|mux3|mux3|or1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(0),
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux3|or1~5_combout\,
	datad => \alu1|mux3|mux3|or1~4_combout\,
	combout => \alu1|mux3|mux3|or1~7_combout\);

-- Location: LCCOMB_X38_Y27_N12
\c7|mux3|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux3|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a2\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux3|or1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1|memdata_rtl_0|auto_generated|ram_block1a2\,
	datac => \c11|Decoder0~3_combout\,
	datad => \alu1|mux3|mux3|or1~7_combout\,
	combout => \c7|mux3|out~0_combout\);

-- Location: LCCOMB_X38_Y27_N20
\reg1|registers~242feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~242feeder_combout\ = \c7|mux3|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux3|out~0_combout\,
	combout => \reg1|registers~242feeder_combout\);

-- Location: FF_X38_Y27_N21
\reg1|registers~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~242feeder_combout\,
	ena => \reg1|registers~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~242_q\);

-- Location: LCCOMB_X34_Y28_N30
\reg1|registers~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~303_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~210_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & ((\reg1|registers~194_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~210_q\,
	datad => \reg1|registers~194_q\,
	combout => \reg1|registers~303_combout\);

-- Location: LCCOMB_X37_Y27_N28
\reg1|registers~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~304_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~303_combout\ & (\reg1|registers~242_q\)) # (!\reg1|registers~303_combout\ & ((\reg1|registers~226_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~242_q\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~226_q\,
	datad => \reg1|registers~303_combout\,
	combout => \reg1|registers~304_combout\);

-- Location: LCCOMB_X39_Y30_N28
\reg1|registers~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~296_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~82_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~66_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~66_q\,
	datad => \reg1|registers~82_q\,
	combout => \reg1|registers~296_combout\);

-- Location: LCCOMB_X38_Y27_N30
\reg1|registers~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~297_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~296_combout\ & (\reg1|registers~114_q\)) # (!\reg1|registers~296_combout\ & ((\reg1|registers~98_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~114_q\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~98_q\,
	datad => \reg1|registers~296_combout\,
	combout => \reg1|registers~297_combout\);

-- Location: LCCOMB_X38_Y29_N6
\reg1|registers~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~300_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~34_q\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~34_q\,
	datad => \reg1|registers~2_q\,
	combout => \reg1|registers~300_combout\);

-- Location: LCCOMB_X38_Y28_N20
\reg1|registers~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~301_combout\ = (\reg1|registers~300_combout\ & (((\reg1|registers~50_q\)) # (!\instruction[18]~input_o\))) # (!\reg1|registers~300_combout\ & (\instruction[18]~input_o\ & ((\reg1|registers~18_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~300_combout\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~50_q\,
	datad => \reg1|registers~18_q\,
	combout => \reg1|registers~301_combout\);

-- Location: LCCOMB_X38_Y28_N26
\reg1|registers~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~298_combout\ = (\instruction[19]~input_o\ & ((\instruction[18]~input_o\) # ((\reg1|registers~162_q\)))) # (!\instruction[19]~input_o\ & (!\instruction[18]~input_o\ & (\reg1|registers~130_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~130_q\,
	datad => \reg1|registers~162_q\,
	combout => \reg1|registers~298_combout\);

-- Location: LCCOMB_X38_Y32_N16
\reg1|registers~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~299_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~298_combout\ & ((\reg1|registers~178_q\))) # (!\reg1|registers~298_combout\ & (\reg1|registers~146_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~146_q\,
	datac => \reg1|registers~178_q\,
	datad => \reg1|registers~298_combout\,
	combout => \reg1|registers~299_combout\);

-- Location: LCCOMB_X38_Y28_N10
\reg1|registers~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~302_combout\ = (\instruction[21]~input_o\ & (((\instruction[20]~input_o\) # (\reg1|registers~299_combout\)))) # (!\instruction[21]~input_o\ & (\reg1|registers~301_combout\ & (!\instruction[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~301_combout\,
	datac => \instruction[20]~input_o\,
	datad => \reg1|registers~299_combout\,
	combout => \reg1|registers~302_combout\);

-- Location: LCCOMB_X38_Y28_N8
\reg1|registers~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~305_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~302_combout\ & (\reg1|registers~304_combout\)) # (!\reg1|registers~302_combout\ & ((\reg1|registers~297_combout\))))) # (!\instruction[20]~input_o\ & 
-- (((\reg1|registers~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~304_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~297_combout\,
	datad => \reg1|registers~302_combout\,
	combout => \reg1|registers~305_combout\);

-- Location: LCCOMB_X38_Y28_N30
\mux2|mux3|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux3|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[4]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~305_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[4]~input_o\,
	datac => \reg1|registers~305_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux3|out~0_combout\);

-- Location: LCCOMB_X39_Y29_N2
\alu1|ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~22_combout\ = (\alu1|ShiftLeft0~2_combout\ & ((\alu1|ShiftLeft0~1_combout\) # ((\alu1|ShiftRight0~21_combout\)))) # (!\alu1|ShiftLeft0~2_combout\ & (!\alu1|ShiftLeft0~1_combout\ & (\mux2|mux2|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \mux2|mux2|out~0_combout\,
	datad => \alu1|ShiftRight0~21_combout\,
	combout => \alu1|ShiftRight0~22_combout\);

-- Location: LCCOMB_X36_Y27_N14
\alu1|ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~26_combout\ = (\alu1|ShiftLeft0~1_combout\ & ((\alu1|ShiftRight0~22_combout\ & ((\alu1|ShiftRight0~25_combout\))) # (!\alu1|ShiftRight0~22_combout\ & (\mux2|mux3|out~0_combout\)))) # (!\alu1|ShiftLeft0~1_combout\ & 
-- (((\alu1|ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux3|out~0_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \alu1|ShiftRight0~22_combout\,
	datad => \alu1|ShiftRight0~25_combout\,
	combout => \alu1|ShiftRight0~26_combout\);

-- Location: LCCOMB_X35_Y27_N20
\alu1|mux3|mux2|or1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~1_combout\ = (\c11|ALUCtr\(1) & ((\instruction[13]~input_o\ & ((\alu1|ShiftRight0~20_combout\))) # (!\instruction[13]~input_o\ & (\alu1|ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(1),
	datab => \instruction[13]~input_o\,
	datac => \alu1|ShiftRight0~26_combout\,
	datad => \alu1|ShiftRight0~20_combout\,
	combout => \alu1|mux3|mux2|or1~1_combout\);

-- Location: LCCOMB_X35_Y29_N12
\alu1|mux3|mux2|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~2_combout\ = (\alu1|mux3|mux2|or1~1_combout\) # ((!\c11|ALUCtr\(1) & ((\reg1|registers~295_combout\) # (\mux2|mux2|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~295_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux2|or1~1_combout\,
	datad => \mux2|mux2|out~0_combout\,
	combout => \alu1|mux3|mux2|or1~2_combout\);

-- Location: LCCOMB_X35_Y29_N14
\alu1|mux3|mux2|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~3_combout\ = (\alu1|mux3|mux2|or1~0_combout\ & ((\alu1|ShiftLeft0~3_combout\) # ((\c11|ALUCtr\(2) & \alu1|mux3|mux2|or1~2_combout\)))) # (!\alu1|mux3|mux2|or1~0_combout\ & (((\c11|ALUCtr\(2) & \alu1|mux3|mux2|or1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux2|or1~0_combout\,
	datab => \alu1|ShiftLeft0~3_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|mux3|mux2|or1~2_combout\,
	combout => \alu1|mux3|mux2|or1~3_combout\);

-- Location: LCCOMB_X37_Y31_N0
\alu1|adder2|adder1|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full2|xor2~combout\ = \reg1|registers~295_combout\ $ (\mux2|mux2|out~0_combout\ $ (((!\reg1|registers~275_combout\ & \mux2|mux1|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~295_combout\,
	datab => \reg1|registers~275_combout\,
	datac => \mux2|mux1|out~0_combout\,
	datad => \mux2|mux2|out~0_combout\,
	combout => \alu1|adder2|adder1|full2|xor2~combout\);

-- Location: LCCOMB_X35_Y29_N16
\alu1|adder2|adder1|full2|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full2|xor2~0_combout\ = \reg1|registers~295_combout\ $ (\mux2|mux2|out~0_combout\ $ (((\mux2|mux1|out~0_combout\ & \reg1|registers~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~295_combout\,
	datab => \mux2|mux1|out~0_combout\,
	datac => \reg1|registers~275_combout\,
	datad => \mux2|mux2|out~0_combout\,
	combout => \alu1|adder2|adder1|full2|xor2~0_combout\);

-- Location: LCCOMB_X35_Y29_N18
\alu1|mux3|mux2|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~4_combout\ = (!\c11|ALUCtr\(2) & ((\c11|ALUCtr\(0) & (\alu1|adder2|adder1|full2|xor2~combout\)) # (!\c11|ALUCtr\(0) & ((\alu1|adder2|adder1|full2|xor2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder1|full2|xor2~combout\,
	datab => \alu1|adder2|adder1|full2|xor2~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c11|ALUCtr\(0),
	combout => \alu1|mux3|mux2|or1~4_combout\);

-- Location: LCCOMB_X35_Y29_N0
\alu1|mux3|mux2|or1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~5_combout\ = (\alu1|mux3|mux2|or1~4_combout\) # ((\reg1|registers~295_combout\ & (\mux2|mux2|out~0_combout\ & \c11|ALUCtr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~295_combout\,
	datab => \mux2|mux2|out~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|mux3|mux2|or1~4_combout\,
	combout => \alu1|mux3|mux2|or1~5_combout\);

-- Location: LCCOMB_X35_Y29_N6
\alu1|mux3|mux2|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux2|or1~6_combout\ = (\c11|ALUCtr\(0) & ((\alu1|mux3|mux2|or1~3_combout\) # ((!\c11|ALUCtr\(1) & \alu1|mux3|mux2|or1~5_combout\)))) # (!\c11|ALUCtr\(0) & (!\c11|ALUCtr\(1) & ((\alu1|mux3|mux2|or1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(0),
	datab => \c11|ALUCtr\(1),
	datac => \alu1|mux3|mux2|or1~3_combout\,
	datad => \alu1|mux3|mux2|or1~5_combout\,
	combout => \alu1|mux3|mux2|or1~6_combout\);

-- Location: LCCOMB_X35_Y29_N8
\c7|mux2|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux2|out~0_combout\ = (\c11|Decoder0~3_combout\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a1\)) # (!\c11|Decoder0~3_combout\ & ((\alu1|mux3|mux2|or1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|Decoder0~3_combout\,
	datac => \mem1|memdata_rtl_0|auto_generated|ram_block1a1\,
	datad => \alu1|mux3|mux2|or1~6_combout\,
	combout => \c7|mux2|out~0_combout\);

-- Location: LCCOMB_X34_Y26_N14
\reg1|registers~49feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~49feeder_combout\ = \c7|mux2|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c7|mux2|out~0_combout\,
	combout => \reg1|registers~49feeder_combout\);

-- Location: FF_X34_Y26_N15
\reg1|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~49feeder_combout\,
	ena => \reg1|registers~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~49_q\);

-- Location: LCCOMB_X34_Y26_N20
\reg1|registers~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~283_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~113_q\))) # (!\instruction[20]~input_o\ & (\reg1|registers~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~49_q\,
	datad => \reg1|registers~113_q\,
	combout => \reg1|registers~283_combout\);

-- Location: LCCOMB_X36_Y26_N26
\reg1|registers~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~284_combout\ = (\reg1|registers~283_combout\ & (((\reg1|registers~241_q\)) # (!\instruction[21]~input_o\))) # (!\reg1|registers~283_combout\ & (\instruction[21]~input_o\ & ((\reg1|registers~177_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~283_combout\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~241_q\,
	datad => \reg1|registers~177_q\,
	combout => \reg1|registers~284_combout\);

-- Location: LCCOMB_X38_Y29_N20
\reg1|registers~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~276_combout\ = (\instruction[20]~input_o\ & (\instruction[21]~input_o\)) # (!\instruction[20]~input_o\ & ((\instruction[21]~input_o\ & ((\reg1|registers~161_q\))) # (!\instruction[21]~input_o\ & (\reg1|registers~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \reg1|registers~33_q\,
	datad => \reg1|registers~161_q\,
	combout => \reg1|registers~276_combout\);

-- Location: LCCOMB_X38_Y27_N18
\reg1|registers~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~277_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~276_combout\ & (\reg1|registers~225_q\)) # (!\reg1|registers~276_combout\ & ((\reg1|registers~97_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~225_q\,
	datac => \reg1|registers~97_q\,
	datad => \reg1|registers~276_combout\,
	combout => \reg1|registers~277_combout\);

-- Location: LCCOMB_X35_Y30_N6
\reg1|registers~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~278_combout\ = (\instruction[21]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & (\reg1|registers~81_q\)) # (!\instruction[20]~input_o\ & ((\reg1|registers~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~81_q\,
	datad => \reg1|registers~17_q\,
	combout => \reg1|registers~278_combout\);

-- Location: LCCOMB_X35_Y30_N2
\reg1|registers~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~279_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~278_combout\ & (\reg1|registers~209_q\)) # (!\reg1|registers~278_combout\ & ((\reg1|registers~145_q\))))) # (!\instruction[21]~input_o\ & (((\reg1|registers~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~209_q\,
	datac => \reg1|registers~145_q\,
	datad => \reg1|registers~278_combout\,
	combout => \reg1|registers~279_combout\);

-- Location: LCCOMB_X34_Y29_N26
\reg1|registers~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~280_combout\ = (\instruction[21]~input_o\ & ((\instruction[20]~input_o\) # ((\reg1|registers~129_q\)))) # (!\instruction[21]~input_o\ & (!\instruction[20]~input_o\ & (\reg1|registers~1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~1_q\,
	datad => \reg1|registers~129_q\,
	combout => \reg1|registers~280_combout\);

-- Location: LCCOMB_X37_Y32_N18
\reg1|registers~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~281_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~280_combout\ & (\reg1|registers~193_q\)) # (!\reg1|registers~280_combout\ & ((\reg1|registers~65_q\))))) # (!\instruction[20]~input_o\ & (((\reg1|registers~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \reg1|registers~193_q\,
	datac => \reg1|registers~65_q\,
	datad => \reg1|registers~280_combout\,
	combout => \reg1|registers~281_combout\);

-- Location: LCCOMB_X38_Y28_N16
\reg1|registers~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~282_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & (\reg1|registers~279_combout\)) # (!\instruction[18]~input_o\ & ((\reg1|registers~281_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~279_combout\,
	datad => \reg1|registers~281_combout\,
	combout => \reg1|registers~282_combout\);

-- Location: LCCOMB_X38_Y28_N6
\reg1|registers~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~285_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~282_combout\ & (\reg1|registers~284_combout\)) # (!\reg1|registers~282_combout\ & ((\reg1|registers~277_combout\))))) # (!\instruction[19]~input_o\ & 
-- (((\reg1|registers~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~284_combout\,
	datac => \reg1|registers~277_combout\,
	datad => \reg1|registers~282_combout\,
	combout => \reg1|registers~285_combout\);

-- Location: LCCOMB_X37_Y28_N4
\mux2|mux2|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux2|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[3]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~285_combout\,
	combout => \mux2|mux2|out~0_combout\);

-- Location: LCCOMB_X38_Y26_N16
\alu1|ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~11_combout\ = (\alu1|ShiftLeft0~2_combout\ & ((\alu1|ShiftLeft0~1_combout\) # ((\alu1|ShiftRight0~10_combout\)))) # (!\alu1|ShiftLeft0~2_combout\ & (!\alu1|ShiftLeft0~1_combout\ & (\mux2|mux1|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \mux2|mux1|out~0_combout\,
	datad => \alu1|ShiftRight0~10_combout\,
	combout => \alu1|ShiftRight0~11_combout\);

-- Location: LCCOMB_X38_Y26_N12
\alu1|ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~15_combout\ = (\alu1|ShiftLeft0~1_combout\ & ((\alu1|ShiftRight0~11_combout\ & ((\alu1|ShiftRight0~14_combout\))) # (!\alu1|ShiftRight0~11_combout\ & (\mux2|mux2|out~0_combout\)))) # (!\alu1|ShiftLeft0~1_combout\ & 
-- (((\alu1|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux2|out~0_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \alu1|ShiftRight0~14_combout\,
	datad => \alu1|ShiftRight0~11_combout\,
	combout => \alu1|ShiftRight0~15_combout\);

-- Location: LCCOMB_X34_Y29_N0
\alu1|mux3|mux1|or1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~2_combout\ = (\instruction[13]~input_o\ & (((\alu1|ShiftRight0~9_combout\) # (!\c11|ALUCtr\(2))))) # (!\instruction[13]~input_o\ & (\alu1|ShiftRight0~15_combout\ & (\c11|ALUCtr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~15_combout\,
	datab => \instruction[13]~input_o\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|ShiftRight0~9_combout\,
	combout => \alu1|mux3|mux1|or1~2_combout\);

-- Location: LCCOMB_X34_Y29_N18
\alu1|mux3|mux1|or1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~3_combout\ = (\c11|ALUCtr\(1) & ((\mux2|mux1|out~0_combout\ $ (\alu1|mux3|mux1|or1~2_combout\)))) # (!\c11|ALUCtr\(1) & (\reg1|registers~275_combout\ & (!\mux2|mux1|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~275_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \mux2|mux1|out~0_combout\,
	datad => \alu1|mux3|mux1|or1~2_combout\,
	combout => \alu1|mux3|mux1|or1~3_combout\);

-- Location: LCCOMB_X34_Y29_N28
\alu1|mux3|mux1|or1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~4_combout\ = (\alu1|mux3|mux1|or1~1_combout\ & ((\mux2|mux1|out~0_combout\ & (\c11|ALUCtr\(2) $ (\alu1|mux3|mux1|or1~3_combout\))) # (!\mux2|mux1|out~0_combout\ & (\c11|ALUCtr\(2) & \alu1|mux3|mux1|or1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux1|out~0_combout\,
	datab => \c11|ALUCtr\(2),
	datac => \alu1|mux3|mux1|or1~1_combout\,
	datad => \alu1|mux3|mux1|or1~3_combout\,
	combout => \alu1|mux3|mux1|or1~4_combout\);

-- Location: LCCOMB_X35_Y28_N22
\alu1|mux3|mux1|or1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|mux3|mux1|or1~6_combout\ = (\alu1|mux3|mux1|or1~0_combout\) # ((\alu1|mux3|mux1|or1~4_combout\) # ((\alu1|mux3|mux1|or1~5_combout\ & \alu1|adder2|adder4|full4|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux3|mux1|or1~0_combout\,
	datab => \alu1|mux3|mux1|or1~5_combout\,
	datac => \alu1|mux3|mux1|or1~4_combout\,
	datad => \alu1|adder2|adder4|full4|xor2~combout\,
	combout => \alu1|mux3|mux1|or1~6_combout\);

-- Location: LCCOMB_X35_Y28_N14
\c7|mux1|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux1|out~0_combout\ = (\c11|Decoder0~3_combout\ & ((\mem1|memdata_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\c11|Decoder0~3_combout\ & (\alu1|mux3|mux1|or1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|Decoder0~3_combout\,
	datac => \alu1|mux3|mux1|or1~6_combout\,
	datad => \mem1|memdata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \c7|mux1|out~0_combout\);

-- Location: LCCOMB_X36_Y27_N0
\reg1|registers~176feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~176feeder_combout\ = \c7|mux1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c7|mux1|out~0_combout\,
	combout => \reg1|registers~176feeder_combout\);

-- Location: FF_X36_Y27_N1
\reg1|registers~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|registers~176feeder_combout\,
	ena => \reg1|registers~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~176_q\);

-- Location: LCCOMB_X38_Y28_N22
\reg1|registers~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~256_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~144_q\) # ((\instruction[19]~input_o\)))) # (!\instruction[18]~input_o\ & (((!\instruction[19]~input_o\ & \reg1|registers~128_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~144_q\,
	datab => \instruction[18]~input_o\,
	datac => \instruction[19]~input_o\,
	datad => \reg1|registers~128_q\,
	combout => \reg1|registers~256_combout\);

-- Location: LCCOMB_X37_Y28_N24
\reg1|registers~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~257_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~256_combout\ & (\reg1|registers~176_q\)) # (!\reg1|registers~256_combout\ & ((\reg1|registers~160_q\))))) # (!\instruction[19]~input_o\ & (((\reg1|registers~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~176_q\,
	datac => \reg1|registers~160_q\,
	datad => \reg1|registers~256_combout\,
	combout => \reg1|registers~257_combout\);

-- Location: LCCOMB_X38_Y30_N28
\reg1|registers~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~260_combout\ = (\instruction[18]~input_o\ & ((\instruction[19]~input_o\) # ((\reg1|registers~16_q\)))) # (!\instruction[18]~input_o\ & (!\instruction[19]~input_o\ & (\reg1|registers~0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~0_q\,
	datad => \reg1|registers~16_q\,
	combout => \reg1|registers~260_combout\);

-- Location: LCCOMB_X38_Y28_N14
\reg1|registers~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~261_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~260_combout\ & ((\reg1|registers~48_q\))) # (!\reg1|registers~260_combout\ & (\reg1|registers~32_q\)))) # (!\instruction[19]~input_o\ & (((\reg1|registers~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~32_q\,
	datac => \reg1|registers~260_combout\,
	datad => \reg1|registers~48_q\,
	combout => \reg1|registers~261_combout\);

-- Location: LCCOMB_X39_Y28_N22
\reg1|registers~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~258_combout\ = (\instruction[18]~input_o\ & (((\instruction[19]~input_o\)))) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & ((\reg1|registers~96_q\))) # (!\instruction[19]~input_o\ & (\reg1|registers~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~64_q\,
	datab => \instruction[18]~input_o\,
	datac => \instruction[19]~input_o\,
	datad => \reg1|registers~96_q\,
	combout => \reg1|registers~258_combout\);

-- Location: LCCOMB_X39_Y28_N10
\reg1|registers~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~259_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~258_combout\ & (\reg1|registers~112_q\)) # (!\reg1|registers~258_combout\ & ((\reg1|registers~80_q\))))) # (!\instruction[18]~input_o\ & (((\reg1|registers~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~112_q\,
	datac => \reg1|registers~258_combout\,
	datad => \reg1|registers~80_q\,
	combout => \reg1|registers~259_combout\);

-- Location: LCCOMB_X37_Y28_N14
\reg1|registers~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~262_combout\ = (\instruction[21]~input_o\ & (((\instruction[20]~input_o\)))) # (!\instruction[21]~input_o\ & ((\instruction[20]~input_o\ & ((\reg1|registers~259_combout\))) # (!\instruction[20]~input_o\ & (\reg1|registers~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~261_combout\,
	datac => \instruction[20]~input_o\,
	datad => \reg1|registers~259_combout\,
	combout => \reg1|registers~262_combout\);

-- Location: LCCOMB_X34_Y28_N12
\reg1|registers~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~263_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~224_q\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~192_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~224_q\,
	datad => \reg1|registers~192_q\,
	combout => \reg1|registers~263_combout\);

-- Location: LCCOMB_X34_Y28_N24
\reg1|registers~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~264_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~263_combout\ & (\reg1|registers~240_q\)) # (!\reg1|registers~263_combout\ & ((\reg1|registers~208_q\))))) # (!\instruction[18]~input_o\ & (((\reg1|registers~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~240_q\,
	datac => \reg1|registers~208_q\,
	datad => \reg1|registers~263_combout\,
	combout => \reg1|registers~264_combout\);

-- Location: LCCOMB_X37_Y28_N8
\reg1|registers~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~265_combout\ = (\instruction[21]~input_o\ & ((\reg1|registers~262_combout\ & ((\reg1|registers~264_combout\))) # (!\reg1|registers~262_combout\ & (\reg1|registers~257_combout\)))) # (!\instruction[21]~input_o\ & 
-- (((\reg1|registers~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~257_combout\,
	datac => \reg1|registers~262_combout\,
	datad => \reg1|registers~264_combout\,
	combout => \reg1|registers~265_combout\);

-- Location: LCCOMB_X38_Y33_N20
\c7|mux15|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~3_combout\ = (!\instruction[29]~input_o\ & (\mem1|memdata_rtl_0|auto_generated|ram_block1a14\ & (\c11|MemRd~0_combout\ & !\instruction[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \mem1|memdata_rtl_0|auto_generated|ram_block1a14\,
	datac => \c11|MemRd~0_combout\,
	datad => \instruction[30]~input_o\,
	combout => \c7|mux15|out~3_combout\);

-- Location: LCCOMB_X36_Y33_N10
\c7|mux15|out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~8_combout\ = (\c11|ALUCtr\(0) & ((\instruction[29]~input_o\) # ((\instruction[30]~input_o\) # (!\c11|MemRd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \instruction[30]~input_o\,
	datac => \c11|ALUCtr\(0),
	datad => \c11|MemRd~0_combout\,
	combout => \c7|mux15|out~8_combout\);

-- Location: LCCOMB_X34_Y29_N10
\c7|mux15|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~1_combout\ = (\mux2|mux15|out~0_combout\ & (\c11|ALUCtr\(2) & \reg1|registers~545_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux2|mux15|out~0_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \reg1|registers~545_combout\,
	combout => \c7|mux15|out~1_combout\);

-- Location: LCCOMB_X34_Y29_N16
\c7|mux15|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~0_combout\ = (\c7|mux14|out~0_combout\ & (\reg1|registers~545_combout\ $ (\mux2|mux15|out~0_combout\ $ (\alu1|adder1|adder4|full2|or1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~545_combout\,
	datab => \mux2|mux15|out~0_combout\,
	datac => \c7|mux14|out~0_combout\,
	datad => \alu1|adder1|adder4|full2|or1~0_combout\,
	combout => \c7|mux15|out~0_combout\);

-- Location: LCCOMB_X34_Y29_N4
\c7|mux15|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~2_combout\ = (!\c11|Decoder0~3_combout\ & (!\c11|ALUCtr\(1) & ((\c7|mux15|out~1_combout\) # (\c7|mux15|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux15|out~1_combout\,
	datab => \c11|Decoder0~3_combout\,
	datac => \c11|ALUCtr\(1),
	datad => \c7|mux15|out~0_combout\,
	combout => \c7|mux15|out~2_combout\);

-- Location: LCCOMB_X35_Y29_N30
\alu1|adder1|adder4|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder1|adder4|full3|or1~0_combout\ = (\reg1|registers~545_combout\) # ((\c11|WideOr2~1_combout\ & ((\instruction[16]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~555_combout\,
	datab => \instruction[16]~input_o\,
	datac => \c11|WideOr2~1_combout\,
	datad => \reg1|registers~545_combout\,
	combout => \alu1|adder1|adder4|full3|or1~0_combout\);

-- Location: LCCOMB_X35_Y29_N20
\alu1|ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~43_combout\ = (\instruction[12]~input_o\ & ((\alu1|ShiftLeft0~5_combout\))) # (!\instruction[12]~input_o\ & (\alu1|ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \alu1|ShiftLeft0~17_combout\,
	datad => \alu1|ShiftLeft0~5_combout\,
	combout => \alu1|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X31_Y28_N30
\alu1|ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~41_combout\ = (\alu1|ShiftLeft0~1_combout\ & (((\alu1|ShiftLeft0~2_combout\)))) # (!\alu1|ShiftLeft0~1_combout\ & ((\alu1|ShiftLeft0~2_combout\ & ((\alu1|ShiftLeft0~35_combout\))) # (!\alu1|ShiftLeft0~2_combout\ & 
-- (\mux2|mux15|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux15|out~0_combout\,
	datab => \alu1|ShiftLeft0~1_combout\,
	datac => \alu1|ShiftLeft0~2_combout\,
	datad => \alu1|ShiftLeft0~35_combout\,
	combout => \alu1|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X32_Y28_N30
\alu1|ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~42_combout\ = (\alu1|ShiftLeft0~1_combout\ & ((\alu1|ShiftLeft0~41_combout\ & (\alu1|ShiftLeft0~31_combout\)) # (!\alu1|ShiftLeft0~41_combout\ & ((\mux2|mux14|out~0_combout\))))) # (!\alu1|ShiftLeft0~1_combout\ & 
-- (((\alu1|ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~1_combout\,
	datab => \alu1|ShiftLeft0~31_combout\,
	datac => \mux2|mux14|out~0_combout\,
	datad => \alu1|ShiftLeft0~41_combout\,
	combout => \alu1|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X35_Y29_N2
\c7|mux15|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~4_combout\ = (\c11|ALUCtr\(2) & (!\alu1|ShiftLeft0~2_combout\ & (\alu1|ShiftRight0~5_combout\))) # (!\c11|ALUCtr\(2) & (((\alu1|ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftRight0~5_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \alu1|ShiftLeft0~42_combout\,
	combout => \c7|mux15|out~4_combout\);

-- Location: LCCOMB_X35_Y29_N28
\c7|mux15|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~5_combout\ = (\instruction[13]~input_o\ & (\alu1|ShiftLeft0~43_combout\ & (!\c11|ALUCtr\(2)))) # (!\instruction[13]~input_o\ & (((\c7|mux15|out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \alu1|ShiftLeft0~43_combout\,
	datac => \c11|ALUCtr\(2),
	datad => \c7|mux15|out~4_combout\,
	combout => \c7|mux15|out~5_combout\);

-- Location: LCCOMB_X35_Y29_N4
\c7|mux15|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~6_combout\ = (\c11|ALUCtr\(1) & (((\c7|mux15|out~5_combout\)))) # (!\c11|ALUCtr\(1) & (\alu1|adder1|adder4|full3|or1~0_combout\ & (\c11|ALUCtr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder1|adder4|full3|or1~0_combout\,
	datab => \c11|ALUCtr\(1),
	datac => \c11|ALUCtr\(2),
	datad => \c7|mux15|out~5_combout\,
	combout => \c7|mux15|out~6_combout\);

-- Location: LCCOMB_X35_Y29_N10
\c7|mux15|out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~7_combout\ = (\c7|mux15|out~6_combout\) # ((!\c11|ALUCtr\(2) & (!\c11|ALUCtr\(1) & \alu1|adder2|adder4|full3|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|ALUCtr\(2),
	datab => \c11|ALUCtr\(1),
	datac => \c7|mux15|out~6_combout\,
	datad => \alu1|adder2|adder4|full3|xor2~combout\,
	combout => \c7|mux15|out~7_combout\);

-- Location: LCCOMB_X35_Y29_N24
\c7|mux15|out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c7|mux15|out~9_combout\ = (\c7|mux15|out~3_combout\) # ((\c7|mux15|out~2_combout\) # ((\c7|mux15|out~8_combout\ & \c7|mux15|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c7|mux15|out~3_combout\,
	datab => \c7|mux15|out~8_combout\,
	datac => \c7|mux15|out~2_combout\,
	datad => \c7|mux15|out~7_combout\,
	combout => \c7|mux15|out~9_combout\);

-- Location: FF_X35_Y29_N27
\reg1|registers~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \c7|mux15|out~9_combout\,
	sload => VCC,
	ena => \reg1|registers~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|registers~206_q\);

-- Location: LCCOMB_X35_Y29_N26
\reg1|registers~553\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~553_combout\ = (\instruction[19]~input_o\ & (\instruction[18]~input_o\)) # (!\instruction[19]~input_o\ & ((\instruction[18]~input_o\ & ((\reg1|registers~222_q\))) # (!\instruction[18]~input_o\ & (\reg1|registers~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~206_q\,
	datad => \reg1|registers~222_q\,
	combout => \reg1|registers~553_combout\);

-- Location: LCCOMB_X36_Y29_N10
\reg1|registers~554\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~554_combout\ = (\reg1|registers~553_combout\ & ((\reg1|registers~254_q\) # ((!\instruction[19]~input_o\)))) # (!\reg1|registers~553_combout\ & (((\reg1|registers~238_q\ & \instruction[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~553_combout\,
	datab => \reg1|registers~254_q\,
	datac => \reg1|registers~238_q\,
	datad => \instruction[19]~input_o\,
	combout => \reg1|registers~554_combout\);

-- Location: LCCOMB_X38_Y29_N2
\reg1|registers~550\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~550_combout\ = (\instruction[18]~input_o\ & (\instruction[19]~input_o\)) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & (\reg1|registers~46_q\)) # (!\instruction[19]~input_o\ & ((\reg1|registers~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \instruction[19]~input_o\,
	datac => \reg1|registers~46_q\,
	datad => \reg1|registers~14_q\,
	combout => \reg1|registers~550_combout\);

-- Location: LCCOMB_X39_Y29_N28
\reg1|registers~551\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~551_combout\ = (\reg1|registers~550_combout\ & (((\reg1|registers~62_q\)) # (!\instruction[18]~input_o\))) # (!\reg1|registers~550_combout\ & (\instruction[18]~input_o\ & ((\reg1|registers~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~550_combout\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~62_q\,
	datad => \reg1|registers~30_q\,
	combout => \reg1|registers~551_combout\);

-- Location: LCCOMB_X34_Y32_N8
\reg1|registers~548\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~548_combout\ = (\instruction[18]~input_o\ & (((\instruction[19]~input_o\)))) # (!\instruction[18]~input_o\ & ((\instruction[19]~input_o\ & ((\reg1|registers~174_q\))) # (!\instruction[19]~input_o\ & (\reg1|registers~142_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~142_q\,
	datab => \instruction[18]~input_o\,
	datac => \reg1|registers~174_q\,
	datad => \instruction[19]~input_o\,
	combout => \reg1|registers~548_combout\);

-- Location: LCCOMB_X38_Y32_N4
\reg1|registers~549\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~549_combout\ = (\instruction[18]~input_o\ & ((\reg1|registers~548_combout\ & ((\reg1|registers~190_q\))) # (!\reg1|registers~548_combout\ & (\reg1|registers~158_q\)))) # (!\instruction[18]~input_o\ & (((\reg1|registers~548_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~158_q\,
	datac => \reg1|registers~548_combout\,
	datad => \reg1|registers~190_q\,
	combout => \reg1|registers~549_combout\);

-- Location: LCCOMB_X32_Y28_N8
\reg1|registers~552\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~552_combout\ = (\instruction[21]~input_o\ & (((\instruction[20]~input_o\) # (\reg1|registers~549_combout\)))) # (!\instruction[21]~input_o\ & (\reg1|registers~551_combout\ & (!\instruction[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datab => \reg1|registers~551_combout\,
	datac => \instruction[20]~input_o\,
	datad => \reg1|registers~549_combout\,
	combout => \reg1|registers~552_combout\);

-- Location: LCCOMB_X39_Y30_N14
\reg1|registers~546\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~546_combout\ = (\instruction[18]~input_o\ & (((\reg1|registers~94_q\) # (\instruction[19]~input_o\)))) # (!\instruction[18]~input_o\ & (\reg1|registers~78_q\ & ((!\instruction[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[18]~input_o\,
	datab => \reg1|registers~78_q\,
	datac => \reg1|registers~94_q\,
	datad => \instruction[19]~input_o\,
	combout => \reg1|registers~546_combout\);

-- Location: LCCOMB_X32_Y28_N24
\reg1|registers~547\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~547_combout\ = (\instruction[19]~input_o\ & ((\reg1|registers~546_combout\ & ((\reg1|registers~126_q\))) # (!\reg1|registers~546_combout\ & (\reg1|registers~110_q\)))) # (!\instruction[19]~input_o\ & (\reg1|registers~546_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[19]~input_o\,
	datab => \reg1|registers~546_combout\,
	datac => \reg1|registers~110_q\,
	datad => \reg1|registers~126_q\,
	combout => \reg1|registers~547_combout\);

-- Location: LCCOMB_X32_Y28_N18
\reg1|registers~555\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg1|registers~555_combout\ = (\instruction[20]~input_o\ & ((\reg1|registers~552_combout\ & (\reg1|registers~554_combout\)) # (!\reg1|registers~552_combout\ & ((\reg1|registers~547_combout\))))) # (!\instruction[20]~input_o\ & 
-- (((\reg1|registers~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|registers~554_combout\,
	datab => \instruction[20]~input_o\,
	datac => \reg1|registers~552_combout\,
	datad => \reg1|registers~547_combout\,
	combout => \reg1|registers~555_combout\);

-- Location: LCCOMB_X32_Y28_N6
\mux2|mux15|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux15|out~0_combout\ = (\c11|WideOr2~1_combout\ & (\instruction[16]~input_o\)) # (!\c11|WideOr2~1_combout\ & ((\reg1|registers~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[16]~input_o\,
	datab => \reg1|registers~555_combout\,
	datad => \c11|WideOr2~1_combout\,
	combout => \mux2|mux15|out~0_combout\);

-- Location: LCCOMB_X35_Y28_N0
\alu1|adder2|adder4|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full3|xor2~combout\ = \mux2|mux15|out~0_combout\ $ (\reg1|registers~545_combout\ $ (\alu1|adder0|adder4|full2|and1~combout\ $ (\alu1|adder2|adder4|full2|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux15|out~0_combout\,
	datab => \reg1|registers~545_combout\,
	datac => \alu1|adder0|adder4|full2|and1~combout\,
	datad => \alu1|adder2|adder4|full2|or1~0_combout\,
	combout => \alu1|adder2|adder4|full3|xor2~combout\);

-- Location: LCCOMB_X32_Y29_N28
\alu1|adder2|adder1|full1|xor1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder1|full1|xor1~combout\ = \reg1|registers~275_combout\ $ (((\c11|WideOr2~1_combout\ & ((\instruction[2]~input_o\))) # (!\c11|WideOr2~1_combout\ & (\reg1|registers~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|WideOr2~1_combout\,
	datab => \reg1|registers~265_combout\,
	datac => \reg1|registers~275_combout\,
	datad => \instruction[2]~input_o\,
	combout => \alu1|adder2|adder1|full1|xor1~combout\);

-- Location: LCCOMB_X38_Y30_N26
\mx1|m2|mux3|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~1_combout\ = (!\alu1|adder2|adder1|full2|xor2~combout\ & (!\alu1|adder2|adder1|full1|xor1~combout\ & (!\alu1|adder2|adder1|full3|xor2~combout\ & !\alu1|adder2|adder1|full4|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder1|full2|xor2~combout\,
	datab => \alu1|adder2|adder1|full1|xor1~combout\,
	datac => \alu1|adder2|adder1|full3|xor2~combout\,
	datad => \alu1|adder2|adder1|full4|xor2~combout\,
	combout => \mx1|m2|mux3|out~1_combout\);

-- Location: LCCOMB_X34_Y30_N26
\mx1|m2|mux3|out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~2_combout\ = (\mx1|m2|mux3|out~1_combout\ & (!\alu1|adder2|adder2|full3|xor2~combout\ & (!\alu1|adder2|adder2|full2|xor2~combout\ & !\alu1|adder2|adder2|full1|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~1_combout\,
	datab => \alu1|adder2|adder2|full3|xor2~combout\,
	datac => \alu1|adder2|adder2|full2|xor2~combout\,
	datad => \alu1|adder2|adder2|full1|xor2~combout\,
	combout => \mx1|m2|mux3|out~2_combout\);

-- Location: LCCOMB_X34_Y27_N4
\mx1|m2|mux3|out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~3_combout\ = (!\alu1|adder2|adder2|full4|xor2~combout\ & (!\alu1|adder2|adder3|full1|xor2~combout\ & (\mx1|m2|mux3|out~2_combout\ & !\alu1|adder2|adder3|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder2|full4|xor2~combout\,
	datab => \alu1|adder2|adder3|full1|xor2~combout\,
	datac => \mx1|m2|mux3|out~2_combout\,
	datad => \alu1|adder2|adder3|full2|xor2~combout\,
	combout => \mx1|m2|mux3|out~3_combout\);

-- Location: LCCOMB_X34_Y27_N30
\mx1|m2|mux3|out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~4_combout\ = (!\alu1|adder2|adder3|full4|xor2~combout\ & (\mx1|m2|mux3|out~3_combout\ & (!\alu1|adder2|adder4|full1|xor2~combout\ & !\alu1|adder2|adder3|full3|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder3|full4|xor2~combout\,
	datab => \mx1|m2|mux3|out~3_combout\,
	datac => \alu1|adder2|adder4|full1|xor2~combout\,
	datad => \alu1|adder2|adder3|full3|xor2~combout\,
	combout => \mx1|m2|mux3|out~4_combout\);

-- Location: LCCOMB_X39_Y26_N10
\alu1|adder2|adder4|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu1|adder2|adder4|full2|xor2~combout\ = \alu1|adder2|adder4|full1|or1~0_combout\ $ (\mux2|mux14|out~0_combout\ $ (\alu1|adder0|adder4|full1|and1~combout\ $ (\reg1|registers~535_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder4|full1|or1~0_combout\,
	datab => \mux2|mux14|out~0_combout\,
	datac => \alu1|adder0|adder4|full1|and1~combout\,
	datad => \reg1|registers~535_combout\,
	combout => \alu1|adder2|adder4|full2|xor2~combout\);

-- Location: LCCOMB_X39_Y26_N20
\mx1|m2|mux3|out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~5_combout\ = (!\alu1|adder2|adder4|full3|xor2~combout\ & (\mx1|m2|mux3|out~4_combout\ & (!\alu1|adder2|adder4|full4|xor2~combout\ & !\alu1|adder2|adder4|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder2|adder4|full3|xor2~combout\,
	datab => \mx1|m2|mux3|out~4_combout\,
	datac => \alu1|adder2|adder4|full4|xor2~combout\,
	datad => \alu1|adder2|adder4|full2|xor2~combout\,
	combout => \mx1|m2|mux3|out~5_combout\);

-- Location: LCCOMB_X41_Y30_N30
\c11|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~1_combout\ = (!\instruction[29]~input_o\ & (\c11|Decoder0~0_combout\ & (!\instruction[26]~input_o\ & \instruction[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \c11|Decoder0~0_combout\,
	datac => \instruction[26]~input_o\,
	datad => \instruction[28]~input_o\,
	combout => \c11|Decoder0~1_combout\);

-- Location: LCCOMB_X51_Y28_N30
\c11|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr5~0_combout\ = (\instruction[28]~input_o\ & (\instruction[27]~input_o\)) # (!\instruction[28]~input_o\ & (((\instruction[29]~input_o\ & \instruction[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datab => \instruction[27]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|WideOr5~0_combout\);

-- Location: LCCOMB_X51_Y28_N18
\c11|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr5~1_combout\ = (!\instruction[30]~input_o\ & ((\c11|MemRd~0_combout\) # ((!\instruction[31]~input_o\ & !\c11|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \instruction[30]~input_o\,
	datac => \c11|WideOr5~0_combout\,
	datad => \c11|MemRd~0_combout\,
	combout => \c11|WideOr5~1_combout\);

-- Location: CLKCTRL_G6
\c11|WideOr5~1clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \c11|WideOr5~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c11|WideOr5~1clkctrl_outclk\);

-- Location: LCCOMB_X39_Y26_N8
\c11|branch_equal\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|branch_equal~combout\ = (GLOBAL(\c11|WideOr5~1clkctrl_outclk\) & (\c11|Decoder0~1_combout\)) # (!GLOBAL(\c11|WideOr5~1clkctrl_outclk\) & ((\c11|branch_equal~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|Decoder0~1_combout\,
	datac => \c11|branch_equal~combout\,
	datad => \c11|WideOr5~1clkctrl_outclk\,
	combout => \c11|branch_equal~combout\);

-- Location: LCCOMB_X41_Y30_N20
\c11|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Decoder0~2_combout\ = (!\instruction[29]~input_o\ & (\c11|Decoder0~0_combout\ & (\instruction[26]~input_o\ & \instruction[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \c11|Decoder0~0_combout\,
	datac => \instruction[26]~input_o\,
	datad => \instruction[28]~input_o\,
	combout => \c11|Decoder0~2_combout\);

-- Location: LCCOMB_X39_Y26_N14
\c11|branch_not\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|branch_not~combout\ = (GLOBAL(\c11|WideOr5~1clkctrl_outclk\) & (\c11|Decoder0~2_combout\)) # (!GLOBAL(\c11|WideOr5~1clkctrl_outclk\) & ((\c11|branch_not~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Decoder0~2_combout\,
	datac => \c11|branch_not~combout\,
	datad => \c11|WideOr5~1clkctrl_outclk\,
	combout => \c11|branch_not~combout\);

-- Location: LCCOMB_X39_Y26_N26
\mx1|m2|mux3|out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~6_combout\ = (\mx1|m2|mux3|out~5_combout\ & (\c11|branch_equal~combout\)) # (!\mx1|m2|mux3|out~5_combout\ & ((\c11|branch_not~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~5_combout\,
	datab => \c11|branch_equal~combout\,
	datac => \c11|branch_not~combout\,
	combout => \mx1|m2|mux3|out~6_combout\);

-- Location: LCCOMB_X51_Y28_N22
\c11|WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr8~0_combout\ = (\instruction[28]~input_o\ & ((\instruction[27]~input_o\) # ((!\instruction[29]~input_o\ & !\instruction[26]~input_o\)))) # (!\instruction[28]~input_o\ & (((\instruction[29]~input_o\ & \instruction[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[28]~input_o\,
	datab => \instruction[27]~input_o\,
	datac => \instruction[29]~input_o\,
	datad => \instruction[26]~input_o\,
	combout => \c11|WideOr8~0_combout\);

-- Location: LCCOMB_X51_Y28_N26
\c11|WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr8~1_combout\ = (!\instruction[30]~input_o\ & ((\c11|MemRd~0_combout\) # ((!\instruction[31]~input_o\ & !\c11|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \instruction[30]~input_o\,
	datac => \c11|WideOr8~0_combout\,
	datad => \c11|MemRd~0_combout\,
	combout => \c11|WideOr8~1_combout\);

-- Location: LCCOMB_X51_Y28_N12
\c11|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector5~0_combout\ = (!\instruction[29]~input_o\ & (!\instruction[30]~input_o\ & (!\instruction[31]~input_o\ & !\instruction[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \instruction[30]~input_o\,
	datac => \instruction[31]~input_o\,
	datad => \instruction[28]~input_o\,
	combout => \c11|Selector5~0_combout\);

-- Location: LCCOMB_X41_Y30_N8
\c11|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Equal5~0_combout\ = (!\instruction[9]~input_o\ & (\instruction[7]~input_o\ & (!\instruction[5]~input_o\ & \c11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \c11|Equal0~0_combout\,
	combout => \c11|Equal5~0_combout\);

-- Location: LCCOMB_X51_Y28_N28
\c11|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|Selector5~1_combout\ = (\c11|Selector5~0_combout\ & ((\instruction[27]~input_o\) # ((\c11|Equal5~0_combout\ & !\instruction[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|Selector5~0_combout\,
	datab => \instruction[27]~input_o\,
	datac => \c11|Equal5~0_combout\,
	datad => \instruction[26]~input_o\,
	combout => \c11|Selector5~1_combout\);

-- Location: LCCOMB_X51_Y28_N14
\c11|jump\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|jump~combout\ = (\c11|WideOr8~1_combout\ & ((\c11|Selector5~1_combout\))) # (!\c11|WideOr8~1_combout\ & (\c11|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c11|jump~combout\,
	datac => \c11|WideOr8~1_combout\,
	datad => \c11|Selector5~1_combout\,
	combout => \c11|jump~combout\);

-- Location: LCCOMB_X43_Y28_N28
\c11|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11|WideOr0~0_combout\ = (\instruction[29]~input_o\ & ((\instruction[28]~input_o\ & ((\instruction[27]~input_o\))) # (!\instruction[28]~input_o\ & (\instruction[26]~input_o\)))) # (!\instruction[29]~input_o\ & (((\instruction[27]~input_o\) # 
-- (\instruction[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[26]~input_o\,
	datab => \instruction[29]~input_o\,
	datac => \instruction[27]~input_o\,
	datad => \instruction[28]~input_o\,
	combout => \c11|WideOr0~0_combout\);

-- Location: LCCOMB_X43_Y28_N30
\mx1|m2|mux3|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~0_combout\ = (!\instruction[30]~input_o\ & ((\c11|MemRd~0_combout\) # ((!\instruction[31]~input_o\ & !\c11|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \instruction[31]~input_o\,
	datac => \c11|WideOr0~0_combout\,
	datad => \c11|MemRd~0_combout\,
	combout => \mx1|m2|mux3|out~0_combout\);

-- Location: LCCOMB_X39_Y26_N28
\mx1|m2|mux3|out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~7_combout\ = (\mx1|m2|mux3|out~0_combout\) # ((!\mx1|m2|mux3|out~6_combout\ & !\c11|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~6_combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~0_combout\,
	combout => \mx1|m2|mux3|out~7_combout\);

-- Location: IOIBUF_X52_Y27_N1
\pc[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(0),
	o => \pc[0]~input_o\);

-- Location: LCCOMB_X39_Y26_N4
\mx1|m2|mux1|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux1|out~0_combout\ = (\c11|jump~combout\ & (((\instruction[16]~input_o\)))) # (!\c11|jump~combout\ & (\pc[0]~input_o\ $ ((!\instruction[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \c11|jump~combout\,
	datad => \instruction[16]~input_o\,
	combout => \mx1|m2|mux1|out~0_combout\);

-- Location: LCCOMB_X39_Y26_N6
\mx1|m2|mux1|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux1|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & ((!\pc[0]~input_o\))) # (!\mx1|m2|mux3|out~7_combout\ & (\mx1|m2|mux1|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \mx1|m2|mux1|out~0_combout\,
	datad => \pc[0]~input_o\,
	combout => \mx1|m2|mux1|out~1_combout\);

-- Location: IOIBUF_X52_Y30_N8
\pc[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(1),
	o => \pc[1]~input_o\);

-- Location: LCCOMB_X42_Y30_N28
\add2|adder1|adder1|full2|xor2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full2|xor2~0_combout\ = \instruction[3]~input_o\ $ (\pc[1]~input_o\ $ (((\pc[0]~input_o\) # (\instruction[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~input_o\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[2]~input_o\,
	datad => \pc[1]~input_o\,
	combout => \add2|adder1|adder1|full2|xor2~0_combout\);

-- Location: LCCOMB_X42_Y30_N14
\mx1|m2|mux2|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux2|out~0_combout\ = (\c11|jump~combout\ & (\instruction[17]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder1|full2|xor2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[17]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder1|full2|xor2~0_combout\,
	combout => \mx1|m2|mux2|out~0_combout\);

-- Location: LCCOMB_X42_Y30_N12
\mx1|m2|mux2|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux2|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\pc[0]~input_o\ $ (((\pc[1]~input_o\))))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux2|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~input_o\,
	datab => \mx1|m2|mux2|out~0_combout\,
	datac => \mx1|m2|mux3|out~7_combout\,
	datad => \pc[1]~input_o\,
	combout => \mx1|m2|mux2|out~1_combout\);

-- Location: LCCOMB_X42_Y30_N22
\add1|adder1|adder1|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder1|full2|and1~combout\ = (\pc[0]~input_o\ & \pc[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[0]~input_o\,
	datad => \pc[1]~input_o\,
	combout => \add1|adder1|adder1|full2|and1~combout\);

-- Location: LCCOMB_X42_Y30_N8
\add2|adder1|adder1|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full2|or1~0_combout\ = (\instruction[2]~input_o\ & ((\pc[1]~input_o\ & (!\pc[0]~input_o\)) # (!\pc[1]~input_o\ & ((\instruction[3]~input_o\))))) # (!\instruction[2]~input_o\ & (\instruction[3]~input_o\ & (\pc[0]~input_o\ $ 
-- (\pc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~input_o\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[2]~input_o\,
	datad => \pc[1]~input_o\,
	combout => \add2|adder1|adder1|full2|or1~0_combout\);

-- Location: IOIBUF_X52_Y32_N15
\pc[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(2),
	o => \pc[2]~input_o\);

-- Location: LCCOMB_X42_Y30_N26
\add2|adder1|adder1|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full3|xor2~combout\ = \add1|adder1|adder1|full2|and1~combout\ $ (\add2|adder1|adder1|full2|or1~0_combout\ $ (\instruction[4]~input_o\ $ (\pc[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder1|full2|and1~combout\,
	datab => \add2|adder1|adder1|full2|or1~0_combout\,
	datac => \instruction[4]~input_o\,
	datad => \pc[2]~input_o\,
	combout => \add2|adder1|adder1|full3|xor2~combout\);

-- Location: LCCOMB_X42_Y30_N0
\mx1|m2|mux3|out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~8_combout\ = (\c11|jump~combout\ & ((\instruction[18]~input_o\))) # (!\c11|jump~combout\ & (\add2|adder1|adder1|full3|xor2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder1|full3|xor2~combout\,
	datab => \instruction[18]~input_o\,
	datac => \c11|jump~combout\,
	combout => \mx1|m2|mux3|out~8_combout\);

-- Location: LCCOMB_X42_Y30_N30
\mx1|m2|mux3|out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux3|out~9_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder1|full2|and1~combout\ $ (((\pc[2]~input_o\))))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux3|out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder1|full2|and1~combout\,
	datab => \mx1|m2|mux3|out~8_combout\,
	datac => \mx1|m2|mux3|out~7_combout\,
	datad => \pc[2]~input_o\,
	combout => \mx1|m2|mux3|out~9_combout\);

-- Location: LCCOMB_X42_Y30_N4
\add1|adder1|adder1|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder1|full3|and1~combout\ = (\pc[1]~input_o\ & (\pc[0]~input_o\ & \pc[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc[1]~input_o\,
	datac => \pc[0]~input_o\,
	datad => \pc[2]~input_o\,
	combout => \add1|adder1|adder1|full3|and1~combout\);

-- Location: IOIBUF_X46_Y41_N22
\pc[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(3),
	o => \pc[3]~input_o\);

-- Location: LCCOMB_X42_Y30_N10
\add2|adder1|adder1|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full3|or1~0_combout\ = (\add2|adder1|adder1|full2|or1~0_combout\ & ((\instruction[4]~input_o\) # (\add1|adder1|adder1|full2|and1~combout\ $ (\pc[2]~input_o\)))) # (!\add2|adder1|adder1|full2|or1~0_combout\ & (\instruction[4]~input_o\ & 
-- (\add1|adder1|adder1|full2|and1~combout\ $ (\pc[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder1|full2|and1~combout\,
	datab => \add2|adder1|adder1|full2|or1~0_combout\,
	datac => \instruction[4]~input_o\,
	datad => \pc[2]~input_o\,
	combout => \add2|adder1|adder1|full3|or1~0_combout\);

-- Location: LCCOMB_X42_Y30_N24
\add2|adder1|adder1|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full4|xor2~combout\ = \instruction[5]~input_o\ $ (\add1|adder1|adder1|full3|and1~combout\ $ (\pc[3]~input_o\ $ (\add2|adder1|adder1|full3|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \add1|adder1|adder1|full3|and1~combout\,
	datac => \pc[3]~input_o\,
	datad => \add2|adder1|adder1|full3|or1~0_combout\,
	combout => \add2|adder1|adder1|full4|xor2~combout\);

-- Location: LCCOMB_X42_Y30_N6
\mx1|m2|mux4|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux4|out~0_combout\ = (\c11|jump~combout\ & (\instruction[19]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder1|full4|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[19]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder1|full4|xor2~combout\,
	combout => \mx1|m2|mux4|out~0_combout\);

-- Location: LCCOMB_X42_Y30_N20
\mx1|m2|mux4|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux4|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder1|full3|and1~combout\ $ ((\pc[3]~input_o\)))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux4|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add1|adder1|adder1|full3|and1~combout\,
	datac => \pc[3]~input_o\,
	datad => \mx1|m2|mux4|out~0_combout\,
	combout => \mx1|m2|mux4|out~1_combout\);

-- Location: LCCOMB_X42_Y30_N16
\add2|adder1|adder1|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder1|full4|or1~0_combout\ = (\instruction[5]~input_o\ & ((\add2|adder1|adder1|full3|or1~0_combout\) # (\add1|adder1|adder1|full3|and1~combout\ $ (\pc[3]~input_o\)))) # (!\instruction[5]~input_o\ & (\add2|adder1|adder1|full3|or1~0_combout\ & 
-- (\add1|adder1|adder1|full3|and1~combout\ $ (\pc[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \add1|adder1|adder1|full3|and1~combout\,
	datac => \pc[3]~input_o\,
	datad => \add2|adder1|adder1|full3|or1~0_combout\,
	combout => \add2|adder1|adder1|full4|or1~0_combout\);

-- Location: IOIBUF_X46_Y41_N15
\pc[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(4),
	o => \pc[4]~input_o\);

-- Location: LCCOMB_X42_Y30_N2
\add1|adder1|adder1|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder1|full4|and1~combout\ = (\pc[0]~input_o\ & (\pc[1]~input_o\ & (\pc[3]~input_o\ & \pc[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~input_o\,
	datab => \pc[1]~input_o\,
	datac => \pc[3]~input_o\,
	datad => \pc[2]~input_o\,
	combout => \add1|adder1|adder1|full4|and1~combout\);

-- Location: LCCOMB_X41_Y33_N4
\add2|adder1|adder2|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full1|xor2~combout\ = \instruction[6]~input_o\ $ (\add2|adder1|adder1|full4|or1~0_combout\ $ (\pc[4]~input_o\ $ (\add1|adder1|adder1|full4|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \add2|adder1|adder1|full4|or1~0_combout\,
	datac => \pc[4]~input_o\,
	datad => \add1|adder1|adder1|full4|and1~combout\,
	combout => \add2|adder1|adder2|full1|xor2~combout\);

-- Location: LCCOMB_X35_Y33_N10
\mx1|m2|mux5|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux5|out~0_combout\ = (\c11|jump~combout\ & (\instruction[20]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder2|full1|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[20]~input_o\,
	datab => \c11|jump~combout\,
	datad => \add2|adder1|adder2|full1|xor2~combout\,
	combout => \mx1|m2|mux5|out~0_combout\);

-- Location: LCCOMB_X41_Y33_N2
\mx1|m2|mux5|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux5|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & ((\pc[4]~input_o\ $ (\add1|adder1|adder1|full4|and1~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\mx1|m2|mux5|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux5|out~0_combout\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \pc[4]~input_o\,
	datad => \add1|adder1|adder1|full4|and1~combout\,
	combout => \mx1|m2|mux5|out~1_combout\);

-- Location: LCCOMB_X41_Y33_N0
\add1|adder1|adder2|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder2|full1|and1~combout\ = (\pc[4]~input_o\ & \add1|adder1|adder1|full4|and1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[4]~input_o\,
	datad => \add1|adder1|adder1|full4|and1~combout\,
	combout => \add1|adder1|adder2|full1|and1~combout\);

-- Location: LCCOMB_X41_Y33_N30
\add2|adder1|adder2|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full1|or1~0_combout\ = (\instruction[6]~input_o\ & ((\add2|adder1|adder1|full4|or1~0_combout\) # (\pc[4]~input_o\ $ (\add1|adder1|adder1|full4|and1~combout\)))) # (!\instruction[6]~input_o\ & (\add2|adder1|adder1|full4|or1~0_combout\ & 
-- (\pc[4]~input_o\ $ (\add1|adder1|adder1|full4|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \add2|adder1|adder1|full4|or1~0_combout\,
	datac => \pc[4]~input_o\,
	datad => \add1|adder1|adder1|full4|and1~combout\,
	combout => \add2|adder1|adder2|full1|or1~0_combout\);

-- Location: IOIBUF_X46_Y41_N8
\pc[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(5),
	o => \pc[5]~input_o\);

-- Location: LCCOMB_X41_Y33_N20
\add2|adder1|adder2|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full2|xor2~combout\ = \instruction[7]~input_o\ $ (\add1|adder1|adder2|full1|and1~combout\ $ (\add2|adder1|adder2|full1|or1~0_combout\ $ (\pc[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \add1|adder1|adder2|full1|and1~combout\,
	datac => \add2|adder1|adder2|full1|or1~0_combout\,
	datad => \pc[5]~input_o\,
	combout => \add2|adder1|adder2|full2|xor2~combout\);

-- Location: LCCOMB_X41_Y33_N22
\mx1|m2|mux6|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux6|out~0_combout\ = (\c11|jump~combout\ & (\instruction[21]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder2|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[21]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder2|full2|xor2~combout\,
	combout => \mx1|m2|mux6|out~0_combout\);

-- Location: LCCOMB_X41_Y33_N24
\mx1|m2|mux6|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux6|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder2|full1|and1~combout\ $ (((\pc[5]~input_o\))))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux6|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add1|adder1|adder2|full1|and1~combout\,
	datac => \mx1|m2|mux6|out~0_combout\,
	datad => \pc[5]~input_o\,
	combout => \mx1|m2|mux6|out~1_combout\);

-- Location: LCCOMB_X41_Y33_N26
\add1|adder1|adder2|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder2|full2|and1~combout\ = (\pc[5]~input_o\ & (\pc[4]~input_o\ & \add1|adder1|adder1|full4|and1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc[5]~input_o\,
	datac => \pc[4]~input_o\,
	datad => \add1|adder1|adder1|full4|and1~combout\,
	combout => \add1|adder1|adder2|full2|and1~combout\);

-- Location: IOIBUF_X41_Y0_N15
\pc[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(6),
	o => \pc[6]~input_o\);

-- Location: LCCOMB_X41_Y33_N28
\add2|adder1|adder2|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full2|or1~0_combout\ = (\instruction[7]~input_o\ & ((\add2|adder1|adder2|full1|or1~0_combout\) # (\add1|adder1|adder2|full1|and1~combout\ $ (\pc[5]~input_o\)))) # (!\instruction[7]~input_o\ & (\add2|adder1|adder2|full1|or1~0_combout\ & 
-- (\add1|adder1|adder2|full1|and1~combout\ $ (\pc[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \add1|adder1|adder2|full1|and1~combout\,
	datac => \add2|adder1|adder2|full1|or1~0_combout\,
	datad => \pc[5]~input_o\,
	combout => \add2|adder1|adder2|full2|or1~0_combout\);

-- Location: LCCOMB_X41_Y33_N6
\add2|adder1|adder2|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full3|xor2~combout\ = \add1|adder1|adder2|full2|and1~combout\ $ (\pc[6]~input_o\ $ (\instruction[8]~input_o\ $ (\add2|adder1|adder2|full2|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full2|and1~combout\,
	datab => \pc[6]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \add2|adder1|adder2|full2|or1~0_combout\,
	combout => \add2|adder1|adder2|full3|xor2~combout\);

-- Location: LCCOMB_X41_Y33_N8
\mx1|m2|mux7|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux7|out~0_combout\ = (\c11|jump~combout\ & (\instruction[22]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder2|full3|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder2|full3|xor2~combout\,
	combout => \mx1|m2|mux7|out~0_combout\);

-- Location: LCCOMB_X41_Y33_N10
\mx1|m2|mux7|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux7|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder2|full2|and1~combout\ $ ((\pc[6]~input_o\)))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux7|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full2|and1~combout\,
	datab => \pc[6]~input_o\,
	datac => \mx1|m2|mux7|out~0_combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux7|out~1_combout\);

-- Location: LCCOMB_X41_Y33_N14
\add2|adder1|adder2|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full3|or1~0_combout\ = (\instruction[8]~input_o\ & ((\add2|adder1|adder2|full2|or1~0_combout\) # (\add1|adder1|adder2|full2|and1~combout\ $ (\pc[6]~input_o\)))) # (!\instruction[8]~input_o\ & (\add2|adder1|adder2|full2|or1~0_combout\ & 
-- (\add1|adder1|adder2|full2|and1~combout\ $ (\pc[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full2|and1~combout\,
	datab => \pc[6]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \add2|adder1|adder2|full2|or1~0_combout\,
	combout => \add2|adder1|adder2|full3|or1~0_combout\);

-- Location: IOIBUF_X36_Y0_N8
\pc[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(7),
	o => \pc[7]~input_o\);

-- Location: LCCOMB_X41_Y33_N12
\add1|adder1|adder2|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder2|full3|and1~combout\ = (\add1|adder1|adder1|full4|and1~combout\ & (\pc[6]~input_o\ & (\pc[4]~input_o\ & \pc[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder1|full4|and1~combout\,
	datab => \pc[6]~input_o\,
	datac => \pc[4]~input_o\,
	datad => \pc[5]~input_o\,
	combout => \add1|adder1|adder2|full3|and1~combout\);

-- Location: LCCOMB_X39_Y25_N4
\add2|adder1|adder2|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full4|xor2~combout\ = \instruction[9]~input_o\ $ (\add2|adder1|adder2|full3|or1~0_combout\ $ (\pc[7]~input_o\ $ (\add1|adder1|adder2|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \add2|adder1|adder2|full3|or1~0_combout\,
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \add2|adder1|adder2|full4|xor2~combout\);

-- Location: LCCOMB_X39_Y25_N30
\mx1|m2|mux8|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux8|out~0_combout\ = (\c11|jump~combout\ & ((\instruction[23]~input_o\))) # (!\c11|jump~combout\ & (\add2|adder1|adder2|full4|xor2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add2|adder1|adder2|full4|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \instruction[23]~input_o\,
	combout => \mx1|m2|mux8|out~0_combout\);

-- Location: LCCOMB_X39_Y25_N24
\mx1|m2|mux8|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux8|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & ((\pc[7]~input_o\ $ (\add1|adder1|adder2|full3|and1~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\mx1|m2|mux8|out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux8|out~0_combout\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \mx1|m2|mux8|out~1_combout\);

-- Location: LCCOMB_X39_Y25_N22
\add1|adder1|adder2|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder2|full4|and1~combout\ = (\pc[7]~input_o\ & \add1|adder1|adder2|full3|and1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \add1|adder1|adder2|full4|and1~combout\);

-- Location: IOIBUF_X38_Y41_N1
\pc[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(8),
	o => \pc[8]~input_o\);

-- Location: LCCOMB_X39_Y25_N16
\add2|adder1|adder2|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder2|full4|or1~0_combout\ = (\instruction[9]~input_o\ & ((\add2|adder1|adder2|full3|or1~0_combout\) # (\pc[7]~input_o\ $ (\add1|adder1|adder2|full3|and1~combout\)))) # (!\instruction[9]~input_o\ & (\add2|adder1|adder2|full3|or1~0_combout\ & 
-- (\pc[7]~input_o\ $ (\add1|adder1|adder2|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \add2|adder1|adder2|full3|or1~0_combout\,
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \add2|adder1|adder2|full4|or1~0_combout\);

-- Location: LCCOMB_X39_Y25_N10
\add2|adder1|adder3|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full1|xor2~combout\ = \add1|adder1|adder2|full4|and1~combout\ $ (\pc[8]~input_o\ $ (\instruction[10]~input_o\ $ (\add2|adder1|adder2|full4|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full4|and1~combout\,
	datab => \pc[8]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \add2|adder1|adder2|full4|or1~0_combout\,
	combout => \add2|adder1|adder3|full1|xor2~combout\);

-- Location: LCCOMB_X39_Y25_N0
\mx1|m2|mux9|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux9|out~0_combout\ = (\c11|jump~combout\ & (\instruction[24]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder3|full1|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[24]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder3|full1|xor2~combout\,
	combout => \mx1|m2|mux9|out~0_combout\);

-- Location: LCCOMB_X39_Y25_N18
\mx1|m2|mux9|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux9|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder2|full4|and1~combout\ $ ((\pc[8]~input_o\)))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux9|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full4|and1~combout\,
	datab => \pc[8]~input_o\,
	datac => \mx1|m2|mux9|out~0_combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux9|out~1_combout\);

-- Location: IOIBUF_X52_Y12_N8
\pc[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(9),
	o => \pc[9]~input_o\);

-- Location: LCCOMB_X39_Y25_N14
\add2|adder1|adder3|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full1|or1~0_combout\ = (\instruction[10]~input_o\ & ((\add2|adder1|adder2|full4|or1~0_combout\) # (\add1|adder1|adder2|full4|and1~combout\ $ (\pc[8]~input_o\)))) # (!\instruction[10]~input_o\ & (\add2|adder1|adder2|full4|or1~0_combout\ 
-- & (\add1|adder1|adder2|full4|and1~combout\ $ (\pc[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder2|full4|and1~combout\,
	datab => \pc[8]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \add2|adder1|adder2|full4|or1~0_combout\,
	combout => \add2|adder1|adder3|full1|or1~0_combout\);

-- Location: LCCOMB_X39_Y25_N12
\add1|adder1|adder3|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder3|full1|and1~combout\ = (\pc[8]~input_o\ & (\pc[7]~input_o\ & \add1|adder1|adder2|full3|and1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc[8]~input_o\,
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \add1|adder1|adder3|full1|and1~combout\);

-- Location: LCCOMB_X39_Y25_N28
\add2|adder1|adder3|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full2|xor2~combout\ = \instruction[11]~input_o\ $ (\add2|adder1|adder3|full1|or1~0_combout\ $ (\pc[9]~input_o\ $ (\add1|adder1|adder3|full1|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \add2|adder1|adder3|full1|or1~0_combout\,
	datac => \pc[9]~input_o\,
	datad => \add1|adder1|adder3|full1|and1~combout\,
	combout => \add2|adder1|adder3|full2|xor2~combout\);

-- Location: LCCOMB_X39_Y25_N26
\mx1|m2|mux10|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux10|out~0_combout\ = (\c11|jump~combout\ & (\instruction[25]~input_o\)) # (!\c11|jump~combout\ & ((\add2|adder1|adder3|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[25]~input_o\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder3|full2|xor2~combout\,
	combout => \mx1|m2|mux10|out~0_combout\);

-- Location: LCCOMB_X39_Y25_N20
\mx1|m2|mux10|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux10|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\pc[9]~input_o\ $ (((\add1|adder1|adder3|full1|and1~combout\))))) # (!\mx1|m2|mux3|out~7_combout\ & (((\mx1|m2|mux10|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[9]~input_o\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \mx1|m2|mux10|out~0_combout\,
	datad => \add1|adder1|adder3|full1|and1~combout\,
	combout => \mx1|m2|mux10|out~1_combout\);

-- Location: IOIBUF_X52_Y16_N8
\pc[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(10),
	o => \pc[10]~input_o\);

-- Location: LCCOMB_X39_Y25_N8
\add2|adder1|adder3|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full2|or1~0_combout\ = (\instruction[11]~input_o\ & ((\add2|adder1|adder3|full1|or1~0_combout\) # (\pc[9]~input_o\ $ (\add1|adder1|adder3|full1|and1~combout\)))) # (!\instruction[11]~input_o\ & (\add2|adder1|adder3|full1|or1~0_combout\ 
-- & (\pc[9]~input_o\ $ (\add1|adder1|adder3|full1|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \add2|adder1|adder3|full1|or1~0_combout\,
	datac => \pc[9]~input_o\,
	datad => \add1|adder1|adder3|full1|and1~combout\,
	combout => \add2|adder1|adder3|full2|or1~0_combout\);

-- Location: LCCOMB_X39_Y25_N2
\add1|adder1|adder3|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder3|full2|and1~combout\ = (\pc[9]~input_o\ & (\pc[8]~input_o\ & (\pc[7]~input_o\ & \add1|adder1|adder2|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[9]~input_o\,
	datab => \pc[8]~input_o\,
	datac => \pc[7]~input_o\,
	datad => \add1|adder1|adder2|full3|and1~combout\,
	combout => \add1|adder1|adder3|full2|and1~combout\);

-- Location: LCCOMB_X42_Y19_N28
\mx1|m2|mux11|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux11|out~0_combout\ = \add1|adder1|adder3|full2|and1~combout\ $ (((!\mx1|m2|mux3|out~7_combout\ & (\add2|adder1|adder3|full2|or1~0_combout\ $ (\instruction[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder3|full2|or1~0_combout\,
	datab => \instruction[12]~input_o\,
	datac => \add1|adder1|adder3|full2|and1~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux11|out~0_combout\);

-- Location: LCCOMB_X42_Y19_N30
\mx1|m2|mux11|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux11|out~1_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\pc[10]~input_o\ $ (((\mx1|m2|mux11|out~0_combout\))))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\pc[10]~input_o\ $ (\mx1|m2|mux11|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[10]~input_o\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux11|out~0_combout\,
	combout => \mx1|m2|mux11|out~1_combout\);

-- Location: LCCOMB_X42_Y19_N20
\add2|adder1|adder3|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full3|or1~0_combout\ = (\add2|adder1|adder3|full2|or1~0_combout\ & ((\instruction[12]~input_o\) # (\add1|adder1|adder3|full2|and1~combout\ $ (\pc[10]~input_o\)))) # (!\add2|adder1|adder3|full2|or1~0_combout\ & 
-- (\instruction[12]~input_o\ & (\add1|adder1|adder3|full2|and1~combout\ $ (\pc[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder3|full2|or1~0_combout\,
	datab => \instruction[12]~input_o\,
	datac => \add1|adder1|adder3|full2|and1~combout\,
	datad => \pc[10]~input_o\,
	combout => \add2|adder1|adder3|full3|or1~0_combout\);

-- Location: IOIBUF_X52_Y15_N8
\pc[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(11),
	o => \pc[11]~input_o\);

-- Location: LCCOMB_X42_Y19_N2
\add1|adder1|adder3|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder3|full3|and1~combout\ = (\add1|adder1|adder3|full2|and1~combout\ & \pc[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add1|adder1|adder3|full2|and1~combout\,
	datad => \pc[10]~input_o\,
	combout => \add1|adder1|adder3|full3|and1~combout\);

-- Location: LCCOMB_X42_Y19_N26
\add2|adder1|adder3|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full4|xor2~combout\ = \instruction[13]~input_o\ $ (\add2|adder1|adder3|full3|or1~0_combout\ $ (\pc[11]~input_o\ $ (\add1|adder1|adder3|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \add2|adder1|adder3|full3|or1~0_combout\,
	datac => \pc[11]~input_o\,
	datad => \add1|adder1|adder3|full3|and1~combout\,
	combout => \add2|adder1|adder3|full4|xor2~combout\);

-- Location: LCCOMB_X42_Y19_N0
\add1|adder1|adder3|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder3|full4|xor2~combout\ = \pc[11]~input_o\ $ (((\add1|adder1|adder3|full2|and1~combout\ & \pc[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder3|full2|and1~combout\,
	datac => \pc[11]~input_o\,
	datad => \pc[10]~input_o\,
	combout => \add1|adder1|adder3|full4|xor2~combout\);

-- Location: LCCOMB_X42_Y19_N4
\mx1|m2|mux12|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux12|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder1|adder3|full4|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder1|adder3|full4|xor2~combout\ & (!\c11|jump~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder3|full4|xor2~combout\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder1|adder3|full4|xor2~combout\,
	combout => \mx1|m2|mux12|out~0_combout\);

-- Location: IOIBUF_X52_Y19_N8
\pc[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(12),
	o => \pc[12]~input_o\);

-- Location: LCCOMB_X42_Y19_N10
\add1|adder1|adder4|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full1|xor2~combout\ = \pc[12]~input_o\ $ (((\add1|adder1|adder3|full2|and1~combout\ & (\pc[11]~input_o\ & \pc[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder3|full2|and1~combout\,
	datab => \pc[12]~input_o\,
	datac => \pc[11]~input_o\,
	datad => \pc[10]~input_o\,
	combout => \add1|adder1|adder4|full1|xor2~combout\);

-- Location: LCCOMB_X42_Y19_N22
\add2|adder1|adder3|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder3|full4|or1~0_combout\ = (\instruction[13]~input_o\ & ((\add2|adder1|adder3|full3|or1~0_combout\) # (\pc[11]~input_o\ $ (\add1|adder1|adder3|full3|and1~combout\)))) # (!\instruction[13]~input_o\ & 
-- (\add2|adder1|adder3|full3|or1~0_combout\ & (\pc[11]~input_o\ $ (\add1|adder1|adder3|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \add2|adder1|adder3|full3|or1~0_combout\,
	datac => \pc[11]~input_o\,
	datad => \add1|adder1|adder3|full3|and1~combout\,
	combout => \add2|adder1|adder3|full4|or1~0_combout\);

-- Location: LCCOMB_X42_Y19_N16
\add1|adder1|adder3|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder3|full4|and1~combout\ = (\add1|adder1|adder3|full2|and1~combout\ & (\pc[11]~input_o\ & \pc[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder3|full2|and1~combout\,
	datac => \pc[11]~input_o\,
	datad => \pc[10]~input_o\,
	combout => \add1|adder1|adder3|full4|and1~combout\);

-- Location: LCCOMB_X42_Y19_N24
\add2|adder1|adder4|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full1|xor2~combout\ = \add2|adder1|adder3|full4|or1~0_combout\ $ (\add1|adder1|adder3|full4|and1~combout\ $ (\instruction[14]~input_o\ $ (\pc[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder3|full4|or1~0_combout\,
	datab => \add1|adder1|adder3|full4|and1~combout\,
	datac => \instruction[14]~input_o\,
	datad => \pc[12]~input_o\,
	combout => \add2|adder1|adder4|full1|xor2~combout\);

-- Location: LCCOMB_X42_Y19_N18
\mx1|m2|mux13|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux13|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder4|full1|xor2~combout\)) # (!\mx1|m2|mux3|out~7_combout\ & (((\add2|adder1|adder4|full1|xor2~combout\ & !\c11|jump~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full1|xor2~combout\,
	datab => \add2|adder1|adder4|full1|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux13|out~0_combout\);

-- Location: LCCOMB_X42_Y19_N6
\add2|adder1|adder4|full1|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full1|or1~0_combout\ = (\add2|adder1|adder3|full4|or1~0_combout\ & ((\instruction[14]~input_o\) # (\add1|adder1|adder3|full4|and1~combout\ $ (\pc[12]~input_o\)))) # (!\add2|adder1|adder3|full4|or1~0_combout\ & 
-- (\instruction[14]~input_o\ & (\add1|adder1|adder3|full4|and1~combout\ $ (\pc[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder3|full4|or1~0_combout\,
	datab => \add1|adder1|adder3|full4|and1~combout\,
	datac => \instruction[14]~input_o\,
	datad => \pc[12]~input_o\,
	combout => \add2|adder1|adder4|full1|or1~0_combout\);

-- Location: LCCOMB_X42_Y19_N12
\add1|adder1|adder4|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full1|and1~combout\ = (\add1|adder1|adder3|full2|and1~combout\ & (\pc[12]~input_o\ & (\pc[11]~input_o\ & \pc[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder3|full2|and1~combout\,
	datab => \pc[12]~input_o\,
	datac => \pc[11]~input_o\,
	datad => \pc[10]~input_o\,
	combout => \add1|adder1|adder4|full1|and1~combout\);

-- Location: LCCOMB_X39_Y26_N24
\mx1|m2|mux14|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux14|out~0_combout\ = \add1|adder1|adder4|full1|and1~combout\ $ (((!\mx1|m2|mux3|out~7_combout\ & (\instruction[15]~input_o\ $ (\add2|adder1|adder4|full1|or1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \mx1|m2|mux3|out~7_combout\,
	datac => \add2|adder1|adder4|full1|or1~0_combout\,
	datad => \add1|adder1|adder4|full1|and1~combout\,
	combout => \mx1|m2|mux14|out~0_combout\);

-- Location: IOIBUF_X52_Y12_N1
\pc[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(13),
	o => \pc[13]~input_o\);

-- Location: LCCOMB_X39_Y26_N22
\mx1|m2|mux14|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux14|out~1_combout\ = (\c11|jump~combout\ & (\mx1|m2|mux3|out~7_combout\ & (\mx1|m2|mux14|out~0_combout\ $ (\pc[13]~input_o\)))) # (!\c11|jump~combout\ & (\mx1|m2|mux14|out~0_combout\ $ ((\pc[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11|jump~combout\,
	datab => \mx1|m2|mux14|out~0_combout\,
	datac => \pc[13]~input_o\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux14|out~1_combout\);

-- Location: IOIBUF_X36_Y0_N1
\pc[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(14),
	o => \pc[14]~input_o\);

-- Location: LCCOMB_X39_Y26_N30
\add2|adder1|adder4|full2|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full2|or1~0_combout\ = (\instruction[15]~input_o\ & ((\add2|adder1|adder4|full1|or1~0_combout\) # (\pc[13]~input_o\ $ (\add1|adder1|adder4|full1|and1~combout\)))) # (!\instruction[15]~input_o\ & 
-- (\add2|adder1|adder4|full1|or1~0_combout\ & (\pc[13]~input_o\ $ (\add1|adder1|adder4|full1|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \add2|adder1|adder4|full1|or1~0_combout\,
	datac => \pc[13]~input_o\,
	datad => \add1|adder1|adder4|full1|and1~combout\,
	combout => \add2|adder1|adder4|full2|or1~0_combout\);

-- Location: LCCOMB_X35_Y26_N30
\add1|adder1|adder4|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full2|and1~combout\ = (\add1|adder1|adder4|full1|and1~combout\ & \pc[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full1|and1~combout\,
	datab => \pc[13]~input_o\,
	combout => \add1|adder1|adder4|full2|and1~combout\);

-- Location: LCCOMB_X39_Y26_N12
\add2|adder1|adder4|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full3|xor2~combout\ = \pc[14]~input_o\ $ (\instruction[16]~input_o\ $ (\add2|adder1|adder4|full2|or1~0_combout\ $ (\add1|adder1|adder4|full2|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[14]~input_o\,
	datab => \instruction[16]~input_o\,
	datac => \add2|adder1|adder4|full2|or1~0_combout\,
	datad => \add1|adder1|adder4|full2|and1~combout\,
	combout => \add2|adder1|adder4|full3|xor2~combout\);

-- Location: LCCOMB_X39_Y26_N16
\add1|adder1|adder4|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full3|xor2~combout\ = \pc[14]~input_o\ $ (((\pc[13]~input_o\ & \add1|adder1|adder4|full1|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[14]~input_o\,
	datac => \pc[13]~input_o\,
	datad => \add1|adder1|adder4|full1|and1~combout\,
	combout => \add1|adder1|adder4|full3|xor2~combout\);

-- Location: LCCOMB_X39_Y26_N18
\mx1|m2|mux15|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux15|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder1|adder4|full3|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder1|adder4|full3|xor2~combout\ & ((!\c11|jump~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder1|adder4|full3|xor2~combout\,
	datab => \add1|adder1|adder4|full3|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m2|mux15|out~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\pc[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(15),
	o => \pc[15]~input_o\);

-- Location: LCCOMB_X35_Y26_N8
\add1|adder1|adder4|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full4|xor2~combout\ = \pc[15]~input_o\ $ (((\add1|adder1|adder4|full1|and1~combout\ & (\pc[13]~input_o\ & \pc[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full1|and1~combout\,
	datab => \pc[15]~input_o\,
	datac => \pc[13]~input_o\,
	datad => \pc[14]~input_o\,
	combout => \add1|adder1|adder4|full4|xor2~combout\);

-- Location: LCCOMB_X35_Y26_N26
\add1|adder1|adder4|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder1|adder4|full3|and1~combout\ = (\add1|adder1|adder4|full1|and1~combout\ & (\pc[13]~input_o\ & \pc[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full1|and1~combout\,
	datac => \pc[13]~input_o\,
	datad => \pc[14]~input_o\,
	combout => \add1|adder1|adder4|full3|and1~combout\);

-- Location: LCCOMB_X35_Y26_N28
\add2|adder1|adder4|full3|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full3|or1~0_combout\ = (\add2|adder1|adder4|full2|or1~0_combout\ & ((\instruction[16]~input_o\) # (\pc[14]~input_o\ $ (\add1|adder1|adder4|full2|and1~combout\)))) # (!\add2|adder1|adder4|full2|or1~0_combout\ & 
-- (\instruction[16]~input_o\ & (\pc[14]~input_o\ $ (\add1|adder1|adder4|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[14]~input_o\,
	datab => \add2|adder1|adder4|full2|or1~0_combout\,
	datac => \add1|adder1|adder4|full2|and1~combout\,
	datad => \instruction[16]~input_o\,
	combout => \add2|adder1|adder4|full3|or1~0_combout\);

-- Location: LCCOMB_X35_Y26_N10
\add2|adder1|adder4|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full4|xor2~combout\ = \add1|adder1|adder4|full3|and1~combout\ $ (\pc[15]~input_o\ $ (\instruction[17]~input_o\ $ (\add2|adder1|adder4|full3|or1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full3|and1~combout\,
	datab => \pc[15]~input_o\,
	datac => \instruction[17]~input_o\,
	datad => \add2|adder1|adder4|full3|or1~0_combout\,
	combout => \add2|adder1|adder4|full4|xor2~combout\);

-- Location: LCCOMB_X35_Y26_N12
\mx1|m2|mux16|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m2|mux16|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder1|adder4|full4|xor2~combout\)) # (!\mx1|m2|mux3|out~7_combout\ & (((!\c11|jump~combout\ & \add2|adder1|adder4|full4|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add1|adder1|adder4|full4|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \add2|adder1|adder4|full4|xor2~combout\,
	combout => \mx1|m2|mux16|out~0_combout\);

-- Location: LCCOMB_X35_Y26_N18
\add2|adder1|adder4|full4|or1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder1|adder4|full4|or1~0_combout\ = (\instruction[17]~input_o\ & ((\add2|adder1|adder4|full3|or1~0_combout\) # (\add1|adder1|adder4|full3|and1~combout\ $ (\pc[15]~input_o\)))) # (!\instruction[17]~input_o\ & 
-- (\add2|adder1|adder4|full3|or1~0_combout\ & (\add1|adder1|adder4|full3|and1~combout\ $ (\pc[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder1|adder4|full3|and1~combout\,
	datab => \pc[15]~input_o\,
	datac => \instruction[17]~input_o\,
	datad => \add2|adder1|adder4|full3|or1~0_combout\,
	combout => \add2|adder1|adder4|full4|or1~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\pc[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(16),
	o => \pc[16]~input_o\);

-- Location: LCCOMB_X18_Y33_N24
\add1|adder2|adder1|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder1|full1|xor2~combout\ = \pc[16]~input_o\ $ (((\pc[15]~input_o\ & \add1|adder1|adder4|full3|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[16]~input_o\,
	datac => \pc[15]~input_o\,
	datad => \add1|adder1|adder4|full3|and1~combout\,
	combout => \add1|adder2|adder1|full1|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N26
\mx1|m1|mux1|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux1|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder1|full1|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder1|adder4|full4|or1~0_combout\ $ (\add1|adder2|adder1|full1|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder1|adder4|full4|or1~0_combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder2|adder1|full1|xor2~combout\,
	combout => \mx1|m1|mux1|out~0_combout\);

-- Location: LCCOMB_X18_Y33_N18
\add2|adder2|adder1|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder1|full1|and1~combout\ = (\add2|adder1|adder4|full4|or1~0_combout\ & (\pc[16]~input_o\ $ (((\add1|adder1|adder4|full3|and1~combout\ & \pc[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[16]~input_o\,
	datab => \add1|adder1|adder4|full3|and1~combout\,
	datac => \pc[15]~input_o\,
	datad => \add2|adder1|adder4|full4|or1~0_combout\,
	combout => \add2|adder2|adder1|full1|and1~combout\);

-- Location: IOIBUF_X18_Y41_N1
\pc[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(17),
	o => \pc[17]~input_o\);

-- Location: LCCOMB_X18_Y33_N28
\add1|adder2|adder1|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder1|full2|xor2~combout\ = \pc[17]~input_o\ $ (((\pc[16]~input_o\ & (\add1|adder1|adder4|full3|and1~combout\ & \pc[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[16]~input_o\,
	datab => \add1|adder1|adder4|full3|and1~combout\,
	datac => \pc[15]~input_o\,
	datad => \pc[17]~input_o\,
	combout => \add1|adder2|adder1|full2|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N20
\mx1|m1|mux2|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux2|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder1|full2|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder1|full1|and1~combout\ $ (\add1|adder2|adder1|full2|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder1|full1|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder2|adder1|full2|xor2~combout\,
	combout => \mx1|m1|mux2|out~0_combout\);

-- Location: IOIBUF_X14_Y41_N1
\pc[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(18),
	o => \pc[18]~input_o\);

-- Location: LCCOMB_X18_Y33_N10
\add1|adder2|adder1|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder1|full2|and1~combout\ = (\pc[16]~input_o\ & (\add1|adder1|adder4|full3|and1~combout\ & (\pc[15]~input_o\ & \pc[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[16]~input_o\,
	datab => \add1|adder1|adder4|full3|and1~combout\,
	datac => \pc[15]~input_o\,
	datad => \pc[17]~input_o\,
	combout => \add1|adder2|adder1|full2|and1~combout\);

-- Location: LCCOMB_X18_Y33_N12
\add1|adder2|adder1|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder1|full3|xor2~combout\ = \pc[18]~input_o\ $ (\add1|adder2|adder1|full2|and1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[18]~input_o\,
	datad => \add1|adder2|adder1|full2|and1~combout\,
	combout => \add1|adder2|adder1|full3|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N14
\add2|adder2|adder1|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder1|full3|xor2~combout\ = \add1|adder2|adder1|full3|xor2~combout\ $ (((\add2|adder1|adder4|full4|or1~0_combout\ & (\add1|adder2|adder1|full1|xor2~combout\ & \add1|adder2|adder1|full2|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full3|xor2~combout\,
	datab => \add2|adder1|adder4|full4|or1~0_combout\,
	datac => \add1|adder2|adder1|full1|xor2~combout\,
	datad => \add1|adder2|adder1|full2|xor2~combout\,
	combout => \add2|adder2|adder1|full3|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N4
\mx1|m1|mux3|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux3|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder1|full3|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder2|adder1|full3|xor2~combout\ & (!\c11|jump~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder1|full3|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder2|adder1|full3|xor2~combout\,
	combout => \mx1|m1|mux3|out~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\pc[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(19),
	o => \pc[19]~input_o\);

-- Location: LCCOMB_X18_Y33_N22
\add1|adder2|adder1|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder1|full4|xor2~combout\ = \pc[19]~input_o\ $ (((\add1|adder2|adder1|full2|and1~combout\ & \pc[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full2|and1~combout\,
	datac => \pc[18]~input_o\,
	datad => \pc[19]~input_o\,
	combout => \add1|adder2|adder1|full4|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N16
\add2|adder2|adder1|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder1|full3|and1~combout\ = (\add1|adder2|adder1|full3|xor2~combout\ & (\add2|adder1|adder4|full4|or1~0_combout\ & (\add1|adder2|adder1|full1|xor2~combout\ & \add1|adder2|adder1|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full3|xor2~combout\,
	datab => \add2|adder1|adder4|full4|or1~0_combout\,
	datac => \add1|adder2|adder1|full1|xor2~combout\,
	datad => \add1|adder2|adder1|full2|xor2~combout\,
	combout => \add2|adder2|adder1|full3|and1~combout\);

-- Location: LCCOMB_X18_Y33_N30
\mx1|m1|mux4|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux4|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder1|full4|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add1|adder2|adder1|full4|xor2~combout\ $ (\add2|adder2|adder1|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \c11|jump~combout\,
	datac => \add1|adder2|adder1|full4|xor2~combout\,
	datad => \add2|adder2|adder1|full3|and1~combout\,
	combout => \mx1|m1|mux4|out~0_combout\);

-- Location: LCCOMB_X18_Y33_N6
\add2|adder2|adder1|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder1|full4|and1~combout\ = (\add1|adder2|adder1|full3|xor2~combout\ & (\add2|adder2|adder1|full1|and1~combout\ & (\add1|adder2|adder1|full4|xor2~combout\ & \add1|adder2|adder1|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full3|xor2~combout\,
	datab => \add2|adder2|adder1|full1|and1~combout\,
	datac => \add1|adder2|adder1|full4|xor2~combout\,
	datad => \add1|adder2|adder1|full2|xor2~combout\,
	combout => \add2|adder2|adder1|full4|and1~combout\);

-- Location: IOIBUF_X18_Y41_N8
\pc[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(20),
	o => \pc[20]~input_o\);

-- Location: LCCOMB_X18_Y33_N8
\add1|adder2|adder2|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full1|xor2~combout\ = \pc[20]~input_o\ $ (((\add1|adder2|adder1|full2|and1~combout\ & (\pc[18]~input_o\ & \pc[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full2|and1~combout\,
	datab => \pc[20]~input_o\,
	datac => \pc[18]~input_o\,
	datad => \pc[19]~input_o\,
	combout => \add1|adder2|adder2|full1|xor2~combout\);

-- Location: LCCOMB_X18_Y33_N0
\mx1|m1|mux5|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux5|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder2|full1|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder1|full4|and1~combout\ $ (\add1|adder2|adder2|full1|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder1|full4|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder2|adder2|full1|xor2~combout\,
	combout => \mx1|m1|mux5|out~0_combout\);

-- Location: LCCOMB_X18_Y33_N2
\add1|adder2|adder2|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full1|and1~combout\ = (\add1|adder2|adder1|full2|and1~combout\ & (\pc[20]~input_o\ & (\pc[18]~input_o\ & \pc[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder1|full2|and1~combout\,
	datab => \pc[20]~input_o\,
	datac => \pc[18]~input_o\,
	datad => \pc[19]~input_o\,
	combout => \add1|adder2|adder2|full1|and1~combout\);

-- Location: IOIBUF_X21_Y0_N8
\pc[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(21),
	o => \pc[21]~input_o\);

-- Location: LCCOMB_X18_Y29_N0
\add2|adder2|adder2|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder2|full2|xor2~combout\ = \add1|adder2|adder2|full1|and1~combout\ $ (\pc[21]~input_o\ $ (((\add1|adder2|adder2|full1|xor2~combout\ & \add2|adder2|adder1|full4|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder2|full1|xor2~combout\,
	datab => \add2|adder2|adder1|full4|and1~combout\,
	datac => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add2|adder2|adder2|full2|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N24
\add1|adder2|adder2|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full2|xor2~combout\ = \add1|adder2|adder2|full1|and1~combout\ $ (\pc[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add1|adder2|adder2|full2|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N2
\mx1|m1|mux6|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux6|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder2|full2|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder2|adder2|full2|xor2~combout\ & ((!\c11|jump~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder2|full2|xor2~combout\,
	datac => \add1|adder2|adder2|full2|xor2~combout\,
	datad => \c11|jump~combout\,
	combout => \mx1|m1|mux6|out~0_combout\);

-- Location: LCCOMB_X18_Y29_N18
\add2|adder2|adder2|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder2|full2|and1~combout\ = (\add1|adder2|adder2|full1|xor2~combout\ & (\add2|adder2|adder1|full4|and1~combout\ & (\add1|adder2|adder2|full1|and1~combout\ $ (\pc[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder2|full1|xor2~combout\,
	datab => \add2|adder2|adder1|full4|and1~combout\,
	datac => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add2|adder2|adder2|full2|and1~combout\);

-- Location: IOIBUF_X18_Y0_N8
\pc[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(22),
	o => \pc[22]~input_o\);

-- Location: LCCOMB_X18_Y29_N4
\add1|adder2|adder2|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full3|xor2~combout\ = \pc[22]~input_o\ $ (((\add1|adder2|adder2|full1|and1~combout\ & \pc[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[22]~input_o\,
	datab => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add1|adder2|adder2|full3|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N26
\mx1|m1|mux7|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux7|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder2|full3|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder2|full2|and1~combout\ $ (\add1|adder2|adder2|full3|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder2|full2|and1~combout\,
	datac => \add1|adder2|adder2|full3|xor2~combout\,
	datad => \c11|jump~combout\,
	combout => \mx1|m1|mux7|out~0_combout\);

-- Location: LCCOMB_X18_Y29_N22
\add2|adder2|adder2|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder2|full3|and1~combout\ = (\add1|adder2|adder2|full1|xor2~combout\ & (\add1|adder2|adder2|full3|xor2~combout\ & (\add2|adder2|adder1|full4|and1~combout\ & \add1|adder2|adder2|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder2|full1|xor2~combout\,
	datab => \add1|adder2|adder2|full3|xor2~combout\,
	datac => \add2|adder2|adder1|full4|and1~combout\,
	datad => \add1|adder2|adder2|full2|xor2~combout\,
	combout => \add2|adder2|adder2|full3|and1~combout\);

-- Location: IOIBUF_X12_Y0_N8
\pc[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(23),
	o => \pc[23]~input_o\);

-- Location: LCCOMB_X18_Y29_N8
\add1|adder2|adder2|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full4|xor2~combout\ = \pc[23]~input_o\ $ (((\pc[22]~input_o\ & (\add1|adder2|adder2|full1|and1~combout\ & \pc[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[22]~input_o\,
	datab => \pc[23]~input_o\,
	datac => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add1|adder2|adder2|full4|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N20
\mx1|m1|mux8|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux8|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder2|full4|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder2|full3|and1~combout\ $ (\add1|adder2|adder2|full4|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder2|adder2|full3|and1~combout\,
	datab => \add1|adder2|adder2|full4|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux8|out~0_combout\);

-- Location: IOIBUF_X21_Y41_N1
\pc[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(24),
	o => \pc[24]~input_o\);

-- Location: LCCOMB_X18_Y29_N6
\add1|adder2|adder2|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder2|full4|and1~combout\ = (\pc[22]~input_o\ & (\pc[23]~input_o\ & (\add1|adder2|adder2|full1|and1~combout\ & \pc[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[22]~input_o\,
	datab => \pc[23]~input_o\,
	datac => \add1|adder2|adder2|full1|and1~combout\,
	datad => \pc[21]~input_o\,
	combout => \add1|adder2|adder2|full4|and1~combout\);

-- Location: LCCOMB_X18_Y29_N28
\add2|adder2|adder3|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder3|full1|xor2~combout\ = \pc[24]~input_o\ $ (\add1|adder2|adder2|full4|and1~combout\ $ (((\add2|adder2|adder2|full3|and1~combout\ & \add1|adder2|adder2|full4|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder2|adder2|full3|and1~combout\,
	datab => \add1|adder2|adder2|full4|xor2~combout\,
	datac => \pc[24]~input_o\,
	datad => \add1|adder2|adder2|full4|and1~combout\,
	combout => \add2|adder2|adder3|full1|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N12
\add1|adder2|adder3|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder3|full1|xor2~combout\ = \add1|adder2|adder2|full4|and1~combout\ $ (\pc[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder2|full4|and1~combout\,
	datac => \pc[24]~input_o\,
	combout => \add1|adder2|adder3|full1|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N10
\mx1|m1|mux9|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux9|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder3|full1|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder2|adder3|full1|xor2~combout\ & ((!\c11|jump~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder3|full1|xor2~combout\,
	datac => \add1|adder2|adder3|full1|xor2~combout\,
	datad => \c11|jump~combout\,
	combout => \mx1|m1|mux9|out~0_combout\);

-- Location: LCCOMB_X18_Y29_N14
\add2|adder2|adder3|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder3|full1|and1~combout\ = (\add2|adder2|adder2|full3|and1~combout\ & (\add1|adder2|adder2|full4|xor2~combout\ & (\pc[24]~input_o\ $ (\add1|adder2|adder2|full4|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder2|adder2|full3|and1~combout\,
	datab => \add1|adder2|adder2|full4|xor2~combout\,
	datac => \pc[24]~input_o\,
	datad => \add1|adder2|adder2|full4|and1~combout\,
	combout => \add2|adder2|adder3|full1|and1~combout\);

-- Location: IOIBUF_X27_Y41_N1
\pc[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(25),
	o => \pc[25]~input_o\);

-- Location: LCCOMB_X26_Y29_N4
\add1|adder2|adder3|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder3|full2|xor2~combout\ = \pc[25]~input_o\ $ (((\pc[24]~input_o\ & \add1|adder2|adder2|full4|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[24]~input_o\,
	datac => \add1|adder2|adder2|full4|and1~combout\,
	datad => \pc[25]~input_o\,
	combout => \add1|adder2|adder3|full2|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N16
\mx1|m1|mux10|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux10|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder3|full2|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder3|full1|and1~combout\ $ (\add1|adder2|adder3|full2|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx1|m2|mux3|out~7_combout\,
	datab => \add2|adder2|adder3|full1|and1~combout\,
	datac => \add1|adder2|adder3|full2|xor2~combout\,
	datad => \c11|jump~combout\,
	combout => \mx1|m1|mux10|out~0_combout\);

-- Location: IOIBUF_X27_Y41_N8
\pc[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(26),
	o => \pc[26]~input_o\);

-- Location: LCCOMB_X26_Y29_N30
\add1|adder2|adder3|full3|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder3|full3|xor2~combout\ = \pc[26]~input_o\ $ (((\pc[24]~input_o\ & (\add1|adder2|adder2|full4|and1~combout\ & \pc[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[24]~input_o\,
	datab => \pc[26]~input_o\,
	datac => \add1|adder2|adder2|full4|and1~combout\,
	datad => \pc[25]~input_o\,
	combout => \add1|adder2|adder3|full3|xor2~combout\);

-- Location: LCCOMB_X18_Y29_N30
\add2|adder2|adder3|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder3|full2|and1~combout\ = (\add1|adder2|adder3|full1|xor2~combout\ & (\add1|adder2|adder2|full4|xor2~combout\ & (\add2|adder2|adder2|full3|and1~combout\ & \add1|adder2|adder3|full2|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full1|xor2~combout\,
	datab => \add1|adder2|adder2|full4|xor2~combout\,
	datac => \add2|adder2|adder2|full3|and1~combout\,
	datad => \add1|adder2|adder3|full2|xor2~combout\,
	combout => \add2|adder2|adder3|full2|and1~combout\);

-- Location: LCCOMB_X26_Y28_N4
\mx1|m1|mux11|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux11|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder2|adder3|full3|xor2~combout\)) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add1|adder2|adder3|full3|xor2~combout\ $ (\add2|adder2|adder3|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|xor2~combout\,
	datab => \add2|adder2|adder3|full2|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux11|out~0_combout\);

-- Location: IOIBUF_X31_Y41_N1
\pc[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(27),
	o => \pc[27]~input_o\);

-- Location: LCCOMB_X26_Y29_N16
\add1|adder2|adder3|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder3|full3|and1~combout\ = (\pc[24]~input_o\ & (\pc[26]~input_o\ & (\add1|adder2|adder2|full4|and1~combout\ & \pc[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[24]~input_o\,
	datab => \pc[26]~input_o\,
	datac => \add1|adder2|adder2|full4|and1~combout\,
	datad => \pc[25]~input_o\,
	combout => \add1|adder2|adder3|full3|and1~combout\);

-- Location: LCCOMB_X26_Y28_N6
\add2|adder2|adder3|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder3|full4|xor2~combout\ = \pc[27]~input_o\ $ (\add1|adder2|adder3|full3|and1~combout\ $ (((\add1|adder2|adder3|full3|xor2~combout\ & \add2|adder2|adder3|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|xor2~combout\,
	datab => \add2|adder2|adder3|full2|and1~combout\,
	datac => \pc[27]~input_o\,
	datad => \add1|adder2|adder3|full3|and1~combout\,
	combout => \add2|adder2|adder3|full4|xor2~combout\);

-- Location: LCCOMB_X26_Y28_N30
\add1|adder2|adder3|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder3|full4|xor2~combout\ = \pc[27]~input_o\ $ (\add1|adder2|adder3|full3|and1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[27]~input_o\,
	datad => \add1|adder2|adder3|full3|and1~combout\,
	combout => \add1|adder2|adder3|full4|xor2~combout\);

-- Location: LCCOMB_X26_Y28_N0
\mx1|m1|mux12|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux12|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder3|full4|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (\add2|adder2|adder3|full4|xor2~combout\ & (!\c11|jump~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder2|adder3|full4|xor2~combout\,
	datab => \c11|jump~combout\,
	datac => \add1|adder2|adder3|full4|xor2~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux12|out~0_combout\);

-- Location: LCCOMB_X26_Y28_N8
\add2|adder2|adder3|full4|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder3|full4|and1~combout\ = (\add1|adder2|adder3|full3|xor2~combout\ & (\add2|adder2|adder3|full2|and1~combout\ & (\pc[27]~input_o\ $ (\add1|adder2|adder3|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|xor2~combout\,
	datab => \add2|adder2|adder3|full2|and1~combout\,
	datac => \pc[27]~input_o\,
	datad => \add1|adder2|adder3|full3|and1~combout\,
	combout => \add2|adder2|adder3|full4|and1~combout\);

-- Location: IOIBUF_X29_Y0_N1
\pc[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(28),
	o => \pc[28]~input_o\);

-- Location: LCCOMB_X26_Y28_N2
\add1|adder2|adder4|full1|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder4|full1|xor2~combout\ = \pc[28]~input_o\ $ (((\add1|adder2|adder3|full3|and1~combout\ & \pc[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|and1~combout\,
	datac => \pc[27]~input_o\,
	datad => \pc[28]~input_o\,
	combout => \add1|adder2|adder4|full1|xor2~combout\);

-- Location: LCCOMB_X26_Y28_N12
\mx1|m1|mux13|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux13|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (((\add1|adder2|adder4|full1|xor2~combout\)))) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add2|adder2|adder3|full4|and1~combout\ $ (\add1|adder2|adder4|full1|xor2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2|adder2|adder3|full4|and1~combout\,
	datab => \add1|adder2|adder4|full1|xor2~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux13|out~0_combout\);

-- Location: IOIBUF_X29_Y41_N1
\pc[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(29),
	o => \pc[29]~input_o\);

-- Location: LCCOMB_X26_Y28_N26
\add1|adder2|adder4|full2|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder4|full2|xor2~combout\ = \pc[29]~input_o\ $ (((\add1|adder2|adder3|full3|and1~combout\ & (\pc[28]~input_o\ & \pc[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|and1~combout\,
	datab => \pc[28]~input_o\,
	datac => \pc[27]~input_o\,
	datad => \pc[29]~input_o\,
	combout => \add1|adder2|adder4|full2|xor2~combout\);

-- Location: LCCOMB_X26_Y28_N16
\add2|adder2|adder4|full1|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder4|full1|and1~combout\ = (\add1|adder2|adder3|full4|xor2~combout\ & (\add2|adder2|adder3|full2|and1~combout\ & (\add1|adder2|adder3|full3|xor2~combout\ & \add1|adder2|adder4|full1|xor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full4|xor2~combout\,
	datab => \add2|adder2|adder3|full2|and1~combout\,
	datac => \add1|adder2|adder3|full3|xor2~combout\,
	datad => \add1|adder2|adder4|full1|xor2~combout\,
	combout => \add2|adder2|adder4|full1|and1~combout\);

-- Location: LCCOMB_X26_Y28_N18
\mx1|m1|mux14|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux14|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder2|adder4|full2|xor2~combout\)) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add1|adder2|adder4|full2|xor2~combout\ $ (\add2|adder2|adder4|full1|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder4|full2|xor2~combout\,
	datab => \add2|adder2|adder4|full1|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux14|out~0_combout\);

-- Location: IOIBUF_X29_Y41_N8
\pc[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(30),
	o => \pc[30]~input_o\);

-- Location: LCCOMB_X26_Y28_N24
\mx1|m1|mux15|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux15|out~0_combout\ = (\c11|jump~combout\ & (((\mx1|m2|mux3|out~7_combout\)))) # (!\c11|jump~combout\ & (\add1|adder2|adder4|full2|xor2~combout\ & (\add2|adder2|adder4|full1|and1~combout\ & !\mx1|m2|mux3|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder4|full2|xor2~combout\,
	datab => \add2|adder2|adder4|full1|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux15|out~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\add1|adder2|adder4|full2|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder4|full2|and1~combout\ = (\add1|adder2|adder3|full3|and1~combout\ & (\pc[28]~input_o\ & (\pc[27]~input_o\ & \pc[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder3|full3|and1~combout\,
	datab => \pc[28]~input_o\,
	datac => \pc[27]~input_o\,
	datad => \pc[29]~input_o\,
	combout => \add1|adder2|adder4|full2|and1~combout\);

-- Location: LCCOMB_X26_Y28_N14
\mx1|m1|mux15|out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux15|out~1_combout\ = (\mx1|m1|mux15|out~0_combout\ & (\pc[30]~input_o\ $ (\c11|jump~combout\ $ (!\add1|adder2|adder4|full2|and1~combout\)))) # (!\mx1|m1|mux15|out~0_combout\ & (!\c11|jump~combout\ & (\pc[30]~input_o\ $ 
-- (\add1|adder2|adder4|full2|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[30]~input_o\,
	datab => \mx1|m1|mux15|out~0_combout\,
	datac => \c11|jump~combout\,
	datad => \add1|adder2|adder4|full2|and1~combout\,
	combout => \mx1|m1|mux15|out~1_combout\);

-- Location: IOIBUF_X25_Y0_N1
\pc[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(31),
	o => \pc[31]~input_o\);

-- Location: LCCOMB_X26_Y28_N22
\add1|adder2|adder4|full4|xor2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add1|adder2|adder4|full4|xor2~combout\ = \pc[31]~input_o\ $ (((\pc[30]~input_o\ & \add1|adder2|adder4|full2|and1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[30]~input_o\,
	datab => \add1|adder2|adder4|full2|and1~combout\,
	datac => \pc[31]~input_o\,
	combout => \add1|adder2|adder4|full4|xor2~combout\);

-- Location: LCCOMB_X26_Y28_N10
\add2|adder2|adder4|full3|and1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add2|adder2|adder4|full3|and1~combout\ = (\add1|adder2|adder4|full2|xor2~combout\ & (\add2|adder2|adder4|full1|and1~combout\ & (\add1|adder2|adder4|full2|and1~combout\ $ (\pc[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder4|full2|xor2~combout\,
	datab => \add1|adder2|adder4|full2|and1~combout\,
	datac => \pc[30]~input_o\,
	datad => \add2|adder2|adder4|full1|and1~combout\,
	combout => \add2|adder2|adder4|full3|and1~combout\);

-- Location: LCCOMB_X26_Y28_N28
\mx1|m1|mux16|out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mx1|m1|mux16|out~0_combout\ = (\mx1|m2|mux3|out~7_combout\ & (\add1|adder2|adder4|full4|xor2~combout\)) # (!\mx1|m2|mux3|out~7_combout\ & (!\c11|jump~combout\ & (\add1|adder2|adder4|full4|xor2~combout\ $ (\add2|adder2|adder4|full3|and1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1|adder2|adder4|full4|xor2~combout\,
	datab => \add2|adder2|adder4|full3|and1~combout\,
	datac => \c11|jump~combout\,
	datad => \mx1|m2|mux3|out~7_combout\,
	combout => \mx1|m1|mux16|out~0_combout\);

-- Location: IOIBUF_X52_Y21_N8
\instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

ww_newPc(0) <= \newPc[0]~output_o\;

ww_newPc(1) <= \newPc[1]~output_o\;

ww_newPc(2) <= \newPc[2]~output_o\;

ww_newPc(3) <= \newPc[3]~output_o\;

ww_newPc(4) <= \newPc[4]~output_o\;

ww_newPc(5) <= \newPc[5]~output_o\;

ww_newPc(6) <= \newPc[6]~output_o\;

ww_newPc(7) <= \newPc[7]~output_o\;

ww_newPc(8) <= \newPc[8]~output_o\;

ww_newPc(9) <= \newPc[9]~output_o\;

ww_newPc(10) <= \newPc[10]~output_o\;

ww_newPc(11) <= \newPc[11]~output_o\;

ww_newPc(12) <= \newPc[12]~output_o\;

ww_newPc(13) <= \newPc[13]~output_o\;

ww_newPc(14) <= \newPc[14]~output_o\;

ww_newPc(15) <= \newPc[15]~output_o\;

ww_newPc(16) <= \newPc[16]~output_o\;

ww_newPc(17) <= \newPc[17]~output_o\;

ww_newPc(18) <= \newPc[18]~output_o\;

ww_newPc(19) <= \newPc[19]~output_o\;

ww_newPc(20) <= \newPc[20]~output_o\;

ww_newPc(21) <= \newPc[21]~output_o\;

ww_newPc(22) <= \newPc[22]~output_o\;

ww_newPc(23) <= \newPc[23]~output_o\;

ww_newPc(24) <= \newPc[24]~output_o\;

ww_newPc(25) <= \newPc[25]~output_o\;

ww_newPc(26) <= \newPc[26]~output_o\;

ww_newPc(27) <= \newPc[27]~output_o\;

ww_newPc(28) <= \newPc[28]~output_o\;

ww_newPc(29) <= \newPc[29]~output_o\;

ww_newPc(30) <= \newPc[30]~output_o\;

ww_newPc(31) <= \newPc[31]~output_o\;
END structure;


