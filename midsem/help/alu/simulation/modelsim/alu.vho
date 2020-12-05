-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Web Edition"

-- DATE "02/15/2018 17:34:42"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : OUT std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information
-- TCLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TRST	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TMS	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TDI	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TDO	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[7]~32_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[17]~3_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X8|c0~2_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X3|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X5|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X8|c0~3_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X3|c0~1_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X1|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X1|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_1|X6|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X8|c0~2_combout\ : std_logic;
SIGNAL \dut|b|mux_1|X2|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X6|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_3|X4|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X8|c0~4_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X8|c0~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[16]~2_combout\ : std_logic;
SIGNAL \dut|a|x1|co~0_combout\ : std_logic;
SIGNAL \dut|a|x2|co~0_combout\ : std_logic;
SIGNAL \dut|a|x3|co~0_combout\ : std_logic;
SIGNAL \dut|a|x4|co~0_combout\ : std_logic;
SIGNAL \dut|a|x5|co~0_combout\ : std_logic;
SIGNAL \dut|a|x6|co~0_combout\ : std_logic;
SIGNAL \dut|a|x8|s~0_combout\ : std_logic;
SIGNAL \dut|a|x8|s~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~8_combout\ : std_logic;
SIGNAL \dut|d|add1|x8|s~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[14]~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~4_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[9]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[8]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~5_combout\ : std_logic;
SIGNAL \dut|d|add1|x2|co~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x3|co~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x4|co~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x5|co~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x6|co~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x8|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~44_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~45_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[13]~10_combout\ : std_logic;
SIGNAL \dut|b|mux_3|X3|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_3|X3|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_3|X3|c0~2_combout\ : std_logic;
SIGNAL \dut|b|mux_1|X5|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X7|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X7|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X7|c0~0_combout\ : std_logic;
SIGNAL \dut|d|add1|x7|s~combout\ : std_logic;
SIGNAL \dut|c|mux_1|X7|c0~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~7_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X7|c0~0_combout\ : std_logic;
SIGNAL \dut|a|x7|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~42_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~43_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X3|c0~3_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X6|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X6|c0~2_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X6|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_3|X6|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_3|X6|c0~1_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X6|c0~2_combout\ : std_logic;
SIGNAL \dut|a|x6|s~combout\ : std_logic;
SIGNAL \dut|d|add1|x6|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~40_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~41_combout\ : std_logic;
SIGNAL \dut|d|add1|x5|s~combout\ : std_logic;
SIGNAL \dut|a|x5|s~combout\ : std_logic;
SIGNAL \dut|b|mux_11|X4|c0~3_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X3|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X5|c0~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~38_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X5|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X5|c0~3_combout\ : std_logic;
SIGNAL \dut|b|mux_1|X5|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X5|c0~1_combout\ : std_logic;
SIGNAL \dut|b|mux_12|X5|c0~2_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X5|c0~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~39_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X4|c0~2_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X4|c0~3_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X4|c0~4_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X4|c0~0_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X4|c0~2_combout\ : std_logic;
SIGNAL \dut|a|x4|s~combout\ : std_logic;
SIGNAL \dut|d|add1|x4|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~36_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~37_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~33_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X3|c0~1_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X3|c0~2_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X3|c0~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~46_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~34_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~35_combout\ : std_logic;
SIGNAL \dut|b|mux_11|X2|c0~0_combout\ : std_logic;
SIGNAL \dut|a|x2|s~combout\ : std_logic;
SIGNAL \dut|d|add1|x2|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~30_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X2|c0~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[10]~6_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X2|c0~1_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X2|c0~2_combout\ : std_logic;
SIGNAL \dut|c|mux_11|X2|c0~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~31_combout\ : std_logic;
SIGNAL \dut|a|x1|s~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \dut|c|mux_3|X5|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_1|X3|c0~0_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X1|c0~2_combout\ : std_logic;
SIGNAL \dut|c|mux_12|X1|c0~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_TRST~combout\ : std_logic;

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_TRST~combout\ <= NOT \TRST~combout\;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: LC_X7_Y7_N0
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS((\TMS~combout\ & (((\scan_instance|current_state.s_DR~regout\)) # (!\scan_instance|current_state.s_idle~regout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , !\TRST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_idle~regout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	ena => \ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X7_Y7_N8
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS(((\scan_instance|current_state.s_DR~regout\ & (!\TMS~combout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , !\TRST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_DR~regout\,
	datac => \TMS~combout\,
	aclr => \TRST~combout\,
	ena => \ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X7_Y7_N9
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = ((!\TMS~combout\ & ((C1_current_state.s_shift) # (\scan_instance|current_state.s_capture~regout\))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , !\TRST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	ena => \ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X7_Y7_N2
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , !\TRST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	ena => \ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X7_Y7_N5
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , !\TRST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	ena => \ALT_INV_TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X7_Y7_N3
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = (((\TMS~combout\) # (\scan_instance|current_state.s_update~regout\))) # (!\scan_instance|current_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X7_Y7_N6
\scan_instance|Out_Reg|L1[7]~32\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[7]~32_combout\ = (\TRST~combout\) # ((\scan_instance|current_state.s_idle~regout\ & (!\TMS~combout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_idle~regout\,
	datab => \TMS~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[7]~32_combout\);

-- Location: LC_X2_Y8_N1
\scan_instance|In_Reg|L1[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(17) = DFFEAS(((\TDI~combout\ & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TDI~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(17));

-- Location: LC_X2_Y8_N2
\scan_instance|In_Reg|L1[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(16) = DFFEAS(((\scan_instance|In_Reg|L1\(17) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(17),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(16));

-- Location: LC_X2_Y8_N4
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS(((\scan_instance|In_Reg|L1\(16) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X2_Y8_N7
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS((\scan_instance|In_Reg|L1\(15) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(15),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X2_Y8_N0
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS(((\scan_instance|In_Reg|L1\(14) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(14),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X2_Y8_N5
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS(((\scan_instance|In_Reg|L1\(13) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(13),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X2_Y8_N6
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS((\scan_instance|In_Reg|L1\(12) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(12),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X3_Y7_N1
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS(((\scan_instance|In_Reg|L1\(11) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(11),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X3_Y7_N8
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(10) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(10),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X3_Y7_N2
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS((\scan_instance|In_Reg|L1\(9) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(9),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X3_Y7_N9
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(8) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(8),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X3_Y6_N4
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((\scan_instance|In_Reg|L1\(7) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(7),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X3_Y6_N6
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|In_Reg|L1\(6) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(6),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X3_Y6_N9
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|In_Reg|L1\(5) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(5),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X3_Y6_N5
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((\scan_instance|In_Reg|L1\(4) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(4),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X3_Y6_N2
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((\scan_instance|In_Reg|L1\(3) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(3),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X3_Y6_N7
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS(((\scan_instance|In_Reg|L1\(2) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(2),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X3_Y6_N0
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS(((\scan_instance|In_Reg|L1\(1) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X7_Y7_N7
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_capture~regout\,
	datab => \TMS~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X2_Y8_N8
\scan_instance|In_Reg|L2[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(17) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(17)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(17),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(17));

-- Location: LC_X4_Y9_N5
\scan_instance|In_Reg|PO[17]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[17]~3_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[17]~3_combout\);

-- Location: LC_X5_Y7_N0
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(0)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X3_Y8_N5
\scan_instance|In_Reg|L2[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(15) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(15)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(15),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(15));

-- Location: LC_X4_Y7_N6
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(1)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X3_Y9_N2
\dut|c|mux_11|X8|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X8|c0~2_combout\ = (\scan_instance|In_Reg|L2\(15) & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(0) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X8|c0~2_combout\);

-- Location: LC_X4_Y7_N5
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS(((\scan_instance|In_Reg|L1\(2) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(2),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X4_Y7_N7
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS(((\scan_instance|In_Reg|L1\(3) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(3),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X4_Y6_N4
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((\scan_instance|In_Reg|L1\(4) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(4),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X4_Y6_N1
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(7)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(7),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X4_Y6_N5
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS(((\scan_instance|In_Reg|L1\(5) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(5),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X4_Y6_N8
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(6)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X4_Y6_N2
\dut|b|mux_11|X3|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X3|c0~0_combout\ = (\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(7) & (!\scan_instance|In_Reg|L2\(5) & !\scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X3|c0~0_combout\);

-- Location: LC_X4_Y6_N6
\dut|b|mux_11|X5|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X5|c0~0_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(4) & \dut|b|mux_11|X3|c0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \dut|b|mux_11|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X5|c0~0_combout\);

-- Location: LC_X3_Y9_N4
\dut|c|mux_11|X8|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X8|c0~3_combout\ = (\dut|c|mux_11|X8|c0~2_combout\ & (\dut|b|mux_11|X5|c0~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut|c|mux_11|X8|c0~2_combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|b|mux_11|X5|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X8|c0~3_combout\);

-- Location: LC_X4_Y6_N3
\dut|b|mux_11|X3|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X3|c0~1_combout\ = (\dut|b|mux_11|X3|c0~0_combout\ & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(3) & !\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \dut|b|mux_11|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X3|c0~1_combout\);

-- Location: LC_X6_Y8_N0
\dut|c|mux_12|X1|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X1|c0~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2)) # ((\scan_instance|In_Reg|L2\(0) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X1|c0~0_combout\);

-- Location: LC_X6_Y9_N8
\dut|c|mux_12|X1|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X1|c0~1_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(1)) # (\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X1|c0~1_combout\);

-- Location: LC_X3_Y8_N1
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(12)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(12),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X3_Y8_N9
\scan_instance|In_Reg|L2[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(13) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(13)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(13));

-- Location: LC_X4_Y8_N5
\dut|b|mux_1|X6|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_1|X6|c0~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(12))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_1|X6|c0~0_combout\);

-- Location: LC_X6_Y7_N0
\dut|b|mux_11|X8|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X8|c0~2_combout\ = (\dut|c|mux_12|X1|c0~1_combout\ & (((\dut|b|mux_1|X6|c0~0_combout\)))) # (!\dut|c|mux_12|X1|c0~1_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut|c|mux_12|X1|c0~1_combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \dut|b|mux_1|X6|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X8|c0~2_combout\);

-- Location: LC_X3_Y8_N4
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(14)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X5_Y7_N8
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(8)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(8),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X3_Y7_N7
\scan_instance|In_Reg|L2[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(9) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(9)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(9),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(9));

-- Location: LC_X5_Y9_N7
\dut|b|mux_1|X2|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_1|X2|c0~0_combout\ = (\scan_instance|In_Reg|L2\(0) & ((\TRST~combout\ & ((\scan_instance|In_Reg|L2\(9)))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(8))))) # (!\scan_instance|In_Reg|L2\(0) & (((\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_1|X2|c0~0_combout\);

-- Location: LC_X4_Y7_N4
\scan_instance|In_Reg|L2[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(10) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(10)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(10),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(10));

-- Location: LC_X3_Y7_N0
\scan_instance|In_Reg|L2[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(11) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(11)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(11),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(11));

-- Location: LC_X5_Y9_N9
\dut|b|mux_12|X6|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X6|c0~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(11))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(10))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X6|c0~0_combout\);

-- Location: LC_X5_Y9_N0
\dut|b|mux_3|X4|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_3|X4|c0~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\dut|b|mux_1|X2|c0~0_combout\)) # (!\scan_instance|In_Reg|L2\(1) & ((\dut|b|mux_12|X6|c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \dut|b|mux_1|X2|c0~0_combout\,
	datad => \dut|b|mux_12|X6|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_3|X4|c0~0_combout\);

-- Location: LC_X6_Y7_N2
\dut|b|mux_11|X8|c0~4\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X8|c0~4_combout\ = (\dut|c|mux_12|X1|c0~1_combout\ & (((\dut|b|mux_3|X4|c0~0_combout\)))) # (!\dut|c|mux_12|X1|c0~1_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut|c|mux_12|X1|c0~1_combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut|b|mux_3|X4|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X8|c0~4_combout\);

-- Location: LC_X6_Y7_N5
\dut|b|mux_11|X8|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X8|c0~3_combout\ = (\dut|b|mux_11|X3|c0~1_combout\ & ((\dut|c|mux_12|X1|c0~0_combout\ & ((\dut|b|mux_11|X8|c0~4_combout\))) # (!\dut|c|mux_12|X1|c0~0_combout\ & (\dut|b|mux_11|X8|c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_11|X3|c0~1_combout\,
	datab => \dut|c|mux_12|X1|c0~0_combout\,
	datac => \dut|b|mux_11|X8|c0~2_combout\,
	datad => \dut|b|mux_11|X8|c0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X8|c0~3_combout\);

-- Location: LC_X2_Y8_N3
\scan_instance|In_Reg|L2[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(16) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(16)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(16),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(16));

-- Location: LC_X2_Y8_N9
\scan_instance|In_Reg|PO[16]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[16]~2_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[16]~2_combout\);

-- Location: LC_X5_Y7_N9
\dut|a|x1|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x1|co~0_combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(8)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x1|co~0_combout\);

-- Location: LC_X5_Y7_N3
\dut|a|x2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x2|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(9)) # (!\dut|a|x1|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(9) & !\dut|a|x1|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \dut|a|x1|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x2|co~0_combout\);

-- Location: LC_X5_Y7_N4
\dut|a|x3|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x3|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(10)) # (\dut|a|x2|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(10) & \dut|a|x2|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \dut|a|x2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x3|co~0_combout\);

-- Location: LC_X5_Y7_N5
\dut|a|x4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x4|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(3) & ((\scan_instance|In_Reg|L2\(11)) # (\dut|a|x3|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(3) & (\scan_instance|In_Reg|L2\(11) & \dut|a|x3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \TRST~combout\,
	datad => \dut|a|x3|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x4|co~0_combout\);

-- Location: LC_X5_Y7_N6
\dut|a|x5|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x5|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4) & ((\scan_instance|In_Reg|L2\(12)) # (\dut|a|x4|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(4) & (\scan_instance|In_Reg|L2\(12) & \dut|a|x4|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut|a|x4|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x5|co~0_combout\);

-- Location: LC_X5_Y7_N7
\dut|a|x6|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x6|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13) & ((\scan_instance|In_Reg|L2\(5)) # (\dut|a|x5|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(13) & (\scan_instance|In_Reg|L2\(5) & \dut|a|x5|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|a|x5|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x6|co~0_combout\);

-- Location: LC_X6_Y7_N3
\dut|a|x8|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x8|s~0_combout\ = ((\scan_instance|In_Reg|L2\(14) & ((\scan_instance|In_Reg|L2\(6)) # (\dut|a|x6|co~0_combout\))) # (!\scan_instance|In_Reg|L2\(14) & (\scan_instance|In_Reg|L2\(6) & \dut|a|x6|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(14),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut|a|x6|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x8|s~0_combout\);

-- Location: LC_X6_Y7_N4
\dut|a|x8|s~1\ : maxv_lcell
-- Equation(s):
-- \dut|a|x8|s~1_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(7) $ (\scan_instance|In_Reg|L2\(15) $ (\dut|a|x8|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(7),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \dut|a|x8|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x8|s~1_combout\);

-- Location: LC_X4_Y6_N0
\scan_instance|In_Reg|PO[6]~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~8_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~8_combout\);

-- Location: LC_X6_Y7_N1
\dut|d|add1|x8|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x8|s~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(15) $ (\scan_instance|In_Reg|L2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \scan_instance|In_Reg|L2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x8|s~0_combout\);

-- Location: LC_X5_Y6_N4
\scan_instance|In_Reg|PO[14]~9\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[14]~9_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[14]~9_combout\);

-- Location: LC_X4_Y7_N8
\scan_instance|In_Reg|PO[1]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~4_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~4_combout\);

-- Location: LC_X3_Y7_N3
\scan_instance|In_Reg|PO[9]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[9]~1_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[9]~1_combout\);

-- Location: LC_X5_Y7_N2
\scan_instance|In_Reg|PO[8]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[8]~0_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[8]~0_combout\);

-- Location: LC_X5_Y7_N1
\scan_instance|In_Reg|PO[0]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~5_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~5_combout\);

-- Location: LC_X4_Y7_N9
\dut|d|add1|x2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x2|co~0_combout\ = (\scan_instance|In_Reg|PO[1]~4_combout\ & ((\scan_instance|In_Reg|PO[9]~1_combout\) # ((\scan_instance|In_Reg|PO[8]~0_combout\) # (!\scan_instance|In_Reg|PO[0]~5_combout\)))) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & 
-- (\scan_instance|In_Reg|PO[9]~1_combout\ & ((\scan_instance|In_Reg|PO[8]~0_combout\) # (!\scan_instance|In_Reg|PO[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \scan_instance|In_Reg|PO[9]~1_combout\,
	datac => \scan_instance|In_Reg|PO[8]~0_combout\,
	datad => \scan_instance|In_Reg|PO[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x2|co~0_combout\);

-- Location: LC_X4_Y7_N3
\dut|d|add1|x3|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x3|co~0_combout\ = (\scan_instance|In_Reg|L2\(10) & ((\dut|d|add1|x2|co~0_combout\) # ((!\TRST~combout\ & !\scan_instance|In_Reg|L2\(2))))) # (!\scan_instance|In_Reg|L2\(10) & (\dut|d|add1|x2|co~0_combout\ & ((\TRST~combout\) # 
-- (!\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|d|add1|x2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x3|co~0_combout\);

-- Location: LC_X4_Y7_N0
\dut|d|add1|x4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x4|co~0_combout\ = (\scan_instance|In_Reg|L2\(11) & ((\dut|d|add1|x3|co~0_combout\) # ((!\TRST~combout\ & !\scan_instance|In_Reg|L2\(3))))) # (!\scan_instance|In_Reg|L2\(11) & (\dut|d|add1|x3|co~0_combout\ & ((\TRST~combout\) # 
-- (!\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|d|add1|x3|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x4|co~0_combout\);

-- Location: LC_X4_Y7_N1
\dut|d|add1|x5|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x5|co~0_combout\ = (\scan_instance|In_Reg|L2\(4) & (\dut|d|add1|x4|co~0_combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(12))))) # (!\scan_instance|In_Reg|L2\(4) & ((\dut|d|add1|x4|co~0_combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut|d|add1|x4|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x5|co~0_combout\);

-- Location: LC_X4_Y7_N2
\dut|d|add1|x6|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x6|co~0_combout\ = (\scan_instance|In_Reg|L2\(5) & (\dut|d|add1|x5|co~0_combout\ & ((\scan_instance|In_Reg|L2\(13)) # (\TRST~combout\)))) # (!\scan_instance|In_Reg|L2\(5) & ((\dut|d|add1|x5|co~0_combout\) # ((\scan_instance|In_Reg|L2\(13) & 
-- !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \TRST~combout\,
	datad => \dut|d|add1|x5|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x6|co~0_combout\);

-- Location: LC_X6_Y7_N6
\dut|d|add1|x8|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x8|s~combout\ = \dut|d|add1|x8|s~0_combout\ $ (((\scan_instance|In_Reg|PO[6]~8_combout\ & (\scan_instance|In_Reg|PO[14]~9_combout\ & \dut|d|add1|x6|co~0_combout\)) # (!\scan_instance|In_Reg|PO[6]~8_combout\ & 
-- ((\scan_instance|In_Reg|PO[14]~9_combout\) # (\dut|d|add1|x6|co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "399c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~8_combout\,
	datab => \dut|d|add1|x8|s~0_combout\,
	datac => \scan_instance|In_Reg|PO[14]~9_combout\,
	datad => \dut|d|add1|x6|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x8|s~combout\);

-- Location: LC_X6_Y7_N7
\scan_instance|Out_Reg|L1~44\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~44_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|In_Reg|PO[16]~2_combout\)) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\ & ((!\dut|d|add1|x8|s~combout\))) # 
-- (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|x8|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|x8|s~1_combout\,
	datad => \dut|d|add1|x8|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~44_combout\);

-- Location: LC_X6_Y7_N8
\scan_instance|Out_Reg|L1~45\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~45_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~44_combout\ & ((\dut|b|mux_11|X8|c0~3_combout\))) # (!\scan_instance|Out_Reg|L1~44_combout\ & (\dut|c|mux_11|X8|c0~3_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|c|mux_11|X8|c0~3_combout\,
	datac => \dut|b|mux_11|X8|c0~3_combout\,
	datad => \scan_instance|Out_Reg|L1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~45_combout\);

-- Location: LC_X6_Y7_N9
\scan_instance|Out_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(7) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~45_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~45_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|L1~45_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(7));

-- Location: LC_X5_Y6_N3
\scan_instance|In_Reg|PO[13]~10\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[13]~10_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[13]~10_combout\);

-- Location: LC_X3_Y7_N6
\dut|b|mux_3|X3|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_3|X3|c0~1_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(9) & (\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_3|X3|c0~1_combout\);

-- Location: LC_X3_Y7_N4
\dut|b|mux_3|X3|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_3|X3|c0~0_combout\ = (!\scan_instance|In_Reg|PO[0]~5_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & (\scan_instance|In_Reg|L2\(10))) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\scan_instance|In_Reg|L2\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \scan_instance|In_Reg|PO[0]~5_combout\,
	datad => \scan_instance|In_Reg|PO[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_3|X3|c0~0_combout\);

-- Location: LC_X3_Y7_N5
\dut|b|mux_3|X3|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_3|X3|c0~2_combout\ = (!\TRST~combout\ & ((\dut|b|mux_3|X3|c0~0_combout\) # ((!\scan_instance|In_Reg|L2\(1) & \dut|b|mux_3|X3|c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \dut|b|mux_3|X3|c0~1_combout\,
	datad => \dut|b|mux_3|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_3|X3|c0~2_combout\);

-- Location: LC_X4_Y8_N1
\dut|b|mux_1|X5|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_1|X5|c0~1_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_1|X5|c0~1_combout\);

-- Location: LC_X5_Y6_N2
\dut|b|mux_12|X7|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X7|c0~0_combout\ = (\dut|c|mux_12|X1|c0~0_combout\ & (((!\dut|c|mux_12|X1|c0~1_combout\)))) # (!\dut|c|mux_12|X1|c0~0_combout\ & ((\dut|c|mux_12|X1|c0~1_combout\ & (\dut|b|mux_1|X5|c0~1_combout\)) # (!\dut|c|mux_12|X1|c0~1_combout\ & 
-- ((\scan_instance|In_Reg|PO[14]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_1|X5|c0~1_combout\,
	datab => \dut|c|mux_12|X1|c0~0_combout\,
	datac => \scan_instance|In_Reg|PO[14]~9_combout\,
	datad => \dut|c|mux_12|X1|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X7|c0~0_combout\);

-- Location: LC_X5_Y6_N8
\dut|b|mux_12|X7|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X7|c0~1_combout\ = (\dut|c|mux_12|X1|c0~0_combout\ & ((\dut|b|mux_12|X7|c0~0_combout\ & (\scan_instance|In_Reg|PO[13]~10_combout\)) # (!\dut|b|mux_12|X7|c0~0_combout\ & ((\dut|b|mux_3|X3|c0~2_combout\))))) # (!\dut|c|mux_12|X1|c0~0_combout\ 
-- & (((\dut|b|mux_12|X7|c0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[13]~10_combout\,
	datab => \dut|c|mux_12|X1|c0~0_combout\,
	datac => \dut|b|mux_3|X3|c0~2_combout\,
	datad => \dut|b|mux_12|X7|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X7|c0~1_combout\);

-- Location: LC_X5_Y6_N9
\dut|b|mux_11|X7|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X7|c0~0_combout\ = ((\dut|b|mux_11|X3|c0~1_combout\ & ((\dut|b|mux_12|X7|c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|b|mux_11|X3|c0~1_combout\,
	datad => \dut|b|mux_12|X7|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X7|c0~0_combout\);

-- Location: LC_X5_Y6_N0
\dut|d|add1|x7|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x7|s~combout\ = \dut|d|add1|x6|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(14) $ (\scan_instance|In_Reg|L2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(14),
	datac => \dut|d|add1|x6|co~0_combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x7|s~combout\);

-- Location: LC_X3_Y8_N0
\dut|c|mux_1|X7|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_1|X7|c0~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(14))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(15)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_1|X7|c0~0_combout\);

-- Location: LC_X5_Y9_N4
\scan_instance|In_Reg|PO[2]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~7_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~7_combout\);

-- Location: LC_X4_Y6_N9
\dut|c|mux_11|X7|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X7|c0~0_combout\ = (\dut|b|mux_11|X5|c0~0_combout\ & (\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|c|mux_1|X7|c0~0_combout\ & !\scan_instance|In_Reg|PO[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_11|X5|c0~0_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut|c|mux_1|X7|c0~0_combout\,
	datad => \scan_instance|In_Reg|PO[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X7|c0~0_combout\);

-- Location: LC_X5_Y6_N1
\dut|a|x7|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|x7|s~combout\ = \dut|a|x6|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(14) $ (\scan_instance|In_Reg|L2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(14),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut|a|x6|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x7|s~combout\);

-- Location: LC_X5_Y6_N5
\scan_instance|Out_Reg|L1~42\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~42_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (\scan_instance|In_Reg|PO[17]~3_combout\)) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|In_Reg|PO[17]~3_combout\ & (\dut|c|mux_11|X7|c0~0_combout\)) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\dut|a|x7|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|c|mux_11|X7|c0~0_combout\,
	datad => \dut|a|x7|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~42_combout\);

-- Location: LC_X5_Y6_N6
\scan_instance|Out_Reg|L1~43\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~43_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~42_combout\ & (\dut|b|mux_11|X7|c0~0_combout\)) # (!\scan_instance|Out_Reg|L1~42_combout\ & ((!\dut|d|add1|x7|s~combout\))))) # 
-- (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \dut|b|mux_11|X7|c0~0_combout\,
	datac => \dut|d|add1|x7|s~combout\,
	datad => \scan_instance|Out_Reg|L1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~43_combout\);

-- Location: LC_X5_Y6_N7
\scan_instance|Out_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(6) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~43_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(7))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~43_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(7),
	datad => \scan_instance|Out_Reg|L1~43_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(6));

-- Location: LC_X3_Y9_N5
\dut|c|mux_12|X3|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X3|c0~3_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X3|c0~3_combout\);

-- Location: LC_X4_Y8_N6
\dut|b|mux_12|X6|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X6|c0~1_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(13))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(12)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X6|c0~1_combout\);

-- Location: LC_X4_Y8_N3
\dut|b|mux_12|X6|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X6|c0~2_combout\ = (!\scan_instance|In_Reg|PO[2]~7_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|b|mux_12|X6|c0~1_combout\)) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut|b|mux_12|X6|c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut|b|mux_12|X6|c0~1_combout\,
	datac => \dut|b|mux_12|X6|c0~0_combout\,
	datad => \scan_instance|In_Reg|PO[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X6|c0~2_combout\);

-- Location: LC_X4_Y8_N4
\dut|b|mux_11|X6|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X6|c0~0_combout\ = (\dut|b|mux_11|X5|c0~0_combout\ & ((\dut|b|mux_12|X6|c0~2_combout\) # ((\dut|b|mux_1|X2|c0~0_combout\ & \dut|c|mux_12|X3|c0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_1|X2|c0~0_combout\,
	datab => \dut|c|mux_12|X3|c0~3_combout\,
	datac => \dut|b|mux_11|X5|c0~0_combout\,
	datad => \dut|b|mux_12|X6|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X6|c0~0_combout\);

-- Location: LC_X4_Y8_N9
\dut|c|mux_3|X6|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_3|X6|c0~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(13))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(15)))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_3|X6|c0~0_combout\);

-- Location: LC_X4_Y8_N0
\dut|c|mux_3|X6|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_3|X6|c0~1_combout\ = (\scan_instance|In_Reg|PO[0]~5_combout\ & (\scan_instance|In_Reg|L2\(14) & (\scan_instance|In_Reg|PO[1]~4_combout\))) # (!\scan_instance|In_Reg|PO[0]~5_combout\ & (((\dut|c|mux_3|X6|c0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \scan_instance|In_Reg|PO[0]~5_combout\,
	datad => \dut|c|mux_3|X6|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_3|X6|c0~1_combout\);

-- Location: LC_X6_Y9_N9
\dut|c|mux_11|X6|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X6|c0~2_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & (\dut|c|mux_3|X6|c0~1_combout\ & \dut|b|mux_11|X3|c0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \dut|c|mux_3|X6|c0~1_combout\,
	datad => \dut|b|mux_11|X3|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X6|c0~2_combout\);

-- Location: LC_X5_Y8_N6
\dut|a|x6|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|x6|s~combout\ = \dut|a|x5|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(5) $ (\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \TRST~combout\,
	datac => \dut|a|x5|co~0_combout\,
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x6|s~combout\);

-- Location: LC_X5_Y8_N8
\dut|d|add1|x6|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x6|s~combout\ = \dut|d|add1|x5|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13) $ (\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|d|add1|x5|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x6|s~combout\);

-- Location: LC_X5_Y8_N9
\scan_instance|Out_Reg|L1~40\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~40_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|In_Reg|PO[16]~2_combout\)) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\ & ((!\dut|d|add1|x6|s~combout\))) # 
-- (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|x6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|x6|s~combout\,
	datad => \dut|d|add1|x6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~40_combout\);

-- Location: LC_X5_Y8_N0
\scan_instance|Out_Reg|L1~41\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~41_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~40_combout\ & (\dut|b|mux_11|X6|c0~0_combout\)) # (!\scan_instance|Out_Reg|L1~40_combout\ & ((\dut|c|mux_11|X6|c0~2_combout\))))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|b|mux_11|X6|c0~0_combout\,
	datac => \dut|c|mux_11|X6|c0~2_combout\,
	datad => \scan_instance|Out_Reg|L1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~41_combout\);

-- Location: LC_X5_Y8_N1
\scan_instance|Out_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(5) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~41_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(6))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~41_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(6),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~41_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(5));

-- Location: LC_X5_Y8_N4
\dut|d|add1|x5|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x5|s~combout\ = \dut|d|add1|x4|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4) $ (\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \dut|d|add1|x4|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x5|s~combout\);

-- Location: LC_X5_Y8_N7
\dut|a|x5|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|x5|s~combout\ = \dut|a|x4|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4) $ (\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \dut|a|x4|co~0_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x5|s~combout\);

-- Location: LC_X4_Y6_N7
\dut|b|mux_11|X4|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X4|c0~3_combout\ = ((\dut|b|mux_11|X5|c0~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|b|mux_11|X5|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X4|c0~3_combout\);

-- Location: LC_X3_Y8_N7
\dut|c|mux_12|X3|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X3|c0~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(12))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(13)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X3|c0~0_combout\);

-- Location: LC_X4_Y8_N7
\dut|c|mux_11|X5|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X5|c0~0_combout\ = (\dut|b|mux_11|X4|c0~3_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut|c|mux_12|X3|c0~0_combout\))) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|c|mux_1|X7|c0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_1|X7|c0~0_combout\,
	datab => \dut|b|mux_11|X4|c0~3_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut|c|mux_12|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X5|c0~0_combout\);

-- Location: LC_X5_Y8_N5
\scan_instance|Out_Reg|L1~38\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~38_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\) # ((\dut|c|mux_11|X5|c0~0_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (!\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- (\dut|a|x5|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|x5|s~combout\,
	datad => \dut|c|mux_11|X5|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~38_combout\);

-- Location: LC_X5_Y9_N1
\dut|b|mux_12|X5|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X5|c0~0_combout\ = (\scan_instance|In_Reg|L2\(8) & (((!\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datac => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X5|c0~0_combout\);

-- Location: LC_X5_Y9_N5
\dut|b|mux_12|X5|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X5|c0~3_combout\ = (\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut|b|mux_12|X5|c0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut|b|mux_12|X5|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X5|c0~3_combout\);

-- Location: LC_X3_Y9_N0
\dut|b|mux_1|X5|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_1|X5|c0~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(12))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(11))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_1|X5|c0~0_combout\);

-- Location: LC_X3_Y9_N7
\dut|b|mux_12|X5|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X5|c0~1_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(10))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(9)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X5|c0~1_combout\);

-- Location: LC_X3_Y9_N9
\dut|b|mux_12|X5|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_12|X5|c0~2_combout\ = (!\scan_instance|In_Reg|PO[2]~7_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|b|mux_1|X5|c0~0_combout\)) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut|b|mux_12|X5|c0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut|b|mux_1|X5|c0~0_combout\,
	datac => \dut|b|mux_12|X5|c0~1_combout\,
	datad => \scan_instance|In_Reg|PO[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_12|X5|c0~2_combout\);

-- Location: LC_X5_Y9_N2
\dut|b|mux_11|X5|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X5|c0~1_combout\ = (!\TRST~combout\ & (\dut|b|mux_11|X3|c0~1_combout\ & ((\dut|b|mux_12|X5|c0~3_combout\) # (\dut|b|mux_12|X5|c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut|b|mux_11|X3|c0~1_combout\,
	datac => \dut|b|mux_12|X5|c0~3_combout\,
	datad => \dut|b|mux_12|X5|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X5|c0~1_combout\);

-- Location: LC_X5_Y8_N2
\scan_instance|Out_Reg|L1~39\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~39_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~38_combout\ & ((\dut|b|mux_11|X5|c0~1_combout\))) # (!\scan_instance|Out_Reg|L1~38_combout\ & (!\dut|d|add1|x5|s~combout\)))) # 
-- (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f434",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|d|add1|x5|s~combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \scan_instance|Out_Reg|L1~38_combout\,
	datad => \dut|b|mux_11|X5|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~39_combout\);

-- Location: LC_X5_Y8_N3
\scan_instance|Out_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(4) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~39_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(5))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~39_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(5),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~39_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(4));

-- Location: LC_X4_Y8_N2
\dut|c|mux_12|X4|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X4|c0~2_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(11))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(12))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X4|c0~2_combout\);

-- Location: LC_X3_Y8_N2
\dut|c|mux_12|X4|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X4|c0~3_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(13))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(14))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X4|c0~3_combout\);

-- Location: LC_X3_Y8_N3
\dut|c|mux_12|X4|c0~4\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X4|c0~4_combout\ = (\scan_instance|In_Reg|L2\(1) & ((\TRST~combout\ & (\dut|c|mux_12|X4|c0~2_combout\)) # (!\TRST~combout\ & ((\dut|c|mux_12|X4|c0~3_combout\))))) # (!\scan_instance|In_Reg|L2\(1) & (((\dut|c|mux_12|X4|c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut|c|mux_12|X4|c0~2_combout\,
	datad => \dut|c|mux_12|X4|c0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X4|c0~4_combout\);

-- Location: LC_X3_Y9_N3
\dut|c|mux_11|X4|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X4|c0~0_combout\ = (\dut|b|mux_11|X5|c0~0_combout\ & ((\scan_instance|In_Reg|PO[2]~7_combout\ & (\dut|c|mux_11|X8|c0~2_combout\)) # (!\scan_instance|In_Reg|PO[2]~7_combout\ & ((\dut|c|mux_12|X4|c0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_11|X5|c0~0_combout\,
	datab => \dut|c|mux_11|X8|c0~2_combout\,
	datac => \scan_instance|In_Reg|PO[2]~7_combout\,
	datad => \dut|c|mux_12|X4|c0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X4|c0~0_combout\);

-- Location: LC_X4_Y8_N8
\dut|b|mux_11|X4|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X4|c0~2_combout\ = (\dut|b|mux_11|X4|c0~3_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|b|mux_12|X6|c0~0_combout\)) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut|b|mux_1|X2|c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut|b|mux_12|X6|c0~0_combout\,
	datac => \dut|b|mux_11|X4|c0~3_combout\,
	datad => \dut|b|mux_1|X2|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X4|c0~2_combout\);

-- Location: LC_X4_Y9_N6
\dut|a|x4|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|x4|s~combout\ = \dut|a|x3|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f096",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \dut|a|x3|co~0_combout\,
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x4|s~combout\);

-- Location: LC_X4_Y9_N7
\dut|d|add1|x4|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x4|s~combout\ = \dut|d|add1|x3|co~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|d|add1|x3|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x4|s~combout\);

-- Location: LC_X4_Y9_N8
\scan_instance|Out_Reg|L1~36\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~36_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|In_Reg|PO[17]~3_combout\) # ((!\dut|d|add1|x4|s~combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (!\scan_instance|In_Reg|PO[17]~3_combout\ & 
-- (\dut|a|x4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|a|x4|s~combout\,
	datad => \dut|d|add1|x4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~36_combout\);

-- Location: LC_X4_Y9_N9
\scan_instance|Out_Reg|L1~37\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~37_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~36_combout\ & ((\dut|b|mux_11|X4|c0~2_combout\))) # (!\scan_instance|Out_Reg|L1~36_combout\ & (\dut|c|mux_11|X4|c0~0_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|c|mux_11|X4|c0~0_combout\,
	datac => \dut|b|mux_11|X4|c0~2_combout\,
	datad => \scan_instance|Out_Reg|L1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~37_combout\);

-- Location: LC_X4_Y9_N0
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~37_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(4))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~37_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(4),
	datab => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~37_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X4_Y9_N1
\scan_instance|Out_Reg|L1~33\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~33_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|In_Reg|PO[17]~3_combout\) # (!\dut|d|add1|x2|co~0_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|x2|co~0_combout\ & 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \dut|a|x2|co~0_combout\,
	datac => \scan_instance|In_Reg|PO[17]~3_combout\,
	datad => \dut|d|add1|x2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~33_combout\);

-- Location: LC_X3_Y9_N1
\dut|c|mux_12|X3|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X3|c0~1_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(10))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X3|c0~1_combout\);

-- Location: LC_X3_Y9_N8
\dut|c|mux_12|X3|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X3|c0~2_combout\ = (!\scan_instance|In_Reg|PO[2]~7_combout\ & ((\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|c|mux_12|X3|c0~1_combout\)) # (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut|c|mux_12|X3|c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut|c|mux_12|X3|c0~1_combout\,
	datac => \scan_instance|In_Reg|PO[2]~7_combout\,
	datad => \dut|c|mux_12|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X3|c0~2_combout\);

-- Location: LC_X3_Y9_N6
\dut|c|mux_11|X3|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X3|c0~0_combout\ = (\dut|b|mux_11|X5|c0~0_combout\ & ((\dut|c|mux_12|X3|c0~2_combout\) # ((\dut|c|mux_1|X7|c0~0_combout\ & \dut|c|mux_12|X3|c0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_1|X7|c0~0_combout\,
	datab => \dut|b|mux_11|X5|c0~0_combout\,
	datac => \dut|c|mux_12|X3|c0~3_combout\,
	datad => \dut|c|mux_12|X3|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X3|c0~0_combout\);

-- Location: LC_X3_Y8_N6
\scan_instance|Out_Reg|L1~46\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~46_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) $ (((!\scan_instance|In_Reg|L2\(17) & \scan_instance|In_Reg|L2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~46_combout\);

-- Location: LC_X4_Y9_N2
\scan_instance|Out_Reg|L1~34\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~34_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\dut|b|mux_11|X3|c0~1_combout\ & (!\scan_instance|Out_Reg|L1~46_combout\ & \dut|b|mux_3|X3|c0~2_combout\))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & 
-- (((\scan_instance|Out_Reg|L1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|b|mux_11|X3|c0~1_combout\,
	datac => \scan_instance|Out_Reg|L1~46_combout\,
	datad => \dut|b|mux_3|X3|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~34_combout\);

-- Location: LC_X4_Y9_N3
\scan_instance|Out_Reg|L1~35\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~35_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~33_combout\ & ((\scan_instance|Out_Reg|L1~34_combout\))) # (!\scan_instance|Out_Reg|L1~33_combout\ & (\dut|c|mux_11|X3|c0~0_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|Out_Reg|L1~33_combout\ $ (((\scan_instance|Out_Reg|L1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b964",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|Out_Reg|L1~33_combout\,
	datac => \dut|c|mux_11|X3|c0~0_combout\,
	datad => \scan_instance|Out_Reg|L1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~35_combout\);

-- Location: LC_X4_Y9_N4
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~35_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(3))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~35_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(3),
	datad => \scan_instance|Out_Reg|L1~35_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X5_Y9_N8
\dut|b|mux_11|X2|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|mux_11|X2|c0~0_combout\ = (\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut|b|mux_11|X5|c0~0_combout\ & (!\scan_instance|In_Reg|PO[2]~7_combout\ & \dut|b|mux_1|X2|c0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut|b|mux_11|X5|c0~0_combout\,
	datac => \scan_instance|In_Reg|PO[2]~7_combout\,
	datad => \dut|b|mux_1|X2|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|mux_11|X2|c0~0_combout\);

-- Location: LC_X5_Y9_N6
\dut|a|x2|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|x2|s~combout\ = \dut|a|x1|co~0_combout\ $ (((\TRST~combout\) # (\scan_instance|In_Reg|L2\(9) $ (!\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "06f9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \TRST~combout\,
	datad => \dut|a|x1|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x2|s~combout\);

-- Location: LC_X6_Y9_N1
\dut|d|add1|x2|s\ : maxv_lcell
-- Equation(s):
-- \dut|d|add1|x2|s~combout\ = \scan_instance|In_Reg|PO[9]~1_combout\ $ (\scan_instance|In_Reg|PO[1]~4_combout\ $ (((\scan_instance|In_Reg|PO[8]~0_combout\) # (!\scan_instance|In_Reg|PO[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c639",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~5_combout\,
	datab => \scan_instance|In_Reg|PO[9]~1_combout\,
	datac => \scan_instance|In_Reg|PO[8]~0_combout\,
	datad => \scan_instance|In_Reg|PO[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|add1|x2|s~combout\);

-- Location: LC_X6_Y9_N0
\scan_instance|Out_Reg|L1~30\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~30_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|In_Reg|PO[16]~2_combout\)) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\ & ((\dut|d|add1|x2|s~combout\))) # 
-- (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|x2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|x2|s~combout\,
	datad => \dut|d|add1|x2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~30_combout\);

-- Location: LC_X5_Y9_N3
\dut|c|mux_11|X2|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X2|c0~0_combout\ = ((\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(12))) # (!\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X2|c0~0_combout\);

-- Location: LC_X6_Y9_N7
\scan_instance|In_Reg|PO[10]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[10]~6_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[10]~6_combout\);

-- Location: LC_X6_Y9_N2
\dut|c|mux_11|X2|c0~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X2|c0~1_combout\ = (\dut|c|mux_12|X1|c0~1_combout\ & (((\dut|c|mux_12|X1|c0~0_combout\)))) # (!\dut|c|mux_12|X1|c0~1_combout\ & ((\dut|c|mux_12|X1|c0~0_combout\ & ((\scan_instance|In_Reg|PO[10]~6_combout\))) # 
-- (!\dut|c|mux_12|X1|c0~0_combout\ & (\scan_instance|In_Reg|PO[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_12|X1|c0~1_combout\,
	datab => \scan_instance|In_Reg|PO[9]~1_combout\,
	datac => \scan_instance|In_Reg|PO[10]~6_combout\,
	datad => \dut|c|mux_12|X1|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X2|c0~1_combout\);

-- Location: LC_X6_Y9_N3
\dut|c|mux_11|X2|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X2|c0~2_combout\ = (\dut|c|mux_12|X1|c0~1_combout\ & ((\dut|c|mux_11|X2|c0~1_combout\ & ((\dut|c|mux_3|X6|c0~1_combout\))) # (!\dut|c|mux_11|X2|c0~1_combout\ & (\dut|c|mux_11|X2|c0~0_combout\)))) # (!\dut|c|mux_12|X1|c0~1_combout\ & 
-- (((\dut|c|mux_11|X2|c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_12|X1|c0~1_combout\,
	datab => \dut|c|mux_11|X2|c0~0_combout\,
	datac => \dut|c|mux_3|X6|c0~1_combout\,
	datad => \dut|c|mux_11|X2|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X2|c0~2_combout\);

-- Location: LC_X6_Y9_N4
\dut|c|mux_11|X2|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_11|X2|c0~3_combout\ = (\dut|b|mux_11|X3|c0~1_combout\ & (\dut|c|mux_11|X2|c0~2_combout\ & ((!\TRST~combout\) # (!\dut|c|mux_12|X1|c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_12|X1|c0~1_combout\,
	datab => \dut|b|mux_11|X3|c0~1_combout\,
	datac => \TRST~combout\,
	datad => \dut|c|mux_11|X2|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_11|X2|c0~3_combout\);

-- Location: LC_X6_Y9_N5
\scan_instance|Out_Reg|L1~31\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~31_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~30_combout\ & (\dut|b|mux_11|X2|c0~0_combout\)) # (!\scan_instance|Out_Reg|L1~30_combout\ & ((\dut|c|mux_11|X2|c0~3_combout\))))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|mux_11|X2|c0~0_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \scan_instance|Out_Reg|L1~30_combout\,
	datad => \dut|c|mux_11|X2|c0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~31_combout\);

-- Location: LC_X6_Y9_N6
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~31_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(2))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~31_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[7]~32_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(2),
	datad => \scan_instance|Out_Reg|L1~31_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X6_Y8_N9
\dut|a|x1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|x1|s~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) $ (\scan_instance|In_Reg|L2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|x1|s~0_combout\);

-- Location: LC_X6_Y8_N2
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = (!\scan_instance|In_Reg|L2\(2) & (((!\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X3_Y8_N8
\dut|c|mux_3|X5|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_3|X5|c0~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\dut|c|mux_1|X7|c0~0_combout\)) # (!\scan_instance|In_Reg|L2\(1) & ((\dut|c|mux_12|X3|c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut|c|mux_1|X7|c0~0_combout\,
	datad => \dut|c|mux_12|X3|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_3|X5|c0~0_combout\);

-- Location: LC_X6_Y8_N8
\dut|c|mux_1|X3|c0~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_1|X3|c0~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(11)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_1|X3|c0~0_combout\);

-- Location: LC_X6_Y8_N1
\dut|c|mux_12|X1|c0~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X1|c0~2_combout\ = (\dut|c|mux_12|X1|c0~0_combout\ & (((!\dut|c|mux_12|X1|c0~1_combout\)))) # (!\dut|c|mux_12|X1|c0~0_combout\ & ((\dut|c|mux_12|X1|c0~1_combout\ & (\dut|c|mux_1|X3|c0~0_combout\)) # (!\dut|c|mux_12|X1|c0~1_combout\ & 
-- ((\scan_instance|In_Reg|PO[8]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|mux_1|X3|c0~0_combout\,
	datab => \dut|c|mux_12|X1|c0~0_combout\,
	datac => \scan_instance|In_Reg|PO[8]~0_combout\,
	datad => \dut|c|mux_12|X1|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X1|c0~2_combout\);

-- Location: LC_X6_Y8_N3
\dut|c|mux_12|X1|c0~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|mux_12|X1|c0~3_combout\ = (\dut|c|mux_12|X1|c0~0_combout\ & ((\dut|c|mux_12|X1|c0~2_combout\ & (\scan_instance|In_Reg|PO[9]~1_combout\)) # (!\dut|c|mux_12|X1|c0~2_combout\ & ((\dut|c|mux_3|X5|c0~0_combout\))))) # (!\dut|c|mux_12|X1|c0~0_combout\ & 
-- (((\dut|c|mux_12|X1|c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[9]~1_combout\,
	datab => \dut|c|mux_12|X1|c0~0_combout\,
	datac => \dut|c|mux_3|X5|c0~0_combout\,
	datad => \dut|c|mux_12|X1|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|mux_12|X1|c0~3_combout\);

-- Location: LC_X6_Y8_N4
\scan_instance|Out_Reg|mux1[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~1_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (\scan_instance|Out_Reg|mux1[0]~0_combout\ & (\dut|b|mux_12|X5|c0~0_combout\))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\dut|c|mux_12|X1|c0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|b|mux_12|X5|c0~0_combout\,
	datad => \dut|c|mux_12|X1|c0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~1_combout\);

-- Location: LC_X6_Y8_N5
\scan_instance|Out_Reg|mux1[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~2_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\dut|b|mux_11|X3|c0~1_combout\ & ((\scan_instance|Out_Reg|mux1[0]~1_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\dut|a|x1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|b|mux_11|X3|c0~1_combout\,
	datac => \dut|a|x1|s~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~2_combout\);

-- Location: LC_X6_Y8_N6
\scan_instance|Out_Reg|mux1[0]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~3_combout\ = (\TRST~combout\ & (((\scan_instance|Out_Reg|mux1[0]~2_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(1))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1\(1),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~3_combout\);

-- Location: LC_X6_Y8_N7
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & ((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~3_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(0),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector0~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~3_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


