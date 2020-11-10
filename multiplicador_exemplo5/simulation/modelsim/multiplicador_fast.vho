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

-- DATE "11/10/2020 19:08:15"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador IS
    PORT (
	inicio : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	mult : OUT std_logic_vector(3 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[3]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_mult : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \BOconnection|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BCconnection|CA~0_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \BCconnection|CA~regout\ : std_logic;
SIGNAL \BCconnection|Selector6~0_combout\ : std_logic;
SIGNAL \BCconnection|MA~regout\ : std_logic;
SIGNAL \BOconnection|muxA|y[0]~0_combout\ : std_logic;
SIGNAL \BOconnection|muxA|y[1]~1_combout\ : std_logic;
SIGNAL \BOconnection|muxA|y[2]~2_combout\ : std_logic;
SIGNAL \BOconnection|muxA|y[2]~3_combout\ : std_logic;
SIGNAL \BOconnection|subtratorA1|Add0~0_combout\ : std_logic;
SIGNAL \BOconnection|muxA|y[3]~4_combout\ : std_logic;
SIGNAL \BOconnection|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \BCconnection|state~15_combout\ : std_logic;
SIGNAL \BCconnection|state.S4~regout\ : std_logic;
SIGNAL \BCconnection|Selector0~0_combout\ : std_logic;
SIGNAL \BCconnection|state.S0~regout\ : std_logic;
SIGNAL \BCconnection|Selector1~0_combout\ : std_logic;
SIGNAL \BCconnection|state.S1~regout\ : std_logic;
SIGNAL \BCconnection|CB~feeder_combout\ : std_logic;
SIGNAL \BCconnection|CB~regout\ : std_logic;
SIGNAL \BOconnection|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \BCconnection|state~14_combout\ : std_logic;
SIGNAL \BCconnection|state.S3~regout\ : std_logic;
SIGNAL \BCconnection|Selector3~0_combout\ : std_logic;
SIGNAL \BCconnection|pronto~regout\ : std_logic;
SIGNAL \BOconnection|regP|q[0]~4_combout\ : std_logic;
SIGNAL \BCconnection|Selector4~0_combout\ : std_logic;
SIGNAL \BCconnection|CP~regout\ : std_logic;
SIGNAL \BOconnection|regMultPortMap|q[0]~feeder_combout\ : std_logic;
SIGNAL \BCconnection|CMULT~feeder_combout\ : std_logic;
SIGNAL \BCconnection|CMULT~regout\ : std_logic;
SIGNAL \BOconnection|regP|q[0]~5\ : std_logic;
SIGNAL \BOconnection|regP|q[1]~6_combout\ : std_logic;
SIGNAL \BOconnection|regMultPortMap|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|regP|q[1]~7\ : std_logic;
SIGNAL \BOconnection|regP|q[2]~8_combout\ : std_logic;
SIGNAL \BOconnection|regMultPortMap|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|regP|q[2]~9\ : std_logic;
SIGNAL \BOconnection|regP|q[3]~10_combout\ : std_logic;
SIGNAL \BOconnection|regMultPortMap|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOconnection|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOconnection|regP|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOconnection|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOconnection|regMultPortMap|q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_inicio <= inicio;
ww_Reset <= Reset;
ww_clk <= clk;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
mult <= ww_mult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
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
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
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
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCCOMB_X19_Y13_N14
\BOconnection|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \BOconnection|regB|q[0]~feeder_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
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
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X20_Y13_N8
\BCconnection|CA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|CA~0_combout\ = (\BCconnection|state.S1~regout\) # (\BCconnection|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCconnection|state.S1~regout\,
	datad => \BCconnection|state.S3~regout\,
	combout => \BCconnection|CA~0_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X20_Y13_N9
\BCconnection|CA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|CA~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|CA~regout\);

-- Location: LCCOMB_X20_Y13_N18
\BCconnection|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|Selector6~0_combout\ = (\BCconnection|state.S1~regout\) # ((\BCconnection|MA~regout\ & !\BCconnection|state.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCconnection|state.S1~regout\,
	datac => \BCconnection|MA~regout\,
	datad => \BCconnection|state.S3~regout\,
	combout => \BCconnection|Selector6~0_combout\);

-- Location: LCFF_X20_Y13_N19
\BCconnection|MA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|Selector6~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|MA~regout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
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
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: LCCOMB_X20_Y13_N2
\BOconnection|muxA|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|muxA|y[0]~0_combout\ = (\BCconnection|MA~regout\ & (\entA~combout\(0))) # (!\BCconnection|MA~regout\ & ((!\BOconnection|regA|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entA~combout\(0),
	datac => \BOconnection|regA|q\(0),
	datad => \BCconnection|MA~regout\,
	combout => \BOconnection|muxA|y[0]~0_combout\);

-- Location: LCFF_X20_Y13_N3
\BOconnection|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|muxA|y[0]~0_combout\,
	ena => \BCconnection|CA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regA|q\(0));

-- Location: LCCOMB_X20_Y13_N24
\BOconnection|muxA|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|muxA|y[1]~1_combout\ = (\BCconnection|MA~regout\ & (\entA~combout\(1))) # (!\BCconnection|MA~regout\ & ((\BOconnection|regA|q\(1) $ (!\BOconnection|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA~combout\(1),
	datab => \BCconnection|MA~regout\,
	datac => \BOconnection|regA|q\(1),
	datad => \BOconnection|regA|q\(0),
	combout => \BOconnection|muxA|y[1]~1_combout\);

-- Location: LCFF_X20_Y13_N25
\BOconnection|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|muxA|y[1]~1_combout\,
	ena => \BCconnection|CA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regA|q\(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
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
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
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
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCCOMB_X20_Y13_N10
\BOconnection|muxA|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|muxA|y[2]~2_combout\ = (!\BCconnection|MA~regout\ & (\BOconnection|regA|q\(2) $ (((!\BOconnection|regA|q\(1) & !\BOconnection|regA|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regA|q\(1),
	datab => \BCconnection|MA~regout\,
	datac => \BOconnection|regA|q\(0),
	datad => \BOconnection|regA|q\(2),
	combout => \BOconnection|muxA|y[2]~2_combout\);

-- Location: LCCOMB_X20_Y13_N30
\BOconnection|muxA|y[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|muxA|y[2]~3_combout\ = (\BOconnection|muxA|y[2]~2_combout\) # ((\BCconnection|MA~regout\ & \entA~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCconnection|MA~regout\,
	datac => \entA~combout\(2),
	datad => \BOconnection|muxA|y[2]~2_combout\,
	combout => \BOconnection|muxA|y[2]~3_combout\);

-- Location: LCFF_X20_Y13_N31
\BOconnection|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|muxA|y[2]~3_combout\,
	ena => \BCconnection|CA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regA|q\(2));

-- Location: LCCOMB_X20_Y13_N28
\BOconnection|subtratorA1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|subtratorA1|Add0~0_combout\ = \BOconnection|regA|q\(3) $ (((\BOconnection|regA|q\(0)) # ((\BOconnection|regA|q\(1)) # (\BOconnection|regA|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regA|q\(3),
	datab => \BOconnection|regA|q\(0),
	datac => \BOconnection|regA|q\(1),
	datad => \BOconnection|regA|q\(2),
	combout => \BOconnection|subtratorA1|Add0~0_combout\);

-- Location: LCCOMB_X20_Y13_N12
\BOconnection|muxA|y[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|muxA|y[3]~4_combout\ = (\BCconnection|MA~regout\ & (\entA~combout\(3))) # (!\BCconnection|MA~regout\ & ((!\BOconnection|subtratorA1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCconnection|MA~regout\,
	datac => \entA~combout\(3),
	datad => \BOconnection|subtratorA1|Add0~0_combout\,
	combout => \BOconnection|muxA|y[3]~4_combout\);

-- Location: LCFF_X20_Y13_N13
\BOconnection|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|muxA|y[3]~4_combout\,
	ena => \BCconnection|CA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regA|q\(3));

-- Location: LCCOMB_X19_Y13_N12
\BOconnection|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|geraAz|Equal0~0_combout\ = (!\BOconnection|regA|q\(1) & (!\BOconnection|regA|q\(3) & !\BOconnection|regA|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOconnection|regA|q\(1),
	datac => \BOconnection|regA|q\(3),
	datad => \BOconnection|regA|q\(2),
	combout => \BOconnection|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y13_N28
\BCconnection|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|state~15_combout\ = (\BCconnection|CA~regout\ & ((\BOconnection|geraBz|Equal0~0_combout\) # ((!\BOconnection|regA|q\(0) & \BOconnection|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regA|q\(0),
	datab => \BOconnection|geraBz|Equal0~0_combout\,
	datac => \BCconnection|CA~regout\,
	datad => \BOconnection|geraAz|Equal0~0_combout\,
	combout => \BCconnection|state~15_combout\);

-- Location: LCFF_X19_Y13_N29
\BCconnection|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|state~15_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|state.S4~regout\);

-- Location: LCCOMB_X20_Y13_N22
\BCconnection|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|Selector0~0_combout\ = (!\BCconnection|state.S4~regout\ & ((\inicio~combout\) # (\BCconnection|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datac => \BCconnection|state.S0~regout\,
	datad => \BCconnection|state.S4~regout\,
	combout => \BCconnection|Selector0~0_combout\);

-- Location: LCFF_X20_Y13_N23
\BCconnection|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|state.S0~regout\);

-- Location: LCCOMB_X20_Y13_N4
\BCconnection|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|Selector1~0_combout\ = (\inicio~combout\ & !\BCconnection|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datad => \BCconnection|state.S0~regout\,
	combout => \BCconnection|Selector1~0_combout\);

-- Location: LCFF_X20_Y13_N5
\BCconnection|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|Selector1~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|state.S1~regout\);

-- Location: LCCOMB_X19_Y13_N20
\BCconnection|CB~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|CB~feeder_combout\ = \BCconnection|state.S1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCconnection|state.S1~regout\,
	combout => \BCconnection|CB~feeder_combout\);

-- Location: LCFF_X19_Y13_N21
\BCconnection|CB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|CB~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|CB~regout\);

-- Location: LCFF_X19_Y13_N15
\BOconnection|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regB|q[0]~feeder_combout\,
	ena => \BCconnection|CB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regB|q\(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
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
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCCOMB_X19_Y13_N8
\BOconnection|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \BOconnection|regB|q[1]~feeder_combout\);

-- Location: LCFF_X19_Y13_N9
\BOconnection|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regB|q[1]~feeder_combout\,
	ena => \BCconnection|CB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regB|q\(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
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
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCCOMB_X19_Y13_N22
\BOconnection|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \BOconnection|regB|q[2]~feeder_combout\);

-- Location: LCFF_X19_Y13_N23
\BOconnection|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regB|q[2]~feeder_combout\,
	ena => \BCconnection|CB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regB|q\(2));

-- Location: LCCOMB_X19_Y13_N26
\BOconnection|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|geraBz|Equal0~0_combout\ = (!\BOconnection|regB|q\(3) & (!\BOconnection|regB|q\(0) & (!\BOconnection|regB|q\(1) & !\BOconnection|regB|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regB|q\(3),
	datab => \BOconnection|regB|q\(0),
	datac => \BOconnection|regB|q\(1),
	datad => \BOconnection|regB|q\(2),
	combout => \BOconnection|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y13_N16
\BCconnection|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|state~14_combout\ = (!\BOconnection|geraBz|Equal0~0_combout\ & (\BCconnection|CA~regout\ & ((\BOconnection|regA|q\(0)) # (!\BOconnection|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regA|q\(0),
	datab => \BOconnection|geraBz|Equal0~0_combout\,
	datac => \BCconnection|CA~regout\,
	datad => \BOconnection|geraAz|Equal0~0_combout\,
	combout => \BCconnection|state~14_combout\);

-- Location: LCFF_X19_Y13_N17
\BCconnection|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|state~14_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|state.S3~regout\);

-- Location: LCCOMB_X20_Y13_N0
\BCconnection|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|Selector3~0_combout\ = ((\BCconnection|state.S3~regout\ & \BCconnection|pronto~regout\)) # (!\BCconnection|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCconnection|state.S3~regout\,
	datac => \BCconnection|pronto~regout\,
	datad => \BCconnection|state.S0~regout\,
	combout => \BCconnection|Selector3~0_combout\);

-- Location: LCFF_X20_Y13_N1
\BCconnection|pronto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|Selector3~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|pronto~regout\);

-- Location: LCCOMB_X18_Y13_N2
\BOconnection|regP|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regP|q[0]~4_combout\ = (\BOconnection|regP|q\(0) & (\BOconnection|regB|q\(0) $ (VCC))) # (!\BOconnection|regP|q\(0) & (\BOconnection|regB|q\(0) & VCC))
-- \BOconnection|regP|q[0]~5\ = CARRY((\BOconnection|regP|q\(0) & \BOconnection|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regP|q\(0),
	datab => \BOconnection|regB|q\(0),
	datad => VCC,
	combout => \BOconnection|regP|q[0]~4_combout\,
	cout => \BOconnection|regP|q[0]~5\);

-- Location: LCCOMB_X19_Y13_N30
\BCconnection|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|Selector4~0_combout\ = (\BCconnection|state.S1~regout\) # ((\BCconnection|state.S3~regout\ & ((!\BOconnection|geraAz|Equal0~0_combout\) # (!\BOconnection|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCconnection|state.S1~regout\,
	datab => \BOconnection|regA|q\(0),
	datac => \BCconnection|state.S3~regout\,
	datad => \BOconnection|geraAz|Equal0~0_combout\,
	combout => \BCconnection|Selector4~0_combout\);

-- Location: LCFF_X19_Y13_N31
\BCconnection|CP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|Selector4~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|CP~regout\);

-- Location: LCFF_X18_Y13_N3
\BOconnection|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regP|q[0]~4_combout\,
	sclr => \BCconnection|MA~regout\,
	ena => \BCconnection|CP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regP|q\(0));

-- Location: LCCOMB_X18_Y13_N20
\BOconnection|regMultPortMap|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regMultPortMap|q[0]~feeder_combout\ = \BOconnection|regP|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOconnection|regP|q\(0),
	combout => \BOconnection|regMultPortMap|q[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N10
\BCconnection|CMULT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCconnection|CMULT~feeder_combout\ = \BCconnection|state.S4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCconnection|state.S4~regout\,
	combout => \BCconnection|CMULT~feeder_combout\);

-- Location: LCFF_X19_Y13_N11
\BCconnection|CMULT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCconnection|CMULT~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCconnection|CMULT~regout\);

-- Location: LCFF_X18_Y13_N21
\BOconnection|regMultPortMap|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regMultPortMap|q[0]~feeder_combout\,
	ena => \BCconnection|CMULT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regMultPortMap|q\(0));

-- Location: LCCOMB_X18_Y13_N4
\BOconnection|regP|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regP|q[1]~6_combout\ = (\BOconnection|regP|q\(1) & ((\BOconnection|regB|q\(1) & (\BOconnection|regP|q[0]~5\ & VCC)) # (!\BOconnection|regB|q\(1) & (!\BOconnection|regP|q[0]~5\)))) # (!\BOconnection|regP|q\(1) & ((\BOconnection|regB|q\(1) & 
-- (!\BOconnection|regP|q[0]~5\)) # (!\BOconnection|regB|q\(1) & ((\BOconnection|regP|q[0]~5\) # (GND)))))
-- \BOconnection|regP|q[1]~7\ = CARRY((\BOconnection|regP|q\(1) & (!\BOconnection|regB|q\(1) & !\BOconnection|regP|q[0]~5\)) # (!\BOconnection|regP|q\(1) & ((!\BOconnection|regP|q[0]~5\) # (!\BOconnection|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regP|q\(1),
	datab => \BOconnection|regB|q\(1),
	datad => VCC,
	cin => \BOconnection|regP|q[0]~5\,
	combout => \BOconnection|regP|q[1]~6_combout\,
	cout => \BOconnection|regP|q[1]~7\);

-- Location: LCFF_X18_Y13_N5
\BOconnection|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regP|q[1]~6_combout\,
	sclr => \BCconnection|MA~regout\,
	ena => \BCconnection|CP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regP|q\(1));

-- Location: LCCOMB_X18_Y13_N18
\BOconnection|regMultPortMap|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regMultPortMap|q[1]~feeder_combout\ = \BOconnection|regP|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOconnection|regP|q\(1),
	combout => \BOconnection|regMultPortMap|q[1]~feeder_combout\);

-- Location: LCFF_X18_Y13_N19
\BOconnection|regMultPortMap|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regMultPortMap|q[1]~feeder_combout\,
	ena => \BCconnection|CMULT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regMultPortMap|q\(1));

-- Location: LCCOMB_X18_Y13_N6
\BOconnection|regP|q[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regP|q[2]~8_combout\ = ((\BOconnection|regP|q\(2) $ (\BOconnection|regB|q\(2) $ (!\BOconnection|regP|q[1]~7\)))) # (GND)
-- \BOconnection|regP|q[2]~9\ = CARRY((\BOconnection|regP|q\(2) & ((\BOconnection|regB|q\(2)) # (!\BOconnection|regP|q[1]~7\))) # (!\BOconnection|regP|q\(2) & (\BOconnection|regB|q\(2) & !\BOconnection|regP|q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOconnection|regP|q\(2),
	datab => \BOconnection|regB|q\(2),
	datad => VCC,
	cin => \BOconnection|regP|q[1]~7\,
	combout => \BOconnection|regP|q[2]~8_combout\,
	cout => \BOconnection|regP|q[2]~9\);

-- Location: LCFF_X18_Y13_N7
\BOconnection|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regP|q[2]~8_combout\,
	sclr => \BCconnection|MA~regout\,
	ena => \BCconnection|CP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regP|q\(2));

-- Location: LCCOMB_X18_Y13_N0
\BOconnection|regMultPortMap|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regMultPortMap|q[2]~feeder_combout\ = \BOconnection|regP|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOconnection|regP|q\(2),
	combout => \BOconnection|regMultPortMap|q[2]~feeder_combout\);

-- Location: LCFF_X18_Y13_N1
\BOconnection|regMultPortMap|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regMultPortMap|q[2]~feeder_combout\,
	ena => \BCconnection|CMULT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regMultPortMap|q\(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
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
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCCOMB_X19_Y13_N24
\BOconnection|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regB|q[3]~feeder_combout\ = \entB~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(3),
	combout => \BOconnection|regB|q[3]~feeder_combout\);

-- Location: LCFF_X19_Y13_N25
\BOconnection|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regB|q[3]~feeder_combout\,
	ena => \BCconnection|CB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regB|q\(3));

-- Location: LCCOMB_X18_Y13_N8
\BOconnection|regP|q[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regP|q[3]~10_combout\ = \BOconnection|regP|q\(3) $ (\BOconnection|regP|q[2]~9\ $ (\BOconnection|regB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOconnection|regP|q\(3),
	datad => \BOconnection|regB|q\(3),
	cin => \BOconnection|regP|q[2]~9\,
	combout => \BOconnection|regP|q[3]~10_combout\);

-- Location: LCFF_X18_Y13_N9
\BOconnection|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regP|q[3]~10_combout\,
	sclr => \BCconnection|MA~regout\,
	ena => \BCconnection|CP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regP|q\(3));

-- Location: LCCOMB_X18_Y13_N26
\BOconnection|regMultPortMap|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOconnection|regMultPortMap|q[3]~feeder_combout\ = \BOconnection|regP|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOconnection|regP|q\(3),
	combout => \BOconnection|regMultPortMap|q[3]~feeder_combout\);

-- Location: LCFF_X18_Y13_N27
\BOconnection|regMultPortMap|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOconnection|regMultPortMap|q[3]~feeder_combout\,
	ena => \BCconnection|CMULT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOconnection|regMultPortMap|q\(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
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
	datain => \BCconnection|pronto~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[0]~I\ : cycloneii_io
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
	datain => \BOconnection|regMultPortMap|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[1]~I\ : cycloneii_io
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
	datain => \BOconnection|regMultPortMap|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[2]~I\ : cycloneii_io
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
	datain => \BOconnection|regMultPortMap|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(2));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[3]~I\ : cycloneii_io
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
	datain => \BOconnection|regMultPortMap|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(3));
END structure;


