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

-- DATE "04/06/2018 16:54:53"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	rand_gen IS
    PORT (
	trigger : IN std_logic;
	clk : IN std_logic;
	rand : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0)
	);
END rand_gen;

-- Design Ports Information


ARCHITECTURE structure OF rand_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rand : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \trigger~combout\ : std_logic;
SIGNAL \rand[0]~reg0_regout\ : std_logic;
SIGNAL \rand[1]~reg0_regout\ : std_logic;
SIGNAL \rand[2]~reg0_regout\ : std_logic;
SIGNAL \rand[3]~reg0_regout\ : std_logic;
SIGNAL count : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_trigger <= trigger;
ww_clk <= clk;
rand <= IEEE.NUMERIC_STD.UNSIGNED(ww_rand);
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

-- Location: LC_X1_Y9_N6
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((!count(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\trigger~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_trigger,
	combout => \trigger~combout\);

-- Location: LC_X1_Y9_N7
\rand[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \rand[0]~reg0_regout\ = DFFEAS((((!count(0)))), GLOBAL(\clk~combout\), VCC, , \trigger~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(0),
	aclr => GND,
	ena => \trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rand[0]~reg0_regout\);

-- Location: LC_X1_Y9_N5
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS(((count(1) $ (count(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(1),
	datad => count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X1_Y9_N9
\rand[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \rand[1]~reg0_regout\ = DFFEAS((((!count(1)))), GLOBAL(\clk~combout\), VCC, , \trigger~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(1),
	aclr => GND,
	ena => \trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rand[1]~reg0_regout\);

-- Location: LC_X1_Y9_N1
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((count(2) $ (((count(0) & count(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(0),
	datac => count(1),
	datad => count(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X1_Y9_N4
\rand[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \rand[2]~reg0_regout\ = DFFEAS((((!count(2)))), GLOBAL(\clk~combout\), VCC, , \trigger~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => count(2),
	aclr => GND,
	ena => \trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rand[2]~reg0_regout\);

-- Location: LC_X1_Y9_N0
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS(count(3) $ (((count(0) & (count(1) & count(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(0),
	datab => count(3),
	datac => count(1),
	datad => count(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X1_Y9_N8
\rand[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \rand[3]~reg0_regout\ = DFFEAS((((!count(3)))), GLOBAL(\clk~combout\), VCC, , \trigger~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(3),
	aclr => GND,
	ena => \trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rand[3]~reg0_regout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rand[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rand[0]~reg0_regout\,
	oe => VCC,
	padio => ww_rand(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rand[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rand[1]~reg0_regout\,
	oe => VCC,
	padio => ww_rand(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rand[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rand[2]~reg0_regout\,
	oe => VCC,
	padio => ww_rand(2));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rand[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rand[3]~reg0_regout\,
	oe => VCC,
	padio => ww_rand(3));
END structure;


