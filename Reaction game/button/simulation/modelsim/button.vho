-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "04/15/2018 00:29:29"

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

ENTITY 	button IS
    PORT (
	clk : IN std_logic;
	click : IN std_logic;
	op : OUT std_logic
	);
END button;

-- Design Ports Information


ARCHITECTURE structure OF button IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_click : std_logic;
SIGNAL ww_op : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \click~combout\ : std_logic;
SIGNAL \rtl_state~regout\ : std_logic;
SIGNAL \op~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_click <= click;
op <= ww_op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\click~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_click,
	combout => \click~combout\);

-- Location: LC_X12_Y3_N3
rtl_state : maxv_lcell
-- Equation(s):
-- \rtl_state~regout\ = DFFEAS(((\click~combout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \click~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state~regout\);

-- Location: LC_X12_Y3_N4
\op~reg0\ : maxv_lcell
-- Equation(s):
-- \op~reg0_regout\ = DFFEAS(((\click~combout\ & ((!\rtl_state~regout\))) # (!\click~combout\ & (\op~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \click~combout\,
	datac => \op~reg0_regout\,
	datad => \rtl_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op~reg0_regout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\op~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \op~reg0_regout\,
	oe => VCC,
	padio => ww_op);
END structure;


