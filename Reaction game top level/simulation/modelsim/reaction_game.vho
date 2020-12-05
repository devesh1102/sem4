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

-- DATE "04/15/2018 01:46:05"

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

ENTITY 	test_game1 IS
    PORT (
	clk : IN std_logic;
	mreset : IN std_logic;
	react : IN std_logic;
	led : BUFFER std_logic
	);
END test_game1;

-- Design Ports Information


ARCHITECTURE structure OF test_game1 IS
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
SIGNAL ww_mreset : std_logic;
SIGNAL ww_react : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \react~combout\ : std_logic;
SIGNAL \react_button|rtl_state~regout\ : std_logic;
SIGNAL \react_button|op~regout\ : std_logic;
SIGNAL \mreset~combout\ : std_logic;
SIGNAL \master_reset_button|rtl_state~regout\ : std_logic;
SIGNAL \master_reset_button|op~regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \soft_reset~combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \counter1|Add0~0_combout\ : std_logic;
SIGNAL \counter1|count[3]~0_combout\ : std_logic;
SIGNAL \start_c1~combout\ : std_logic;
SIGNAL \counter1|next_count_var~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \rst_c1~combout\ : std_logic;
SIGNAL \counter1|rtl_state~regout\ : std_logic;
SIGNAL \trig~combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \next_rtl_state.HALT_334~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \rtl_state.HALT~regout\ : std_logic;
SIGNAL \start_c2~combout\ : std_logic;
SIGNAL \counter2|next_count_var~0_combout\ : std_logic;
SIGNAL \rst_c2~combout\ : std_logic;
SIGNAL \counter2|rtl_state~regout\ : std_logic;
SIGNAL \counter2|Add0~0_combout\ : std_logic;
SIGNAL \counter2|count[3]~0_combout\ : std_logic;
SIGNAL \counter2|done~0_combout\ : std_logic;
SIGNAL \next_rtl_state~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \next_rtl_state.LED_OFF_288~combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \rtl_state.LED_OFF~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_rtl_state.LED_ON_311~combout\ : std_logic;
SIGNAL \next_rtl_state~1_combout\ : std_logic;
SIGNAL \rtl_state.LED_ON~regout\ : std_logic;
SIGNAL \randgen|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL trn : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \randgen|rand\ : std_logic_vector(3 DOWNTO 0);
SIGNAL turn : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter1|count_out\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_mreset <= mreset;
ww_react <= react;
led <= ww_led;
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

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\react~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_react,
	combout => \react~combout\);

-- Location: LC_X6_Y5_N2
\react_button|rtl_state\ : maxv_lcell
-- Equation(s):
-- \react_button|rtl_state~regout\ = DFFEAS(((\react~combout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \react~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \react_button|rtl_state~regout\);

-- Location: LC_X6_Y6_N6
\react_button|op\ : maxv_lcell
-- Equation(s):
-- \react_button|op~regout\ = DFFEAS(((\react~combout\ & ((!\react_button|rtl_state~regout\))) # (!\react~combout\ & (\react_button|op~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \react_button|op~regout\,
	datac => \react~combout\,
	datad => \react_button|rtl_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \react_button|op~regout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mreset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mreset,
	combout => \mreset~combout\);

-- Location: LC_X5_Y6_N8
\master_reset_button|rtl_state\ : maxv_lcell
-- Equation(s):
-- \master_reset_button|rtl_state~regout\ = DFFEAS(((\mreset~combout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \mreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_reset_button|rtl_state~regout\);

-- Location: LC_X5_Y6_N2
\master_reset_button|op\ : maxv_lcell
-- Equation(s):
-- \master_reset_button|op~regout\ = DFFEAS(((\mreset~combout\ & ((!\master_reset_button|rtl_state~regout\))) # (!\mreset~combout\ & (\master_reset_button|op~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \mreset~combout\,
	datac => \master_reset_button|op~regout\,
	datad => \master_reset_button|rtl_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_reset_button|op~regout\);

-- Location: LC_X4_Y7_N1
\Selector14~0\ : maxv_lcell
-- Equation(s):
-- \Selector14~0_combout\ = ((!turn(0) & ((\rtl_state.LED_ON~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => turn(0),
	datad => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X6_Y6_N2
\Selector16~0\ : maxv_lcell
-- Equation(s):
-- \Selector16~0_combout\ = (\rtl_state.LED_OFF~regout\ & ((trn(3)) # ((\react_button|op~regout\ & !\master_reset_button|op~regout\)))) # (!\rtl_state.LED_OFF~regout\ & (((\master_reset_button|op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_OFF~regout\,
	datab => trn(3),
	datac => \react_button|op~regout\,
	datad => \master_reset_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector16~0_combout\);

-- Location: LC_X7_Y6_N4
\Selector16~1\ : maxv_lcell
-- Equation(s):
-- \Selector16~1_combout\ = ((\rtl_state.LED_ON~regout\ & ((!\counter2|done~0_combout\))) # (!\rtl_state.LED_ON~regout\ & (\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~0_combout\,
	datac => \rtl_state.LED_ON~regout\,
	datad => \counter2|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector16~1_combout\);

-- Location: LC_X7_Y6_N1
\Selector15~0\ : maxv_lcell
-- Equation(s):
-- \Selector15~0_combout\ = ((\rtl_state.LED_ON~regout\) # ((\rtl_state.LED_OFF~regout\ & !trn(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rtl_state.LED_OFF~regout\,
	datac => \rtl_state.LED_ON~regout\,
	datad => trn(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector15~0_combout\);

-- Location: LC_X7_Y6_N2
soft_reset : maxv_lcell
-- Equation(s):
-- \soft_reset~combout\ = ((\Selector16~1_combout\ & ((\Selector15~0_combout\))) # (!\Selector16~1_combout\ & (\soft_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \soft_reset~combout\,
	datac => \Selector16~1_combout\,
	datad => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \soft_reset~combout\);

-- Location: LC_X4_Y7_N7
\Add0~2\ : maxv_lcell
-- Equation(s):
-- \Add0~2_combout\ = ((turn(1) $ (turn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => turn(1),
	datad => turn(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: LC_X5_Y7_N3
\turn[1]\ : maxv_lcell
-- Equation(s):
-- turn(1) = DFFEAS((trn(1) & (((\Add0~2_combout\ & \Selector7~0_combout\)) # (!\Selector17~0_combout\))) # (!trn(1) & (\Add0~2_combout\ & (\Selector7~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => trn(1),
	datab => \Add0~2_combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(1));

-- Location: LC_X4_Y7_N9
\Selector18~0\ : maxv_lcell
-- Equation(s):
-- \Selector18~0_combout\ = ((\rtl_state.LED_ON~regout\ & (turn(0) $ (turn(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => turn(0),
	datac => turn(1),
	datad => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector18~0_combout\);

-- Location: LC_X5_Y7_N0
\trn[1]\ : maxv_lcell
-- Equation(s):
-- trn(1) = ((GLOBAL(\Selector17~0_combout\) & ((\Selector18~0_combout\))) # (!GLOBAL(\Selector17~0_combout\) & (trn(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => trn(1),
	datac => \Selector18~0_combout\,
	datad => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => trn(1));

-- Location: LC_X4_Y7_N0
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = (turn(2) $ (((turn(1) & turn(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => turn(2),
	datac => turn(1),
	datad => turn(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X5_Y7_N9
\turn[2]\ : maxv_lcell
-- Equation(s):
-- turn(2) = DFFEAS((\Add0~1_combout\ & ((\Selector7~0_combout\) # ((trn(2) & !\Selector17~0_combout\)))) # (!\Add0~1_combout\ & (trn(2) & ((!\Selector17~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~1_combout\,
	datab => trn(2),
	datac => \Selector7~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(2));

-- Location: LC_X5_Y7_N4
\Selector19~0\ : maxv_lcell
-- Equation(s):
-- \Selector19~0_combout\ = (\rtl_state.LED_ON~regout\ & (turn(2) $ (((turn(0) & turn(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => turn(0),
	datab => turn(2),
	datac => turn(1),
	datad => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~0_combout\);

-- Location: LC_X5_Y7_N2
\trn[2]\ : maxv_lcell
-- Equation(s):
-- trn(2) = ((GLOBAL(\Selector17~0_combout\) & ((\Selector19~0_combout\))) # (!GLOBAL(\Selector17~0_combout\) & (trn(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => trn(2),
	datac => \Selector19~0_combout\,
	datad => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => trn(2));

-- Location: LC_X6_Y7_N3
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = (!trn(3) & (((!trn(2)) # (!trn(0))) # (!trn(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => trn(1),
	datab => trn(0),
	datac => trn(3),
	datad => trn(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X6_Y7_N2
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\react_button|op~regout\ & (\rtl_state.LED_ON~regout\ & (\counter2|done~0_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \react_button|op~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \counter2|done~0_combout\,
	datad => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X6_Y7_N4
\Selector17~0\ : maxv_lcell
-- Equation(s):
-- \Selector17~0_combout\ = (\Selector7~0_combout\) # ((!\rtl_state.HALT~regout\ & ((\soft_reset~combout\) # (\master_reset_button|op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.HALT~regout\,
	datab => \soft_reset~combout\,
	datac => \master_reset_button|op~regout\,
	datad => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~0_combout\);

-- Location: LC_X5_Y7_N7
\trn[0]\ : maxv_lcell
-- Equation(s):
-- trn(0) = ((GLOBAL(\Selector17~0_combout\) & ((\Selector14~0_combout\))) # (!GLOBAL(\Selector17~0_combout\) & (trn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => trn(0),
	datac => \Selector14~0_combout\,
	datad => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => trn(0));

-- Location: LC_X5_Y7_N8
\turn[0]\ : maxv_lcell
-- Equation(s):
-- turn(0) = DFFEAS((turn(0) & (trn(0) & ((!\Selector17~0_combout\)))) # (!turn(0) & ((\Selector7~0_combout\) # ((trn(0) & !\Selector17~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50dc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => turn(0),
	datab => trn(0),
	datac => \Selector7~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(0));

-- Location: LC_X5_Y7_N6
\turn[3]\ : maxv_lcell
-- Equation(s):
-- turn(3) = DFFEAS((\Add0~0_combout\ & ((\Selector7~0_combout\) # ((trn(3) & !\Selector17~0_combout\)))) # (!\Add0~0_combout\ & (trn(3) & ((!\Selector17~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~0_combout\,
	datab => trn(3),
	datac => \Selector7~0_combout\,
	datad => \Selector17~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(3));

-- Location: LC_X5_Y7_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = turn(3) $ (((turn(0) & (turn(2) & turn(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => turn(0),
	datab => turn(2),
	datac => turn(3),
	datad => turn(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X5_Y7_N1
\Selector20~0\ : maxv_lcell
-- Equation(s):
-- \Selector20~0_combout\ = (((\Add0~0_combout\ & \rtl_state.LED_ON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector20~0_combout\);

-- Location: LC_X6_Y7_N5
\trn[3]\ : maxv_lcell
-- Equation(s):
-- trn(3) = ((GLOBAL(\Selector17~0_combout\) & ((\Selector20~0_combout\))) # (!GLOBAL(\Selector17~0_combout\) & (trn(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => trn(3),
	datac => \Selector20~0_combout\,
	datad => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => trn(3));

-- Location: LC_X8_Y6_N4
\counter1|count[0]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(0) = DFFEAS(((\counter1|count\(0) & ((!\counter1|next_count_var~0_combout\))) # (!\counter1|count\(0) & (\counter1|rtl_state~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter1|rtl_state~regout\,
	datac => \counter1|count\(0),
	datad => \counter1|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(0));

-- Location: LC_X8_Y6_N1
\counter1|count[1]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(1) = DFFEAS((\counter1|next_count_var~0_combout\ & (\counter1|rtl_state~regout\ & (\counter1|count\(1) $ (\counter1|count\(0))))) # (!\counter1|next_count_var~0_combout\ & (((\counter1|count\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter1|rtl_state~regout\,
	datab => \counter1|count\(1),
	datac => \counter1|count\(0),
	datad => \counter1|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(1));

-- Location: LC_X8_Y6_N2
\counter1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \counter1|Add0~0_combout\ = (((\counter1|count\(0) & \counter1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter1|count\(0),
	datad => \counter1|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|Add0~0_combout\);

-- Location: LC_X8_Y6_N8
\counter1|count[2]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(2) = DFFEAS((\counter1|next_count_var~0_combout\ & (\counter1|rtl_state~regout\ & (\counter1|Add0~0_combout\ $ (\counter1|count\(2))))) # (!\counter1|next_count_var~0_combout\ & (((\counter1|count\(2))))), GLOBAL(\clk~combout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter1|rtl_state~regout\,
	datab => \counter1|Add0~0_combout\,
	datac => \counter1|next_count_var~0_combout\,
	datad => \counter1|count\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(2));

-- Location: LC_X8_Y6_N7
\counter1|count[3]~0\ : maxv_lcell
-- Equation(s):
-- \counter1|count[3]~0_combout\ = (\counter1|count\(2) & (((\counter1|count\(0) & \counter1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(2),
	datac => \counter1|count\(0),
	datad => \counter1|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|count[3]~0_combout\);

-- Location: LC_X8_Y6_N5
start_c1 : maxv_lcell
-- Equation(s):
-- \start_c1~combout\ = (\rtl_state.HALT~regout\ & (!\rtl_state.LED_ON~regout\)) # (!\rtl_state.HALT~regout\ & (((\start_c1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7272",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.HALT~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \start_c1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \start_c1~combout\);

-- Location: LC_X8_Y6_N6
\counter1|next_count_var~0\ : maxv_lcell
-- Equation(s):
-- \counter1|next_count_var~0_combout\ = (\counter1|rtl_state~regout\ & (((!\counter1|count[3]~0_combout\)) # (!\counter1|count\(3)))) # (!\counter1|rtl_state~regout\ & (((\start_c1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|rtl_state~regout\,
	datab => \counter1|count\(3),
	datac => \counter1|count[3]~0_combout\,
	datad => \start_c1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|next_count_var~0_combout\);

-- Location: LC_X6_Y6_N9
\Selector22~0\ : maxv_lcell
-- Equation(s):
-- \Selector22~0_combout\ = (\rtl_state.HALT~regout\) # ((\soft_reset~combout\) # ((\master_reset_button|op~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.HALT~regout\,
	datab => \soft_reset~combout\,
	datac => \master_reset_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector22~0_combout\);

-- Location: LC_X6_Y6_N5
rst_c1 : maxv_lcell
-- Equation(s):
-- \rst_c1~combout\ = (\Selector22~0_combout\ & (((!\rtl_state.LED_OFF~regout\)))) # (!\Selector22~0_combout\ & (((\rst_c1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datac => \rst_c1~combout\,
	datad => \rtl_state.LED_OFF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rst_c1~combout\);

-- Location: LC_X7_Y6_N9
\counter1|rtl_state\ : maxv_lcell
-- Equation(s):
-- \counter1|rtl_state~regout\ = DFFEAS(((!\master_reset_button|op~regout\ & (\counter1|next_count_var~0_combout\ & !\rst_c1~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \master_reset_button|op~regout\,
	datac => \counter1|next_count_var~0_combout\,
	datad => \rst_c1~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|rtl_state~regout\);

-- Location: LC_X8_Y6_N9
\counter1|count[3]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(3) = DFFEAS((\counter1|rtl_state~regout\ & ((\counter1|count[3]~0_combout\) # ((\counter1|count\(3))))) # (!\counter1|rtl_state~regout\ & (((!\start_c1~combout\ & \counter1|count\(3))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter1|rtl_state~regout\,
	datab => \counter1|count[3]~0_combout\,
	datac => \start_c1~combout\,
	datad => \counter1|count\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(3));

-- Location: LC_X8_Y7_N6
\counter1|count_out[3]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(3) = DFFEAS((((\counter1|count\(3)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter1|count\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(3));

-- Location: LC_X12_Y3_N2
trig : maxv_lcell
-- Equation(s):
-- \trig~combout\ = LCELL((((\master_reset_button|op~regout\) # (\react~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \master_reset_button|op~regout\,
	datad => \react~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trig~combout\);

-- Location: LC_X8_Y7_N4
\randgen|count[0]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(0) = DFFEAS((((!\randgen|count\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \randgen|count\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(0));

-- Location: LC_X8_Y7_N8
\randgen|count[1]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(1) = DFFEAS(((\randgen|count\(0) $ (\randgen|count\(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \randgen|count\(0),
	datad => \randgen|count\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(1));

-- Location: LC_X8_Y7_N0
\randgen|count[2]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(2) = DFFEAS((\randgen|count\(2) $ (((\randgen|count\(0) & \randgen|count\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \randgen|count\(2),
	datac => \randgen|count\(0),
	datad => \randgen|count\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(2));

-- Location: LC_X8_Y7_N1
\randgen|rand[2]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(2) = DFFEAS((((!\randgen|count\(2)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	clk => \trig~combout\,
	datad => \randgen|count\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(2));

-- Location: LC_X8_Y7_N5
\randgen|count[3]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(3) = DFFEAS(\randgen|count\(3) $ (((\randgen|count\(0) & (\randgen|count\(2) & \randgen|count\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \randgen|count\(3),
	datab => \randgen|count\(0),
	datac => \randgen|count\(2),
	datad => \randgen|count\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(3));

-- Location: LC_X8_Y7_N3
\randgen|rand[3]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(3) = DFFEAS((((!\randgen|count\(3)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	clk => \trig~combout\,
	datac => \randgen|count\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(3));

-- Location: LC_X8_Y7_N9
\counter1|count_out[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (\counter1|count_out\(3) & (\randgen|rand\(3) & (\randgen|rand\(2) $ (!B1_count_out[2])))) # (!\counter1|count_out\(3) & (!\randgen|rand\(3) & (\randgen|rand\(2) $ (!B1_count_out[2]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter1|count_out\(3),
	datab => \randgen|rand\(2),
	datac => \counter1|count\(2),
	datad => \randgen|rand\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => \counter1|count_out\(2));

-- Location: LC_X8_Y7_N7
\randgen|rand[1]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(1) = DFFEAS((((!\randgen|count\(1)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	clk => \trig~combout\,
	datad => \randgen|count\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(1));

-- Location: LC_X8_Y7_N2
\randgen|rand[0]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(0) = DFFEAS((((!\randgen|count\(0)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	clk => \trig~combout\,
	datac => \randgen|count\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(0));

-- Location: LC_X9_Y7_N2
\counter1|count_out[1]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \counter1|count\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \counter1|count\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(1));

-- Location: LC_X7_Y7_N2
\counter1|count_out[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (\randgen|rand\(1) & (\counter1|count_out\(1) & (\randgen|rand\(0) $ (!B1_count_out[0])))) # (!\randgen|rand\(1) & (!\counter1|count_out\(1) & (\randgen|rand\(0) $ (!B1_count_out[0]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \randgen|rand\(1),
	datab => \randgen|rand\(0),
	datac => \counter1|count\(0),
	datad => \counter1|count_out\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => \counter1|count_out\(0));

-- Location: LC_X7_Y7_N4
\Selector10~0\ : maxv_lcell
-- Equation(s):
-- \Selector10~0_combout\ = (!trn(3) & (((!\Equal0~0\) # (!\Equal0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => trn(3),
	datac => \Equal0~1\,
	datad => \Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~0_combout\);

-- Location: LC_X7_Y6_N7
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = (\rtl_state.LED_OFF~regout\ & (((\react_button|op~regout\)) # (!\Selector10~0_combout\))) # (!\rtl_state.LED_OFF~regout\ & (((\soft_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \soft_reset~combout\,
	datac => \react_button|op~regout\,
	datad => \rtl_state.LED_OFF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X7_Y6_N8
\Selector2~1\ : maxv_lcell
-- Equation(s):
-- \Selector2~1_combout\ = (\master_reset_button|op~regout\) # ((\rtl_state.LED_ON~regout\ & (!\next_rtl_state~0_combout\)) # (!\rtl_state.LED_ON~regout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_ON~regout\,
	datab => \master_reset_button|op~regout\,
	datac => \next_rtl_state~0_combout\,
	datad => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: LC_X6_Y7_N6
\Selector8~1\ : maxv_lcell
-- Equation(s):
-- \Selector8~1_combout\ = (trn(3)) # (((!\Equal0~1\) # (!\Equal0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => trn(3),
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~1_combout\);

-- Location: LC_X6_Y7_N7
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (\rtl_state.HALT~regout\ & (!\rtl_state.LED_ON~regout\ & ((\Selector8~1_combout\)))) # (!\rtl_state.HALT~regout\ & (((!\master_reset_button|op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_ON~regout\,
	datab => \master_reset_button|op~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X6_Y7_N8
\Selector0~1\ : maxv_lcell
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\rtl_state.LED_ON~regout\ & (\rtl_state.HALT~regout\ & \next_rtl_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_ON~regout\,
	datab => \rtl_state.HALT~regout\,
	datac => \next_rtl_state~0_combout\,
	datad => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~1_combout\);

-- Location: LC_X6_Y7_N9
\next_rtl_state.HALT_334\ : maxv_lcell
-- Equation(s):
-- \next_rtl_state.HALT_334~combout\ = ((GLOBAL(\Selector2~1_combout\) & ((\Selector0~1_combout\))) # (!GLOBAL(\Selector2~1_combout\) & (\next_rtl_state.HALT_334~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \next_rtl_state.HALT_334~combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_rtl_state.HALT_334~combout\);

-- Location: LC_X7_Y7_N5
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (\master_reset_button|op~regout\ & (!\rtl_state.LED_OFF~regout\ & (\rtl_state.HALT~regout\))) # (!\master_reset_button|op~regout\ & (((\Selector10~0_combout\)) # (!\rtl_state.LED_OFF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7531",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \master_reset_button|op~regout\,
	datab => \rtl_state.LED_OFF~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X7_Y7_N1
\Selector8~2\ : maxv_lcell
-- Equation(s):
-- \Selector8~2_combout\ = (\rtl_state.LED_ON~regout\ & (((\master_reset_button|op~regout\)))) # (!\rtl_state.LED_ON~regout\ & (\rtl_state.LED_OFF~regout\ & ((\master_reset_button|op~regout\) # (!\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_OFF~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \Selector10~0_combout\,
	datad => \master_reset_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~2_combout\);

-- Location: LC_X7_Y7_N9
\Selector8~3\ : maxv_lcell
-- Equation(s):
-- \Selector8~3_combout\ = (\rtl_state.LED_ON~regout\ & (((\Selector8~2_combout\)))) # (!\rtl_state.LED_ON~regout\ & ((\Selector8~0_combout\) # ((\Selector8~1_combout\ & \Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \Selector8~1_combout\,
	datad => \Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~3_combout\);

-- Location: LC_X7_Y7_N6
\Selector10~1\ : maxv_lcell
-- Equation(s):
-- \Selector10~1_combout\ = ((\rtl_state.LED_OFF~regout\ & ((\react_button|op~regout\))) # (!\rtl_state.LED_OFF~regout\ & (\soft_reset~combout\))) # (!\Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soft_reset~combout\,
	datab => \rtl_state.LED_OFF~regout\,
	datac => \react_button|op~regout\,
	datad => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~1_combout\);

-- Location: LC_X7_Y7_N8
\Selector8~4\ : maxv_lcell
-- Equation(s):
-- \Selector8~4_combout\ = (\rtl_state.LED_ON~regout\ & (((\next_rtl_state~0_combout\)))) # (!\rtl_state.LED_ON~regout\ & (\Selector10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \next_rtl_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~4_combout\);

-- Location: LC_X7_Y7_N0
\rtl_state.HALT\ : maxv_lcell
-- Equation(s):
-- \rtl_state.HALT~regout\ = DFFEAS((\Selector8~4_combout\ & (!\Selector8~3_combout\ & ((!\rtl_state.LED_ON~regout\) # (!\next_rtl_state.HALT_334~combout\)))) # (!\Selector8~4_combout\ & (((\rtl_state.LED_ON~regout\)) # 
-- (!\next_rtl_state.HALT_334~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13f5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_rtl_state.HALT_334~combout\,
	datab => \Selector8~3_combout\,
	datac => \rtl_state.LED_ON~regout\,
	datad => \Selector8~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.HALT~regout\);

-- Location: LC_X6_Y6_N7
start_c2 : maxv_lcell
-- Equation(s):
-- \start_c2~combout\ = (\rtl_state.HALT~regout\ & (((\rtl_state.LED_ON~regout\)))) # (!\rtl_state.HALT~regout\ & (\start_c2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.HALT~regout\,
	datab => \start_c2~combout\,
	datac => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \start_c2~combout\);

-- Location: LC_X6_Y6_N8
\counter2|next_count_var~0\ : maxv_lcell
-- Equation(s):
-- \counter2|next_count_var~0_combout\ = (\counter2|rtl_state~regout\ & (((!\counter2|count\(3))) # (!\counter2|count[3]~0_combout\))) # (!\counter2|rtl_state~regout\ & (((\start_c2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|rtl_state~regout\,
	datab => \counter2|count[3]~0_combout\,
	datac => \counter2|count\(3),
	datad => \start_c2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|next_count_var~0_combout\);

-- Location: LC_X6_Y6_N1
rst_c2 : maxv_lcell
-- Equation(s):
-- \rst_c2~combout\ = (\Selector22~0_combout\ & (((!\rtl_state.LED_ON~regout\)))) # (!\Selector22~0_combout\ & (((\rst_c2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datac => \rtl_state.LED_ON~regout\,
	datad => \rst_c2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rst_c2~combout\);

-- Location: LC_X6_Y6_N0
\counter2|rtl_state\ : maxv_lcell
-- Equation(s):
-- \counter2|rtl_state~regout\ = DFFEAS((\counter2|next_count_var~0_combout\ & (!\master_reset_button|op~regout\ & ((!\rst_c2~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter2|next_count_var~0_combout\,
	datab => \master_reset_button|op~regout\,
	datad => \rst_c2~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|rtl_state~regout\);

-- Location: LC_X5_Y6_N4
\counter2|count[0]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(0) = DFFEAS(((\counter2|count\(0) & ((!\counter2|next_count_var~0_combout\))) # (!\counter2|count\(0) & (\counter2|rtl_state~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \counter2|count\(0),
	datac => \counter2|rtl_state~regout\,
	datad => \counter2|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(0));

-- Location: LC_X5_Y6_N6
\counter2|count[1]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(1) = DFFEAS((\counter2|next_count_var~0_combout\ & (\counter2|rtl_state~regout\ & (\counter2|count\(0) $ (\counter2|count\(1))))) # (!\counter2|next_count_var~0_combout\ & (((\counter2|count\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter2|rtl_state~regout\,
	datab => \counter2|count\(0),
	datac => \counter2|count\(1),
	datad => \counter2|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(1));

-- Location: LC_X5_Y6_N7
\counter2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \counter2|Add0~0_combout\ = ((\counter2|count\(0) & (\counter2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|count\(0),
	datac => \counter2|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|Add0~0_combout\);

-- Location: LC_X5_Y6_N9
\counter2|count[2]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(2) = DFFEAS((\counter2|next_count_var~0_combout\ & (\counter2|rtl_state~regout\ & (\counter2|Add0~0_combout\ $ (\counter2|count\(2))))) # (!\counter2|next_count_var~0_combout\ & (((\counter2|count\(2))))), GLOBAL(\clk~combout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter2|rtl_state~regout\,
	datab => \counter2|Add0~0_combout\,
	datac => \counter2|count\(2),
	datad => \counter2|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(2));

-- Location: LC_X5_Y6_N0
\counter2|count[3]~0\ : maxv_lcell
-- Equation(s):
-- \counter2|count[3]~0_combout\ = (\counter2|count\(1) & (((\counter2|count\(0) & \counter2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(1),
	datac => \counter2|count\(0),
	datad => \counter2|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|count[3]~0_combout\);

-- Location: LC_X5_Y6_N5
\counter2|count[3]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(3) = DFFEAS((\counter2|count\(3) & (((\counter2|rtl_state~regout\) # (!\start_c2~combout\)))) # (!\counter2|count\(3) & (\counter2|count[3]~0_combout\ & (\counter2|rtl_state~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter2|count\(3),
	datab => \counter2|count[3]~0_combout\,
	datac => \counter2|rtl_state~regout\,
	datad => \start_c2~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(3));

-- Location: LC_X6_Y7_N0
\counter2|done~0\ : maxv_lcell
-- Equation(s):
-- \counter2|done~0_combout\ = (((!\counter2|count[3]~0_combout\) # (!\counter2|rtl_state~regout\)) # (!\counter2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|count\(3),
	datac => \counter2|rtl_state~regout\,
	datad => \counter2|count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|done~0_combout\);

-- Location: LC_X6_Y7_N1
\next_rtl_state~0\ : maxv_lcell
-- Equation(s):
-- \next_rtl_state~0_combout\ = ((\counter2|done~0_combout\ & ((!\process_0~0_combout\) # (!\react_button|op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \react_button|op~regout\,
	datac => \counter2|done~0_combout\,
	datad => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_rtl_state~0_combout\);

-- Location: LC_X8_Y6_N3
\Selector10~2\ : maxv_lcell
-- Equation(s):
-- \Selector10~2_combout\ = (\master_reset_button|op~regout\ & ((\rtl_state.LED_ON~regout\) # ((!\rtl_state.LED_OFF~regout\ & !\rtl_state.HALT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "888c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_ON~regout\,
	datab => \master_reset_button|op~regout\,
	datac => \rtl_state.LED_OFF~regout\,
	datad => \rtl_state.HALT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~2_combout\);

-- Location: LC_X7_Y7_N7
\Selector3~0\ : maxv_lcell
-- Equation(s):
-- \Selector3~0_combout\ = (\next_rtl_state~0_combout\ & (\master_reset_button|op~regout\ & (!\rtl_state.HALT~regout\))) # (!\next_rtl_state~0_combout\ & ((\rtl_state.LED_ON~regout\) # ((\master_reset_button|op~regout\ & !\rtl_state.HALT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_rtl_state~0_combout\,
	datab => \master_reset_button|op~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0_combout\);

-- Location: LC_X7_Y7_N3
\next_rtl_state.LED_OFF_288\ : maxv_lcell
-- Equation(s):
-- \next_rtl_state.LED_OFF_288~combout\ = ((GLOBAL(\Selector2~1_combout\) & (\Selector3~0_combout\)) # (!GLOBAL(\Selector2~1_combout\) & ((\next_rtl_state.LED_OFF_288~combout\))))

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
	datab => \Selector2~1_combout\,
	datac => \Selector3~0_combout\,
	datad => \next_rtl_state.LED_OFF_288~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_rtl_state.LED_OFF_288~combout\);

-- Location: LC_X6_Y6_N3
\Selector10~3\ : maxv_lcell
-- Equation(s):
-- \Selector10~3_combout\ = ((\next_rtl_state.LED_OFF_288~combout\ & ((\rtl_state.LED_ON~regout\) # (!\Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_ON~regout\,
	datac => \next_rtl_state.LED_OFF_288~combout\,
	datad => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~3_combout\);

-- Location: LC_X6_Y6_N4
\rtl_state.LED_OFF\ : maxv_lcell
-- Equation(s):
-- \rtl_state.LED_OFF~regout\ = DFFEAS((\rtl_state.LED_ON~regout\ & (((!\Selector10~2_combout\ & \Selector10~3_combout\)) # (!\next_rtl_state~0_combout\))) # (!\rtl_state.LED_ON~regout\ & (((\Selector10~2_combout\) # (\Selector10~3_combout\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f72",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rtl_state.LED_ON~regout\,
	datab => \next_rtl_state~0_combout\,
	datac => \Selector10~2_combout\,
	datad => \Selector10~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.LED_OFF~regout\);

-- Location: LC_X7_Y6_N3
\Selector1~0\ : maxv_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (\rtl_state.LED_OFF~regout\ & (!trn(3) & (\Equal0~0\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.LED_OFF~regout\,
	datab => trn(3),
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X7_Y6_N5
\next_rtl_state.LED_ON_311\ : maxv_lcell
-- Equation(s):
-- \next_rtl_state.LED_ON_311~combout\ = ((GLOBAL(\Selector2~1_combout\) & ((\Selector1~0_combout\))) # (!GLOBAL(\Selector2~1_combout\) & (\next_rtl_state.LED_ON_311~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_rtl_state.LED_ON_311~combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_rtl_state.LED_ON_311~combout\);

-- Location: LC_X7_Y6_N0
\next_rtl_state~1\ : maxv_lcell
-- Equation(s):
-- \next_rtl_state~1_combout\ = (\next_rtl_state.LED_ON_311~combout\ & (((\next_rtl_state~0_combout\ & !\master_reset_button|op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_rtl_state.LED_ON_311~combout\,
	datac => \next_rtl_state~0_combout\,
	datad => \master_reset_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_rtl_state~1_combout\);

-- Location: LC_X7_Y6_N6
\rtl_state.LED_ON\ : maxv_lcell
-- Equation(s):
-- \rtl_state.LED_ON~regout\ = DFFEAS(((\Selector10~1_combout\ & (\Selector1~0_combout\)) # (!\Selector10~1_combout\ & ((\next_rtl_state.LED_ON_311~combout\)))), GLOBAL(\clk~combout\), VCC, , , \next_rtl_state~1_combout\, , , \rtl_state.LED_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector1~0_combout\,
	datab => \next_rtl_state.LED_ON_311~combout\,
	datac => \next_rtl_state~1_combout\,
	datad => \Selector10~1_combout\,
	aclr => GND,
	sload => \rtl_state.LED_ON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.LED_ON~regout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rtl_state.LED_ON~regout\,
	oe => VCC,
	padio => ww_led);
END structure;


