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

-- DATE "04/18/2018 22:05:25"

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

ENTITY 	reaction_game IS
    PORT (
	clk : IN std_logic;
	mreset : IN std_logic;
	react : IN std_logic;
	show_state : BUFFER std_logic_vector(1 DOWNTO 0);
	led : BUFFER std_logic
	);
END reaction_game;

-- Design Ports Information


ARCHITECTURE structure OF reaction_game IS
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
SIGNAL ww_show_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \randgen|Add0~45\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clock_1ms|count[0]~27\ : std_logic;
SIGNAL \clock_1ms|count[0]~27COUT1_33\ : std_logic;
SIGNAL \clock_1ms|count[1]~29\ : std_logic;
SIGNAL \clock_1ms|count[1]~29COUT1_34\ : std_logic;
SIGNAL \clock_1ms|count[2]~31\ : std_logic;
SIGNAL \clock_1ms|count[3]~9\ : std_logic;
SIGNAL \clock_1ms|count[3]~9COUT1_35\ : std_logic;
SIGNAL \clock_1ms|count[4]~11\ : std_logic;
SIGNAL \clock_1ms|count[4]~11COUT1_36\ : std_logic;
SIGNAL \clock_1ms|count[5]~13\ : std_logic;
SIGNAL \clock_1ms|count[5]~13COUT1_37\ : std_logic;
SIGNAL \clock_1ms|count[6]~15\ : std_logic;
SIGNAL \clock_1ms|count[6]~15COUT1_38\ : std_logic;
SIGNAL \clock_1ms|count[7]~17\ : std_logic;
SIGNAL \clock_1ms|count[8]~19\ : std_logic;
SIGNAL \clock_1ms|count[8]~19COUT1_39\ : std_logic;
SIGNAL \clock_1ms|count[9]~1\ : std_logic;
SIGNAL \clock_1ms|count[9]~1COUT1_40\ : std_logic;
SIGNAL \clock_1ms|count[10]~3\ : std_logic;
SIGNAL \clock_1ms|count[10]~3COUT1_41\ : std_logic;
SIGNAL \clock_1ms|count[11]~5\ : std_logic;
SIGNAL \clock_1ms|count[11]~5COUT1_42\ : std_logic;
SIGNAL \clock_1ms|count[12]~7\ : std_logic;
SIGNAL \clock_1ms|count[13]~21\ : std_logic;
SIGNAL \clock_1ms|count[13]~21COUT1_43\ : std_logic;
SIGNAL \clock_1ms|count[14]~23\ : std_logic;
SIGNAL \clock_1ms|count[14]~23COUT1_44\ : std_logic;
SIGNAL \clock_1ms|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan1~3_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan1~0_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan1~1_combout\ : std_logic;
SIGNAL \clock_1ms|LessThan1~2_combout\ : std_logic;
SIGNAL \clock_1ms|clk_out~0_combout\ : std_logic;
SIGNAL \clock_1ms|rtl_state~regout\ : std_logic;
SIGNAL \clock_1ms|clk_out~1_combout\ : std_logic;
SIGNAL \clock_1ms|clk_out~combout\ : std_logic;
SIGNAL \mreset~combout\ : std_logic;
SIGNAL \master_reset_button|rtl_state~regout\ : std_logic;
SIGNAL \master_reset_button|op~regout\ : std_logic;
SIGNAL \Selector9~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \react~combout\ : std_logic;
SIGNAL \react_button|rtl_state~regout\ : std_logic;
SIGNAL \react_button|op~regout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \turn[0]~0_combout\ : std_logic;
SIGNAL \trig~combout\ : std_logic;
SIGNAL \randgen|Add0~47_cout0\ : std_logic;
SIGNAL \randgen|Add0~47COUT1_51\ : std_logic;
SIGNAL \randgen|Add0~10_combout\ : std_logic;
SIGNAL \randgen|Add0~12\ : std_logic;
SIGNAL \randgen|Add0~12COUT1_52\ : std_logic;
SIGNAL \randgen|Add0~20_combout\ : std_logic;
SIGNAL \randgen|Add0~22\ : std_logic;
SIGNAL \randgen|Add0~22COUT1_53\ : std_logic;
SIGNAL \randgen|Add0~15_combout\ : std_logic;
SIGNAL \randgen|Add0~17\ : std_logic;
SIGNAL \randgen|Add0~17COUT1_54\ : std_logic;
SIGNAL \randgen|Add0~30_combout\ : std_logic;
SIGNAL \randgen|Add0~32\ : std_logic;
SIGNAL \randgen|Add0~25_combout\ : std_logic;
SIGNAL \randgen|Add0~27\ : std_logic;
SIGNAL \randgen|Add0~27COUT1_55\ : std_logic;
SIGNAL \randgen|Add0~40_combout\ : std_logic;
SIGNAL \randgen|Add0~42\ : std_logic;
SIGNAL \randgen|Add0~42COUT1_56\ : std_logic;
SIGNAL \randgen|Add0~35_combout\ : std_logic;
SIGNAL \randgen|Add0~37\ : std_logic;
SIGNAL \randgen|Add0~37COUT1_57\ : std_logic;
SIGNAL \randgen|Add0~5_combout\ : std_logic;
SIGNAL \randgen|Add0~7\ : std_logic;
SIGNAL \randgen|Add0~7COUT1_58\ : std_logic;
SIGNAL \randgen|Add0~0_combout\ : std_logic;
SIGNAL \rst_c1~regout\ : std_logic;
SIGNAL \start_c1~regout\ : std_logic;
SIGNAL \counter1|count[0]~7\ : std_logic;
SIGNAL \counter1|count[0]~7COUT1_23\ : std_logic;
SIGNAL \counter1|count[1]~9\ : std_logic;
SIGNAL \counter1|count[1]~9COUT1_24\ : std_logic;
SIGNAL \counter1|count[2]~11\ : std_logic;
SIGNAL \counter1|count[2]~11COUT1_25\ : std_logic;
SIGNAL \counter1|Equal0~0_combout\ : std_logic;
SIGNAL \counter1|count[3]~13\ : std_logic;
SIGNAL \counter1|count[3]~13COUT1_26\ : std_logic;
SIGNAL \counter1|count[4]~15\ : std_logic;
SIGNAL \counter1|count[5]~17\ : std_logic;
SIGNAL \counter1|count[5]~17COUT1_27\ : std_logic;
SIGNAL \counter1|count[6]~19\ : std_logic;
SIGNAL \counter1|count[6]~19COUT1_28\ : std_logic;
SIGNAL \counter1|count[7]~21\ : std_logic;
SIGNAL \counter1|count[7]~21COUT1_29\ : std_logic;
SIGNAL \counter1|count[8]~3\ : std_logic;
SIGNAL \counter1|count[8]~3COUT1_30\ : std_logic;
SIGNAL \counter1|count[9]~5\ : std_logic;
SIGNAL \counter1|Equal0~1_combout\ : std_logic;
SIGNAL \counter1|Equal0~2_combout\ : std_logic;
SIGNAL \counter1|next_count_var~0_combout\ : std_logic;
SIGNAL \counter1|rtl_state~regout\ : std_logic;
SIGNAL \process_0~2\ : std_logic;
SIGNAL \process_0~3\ : std_logic;
SIGNAL \process_0~5\ : std_logic;
SIGNAL \process_0~6\ : std_logic;
SIGNAL \process_0~4\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \rtl_state.LED_ON~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \soft_reset~regout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~1\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \rtl_state.HALT~regout\ : std_logic;
SIGNAL \start_c2~regout\ : std_logic;
SIGNAL \counter2|count[0]~1\ : std_logic;
SIGNAL \counter2|count[0]~1COUT1_23\ : std_logic;
SIGNAL \counter2|count[1]~3\ : std_logic;
SIGNAL \counter2|count[1]~3COUT1_24\ : std_logic;
SIGNAL \counter2|count[2]~5\ : std_logic;
SIGNAL \counter2|count[2]~5COUT1_25\ : std_logic;
SIGNAL \counter2|count[3]~7\ : std_logic;
SIGNAL \counter2|count[3]~7COUT1_26\ : std_logic;
SIGNAL \counter2|count[4]~9\ : std_logic;
SIGNAL \counter2|count[5]~11\ : std_logic;
SIGNAL \counter2|count[5]~11COUT1_27\ : std_logic;
SIGNAL \counter2|count[6]~13\ : std_logic;
SIGNAL \counter2|count[6]~13COUT1_28\ : std_logic;
SIGNAL \counter2|count[7]~15\ : std_logic;
SIGNAL \counter2|count[7]~15COUT1_29\ : std_logic;
SIGNAL \counter2|count[8]~17\ : std_logic;
SIGNAL \counter2|count[8]~17COUT1_30\ : std_logic;
SIGNAL \counter2|count[9]~19\ : std_logic;
SIGNAL \counter2|Equal0~1_combout\ : std_logic;
SIGNAL \counter2|Equal0~2_combout\ : std_logic;
SIGNAL \counter2|next_count_var~0_combout\ : std_logic;
SIGNAL \rst_c2~regout\ : std_logic;
SIGNAL \counter2|rtl_state~regout\ : std_logic;
SIGNAL \counter2|Equal0~0_combout\ : std_logic;
SIGNAL \counter2|done~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \rtl_state.LED_OFF~regout\ : std_logic;
SIGNAL \show_state[0]~reg0_regout\ : std_logic;
SIGNAL \show_state[1]~reg0_regout\ : std_logic;
SIGNAL \led~reg0_regout\ : std_logic;
SIGNAL \counter1|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \counter2|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \clock_1ms|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randgen|rand\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \counter1|count_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \randgen|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL turn : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter1|ALT_INV_rtl_state~regout\ : std_logic;
SIGNAL \counter2|ALT_INV_rtl_state~regout\ : std_logic;
SIGNAL \clock_1ms|ALT_INV_rtl_state~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mreset <= mreset;
ww_react <= react;
show_state <= ww_show_state;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter1|ALT_INV_rtl_state~regout\ <= NOT \counter1|rtl_state~regout\;
\counter2|ALT_INV_rtl_state~regout\ <= NOT \counter2|rtl_state~regout\;
\clock_1ms|ALT_INV_rtl_state~regout\ <= NOT \clock_1ms|rtl_state~regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X7_Y7_N2
\clock_1ms|count[0]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(0) = DFFEAS(((!\clock_1ms|count\(0))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[0]~27\ = CARRY(((\clock_1ms|count\(0))))
-- \clock_1ms|count[0]~27COUT1_33\ = CARRY(((\clock_1ms|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(0),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(0),
	cout0 => \clock_1ms|count[0]~27\,
	cout1 => \clock_1ms|count[0]~27COUT1_33\);

-- Location: LC_X7_Y7_N3
\clock_1ms|count[1]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(1) = DFFEAS(\clock_1ms|count\(1) $ ((((\clock_1ms|count[0]~27\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[1]~29\ = CARRY(((!\clock_1ms|count[0]~27\)) # (!\clock_1ms|count\(1)))
-- \clock_1ms|count[1]~29COUT1_34\ = CARRY(((!\clock_1ms|count[0]~27COUT1_33\)) # (!\clock_1ms|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(1),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin0 => \clock_1ms|count[0]~27\,
	cin1 => \clock_1ms|count[0]~27COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(1),
	cout0 => \clock_1ms|count[1]~29\,
	cout1 => \clock_1ms|count[1]~29COUT1_34\);

-- Location: LC_X7_Y7_N4
\clock_1ms|count[2]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(2) = DFFEAS(\clock_1ms|count\(2) $ ((((!\clock_1ms|count[1]~29\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[2]~31\ = CARRY((\clock_1ms|count\(2) & ((!\clock_1ms|count[1]~29COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(2),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin0 => \clock_1ms|count[1]~29\,
	cin1 => \clock_1ms|count[1]~29COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(2),
	cout => \clock_1ms|count[2]~31\);

-- Location: LC_X7_Y7_N5
\clock_1ms|count[3]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(3) = DFFEAS(\clock_1ms|count\(3) $ ((((\clock_1ms|count[2]~31\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[3]~9\ = CARRY(((!\clock_1ms|count[2]~31\)) # (!\clock_1ms|count\(3)))
-- \clock_1ms|count[3]~9COUT1_35\ = CARRY(((!\clock_1ms|count[2]~31\)) # (!\clock_1ms|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(3),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[2]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(3),
	cout0 => \clock_1ms|count[3]~9\,
	cout1 => \clock_1ms|count[3]~9COUT1_35\);

-- Location: LC_X7_Y7_N6
\clock_1ms|count[4]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(4) = DFFEAS(\clock_1ms|count\(4) $ ((((!(!\clock_1ms|count[2]~31\ & \clock_1ms|count[3]~9\) # (\clock_1ms|count[2]~31\ & \clock_1ms|count[3]~9COUT1_35\))))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[4]~11\ = CARRY((\clock_1ms|count\(4) & ((!\clock_1ms|count[3]~9\))))
-- \clock_1ms|count[4]~11COUT1_36\ = CARRY((\clock_1ms|count\(4) & ((!\clock_1ms|count[3]~9COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(4),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[2]~31\,
	cin0 => \clock_1ms|count[3]~9\,
	cin1 => \clock_1ms|count[3]~9COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(4),
	cout0 => \clock_1ms|count[4]~11\,
	cout1 => \clock_1ms|count[4]~11COUT1_36\);

-- Location: LC_X7_Y7_N7
\clock_1ms|count[5]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(5) = DFFEAS((\clock_1ms|count\(5) $ (((!\clock_1ms|count[2]~31\ & \clock_1ms|count[4]~11\) # (\clock_1ms|count[2]~31\ & \clock_1ms|count[4]~11COUT1_36\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[5]~13\ = CARRY(((!\clock_1ms|count[4]~11\) # (!\clock_1ms|count\(5))))
-- \clock_1ms|count[5]~13COUT1_37\ = CARRY(((!\clock_1ms|count[4]~11COUT1_36\) # (!\clock_1ms|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(5),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[2]~31\,
	cin0 => \clock_1ms|count[4]~11\,
	cin1 => \clock_1ms|count[4]~11COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(5),
	cout0 => \clock_1ms|count[5]~13\,
	cout1 => \clock_1ms|count[5]~13COUT1_37\);

-- Location: LC_X7_Y7_N8
\clock_1ms|count[6]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(6) = DFFEAS(\clock_1ms|count\(6) $ ((((!(!\clock_1ms|count[2]~31\ & \clock_1ms|count[5]~13\) # (\clock_1ms|count[2]~31\ & \clock_1ms|count[5]~13COUT1_37\))))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[6]~15\ = CARRY((\clock_1ms|count\(6) & ((!\clock_1ms|count[5]~13\))))
-- \clock_1ms|count[6]~15COUT1_38\ = CARRY((\clock_1ms|count\(6) & ((!\clock_1ms|count[5]~13COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(6),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[2]~31\,
	cin0 => \clock_1ms|count[5]~13\,
	cin1 => \clock_1ms|count[5]~13COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(6),
	cout0 => \clock_1ms|count[6]~15\,
	cout1 => \clock_1ms|count[6]~15COUT1_38\);

-- Location: LC_X7_Y7_N9
\clock_1ms|count[7]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(7) = DFFEAS((\clock_1ms|count\(7) $ (((!\clock_1ms|count[2]~31\ & \clock_1ms|count[6]~15\) # (\clock_1ms|count[2]~31\ & \clock_1ms|count[6]~15COUT1_38\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[7]~17\ = CARRY(((!\clock_1ms|count[6]~15COUT1_38\) # (!\clock_1ms|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(7),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[2]~31\,
	cin0 => \clock_1ms|count[6]~15\,
	cin1 => \clock_1ms|count[6]~15COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(7),
	cout => \clock_1ms|count[7]~17\);

-- Location: LC_X8_Y7_N0
\clock_1ms|count[8]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(8) = DFFEAS((\clock_1ms|count\(8) $ ((!\clock_1ms|count[7]~17\))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[8]~19\ = CARRY(((\clock_1ms|count\(8) & !\clock_1ms|count[7]~17\)))
-- \clock_1ms|count[8]~19COUT1_39\ = CARRY(((\clock_1ms|count\(8) & !\clock_1ms|count[7]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(8),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[7]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(8),
	cout0 => \clock_1ms|count[8]~19\,
	cout1 => \clock_1ms|count[8]~19COUT1_39\);

-- Location: LC_X8_Y7_N1
\clock_1ms|count[9]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(9) = DFFEAS((\clock_1ms|count\(9) $ (((!\clock_1ms|count[7]~17\ & \clock_1ms|count[8]~19\) # (\clock_1ms|count[7]~17\ & \clock_1ms|count[8]~19COUT1_39\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[9]~1\ = CARRY(((!\clock_1ms|count[8]~19\) # (!\clock_1ms|count\(9))))
-- \clock_1ms|count[9]~1COUT1_40\ = CARRY(((!\clock_1ms|count[8]~19COUT1_39\) # (!\clock_1ms|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(9),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[7]~17\,
	cin0 => \clock_1ms|count[8]~19\,
	cin1 => \clock_1ms|count[8]~19COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(9),
	cout0 => \clock_1ms|count[9]~1\,
	cout1 => \clock_1ms|count[9]~1COUT1_40\);

-- Location: LC_X8_Y7_N2
\clock_1ms|count[10]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(10) = DFFEAS((\clock_1ms|count\(10) $ ((!(!\clock_1ms|count[7]~17\ & \clock_1ms|count[9]~1\) # (\clock_1ms|count[7]~17\ & \clock_1ms|count[9]~1COUT1_40\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[10]~3\ = CARRY(((\clock_1ms|count\(10) & !\clock_1ms|count[9]~1\)))
-- \clock_1ms|count[10]~3COUT1_41\ = CARRY(((\clock_1ms|count\(10) & !\clock_1ms|count[9]~1COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(10),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[7]~17\,
	cin0 => \clock_1ms|count[9]~1\,
	cin1 => \clock_1ms|count[9]~1COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(10),
	cout0 => \clock_1ms|count[10]~3\,
	cout1 => \clock_1ms|count[10]~3COUT1_41\);

-- Location: LC_X8_Y7_N3
\clock_1ms|count[11]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(11) = DFFEAS(\clock_1ms|count\(11) $ (((((!\clock_1ms|count[7]~17\ & \clock_1ms|count[10]~3\) # (\clock_1ms|count[7]~17\ & \clock_1ms|count[10]~3COUT1_41\))))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[11]~5\ = CARRY(((!\clock_1ms|count[10]~3\)) # (!\clock_1ms|count\(11)))
-- \clock_1ms|count[11]~5COUT1_42\ = CARRY(((!\clock_1ms|count[10]~3COUT1_41\)) # (!\clock_1ms|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(11),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[7]~17\,
	cin0 => \clock_1ms|count[10]~3\,
	cin1 => \clock_1ms|count[10]~3COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(11),
	cout0 => \clock_1ms|count[11]~5\,
	cout1 => \clock_1ms|count[11]~5COUT1_42\);

-- Location: LC_X8_Y7_N4
\clock_1ms|count[12]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(12) = DFFEAS((\clock_1ms|count\(12) $ ((!(!\clock_1ms|count[7]~17\ & \clock_1ms|count[11]~5\) # (\clock_1ms|count[7]~17\ & \clock_1ms|count[11]~5COUT1_42\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[12]~7\ = CARRY(((\clock_1ms|count\(12) & !\clock_1ms|count[11]~5COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(12),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[7]~17\,
	cin0 => \clock_1ms|count[11]~5\,
	cin1 => \clock_1ms|count[11]~5COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(12),
	cout => \clock_1ms|count[12]~7\);

-- Location: LC_X8_Y7_N5
\clock_1ms|count[13]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(13) = DFFEAS(\clock_1ms|count\(13) $ ((((\clock_1ms|count[12]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[13]~21\ = CARRY(((!\clock_1ms|count[12]~7\)) # (!\clock_1ms|count\(13)))
-- \clock_1ms|count[13]~21COUT1_43\ = CARRY(((!\clock_1ms|count[12]~7\)) # (!\clock_1ms|count\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(13),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[12]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(13),
	cout0 => \clock_1ms|count[13]~21\,
	cout1 => \clock_1ms|count[13]~21COUT1_43\);

-- Location: LC_X8_Y7_N6
\clock_1ms|count[14]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(14) = DFFEAS(\clock_1ms|count\(14) $ ((((!(!\clock_1ms|count[12]~7\ & \clock_1ms|count[13]~21\) # (\clock_1ms|count[12]~7\ & \clock_1ms|count[13]~21COUT1_43\))))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )
-- \clock_1ms|count[14]~23\ = CARRY((\clock_1ms|count\(14) & ((!\clock_1ms|count[13]~21\))))
-- \clock_1ms|count[14]~23COUT1_44\ = CARRY((\clock_1ms|count\(14) & ((!\clock_1ms|count[13]~21COUT1_43\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|count\(14),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[12]~7\,
	cin0 => \clock_1ms|count[13]~21\,
	cin1 => \clock_1ms|count[13]~21COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(14),
	cout0 => \clock_1ms|count[14]~23\,
	cout1 => \clock_1ms|count[14]~23COUT1_44\);

-- Location: LC_X8_Y7_N7
\clock_1ms|count[15]\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|count\(15) = DFFEAS((\clock_1ms|count\(15) $ (((!\clock_1ms|count[12]~7\ & \clock_1ms|count[14]~23\) # (\clock_1ms|count[12]~7\ & \clock_1ms|count[14]~23COUT1_44\)))), GLOBAL(\clk~combout\), VCC, , , , , !\clock_1ms|rtl_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \clock_1ms|count\(15),
	aclr => GND,
	sclr => \clock_1ms|ALT_INV_rtl_state~regout\,
	cin => \clock_1ms|count[12]~7\,
	cin0 => \clock_1ms|count[14]~23\,
	cin1 => \clock_1ms|count[14]~23COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|count\(15));

-- Location: LC_X6_Y7_N4
\clock_1ms|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan0~1_combout\ = (!\clock_1ms|count\(6) & (((!\clock_1ms|count\(4) & !\clock_1ms|count\(3))) # (!\clock_1ms|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1113",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(5),
	datab => \clock_1ms|count\(6),
	datac => \clock_1ms|count\(4),
	datad => \clock_1ms|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan0~1_combout\);

-- Location: LC_X8_Y7_N8
\clock_1ms|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan0~0_combout\ = (!\clock_1ms|count\(12) & (!\clock_1ms|count\(9) & (!\clock_1ms|count\(10) & !\clock_1ms|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(12),
	datab => \clock_1ms|count\(9),
	datac => \clock_1ms|count\(10),
	datad => \clock_1ms|count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan0~0_combout\);

-- Location: LC_X6_Y7_N1
\clock_1ms|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan0~2_combout\ = (\clock_1ms|LessThan0~0_combout\ & (((\clock_1ms|LessThan0~1_combout\) # (!\clock_1ms|count\(7))) # (!\clock_1ms|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(8),
	datab => \clock_1ms|count\(7),
	datac => \clock_1ms|LessThan0~1_combout\,
	datad => \clock_1ms|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan0~2_combout\);

-- Location: LC_X6_Y7_N2
\clock_1ms|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan0~3_combout\ = (!\clock_1ms|count\(15) & (((\clock_1ms|LessThan0~2_combout\) # (!\clock_1ms|count\(13))) # (!\clock_1ms|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3313",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(14),
	datab => \clock_1ms|count\(15),
	datac => \clock_1ms|count\(13),
	datad => \clock_1ms|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan0~3_combout\);

-- Location: LC_X8_Y7_N9
\clock_1ms|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan1~3_combout\ = (\clock_1ms|count\(12)) # ((\clock_1ms|count\(10)) # ((\clock_1ms|count\(13)) # (\clock_1ms|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(12),
	datab => \clock_1ms|count\(10),
	datac => \clock_1ms|count\(13),
	datad => \clock_1ms|count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan1~3_combout\);

-- Location: LC_X7_Y7_N0
\clock_1ms|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan1~0_combout\ = (\clock_1ms|count\(1)) # ((\clock_1ms|count\(2)) # ((\clock_1ms|count\(3)) # (\clock_1ms|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(1),
	datab => \clock_1ms|count\(2),
	datac => \clock_1ms|count\(3),
	datad => \clock_1ms|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan1~0_combout\);

-- Location: LC_X7_Y7_N1
\clock_1ms|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan1~1_combout\ = (\clock_1ms|count\(6) & ((\clock_1ms|count\(5)) # ((\clock_1ms|count\(4) & \clock_1ms|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(6),
	datab => \clock_1ms|count\(5),
	datac => \clock_1ms|count\(4),
	datad => \clock_1ms|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan1~1_combout\);

-- Location: LC_X6_Y7_N8
\clock_1ms|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|LessThan1~2_combout\ = (\clock_1ms|count\(8) & (\clock_1ms|count\(9) & ((\clock_1ms|count\(7)) # (\clock_1ms|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(8),
	datab => \clock_1ms|count\(7),
	datac => \clock_1ms|count\(9),
	datad => \clock_1ms|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|LessThan1~2_combout\);

-- Location: LC_X6_Y7_N6
\clock_1ms|clk_out~0\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|clk_out~0_combout\ = (((!\clock_1ms|LessThan1~3_combout\ & !\clock_1ms|LessThan1~2_combout\)) # (!\clock_1ms|count\(15))) # (!\clock_1ms|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "777f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1ms|count\(14),
	datab => \clock_1ms|count\(15),
	datac => \clock_1ms|LessThan1~3_combout\,
	datad => \clock_1ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|clk_out~0_combout\);

-- Location: LC_X6_Y7_N7
\clock_1ms|rtl_state\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|rtl_state~regout\ = DFFEAS((\clock_1ms|rtl_state~regout\ & ((\clock_1ms|LessThan0~3_combout\) # ((\clock_1ms|clk_out~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , !\clock_1ms|rtl_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clock_1ms|rtl_state~regout\,
	datab => \clock_1ms|LessThan0~3_combout\,
	datac => VCC,
	datad => \clock_1ms|clk_out~0_combout\,
	aclr => GND,
	sload => \clock_1ms|ALT_INV_rtl_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_1ms|rtl_state~regout\);

-- Location: LC_X6_Y7_N5
\clock_1ms|clk_out~1\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|clk_out~1_combout\ = ((\clock_1ms|rtl_state~regout\ & (\clock_1ms|clk_out~0_combout\)))

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
	datab => \clock_1ms|rtl_state~regout\,
	datac => \clock_1ms|clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|clk_out~1_combout\);

-- Location: LC_X6_Y7_N3
\clock_1ms|clk_out\ : maxv_lcell
-- Equation(s):
-- \clock_1ms|clk_out~combout\ = ((\clock_1ms|clk_out~1_combout\ & ((\clock_1ms|LessThan0~3_combout\))) # (!\clock_1ms|clk_out~1_combout\ & (\clock_1ms|clk_out~combout\)))

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
	dataa => \clock_1ms|clk_out~combout\,
	datac => \clock_1ms|clk_out~1_combout\,
	datad => \clock_1ms|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clock_1ms|clk_out~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mreset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mreset,
	combout => \mreset~combout\);

-- Location: LC_X10_Y7_N5
\master_reset_button|rtl_state\ : maxv_lcell
-- Equation(s):
-- \master_reset_button|rtl_state~regout\ = DFFEAS((((!\mreset~combout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datad => \mreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_reset_button|rtl_state~regout\);

-- Location: LC_X10_Y7_N6
\master_reset_button|op\ : maxv_lcell
-- Equation(s):
-- \master_reset_button|op~regout\ = DFFEAS((\mreset~combout\ & (((\master_reset_button|op~regout\)))) # (!\mreset~combout\ & (((!\master_reset_button|rtl_state~regout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \mreset~combout\,
	datac => \master_reset_button|rtl_state~regout\,
	datad => \master_reset_button|op~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_reset_button|op~regout\);

-- Location: LC_X6_Y10_N5
\Selector9~8\ : maxv_lcell
-- Equation(s):
-- \Selector9~8_combout\ = (((!\master_reset_button|op~regout\ & !\soft_reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \master_reset_button|op~regout\,
	datad => \soft_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~8_combout\);

-- Location: LC_X7_Y10_N5
\turn[0]\ : maxv_lcell
-- Equation(s):
-- turn(0) = DFFEAS((turn(0) & (((\turn[0]~0_combout\)))) # (!turn(0) & (((\rtl_state.LED_ON~regout\ & !\turn[0]~0_combout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => turn(0),
	datac => \rtl_state.LED_ON~regout\,
	datad => \turn[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(0));

-- Location: LC_X7_Y10_N8
\turn[1]\ : maxv_lcell
-- Equation(s):
-- turn(1) = DFFEAS((\turn[0]~0_combout\ & (turn(1))) # (!\turn[0]~0_combout\ & (\rtl_state.LED_ON~regout\ & (turn(1) $ (turn(0))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa48",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => turn(1),
	datab => \rtl_state.LED_ON~regout\,
	datac => turn(0),
	datad => \turn[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(1));

-- Location: LC_X7_Y10_N6
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((turn(0) & turn(1))))

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
	datac => turn(0),
	datad => turn(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X7_Y10_N3
\turn[2]\ : maxv_lcell
-- Equation(s):
-- turn(2) = DFFEAS((\turn[0]~0_combout\ & (turn(2))) # (!\turn[0]~0_combout\ & (\rtl_state.LED_ON~regout\ & (turn(2) $ (\Add0~0_combout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa48",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => turn(2),
	datab => \rtl_state.LED_ON~regout\,
	datac => \Add0~0_combout\,
	datad => \turn[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(2));

-- Location: LC_X7_Y10_N2
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = (turn(2) & (((turn(0) & turn(1)))))

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
	dataa => turn(2),
	datac => turn(0),
	datad => turn(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\react~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_react,
	combout => \react~combout\);

-- Location: LC_X3_Y8_N4
\react_button|rtl_state\ : maxv_lcell
-- Equation(s):
-- \react_button|rtl_state~regout\ = DFFEAS((!\react~combout\), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \react~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \react_button|rtl_state~regout\);

-- Location: LC_X3_Y8_N2
\react_button|op\ : maxv_lcell
-- Equation(s):
-- \react_button|op~regout\ = DFFEAS((\react~combout\ & (((\react_button|op~regout\)))) # (!\react~combout\ & (((!\react_button|rtl_state~regout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \react~combout\,
	datac => \react_button|rtl_state~regout\,
	datad => \react_button|op~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \react_button|op~regout\);

-- Location: LC_X6_Y10_N3
\process_0~1\ : maxv_lcell
-- Equation(s):
-- \process_0~1_combout\ = (!\counter2|done~regout\ & (!turn(3) & (!\process_0~0_combout\ & \react_button|op~regout\)))

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
	dataa => \counter2|done~regout\,
	datab => turn(3),
	datac => \process_0~0_combout\,
	datad => \react_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

-- Location: LC_X6_Y10_N4
\turn[0]~0\ : maxv_lcell
-- Equation(s):
-- \turn[0]~0_combout\ = (\rtl_state.HALT~regout\ & (((!\process_0~1_combout\)) # (!\rtl_state.LED_ON~regout\))) # (!\rtl_state.HALT~regout\ & (\Selector9~8_combout\ & ((!\process_0~1_combout\) # (!\rtl_state.LED_ON~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "32fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rtl_state.HALT~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \Selector9~8_combout\,
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \turn[0]~0_combout\);

-- Location: LC_X6_Y10_N6
\turn[3]\ : maxv_lcell
-- Equation(s):
-- turn(3) = DFFEAS((\turn[0]~0_combout\ & (((turn(3))))) # (!\turn[0]~0_combout\ & (\rtl_state.LED_ON~regout\ & (\process_0~0_combout\ $ (turn(3))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \turn[0]~0_combout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \process_0~0_combout\,
	datad => turn(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => turn(3));

-- Location: LC_X10_Y7_N4
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

-- Location: LC_X3_Y9_N8
\randgen|count[0]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(0) = DFFEAS((((!\randgen|count\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(0));

-- Location: LC_X2_Y9_N0
\randgen|Add0~47\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~47_cout0\ = CARRY(((!\randgen|count\(0))))
-- \randgen|Add0~47COUT1_51\ = CARRY(((!\randgen|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \randgen|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~45\,
	cout0 => \randgen|Add0~47_cout0\,
	cout1 => \randgen|Add0~47COUT1_51\);

-- Location: LC_X2_Y9_N1
\randgen|Add0~10\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~10_combout\ = \randgen|count\(1) $ ((((\randgen|Add0~47_cout0\))))
-- \randgen|Add0~12\ = CARRY((\randgen|count\(1) & ((!\randgen|Add0~47_cout0\))))
-- \randgen|Add0~12COUT1_52\ = CARRY((\randgen|count\(1) & ((!\randgen|Add0~47COUT1_51\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a0a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \randgen|count\(1),
	cin0 => \randgen|Add0~47_cout0\,
	cin1 => \randgen|Add0~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~10_combout\,
	cout0 => \randgen|Add0~12\,
	cout1 => \randgen|Add0~12COUT1_52\);

-- Location: LC_X3_Y9_N7
\randgen|count[1]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(1) = DFFEAS((((!\randgen|Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \randgen|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(1));

-- Location: LC_X2_Y9_N2
\randgen|Add0~20\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~20_combout\ = (\randgen|count\(2) $ ((!\randgen|Add0~12\)))
-- \randgen|Add0~22\ = CARRY(((!\randgen|Add0~12\) # (!\randgen|count\(2))))
-- \randgen|Add0~22COUT1_53\ = CARRY(((!\randgen|Add0~12COUT1_52\) # (!\randgen|count\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \randgen|count\(2),
	cin0 => \randgen|Add0~12\,
	cin1 => \randgen|Add0~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~20_combout\,
	cout0 => \randgen|Add0~22\,
	cout1 => \randgen|Add0~22COUT1_53\);

-- Location: LC_X3_Y9_N4
\randgen|count[2]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(2) = DFFEAS((((!\randgen|Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(2));

-- Location: LC_X2_Y9_N3
\randgen|Add0~15\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~15_combout\ = (\randgen|count\(3) $ ((\randgen|Add0~22\)))
-- \randgen|Add0~17\ = CARRY(((\randgen|count\(3) & !\randgen|Add0~22\)))
-- \randgen|Add0~17COUT1_54\ = CARRY(((\randgen|count\(3) & !\randgen|Add0~22COUT1_53\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \randgen|count\(3),
	cin0 => \randgen|Add0~22\,
	cin1 => \randgen|Add0~22COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~15_combout\,
	cout0 => \randgen|Add0~17\,
	cout1 => \randgen|Add0~17COUT1_54\);

-- Location: LC_X3_Y9_N5
\randgen|count[3]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(3) = DFFEAS((((!\randgen|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(3));

-- Location: LC_X2_Y9_N4
\randgen|Add0~30\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~30_combout\ = \randgen|count\(4) $ ((((!\randgen|Add0~17\))))
-- \randgen|Add0~32\ = CARRY(((!\randgen|Add0~17COUT1_54\)) # (!\randgen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \randgen|count\(4),
	cin0 => \randgen|Add0~17\,
	cin1 => \randgen|Add0~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~30_combout\,
	cout => \randgen|Add0~32\);

-- Location: LC_X3_Y9_N6
\randgen|count[4]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(4) = DFFEAS((((!\randgen|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(4));

-- Location: LC_X2_Y9_N5
\randgen|Add0~25\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~25_combout\ = (\randgen|count\(5) $ ((\randgen|Add0~32\)))
-- \randgen|Add0~27\ = CARRY(((\randgen|count\(5) & !\randgen|Add0~32\)))
-- \randgen|Add0~27COUT1_55\ = CARRY(((\randgen|count\(5) & !\randgen|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \randgen|count\(5),
	cin => \randgen|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~25_combout\,
	cout0 => \randgen|Add0~27\,
	cout1 => \randgen|Add0~27COUT1_55\);

-- Location: LC_X3_Y9_N9
\randgen|count[5]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(5) = DFFEAS((((!\randgen|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(5));

-- Location: LC_X2_Y9_N6
\randgen|Add0~40\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~40_combout\ = \randgen|count\(6) $ ((((!(!\randgen|Add0~32\ & \randgen|Add0~27\) # (\randgen|Add0~32\ & \randgen|Add0~27COUT1_55\)))))
-- \randgen|Add0~42\ = CARRY(((!\randgen|Add0~27\)) # (!\randgen|count\(6)))
-- \randgen|Add0~42COUT1_56\ = CARRY(((!\randgen|Add0~27COUT1_55\)) # (!\randgen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \randgen|count\(6),
	cin => \randgen|Add0~32\,
	cin0 => \randgen|Add0~27\,
	cin1 => \randgen|Add0~27COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~40_combout\,
	cout0 => \randgen|Add0~42\,
	cout1 => \randgen|Add0~42COUT1_56\);

-- Location: LC_X3_Y9_N0
\randgen|count[6]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(6) = DFFEAS((((!\randgen|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \randgen|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(6));

-- Location: LC_X2_Y9_N7
\randgen|Add0~35\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~35_combout\ = (\randgen|count\(7) $ (((!\randgen|Add0~32\ & \randgen|Add0~42\) # (\randgen|Add0~32\ & \randgen|Add0~42COUT1_56\))))
-- \randgen|Add0~37\ = CARRY(((\randgen|count\(7) & !\randgen|Add0~42\)))
-- \randgen|Add0~37COUT1_57\ = CARRY(((\randgen|count\(7) & !\randgen|Add0~42COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \randgen|count\(7),
	cin => \randgen|Add0~32\,
	cin0 => \randgen|Add0~42\,
	cin1 => \randgen|Add0~42COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~35_combout\,
	cout0 => \randgen|Add0~37\,
	cout1 => \randgen|Add0~37COUT1_57\);

-- Location: LC_X3_Y9_N2
\randgen|count[7]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(7) = DFFEAS((((!\randgen|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(7));

-- Location: LC_X2_Y9_N8
\randgen|Add0~5\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~5_combout\ = \randgen|count\(8) $ ((((!(!\randgen|Add0~32\ & \randgen|Add0~37\) # (\randgen|Add0~32\ & \randgen|Add0~37COUT1_57\)))))
-- \randgen|Add0~7\ = CARRY(((!\randgen|Add0~37\)) # (!\randgen|count\(8)))
-- \randgen|Add0~7COUT1_58\ = CARRY(((!\randgen|Add0~37COUT1_57\)) # (!\randgen|count\(8)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \randgen|count\(8),
	cin => \randgen|Add0~32\,
	cin0 => \randgen|Add0~37\,
	cin1 => \randgen|Add0~37COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~5_combout\,
	cout0 => \randgen|Add0~7\,
	cout1 => \randgen|Add0~7COUT1_58\);

-- Location: LC_X3_Y9_N3
\randgen|count[8]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(8) = DFFEAS((((!\randgen|Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \randgen|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(8));

-- Location: LC_X3_Y10_N5
\randgen|rand[8]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(8) = DFFEAS((((!\randgen|count\(8)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datac => \randgen|count\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(8));

-- Location: LC_X2_Y9_N9
\randgen|Add0~0\ : maxv_lcell
-- Equation(s):
-- \randgen|Add0~0_combout\ = (((!\randgen|Add0~32\ & \randgen|Add0~7\) # (\randgen|Add0~32\ & \randgen|Add0~7COUT1_58\) $ (\randgen|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \randgen|count\(9),
	cin => \randgen|Add0~32\,
	cin0 => \randgen|Add0~7\,
	cin1 => \randgen|Add0~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \randgen|Add0~0_combout\);

-- Location: LC_X3_Y9_N1
\randgen|count[9]\ : maxv_lcell
-- Equation(s):
-- \randgen|count\(9) = DFFEAS((((!\randgen|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \randgen|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|count\(9));

-- Location: LC_X3_Y10_N2
\randgen|rand[9]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(9) = DFFEAS((((!\randgen|count\(9)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datac => \randgen|count\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(9));

-- Location: LC_X6_Y9_N3
rst_c1 : maxv_lcell
-- Equation(s):
-- \rst_c1~regout\ = DFFEAS((\rtl_state.LED_ON~regout\) # ((!\rtl_state.HALT~regout\ & ((\rst_c1~regout\) # (!\Selector9~8_combout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \rst_c1~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \Selector9~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rst_c1~regout\);

-- Location: LC_X6_Y7_N0
start_c1 : maxv_lcell
-- Equation(s):
-- \start_c1~regout\ = DFFEAS(((\rtl_state.LED_OFF~regout\) # ((\start_c1~regout\ & !\rtl_state.HALT~regout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \start_c1~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \rtl_state.LED_OFF~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_c1~regout\);

-- Location: LC_X5_Y8_N5
\counter1|count[0]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(0) = DFFEAS((!\counter1|count\(0)), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[0]~7\ = CARRY((\counter1|count\(0)))
-- \counter1|count[0]~7COUT1_23\ = CARRY((\counter1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(0),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(0),
	cout0 => \counter1|count[0]~7\,
	cout1 => \counter1|count[0]~7COUT1_23\);

-- Location: LC_X5_Y8_N6
\counter1|count[1]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(1) = DFFEAS(\counter1|count\(1) $ ((((\counter1|count[0]~7\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[1]~9\ = CARRY(((!\counter1|count[0]~7\)) # (!\counter1|count\(1)))
-- \counter1|count[1]~9COUT1_24\ = CARRY(((!\counter1|count[0]~7COUT1_23\)) # (!\counter1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(1),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin0 => \counter1|count[0]~7\,
	cin1 => \counter1|count[0]~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(1),
	cout0 => \counter1|count[1]~9\,
	cout1 => \counter1|count[1]~9COUT1_24\);

-- Location: LC_X5_Y8_N7
\counter1|count[2]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(2) = DFFEAS((\counter1|count\(2) $ ((!\counter1|count[1]~9\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[2]~11\ = CARRY(((\counter1|count\(2) & !\counter1|count[1]~9\)))
-- \counter1|count[2]~11COUT1_25\ = CARRY(((\counter1|count\(2) & !\counter1|count[1]~9COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter1|count\(2),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin0 => \counter1|count[1]~9\,
	cin1 => \counter1|count[1]~9COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(2),
	cout0 => \counter1|count[2]~11\,
	cout1 => \counter1|count[2]~11COUT1_25\);

-- Location: LC_X5_Y8_N8
\counter1|count[3]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(3) = DFFEAS(\counter1|count\(3) $ ((((\counter1|count[2]~11\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[3]~13\ = CARRY(((!\counter1|count[2]~11\)) # (!\counter1|count\(3)))
-- \counter1|count[3]~13COUT1_26\ = CARRY(((!\counter1|count[2]~11COUT1_25\)) # (!\counter1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(3),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin0 => \counter1|count[2]~11\,
	cin1 => \counter1|count[2]~11COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(3),
	cout0 => \counter1|count[3]~13\,
	cout1 => \counter1|count[3]~13COUT1_26\);

-- Location: LC_X5_Y8_N2
\counter1|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \counter1|Equal0~0_combout\ = (((!\counter1|count\(3)) # (!\counter1|count\(1))) # (!\counter1|count\(2))) # (!\counter1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(0),
	datab => \counter1|count\(2),
	datac => \counter1|count\(1),
	datad => \counter1|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|Equal0~0_combout\);

-- Location: LC_X5_Y8_N9
\counter1|count[4]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(4) = DFFEAS((\counter1|count\(4) $ ((!\counter1|count[3]~13\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[4]~15\ = CARRY(((\counter1|count\(4) & !\counter1|count[3]~13COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter1|count\(4),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin0 => \counter1|count[3]~13\,
	cin1 => \counter1|count[3]~13COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(4),
	cout => \counter1|count[4]~15\);

-- Location: LC_X6_Y8_N0
\counter1|count[5]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(5) = DFFEAS((\counter1|count\(5) $ ((\counter1|count[4]~15\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )
-- \counter1|count[5]~17\ = CARRY(((!\counter1|count[4]~15\) # (!\counter1|count\(5))))
-- \counter1|count[5]~17COUT1_27\ = CARRY(((!\counter1|count[4]~15\) # (!\counter1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter1|count\(5),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[4]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(5),
	cout0 => \counter1|count[5]~17\,
	cout1 => \counter1|count[5]~17COUT1_27\);

-- Location: LC_X6_Y8_N1
\counter1|count[6]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(6) = DFFEAS((\counter1|count\(6) $ ((!(!\counter1|count[4]~15\ & \counter1|count[5]~17\) # (\counter1|count[4]~15\ & \counter1|count[5]~17COUT1_27\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , 
-- !\counter1|rtl_state~regout\, )
-- \counter1|count[6]~19\ = CARRY(((\counter1|count\(6) & !\counter1|count[5]~17\)))
-- \counter1|count[6]~19COUT1_28\ = CARRY(((\counter1|count\(6) & !\counter1|count[5]~17COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter1|count\(6),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[4]~15\,
	cin0 => \counter1|count[5]~17\,
	cin1 => \counter1|count[5]~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(6),
	cout0 => \counter1|count[6]~19\,
	cout1 => \counter1|count[6]~19COUT1_28\);

-- Location: LC_X6_Y8_N2
\counter1|count[7]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(7) = DFFEAS((\counter1|count\(7) $ (((!\counter1|count[4]~15\ & \counter1|count[6]~19\) # (\counter1|count[4]~15\ & \counter1|count[6]~19COUT1_28\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , 
-- !\counter1|rtl_state~regout\, )
-- \counter1|count[7]~21\ = CARRY(((!\counter1|count[6]~19\) # (!\counter1|count\(7))))
-- \counter1|count[7]~21COUT1_29\ = CARRY(((!\counter1|count[6]~19COUT1_28\) # (!\counter1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter1|count\(7),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[4]~15\,
	cin0 => \counter1|count[6]~19\,
	cin1 => \counter1|count[6]~19COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(7),
	cout0 => \counter1|count[7]~21\,
	cout1 => \counter1|count[7]~21COUT1_29\);

-- Location: LC_X6_Y8_N3
\counter1|count[8]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(8) = DFFEAS(\counter1|count\(8) $ ((((!(!\counter1|count[4]~15\ & \counter1|count[7]~21\) # (\counter1|count[4]~15\ & \counter1|count[7]~21COUT1_29\))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , 
-- , !\counter1|rtl_state~regout\, )
-- \counter1|count[8]~3\ = CARRY((\counter1|count\(8) & ((!\counter1|count[7]~21\))))
-- \counter1|count[8]~3COUT1_30\ = CARRY((\counter1|count\(8) & ((!\counter1|count[7]~21COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(8),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[4]~15\,
	cin0 => \counter1|count[7]~21\,
	cin1 => \counter1|count[7]~21COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(8),
	cout0 => \counter1|count[8]~3\,
	cout1 => \counter1|count[8]~3COUT1_30\);

-- Location: LC_X6_Y8_N4
\counter1|count[9]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(9) = DFFEAS(\counter1|count\(9) $ (((((!\counter1|count[4]~15\ & \counter1|count[8]~3\) # (\counter1|count[4]~15\ & \counter1|count[8]~3COUT1_30\))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , 
-- !\counter1|rtl_state~regout\, )
-- \counter1|count[9]~5\ = CARRY(((!\counter1|count[8]~3COUT1_30\)) # (!\counter1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(9),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[4]~15\,
	cin0 => \counter1|count[8]~3\,
	cin1 => \counter1|count[8]~3COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(9),
	cout => \counter1|count[9]~5\);

-- Location: LC_X6_Y8_N5
\counter1|count[10]\ : maxv_lcell
-- Equation(s):
-- \counter1|count\(10) = DFFEAS(\counter1|count\(10) $ ((((!\counter1|count[9]~5\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter1|next_count_var~0_combout\, , , !\counter1|rtl_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count\(10),
	aclr => GND,
	sclr => \counter1|ALT_INV_rtl_state~regout\,
	ena => \counter1|next_count_var~0_combout\,
	cin => \counter1|count[9]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count\(10));

-- Location: LC_X6_Y8_N7
\counter1|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \counter1|Equal0~1_combout\ = (((!\counter1|count\(7)) # (!\counter1|count\(5))) # (!\counter1|count\(6))) # (!\counter1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(4),
	datab => \counter1|count\(6),
	datac => \counter1|count\(5),
	datad => \counter1|count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|Equal0~1_combout\);

-- Location: LC_X6_Y8_N8
\counter1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \counter1|Equal0~2_combout\ = (((\counter1|Equal0~1_combout\) # (!\counter1|count\(10))) # (!\counter1|count\(9))) # (!\counter1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|count\(8),
	datab => \counter1|count\(9),
	datac => \counter1|count\(10),
	datad => \counter1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|Equal0~2_combout\);

-- Location: LC_X6_Y8_N9
\counter1|next_count_var~0\ : maxv_lcell
-- Equation(s):
-- \counter1|next_count_var~0_combout\ = (\counter1|rtl_state~regout\ & (((\counter1|Equal0~0_combout\) # (\counter1|Equal0~2_combout\)))) # (!\counter1|rtl_state~regout\ & (\start_c1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start_c1~regout\,
	datab => \counter1|Equal0~0_combout\,
	datac => \counter1|rtl_state~regout\,
	datad => \counter1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter1|next_count_var~0_combout\);

-- Location: LC_X6_Y8_N6
\counter1|rtl_state\ : maxv_lcell
-- Equation(s):
-- \counter1|rtl_state~regout\ = DFFEAS(((!\rst_c1~regout\ & (!\master_reset_button|op~regout\ & \counter1|next_count_var~0_combout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \rst_c1~regout\,
	datac => \master_reset_button|op~regout\,
	datad => \counter1|next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|rtl_state~regout\);

-- Location: LC_X3_Y10_N4
\counter1|count_out[9]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(9) = DFFEAS(GND, GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , \counter1|count\(9), , , VCC)

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
	clk => \clock_1ms|clk_out~combout\,
	datac => \counter1|count\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(9));

-- Location: LC_X4_Y10_N9
\counter1|count_out[8]\ : maxv_lcell
-- Equation(s):
-- \process_0~2\ = (\randgen|rand\(8) & (C1_count_out[8] & (\randgen|rand\(9) $ (!\counter1|count_out\(9))))) # (!\randgen|rand\(8) & (!C1_count_out[8] & (\randgen|rand\(9) $ (!\counter1|count_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \randgen|rand\(8),
	datab => \randgen|rand\(9),
	datac => \counter1|count\(8),
	datad => \counter1|count_out\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~2\,
	regout => \counter1|count_out\(8));

-- Location: LC_X4_Y10_N6
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

-- Location: LC_X4_Y10_N7
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

-- Location: LC_X4_Y10_N0
\counter1|count_out[1]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(1) = DFFEAS((((\counter1|count\(1)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datad => \counter1|count\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(1));

-- Location: LC_X4_Y10_N5
\counter1|count_out[0]\ : maxv_lcell
-- Equation(s):
-- \process_0~3\ = (\randgen|rand\(0) & (C1_count_out[0] & (\randgen|rand\(1) $ (!\counter1|count_out\(1))))) # (!\randgen|rand\(0) & (!C1_count_out[0] & (\randgen|rand\(1) $ (!\counter1|count_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \randgen|rand\(0),
	datab => \randgen|rand\(1),
	datac => \counter1|count\(0),
	datad => \counter1|count_out\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~3\,
	regout => \counter1|count_out\(0));

-- Location: LC_X4_Y10_N8
\counter1|count_out[5]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(5) = DFFEAS(GND, GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , \counter1|count\(5), , , VCC)

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
	clk => \clock_1ms|clk_out~combout\,
	datac => \counter1|count\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(5));

-- Location: LC_X3_Y10_N7
\randgen|rand[4]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(4) = DFFEAS((((!\randgen|count\(4)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(4));

-- Location: LC_X3_Y10_N0
\randgen|rand[5]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(5) = DFFEAS((((!\randgen|count\(5)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(5));

-- Location: LC_X4_Y10_N2
\counter1|count_out[4]\ : maxv_lcell
-- Equation(s):
-- \process_0~5\ = (\counter1|count_out\(5) & (\randgen|rand\(5) & (\randgen|rand\(4) $ (!C1_count_out[4])))) # (!\counter1|count_out\(5) & (!\randgen|rand\(5) & (\randgen|rand\(4) $ (!C1_count_out[4]))))

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
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter1|count_out\(5),
	datab => \randgen|rand\(4),
	datac => \counter1|count\(4),
	datad => \randgen|rand\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~5\,
	regout => \counter1|count_out\(4));

-- Location: LC_X3_Y10_N6
\randgen|rand[6]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(6) = DFFEAS((((!\randgen|count\(6)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(6));

-- Location: LC_X3_Y10_N9
\counter1|count_out[7]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(7) = DFFEAS(GND, GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , \counter1|count\(7), , , VCC)

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
	clk => \clock_1ms|clk_out~combout\,
	datac => \counter1|count\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(7));

-- Location: LC_X3_Y10_N3
\randgen|rand[7]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(7) = DFFEAS((((!\randgen|count\(7)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(7));

-- Location: LC_X3_Y10_N8
\counter1|count_out[6]\ : maxv_lcell
-- Equation(s):
-- \process_0~6\ = (\randgen|rand\(6) & (C1_count_out[6] & (\counter1|count_out\(7) $ (!\randgen|rand\(7))))) # (!\randgen|rand\(6) & (!C1_count_out[6] & (\counter1|count_out\(7) $ (!\randgen|rand\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \randgen|rand\(6),
	datab => \counter1|count_out\(7),
	datac => \counter1|count\(6),
	datad => \randgen|rand\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~6\,
	regout => \counter1|count_out\(6));

-- Location: LC_X4_Y9_N4
\randgen|rand[3]\ : maxv_lcell
-- Equation(s):
-- \randgen|rand\(3) = DFFEAS((((!\randgen|count\(3)))), GLOBAL(\trig~combout\), VCC, , , , , , )

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
	datad => \randgen|count\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randgen|rand\(3));

-- Location: LC_X4_Y9_N9
\counter1|count_out[3]\ : maxv_lcell
-- Equation(s):
-- \counter1|count_out\(3) = DFFEAS((((\counter1|count\(3)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datad => \counter1|count\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter1|count_out\(3));

-- Location: LC_X4_Y9_N3
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

-- Location: LC_X4_Y9_N5
\counter1|count_out[2]\ : maxv_lcell
-- Equation(s):
-- \process_0~4\ = (\randgen|rand\(3) & (\counter1|count_out\(3) & (C1_count_out[2] $ (!\randgen|rand\(2))))) # (!\randgen|rand\(3) & (!\counter1|count_out\(3) & (C1_count_out[2] $ (!\randgen|rand\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \randgen|rand\(3),
	datab => \counter1|count_out\(3),
	datac => \counter1|count\(2),
	datad => \randgen|rand\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~4\,
	regout => \counter1|count_out\(2));

-- Location: LC_X4_Y10_N3
\process_0~7\ : maxv_lcell
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~3\ & (\process_0~5\ & (\process_0~6\ & \process_0~4\)))

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
	dataa => \process_0~3\,
	datab => \process_0~5\,
	datac => \process_0~6\,
	datad => \process_0~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~7_combout\);

-- Location: LC_X4_Y10_N4
\counter1|count_out[10]\ : maxv_lcell
-- Equation(s):
-- \Selector9~1\ = ((\process_0~2\ & (C1_count_out[10] & \process_0~7_combout\)))
-- \counter1|count_out\(10) = DFFEAS(\Selector9~1\, GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , \counter1|count\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \process_0~2\,
	datac => \counter1|count\(10),
	datad => \process_0~7_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1\,
	regout => \counter1|count_out\(10));

-- Location: LC_X4_Y10_N1
\process_0~8\ : maxv_lcell
-- Equation(s):
-- \process_0~8_combout\ = ((\process_0~2\ & (\counter1|count_out\(10) & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process_0~2\,
	datac => \counter1|count_out\(10),
	datad => \process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~8_combout\);

-- Location: LC_X6_Y10_N7
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (!\master_reset_button|op~regout\ & (\rtl_state.LED_ON~regout\ & (!\counter2|done~regout\ & !\process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \master_reset_button|op~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \counter2|done~regout\,
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X5_Y10_N7
\rtl_state.LED_ON\ : maxv_lcell
-- Equation(s):
-- \rtl_state.LED_ON~regout\ = DFFEAS((\Selector8~0_combout\) # ((\rtl_state.LED_OFF~regout\ & (!turn(3) & \process_0~8_combout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \rtl_state.LED_OFF~regout\,
	datab => turn(3),
	datac => \process_0~8_combout\,
	datad => \Selector8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.LED_ON~regout\);

-- Location: LC_X6_Y10_N0
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (((!turn(3) & \react_button|op~regout\)))

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
	datac => turn(3),
	datad => \react_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X6_Y10_N8
\Selector6~1\ : maxv_lcell
-- Equation(s):
-- \Selector6~1_combout\ = (((!\master_reset_button|op~regout\ & \rtl_state.LED_OFF~regout\)))

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
	datac => \master_reset_button|op~regout\,
	datad => \rtl_state.LED_OFF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~1_combout\);

-- Location: LC_X6_Y10_N9
soft_reset : maxv_lcell
-- Equation(s):
-- \soft_reset~regout\ = DFFEAS((\counter2|done~regout\ & ((\rtl_state.LED_ON~regout\) # ((\Selector6~0_combout\ & \Selector6~1_combout\)))) # (!\counter2|done~regout\ & (((\Selector6~0_combout\ & \Selector6~1_combout\)))), 
-- GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|done~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \Selector6~0_combout\,
	datad => \Selector6~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \soft_reset~regout\);

-- Location: LC_X5_Y10_N1
\Selector9~3\ : maxv_lcell
-- Equation(s):
-- \Selector9~3_combout\ = (\rtl_state.LED_ON~regout\ & (\master_reset_button|op~regout\)) # (!\rtl_state.LED_ON~regout\ & ((\rtl_state.HALT~regout\ & ((\react_button|op~regout\))) # (!\rtl_state.HALT~regout\ & (\master_reset_button|op~regout\))))

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
	dataa => \master_reset_button|op~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \react_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~3_combout\);

-- Location: LC_X5_Y10_N2
\Selector9~2\ : maxv_lcell
-- Equation(s):
-- \Selector9~2_combout\ = (\rtl_state.LED_OFF~regout\ & ((\master_reset_button|op~regout\) # ((turn(3)) # (\Selector9~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \master_reset_button|op~regout\,
	datab => \rtl_state.LED_OFF~regout\,
	datac => turn(3),
	datad => \Selector9~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~2_combout\);

-- Location: LC_X5_Y10_N3
\Selector9~4\ : maxv_lcell
-- Equation(s):
-- \Selector9~4_combout\ = (\Selector9~3_combout\) # ((\Selector9~2_combout\) # ((\soft_reset~regout\ & !\rtl_state.HALT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soft_reset~regout\,
	datab => \Selector9~3_combout\,
	datac => \rtl_state.HALT~regout\,
	datad => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~4_combout\);

-- Location: LC_X5_Y10_N0
\Selector9~6\ : maxv_lcell
-- Equation(s):
-- \Selector9~6_combout\ = (!\rtl_state.HALT~regout\ & (((\master_reset_button|op~regout\))))

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
	dataa => \rtl_state.HALT~regout\,
	datac => \master_reset_button|op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~6_combout\);

-- Location: LC_X5_Y10_N6
\Selector7~1\ : maxv_lcell
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector9~2_combout\ & (!turn(3) & ((\process_0~8_combout\)))) # (!\Selector9~2_combout\ & (((\Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => turn(3),
	datab => \Selector9~6_combout\,
	datac => \process_0~8_combout\,
	datad => \Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1_combout\);

-- Location: LC_X5_Y10_N4
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector9~0_combout\ & (((\process_0~1_combout\)))) # (!\Selector9~0_combout\ & (\rtl_state.HALT~regout\ & ((!\Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \rtl_state.HALT~regout\,
	datac => \process_0~1_combout\,
	datad => \Selector9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X5_Y10_N5
\rtl_state.HALT\ : maxv_lcell
-- Equation(s):
-- \rtl_state.HALT~regout\ = DFFEAS((\Selector7~0_combout\) # ((\Selector9~4_combout\ & (!\Selector9~0_combout\ & \Selector7~1_combout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \Selector9~4_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector7~1_combout\,
	datad => \Selector7~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.HALT~regout\);

-- Location: LC_X6_Y9_N5
start_c2 : maxv_lcell
-- Equation(s):
-- \start_c2~regout\ = DFFEAS(((\rtl_state.LED_ON~regout\) # ((\start_c2~regout\ & !\rtl_state.HALT~regout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \start_c2~regout\,
	datac => \rtl_state.HALT~regout\,
	datad => \rtl_state.LED_ON~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_c2~regout\);

-- Location: LC_X8_Y6_N5
\counter2|count[0]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(0) = DFFEAS((!\counter2|count\(0)), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[0]~1\ = CARRY((\counter2|count\(0)))
-- \counter2|count[0]~1COUT1_23\ = CARRY((\counter2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(0),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(0),
	cout0 => \counter2|count[0]~1\,
	cout1 => \counter2|count[0]~1COUT1_23\);

-- Location: LC_X8_Y6_N6
\counter2|count[1]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(1) = DFFEAS(\counter2|count\(1) $ ((((\counter2|count[0]~1\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[1]~3\ = CARRY(((!\counter2|count[0]~1\)) # (!\counter2|count\(1)))
-- \counter2|count[1]~3COUT1_24\ = CARRY(((!\counter2|count[0]~1COUT1_23\)) # (!\counter2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(1),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin0 => \counter2|count[0]~1\,
	cin1 => \counter2|count[0]~1COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(1),
	cout0 => \counter2|count[1]~3\,
	cout1 => \counter2|count[1]~3COUT1_24\);

-- Location: LC_X8_Y6_N7
\counter2|count[2]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(2) = DFFEAS((\counter2|count\(2) $ ((!\counter2|count[1]~3\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[2]~5\ = CARRY(((\counter2|count\(2) & !\counter2|count[1]~3\)))
-- \counter2|count[2]~5COUT1_25\ = CARRY(((\counter2|count\(2) & !\counter2|count[1]~3COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter2|count\(2),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin0 => \counter2|count[1]~3\,
	cin1 => \counter2|count[1]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(2),
	cout0 => \counter2|count[2]~5\,
	cout1 => \counter2|count[2]~5COUT1_25\);

-- Location: LC_X8_Y6_N8
\counter2|count[3]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(3) = DFFEAS(\counter2|count\(3) $ ((((\counter2|count[2]~5\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[3]~7\ = CARRY(((!\counter2|count[2]~5\)) # (!\counter2|count\(3)))
-- \counter2|count[3]~7COUT1_26\ = CARRY(((!\counter2|count[2]~5COUT1_25\)) # (!\counter2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(3),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin0 => \counter2|count[2]~5\,
	cin1 => \counter2|count[2]~5COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(3),
	cout0 => \counter2|count[3]~7\,
	cout1 => \counter2|count[3]~7COUT1_26\);

-- Location: LC_X8_Y6_N9
\counter2|count[4]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(4) = DFFEAS((\counter2|count\(4) $ ((!\counter2|count[3]~7\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[4]~9\ = CARRY(((\counter2|count\(4) & !\counter2|count[3]~7COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter2|count\(4),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin0 => \counter2|count[3]~7\,
	cin1 => \counter2|count[3]~7COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(4),
	cout => \counter2|count[4]~9\);

-- Location: LC_X9_Y6_N0
\counter2|count[5]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(5) = DFFEAS((\counter2|count\(5) $ ((\counter2|count[4]~9\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )
-- \counter2|count[5]~11\ = CARRY(((!\counter2|count[4]~9\) # (!\counter2|count\(5))))
-- \counter2|count[5]~11COUT1_27\ = CARRY(((!\counter2|count[4]~9\) # (!\counter2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter2|count\(5),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(5),
	cout0 => \counter2|count[5]~11\,
	cout1 => \counter2|count[5]~11COUT1_27\);

-- Location: LC_X9_Y6_N1
\counter2|count[6]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(6) = DFFEAS((\counter2|count\(6) $ ((!(!\counter2|count[4]~9\ & \counter2|count[5]~11\) # (\counter2|count[4]~9\ & \counter2|count[5]~11COUT1_27\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , 
-- !\counter2|rtl_state~regout\, )
-- \counter2|count[6]~13\ = CARRY(((\counter2|count\(6) & !\counter2|count[5]~11\)))
-- \counter2|count[6]~13COUT1_28\ = CARRY(((\counter2|count\(6) & !\counter2|count[5]~11COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter2|count\(6),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[4]~9\,
	cin0 => \counter2|count[5]~11\,
	cin1 => \counter2|count[5]~11COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(6),
	cout0 => \counter2|count[6]~13\,
	cout1 => \counter2|count[6]~13COUT1_28\);

-- Location: LC_X9_Y6_N2
\counter2|count[7]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(7) = DFFEAS((\counter2|count\(7) $ (((!\counter2|count[4]~9\ & \counter2|count[6]~13\) # (\counter2|count[4]~9\ & \counter2|count[6]~13COUT1_28\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , 
-- !\counter2|rtl_state~regout\, )
-- \counter2|count[7]~15\ = CARRY(((!\counter2|count[6]~13\) # (!\counter2|count\(7))))
-- \counter2|count[7]~15COUT1_29\ = CARRY(((!\counter2|count[6]~13COUT1_28\) # (!\counter2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	datab => \counter2|count\(7),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[4]~9\,
	cin0 => \counter2|count[6]~13\,
	cin1 => \counter2|count[6]~13COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(7),
	cout0 => \counter2|count[7]~15\,
	cout1 => \counter2|count[7]~15COUT1_29\);

-- Location: LC_X9_Y6_N3
\counter2|count[8]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(8) = DFFEAS(\counter2|count\(8) $ ((((!(!\counter2|count[4]~9\ & \counter2|count[7]~15\) # (\counter2|count[4]~9\ & \counter2|count[7]~15COUT1_29\))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , 
-- !\counter2|rtl_state~regout\, )
-- \counter2|count[8]~17\ = CARRY((\counter2|count\(8) & ((!\counter2|count[7]~15\))))
-- \counter2|count[8]~17COUT1_30\ = CARRY((\counter2|count\(8) & ((!\counter2|count[7]~15COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(8),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[4]~9\,
	cin0 => \counter2|count[7]~15\,
	cin1 => \counter2|count[7]~15COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(8),
	cout0 => \counter2|count[8]~17\,
	cout1 => \counter2|count[8]~17COUT1_30\);

-- Location: LC_X9_Y6_N4
\counter2|count[9]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(9) = DFFEAS(\counter2|count\(9) $ (((((!\counter2|count[4]~9\ & \counter2|count[8]~17\) # (\counter2|count[4]~9\ & \counter2|count[8]~17COUT1_30\))))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , 
-- !\counter2|rtl_state~regout\, )
-- \counter2|count[9]~19\ = CARRY(((!\counter2|count[8]~17COUT1_30\)) # (!\counter2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(9),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[4]~9\,
	cin0 => \counter2|count[8]~17\,
	cin1 => \counter2|count[8]~17COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(9),
	cout => \counter2|count[9]~19\);

-- Location: LC_X9_Y6_N5
\counter2|count[10]\ : maxv_lcell
-- Equation(s):
-- \counter2|count\(10) = DFFEAS(\counter2|count\(10) $ ((((!\counter2|count[9]~19\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , \counter2|next_count_var~0_combout\, , , !\counter2|rtl_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|count\(10),
	aclr => GND,
	sclr => \counter2|ALT_INV_rtl_state~regout\,
	ena => \counter2|next_count_var~0_combout\,
	cin => \counter2|count[9]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|count\(10));

-- Location: LC_X9_Y6_N7
\counter2|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \counter2|Equal0~1_combout\ = (((!\counter2|count\(7)) # (!\counter2|count\(5))) # (!\counter2|count\(6))) # (!\counter2|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(4),
	datab => \counter2|count\(6),
	datac => \counter2|count\(5),
	datad => \counter2|count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|Equal0~1_combout\);

-- Location: LC_X9_Y6_N8
\counter2|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \counter2|Equal0~2_combout\ = (((\counter2|Equal0~1_combout\) # (!\counter2|count\(10))) # (!\counter2|count\(9))) # (!\counter2|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(8),
	datab => \counter2|count\(9),
	datac => \counter2|count\(10),
	datad => \counter2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|Equal0~2_combout\);

-- Location: LC_X8_Y6_N4
\counter2|next_count_var~0\ : maxv_lcell
-- Equation(s):
-- \counter2|next_count_var~0_combout\ = (\counter2|rtl_state~regout\ & ((\counter2|Equal0~0_combout\) # ((\counter2|Equal0~2_combout\)))) # (!\counter2|rtl_state~regout\ & (((\start_c2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|Equal0~0_combout\,
	datab => \counter2|rtl_state~regout\,
	datac => \start_c2~regout\,
	datad => \counter2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|next_count_var~0_combout\);

-- Location: LC_X6_Y9_N2
rst_c2 : maxv_lcell
-- Equation(s):
-- \rst_c2~regout\ = DFFEAS((\rtl_state.LED_OFF~regout\) # ((!\rtl_state.HALT~regout\ & ((\rst_c2~regout\) # (!\Selector9~8_combout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \rst_c2~regout\,
	datab => \rtl_state.HALT~regout\,
	datac => \rtl_state.LED_OFF~regout\,
	datad => \Selector9~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rst_c2~regout\);

-- Location: LC_X8_Y6_N1
\counter2|rtl_state\ : maxv_lcell
-- Equation(s):
-- \counter2|rtl_state~regout\ = DFFEAS(((!\master_reset_button|op~regout\ & (\counter2|next_count_var~0_combout\ & !\rst_c2~regout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datab => \master_reset_button|op~regout\,
	datac => \counter2|next_count_var~0_combout\,
	datad => \rst_c2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|rtl_state~regout\);

-- Location: LC_X8_Y6_N3
\counter2|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \counter2|Equal0~0_combout\ = (((!\counter2|count\(3)) # (!\counter2|count\(0))) # (!\counter2|count\(2))) # (!\counter2|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|count\(1),
	datab => \counter2|count\(2),
	datac => \counter2|count\(0),
	datad => \counter2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter2|Equal0~0_combout\);

-- Location: LC_X8_Y6_N2
\counter2|done\ : maxv_lcell
-- Equation(s):
-- \counter2|done~regout\ = DFFEAS((!\counter2|Equal0~0_combout\ & (\counter2|rtl_state~regout\ & ((!\counter2|Equal0~2_combout\)))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \counter2|Equal0~0_combout\,
	datab => \counter2|rtl_state~regout\,
	datad => \counter2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter2|done~regout\);

-- Location: LC_X6_Y10_N1
\Selector9~0\ : maxv_lcell
-- Equation(s):
-- \Selector9~0_combout\ = (\rtl_state.LED_ON~regout\ & ((\counter2|done~regout\) # ((!\process_0~0_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|done~regout\,
	datab => \rtl_state.LED_ON~regout\,
	datac => \process_0~0_combout\,
	datad => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X5_Y10_N8
\Selector9~5\ : maxv_lcell
-- Equation(s):
-- \Selector9~5_combout\ = (\Selector9~0_combout\ & (((\process_0~1_combout\)))) # (!\Selector9~0_combout\ & (\rtl_state.LED_OFF~regout\ & ((!\Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \rtl_state.LED_OFF~regout\,
	datac => \process_0~1_combout\,
	datad => \Selector9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~5_combout\);

-- Location: LC_X5_Y10_N9
\rtl_state.LED_OFF\ : maxv_lcell
-- Equation(s):
-- \rtl_state.LED_OFF~regout\ = DFFEAS((\Selector9~5_combout\) # ((!\Selector9~0_combout\ & (\Selector9~6_combout\ & \Selector9~4_combout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1ms|clk_out~combout\,
	dataa => \Selector9~0_combout\,
	datab => \Selector9~6_combout\,
	datac => \Selector9~4_combout\,
	datad => \Selector9~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state.LED_OFF~regout\);

-- Location: LC_X6_Y7_N9
\show_state[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \show_state[0]~reg0_regout\ = DFFEAS((((!\rtl_state.LED_OFF~regout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datad => \rtl_state.LED_OFF~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \show_state[0]~reg0_regout\);

-- Location: LC_X6_Y6_N6
\show_state[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \show_state[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , \rtl_state.HALT~regout\, , , VCC)

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
	clk => \clock_1ms|clk_out~combout\,
	datac => \rtl_state.HALT~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \show_state[1]~reg0_regout\);

-- Location: LC_X6_Y9_N6
\led~reg0\ : maxv_lcell
-- Equation(s):
-- \led~reg0_regout\ = DFFEAS((((\rtl_state.LED_ON~regout\))), GLOBAL(\clock_1ms|clk_out~combout\), VCC, , , , , , )

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
	clk => \clock_1ms|clk_out~combout\,
	datad => \rtl_state.LED_ON~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led~reg0_regout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\show_state[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \show_state[0]~reg0_regout\,
	oe => VCC,
	padio => ww_show_state(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\show_state[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \show_state[1]~reg0_regout\,
	oe => VCC,
	padio => ww_show_state(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led~reg0_regout\,
	oe => VCC,
	padio => ww_led);
END structure;


