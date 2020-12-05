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

-- DATE "04/18/2018 19:41:03"

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

ENTITY 	counter3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	done : OUT std_logic;
	count_out : OUT IEEE.NUMERIC_STD.unsigned(10 DOWNTO 0)
	);
END counter3;

-- Design Ports Information


ARCHITECTURE structure OF counter3 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_count_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \count[0]~1\ : std_logic;
SIGNAL \count[0]~1COUT1_23\ : std_logic;
SIGNAL \count[1]~3\ : std_logic;
SIGNAL \count[1]~3COUT1_24\ : std_logic;
SIGNAL \count[2]~5\ : std_logic;
SIGNAL \count[2]~5COUT1_25\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[3]~7\ : std_logic;
SIGNAL \count[3]~7COUT1_26\ : std_logic;
SIGNAL \count[4]~9\ : std_logic;
SIGNAL \count[5]~11\ : std_logic;
SIGNAL \count[5]~11COUT1_27\ : std_logic;
SIGNAL \count[6]~13\ : std_logic;
SIGNAL \count[6]~13COUT1_28\ : std_logic;
SIGNAL \count[7]~15\ : std_logic;
SIGNAL \count[7]~15COUT1_29\ : std_logic;
SIGNAL \count[8]~17\ : std_logic;
SIGNAL \count[8]~17COUT1_30\ : std_logic;
SIGNAL \count[9]~19\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \next_count_var~0_combout\ : std_logic;
SIGNAL \rtl_state~regout\ : std_logic;
SIGNAL \done~reg0_regout\ : std_logic;
SIGNAL \count_out[0]~reg0_regout\ : std_logic;
SIGNAL \count_out[1]~reg0_regout\ : std_logic;
SIGNAL \count_out[2]~reg0_regout\ : std_logic;
SIGNAL \count_out[3]~reg0_regout\ : std_logic;
SIGNAL \count_out[4]~reg0_regout\ : std_logic;
SIGNAL \count_out[5]~reg0_regout\ : std_logic;
SIGNAL \count_out[6]~reg0_regout\ : std_logic;
SIGNAL \count_out[7]~reg0_regout\ : std_logic;
SIGNAL \count_out[8]~reg0_regout\ : std_logic;
SIGNAL \count_out[9]~reg0_regout\ : std_logic;
SIGNAL \count_out[10]~reg0_regout\ : std_logic;
SIGNAL count : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rtl_state~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
done <= ww_done;
count_out <= IEEE.NUMERIC_STD.UNSIGNED(ww_count_out);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rtl_state~regout\ <= NOT \rtl_state~regout\;

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

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LC_X2_Y8_N5
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((!count(0)), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[0]~1\ = CARRY((count(0)))
-- \count[0]~1COUT1_23\ = CARRY((count(0)))

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
	clk => \clk~combout\,
	dataa => count(0),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0),
	cout0 => \count[0]~1\,
	cout1 => \count[0]~1COUT1_23\);

-- Location: LC_X2_Y8_N6
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS((count(1) $ ((\count[0]~1\))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[1]~3\ = CARRY(((!\count[0]~1\) # (!count(1))))
-- \count[1]~3COUT1_24\ = CARRY(((!\count[0]~1COUT1_23\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(1),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin0 => \count[0]~1\,
	cin1 => \count[0]~1COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1),
	cout0 => \count[1]~3\,
	cout1 => \count[1]~3COUT1_24\);

-- Location: LC_X2_Y8_N7
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((count(2) $ ((!\count[1]~3\))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[2]~5\ = CARRY(((count(2) & !\count[1]~3\)))
-- \count[2]~5COUT1_25\ = CARRY(((count(2) & !\count[1]~3COUT1_24\)))

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
	clk => \clk~combout\,
	datab => count(2),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin0 => \count[1]~3\,
	cin1 => \count[1]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2),
	cout0 => \count[2]~5\,
	cout1 => \count[2]~5COUT1_25\);

-- Location: LC_X2_Y8_N8
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS(count(3) $ ((((\count[2]~5\)))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[3]~7\ = CARRY(((!\count[2]~5\)) # (!count(3)))
-- \count[3]~7COUT1_26\ = CARRY(((!\count[2]~5COUT1_25\)) # (!count(3)))

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
	dataa => count(3),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin0 => \count[2]~5\,
	cin1 => \count[2]~5COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3),
	cout0 => \count[3]~7\,
	cout1 => \count[3]~7COUT1_26\);

-- Location: LC_X2_Y8_N4
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((!count(1)) # (!count(0))) # (!count(2))) # (!count(3))

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
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X2_Y8_N9
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS((count(4) $ ((!\count[3]~7\))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[4]~9\ = CARRY(((count(4) & !\count[3]~7COUT1_26\)))

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
	clk => \clk~combout\,
	datab => count(4),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin0 => \count[3]~7\,
	cin1 => \count[3]~7COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4),
	cout => \count[4]~9\);

-- Location: LC_X3_Y8_N0
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS((count(5) $ ((\count[4]~9\))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[5]~11\ = CARRY(((!\count[4]~9\) # (!count(5))))
-- \count[5]~11COUT1_27\ = CARRY(((!\count[4]~9\) # (!count(5))))

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
	clk => \clk~combout\,
	datab => count(5),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5),
	cout0 => \count[5]~11\,
	cout1 => \count[5]~11COUT1_27\);

-- Location: LC_X3_Y8_N1
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS((count(6) $ ((!(!\count[4]~9\ & \count[5]~11\) # (\count[4]~9\ & \count[5]~11COUT1_27\)))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[6]~13\ = CARRY(((count(6) & !\count[5]~11\)))
-- \count[6]~13COUT1_28\ = CARRY(((count(6) & !\count[5]~11COUT1_27\)))

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
	datab => count(6),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[4]~9\,
	cin0 => \count[5]~11\,
	cin1 => \count[5]~11COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6),
	cout0 => \count[6]~13\,
	cout1 => \count[6]~13COUT1_28\);

-- Location: LC_X3_Y8_N2
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((count(7) $ (((!\count[4]~9\ & \count[6]~13\) # (\count[4]~9\ & \count[6]~13COUT1_28\)))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[7]~15\ = CARRY(((!\count[6]~13\) # (!count(7))))
-- \count[7]~15COUT1_29\ = CARRY(((!\count[6]~13COUT1_28\) # (!count(7))))

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
	datab => count(7),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[4]~9\,
	cin0 => \count[6]~13\,
	cin1 => \count[6]~13COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7),
	cout0 => \count[7]~15\,
	cout1 => \count[7]~15COUT1_29\);

-- Location: LC_X3_Y8_N3
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS(count(8) $ ((((!(!\count[4]~9\ & \count[7]~15\) # (\count[4]~9\ & \count[7]~15COUT1_29\))))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[8]~17\ = CARRY((count(8) & ((!\count[7]~15\))))
-- \count[8]~17COUT1_30\ = CARRY((count(8) & ((!\count[7]~15COUT1_29\))))

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
	dataa => count(8),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[4]~9\,
	cin0 => \count[7]~15\,
	cin1 => \count[7]~15COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8),
	cout0 => \count[8]~17\,
	cout1 => \count[8]~17COUT1_30\);

-- Location: LC_X3_Y8_N4
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS(count(9) $ (((((!\count[4]~9\ & \count[8]~17\) # (\count[4]~9\ & \count[8]~17COUT1_30\))))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )
-- \count[9]~19\ = CARRY(((!\count[8]~17COUT1_30\)) # (!count(9)))

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
	dataa => count(9),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[4]~9\,
	cin0 => \count[8]~17\,
	cin1 => \count[8]~17COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9),
	cout => \count[9]~19\);

-- Location: LC_X3_Y8_N5
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS(count(10) $ ((((!\count[9]~19\)))), GLOBAL(\clk~combout\), VCC, , \next_count_var~0_combout\, , , !\rtl_state~regout\, )

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
	clk => \clk~combout\,
	dataa => count(10),
	aclr => GND,
	sclr => \ALT_INV_rtl_state~regout\,
	ena => \next_count_var~0_combout\,
	cin => \count[9]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X2_Y8_N1
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (((!count(4)) # (!count(5))) # (!count(7))) # (!count(6))

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
	dataa => count(6),
	datab => count(7),
	datac => count(5),
	datad => count(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X2_Y8_N2
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (((\Equal0~1_combout\) # (!count(9))) # (!count(10))) # (!count(8))

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
	dataa => count(8),
	datab => count(10),
	datac => count(9),
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X2_Y8_N3
\next_count_var~0\ : maxv_lcell
-- Equation(s):
-- \next_count_var~0_combout\ = (\rtl_state~regout\ & (((\Equal0~0_combout\) # (\Equal0~2_combout\)))) # (!\rtl_state~regout\ & (\start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \rtl_state~regout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_count_var~0_combout\);

-- Location: LC_X2_Y8_N0
rtl_state : maxv_lcell
-- Equation(s):
-- \rtl_state~regout\ = DFFEAS(((!\reset~combout\ & ((\next_count_var~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => \next_count_var~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtl_state~regout\);

-- Location: LC_X1_Y8_N5
\done~reg0\ : maxv_lcell
-- Equation(s):
-- \done~reg0_regout\ = DFFEAS((\rtl_state~regout\ & (!\Equal0~0_combout\ & (!\Equal0~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rtl_state~regout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done~reg0_regout\);

-- Location: LC_X2_Y9_N4
\count_out[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(0), , , VCC)

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
	datac => count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[0]~reg0_regout\);

-- Location: LC_X2_Y7_N2
\count_out[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[1]~reg0_regout\ = DFFEAS((((count(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[1]~reg0_regout\);

-- Location: LC_X1_Y8_N6
\count_out[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[2]~reg0_regout\ = DFFEAS((((count(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => count(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[2]~reg0_regout\);

-- Location: LC_X2_Y7_N6
\count_out[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(3), , , VCC)

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
	datac => count(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[3]~reg0_regout\);

-- Location: LC_X2_Y9_N5
\count_out[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(4), , , VCC)

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
	datac => count(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[4]~reg0_regout\);

-- Location: LC_X3_Y8_N8
\count_out[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[5]~reg0_regout\ = DFFEAS((((count(5)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[5]~reg0_regout\);

-- Location: LC_X2_Y7_N5
\count_out[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(6), , , VCC)

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
	datac => count(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[6]~reg0_regout\);

-- Location: LC_X1_Y8_N2
\count_out[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[7]~reg0_regout\ = DFFEAS((((count(7)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => count(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[7]~reg0_regout\);

-- Location: LC_X2_Y7_N4
\count_out[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(8), , , VCC)

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
	datac => count(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[8]~reg0_regout\);

-- Location: LC_X1_Y8_N4
\count_out[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , count(9), , , VCC)

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
	datac => count(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[9]~reg0_regout\);

-- Location: LC_X2_Y9_N2
\count_out[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \count_out[10]~reg0_regout\ = DFFEAS((((count(10)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => count(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count_out[10]~reg0_regout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \done~reg0_regout\,
	oe => VCC,
	padio => ww_done);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[0]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(1));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(2));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(3));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[4]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[5]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(5));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[6]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[7]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(7));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[8]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(8));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[9]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(9));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \count_out[10]~reg0_regout\,
	oe => VCC,
	padio => ww_count_out(10));
END structure;


