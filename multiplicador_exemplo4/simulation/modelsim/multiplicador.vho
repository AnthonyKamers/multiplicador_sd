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

-- DATE "11/10/2020 18:47:48"

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
	Reset : IN std_logic;
	clk : IN std_logic;
	inicio : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~0_combout\ : std_logic;
SIGNAL \BOportMap|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~8_combout\ : std_logic;
SIGNAL \BOportMap|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \BOportMap|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \BOportMap|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \BOportMap|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BCportMap|Selector0~0_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \BCportMap|state.S0~regout\ : std_logic;
SIGNAL \BCportMap|state~11_combout\ : std_logic;
SIGNAL \BCportMap|state.S1~regout\ : std_logic;
SIGNAL \BOportMap|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \BCportMap|state~12_combout\ : std_logic;
SIGNAL \BCportMap|state.S3~regout\ : std_logic;
SIGNAL \BCportMap|state.S4~feeder_combout\ : std_logic;
SIGNAL \BCportMap|state.S4~regout\ : std_logic;
SIGNAL \BCportMap|CA~combout\ : std_logic;
SIGNAL \BCportMap|state.S2~regout\ : std_logic;
SIGNAL \BCportMap|state~10_combout\ : std_logic;
SIGNAL \BCportMap|state.S5~regout\ : std_logic;
SIGNAL \BOportMap|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \BOportMap|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~2_cout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~3_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~5_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~4\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~6_combout\ : std_logic;
SIGNAL \BOportMap|regP|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \BOportMap|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~7\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~9_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~11_combout\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~10\ : std_logic;
SIGNAL \BOportMap|somasub|Add0~12_combout\ : std_logic;
SIGNAL \BOportMap|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|regP|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_inicio <= inicio;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X26_Y12_N13
\BOportMap|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|mux1|y[1]~1_combout\,
	ena => \BCportMap|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regA|q\(1));

-- Location: LCFF_X26_Y12_N1
\BOportMap|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|mux1|y[3]~3_combout\,
	ena => \BCportMap|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regA|q\(3));

-- Location: LCCOMB_X26_Y12_N30
\BOportMap|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|geraAz|Equal0~0_combout\ = (!\BOportMap|regA|q\(1) & (!\BOportMap|regA|q\(0) & (!\BOportMap|regA|q\(2) & !\BOportMap|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|regA|q\(1),
	datab => \BOportMap|regA|q\(0),
	datac => \BOportMap|regA|q\(2),
	datad => \BOportMap|regA|q\(3),
	combout => \BOportMap|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y12_N6
\BOportMap|somasub|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~0_combout\ = (\BOportMap|regB|q\(0) & !\BCportMap|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|regB|q\(0),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|somasub|Add0~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\BOportMap|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux2|y[1]~1_combout\ = (\BCportMap|state.S4~regout\ & (\BOportMap|regA|q\(1))) # (!\BCportMap|state.S4~regout\ & ((\BOportMap|regP|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|regA|q\(1),
	datac => \BOportMap|regP|q\(1),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X27_Y12_N16
\BOportMap|somasub|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~8_combout\ = (\BOportMap|regB|q\(2)) # (\BCportMap|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|regB|q\(2),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|somasub|Add0~8_combout\);

-- Location: LCCOMB_X26_Y12_N26
\BOportMap|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux2|y[3]~3_combout\ = (\BCportMap|state.S4~regout\ & ((\BOportMap|regA|q\(3)))) # (!\BCportMap|state.S4~regout\ & (\BOportMap|regP|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|regP|q\(3),
	datab => \BOportMap|regA|q\(3),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X26_Y12_N12
\BOportMap|mux1|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux1|y[1]~1_combout\ = (\BCportMap|state.S1~regout\ & (\entA~combout\(1))) # (!\BCportMap|state.S1~regout\ & ((\BOportMap|somasub|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S1~regout\,
	datac => \entA~combout\(1),
	datad => \BOportMap|somasub|Add0~6_combout\,
	combout => \BOportMap|mux1|y[1]~1_combout\);

-- Location: LCCOMB_X26_Y12_N0
\BOportMap|mux1|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux1|y[3]~3_combout\ = (\BCportMap|state.S1~regout\ & (\entA~combout\(3))) # (!\BCportMap|state.S1~regout\ & ((\BOportMap|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S1~regout\,
	datac => \entA~combout\(3),
	datad => \BOportMap|somasub|Add0~12_combout\,
	combout => \BOportMap|mux1|y[3]~3_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y12_N0
\BOportMap|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \BOportMap|regB|q[0]~feeder_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y12_N18
\BCportMap|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|Selector0~0_combout\ = (!\BCportMap|state.S5~regout\ & ((\BCportMap|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S5~regout\,
	datac => \BCportMap|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BCportMap|Selector0~0_combout\);

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

-- Location: LCFF_X27_Y12_N19
\BCportMap|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S0~regout\);

-- Location: LCCOMB_X27_Y12_N30
\BCportMap|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~11_combout\ = (!\BCportMap|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BCportMap|state~11_combout\);

-- Location: LCFF_X27_Y12_N31
\BCportMap|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state~11_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S1~regout\);

-- Location: LCFF_X27_Y12_N1
\BOportMap|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|regB|q[0]~feeder_combout\,
	ena => \BCportMap|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regB|q\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X27_Y12_N21
\BOportMap|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(2),
	sload => VCC,
	ena => \BCportMap|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regB|q\(2));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y12_N2
\BOportMap|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \BOportMap|regB|q[1]~feeder_combout\);

-- Location: LCFF_X27_Y12_N3
\BOportMap|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|regB|q[1]~feeder_combout\,
	ena => \BCportMap|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regB|q\(1));

-- Location: LCCOMB_X27_Y12_N20
\BOportMap|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|geraBz|Equal0~0_combout\ = (!\BOportMap|regB|q\(3) & (!\BOportMap|regB|q\(0) & (!\BOportMap|regB|q\(2) & !\BOportMap|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|regB|q\(3),
	datab => \BOportMap|regB|q\(0),
	datac => \BOportMap|regB|q\(2),
	datad => \BOportMap|regB|q\(1),
	combout => \BOportMap|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y12_N24
\BCportMap|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~12_combout\ = (!\BOportMap|geraAz|Equal0~0_combout\ & (\BCportMap|state.S2~regout\ & !\BOportMap|geraBz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|geraAz|Equal0~0_combout\,
	datac => \BCportMap|state.S2~regout\,
	datad => \BOportMap|geraBz|Equal0~0_combout\,
	combout => \BCportMap|state~12_combout\);

-- Location: LCFF_X27_Y12_N25
\BCportMap|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state~12_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S3~regout\);

-- Location: LCCOMB_X27_Y12_N28
\BCportMap|state.S4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state.S4~feeder_combout\ = \BCportMap|state.S3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCportMap|state.S3~regout\,
	combout => \BCportMap|state.S4~feeder_combout\);

-- Location: LCFF_X27_Y12_N29
\BCportMap|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state.S4~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S4~regout\);

-- Location: LCCOMB_X27_Y12_N12
\BCportMap|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|CA~combout\ = (\BCportMap|state.S4~regout\) # (\BCportMap|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCportMap|state.S4~regout\,
	datad => \BCportMap|state.S1~regout\,
	combout => \BCportMap|CA~combout\);

-- Location: LCFF_X27_Y12_N7
\BCportMap|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BCportMap|CA~combout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S2~regout\);

-- Location: LCCOMB_X27_Y12_N8
\BCportMap|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~10_combout\ = (\BCportMap|state.S2~regout\ & ((\BOportMap|geraAz|Equal0~0_combout\) # (\BOportMap|geraBz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|geraAz|Equal0~0_combout\,
	datac => \BCportMap|state.S2~regout\,
	datad => \BOportMap|geraBz|Equal0~0_combout\,
	combout => \BCportMap|state~10_combout\);

-- Location: LCFF_X27_Y12_N9
\BCportMap|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state~10_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S5~regout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y12_N22
\BOportMap|mux1|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux1|y[0]~0_combout\ = (\BCportMap|state.S1~regout\ & ((\entA~combout\(0)))) # (!\BCportMap|state.S1~regout\ & (\BOportMap|somasub|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S1~regout\,
	datac => \BOportMap|somasub|Add0~3_combout\,
	datad => \entA~combout\(0),
	combout => \BOportMap|mux1|y[0]~0_combout\);

-- Location: LCFF_X26_Y12_N23
\BOportMap|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|mux1|y[0]~0_combout\,
	ena => \BCportMap|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regA|q\(0));

-- Location: LCCOMB_X26_Y12_N28
\BOportMap|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux2|y[0]~0_combout\ = (\BCportMap|state.S4~regout\ & ((\BOportMap|regA|q\(0)))) # (!\BCportMap|state.S4~regout\ & (\BOportMap|regP|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|regP|q\(0),
	datab => \BOportMap|regA|q\(0),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X26_Y12_N2
\BOportMap|somasub|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~2_cout\ = CARRY(\BCportMap|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S4~regout\,
	datad => VCC,
	cout => \BOportMap|somasub|Add0~2_cout\);

-- Location: LCCOMB_X26_Y12_N4
\BOportMap|somasub|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~3_combout\ = (\BOportMap|somasub|Add0~0_combout\ & ((\BOportMap|mux2|y[0]~0_combout\ & (\BOportMap|somasub|Add0~2_cout\ & VCC)) # (!\BOportMap|mux2|y[0]~0_combout\ & (!\BOportMap|somasub|Add0~2_cout\)))) # 
-- (!\BOportMap|somasub|Add0~0_combout\ & ((\BOportMap|mux2|y[0]~0_combout\ & (!\BOportMap|somasub|Add0~2_cout\)) # (!\BOportMap|mux2|y[0]~0_combout\ & ((\BOportMap|somasub|Add0~2_cout\) # (GND)))))
-- \BOportMap|somasub|Add0~4\ = CARRY((\BOportMap|somasub|Add0~0_combout\ & (!\BOportMap|mux2|y[0]~0_combout\ & !\BOportMap|somasub|Add0~2_cout\)) # (!\BOportMap|somasub|Add0~0_combout\ & ((!\BOportMap|somasub|Add0~2_cout\) # 
-- (!\BOportMap|mux2|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|somasub|Add0~0_combout\,
	datab => \BOportMap|mux2|y[0]~0_combout\,
	datad => VCC,
	cin => \BOportMap|somasub|Add0~2_cout\,
	combout => \BOportMap|somasub|Add0~3_combout\,
	cout => \BOportMap|somasub|Add0~4\);

-- Location: LCFF_X26_Y12_N21
\BOportMap|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|somasub|Add0~3_combout\,
	aclr => \BCportMap|state.S1~regout\,
	sload => VCC,
	ena => \BCportMap|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regP|q\(0));

-- Location: LCCOMB_X27_Y12_N14
\BOportMap|somasub|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~5_combout\ = (\BCportMap|state.S4~regout\) # (\BOportMap|regB|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S4~regout\,
	datad => \BOportMap|regB|q\(1),
	combout => \BOportMap|somasub|Add0~5_combout\);

-- Location: LCCOMB_X26_Y12_N6
\BOportMap|somasub|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~6_combout\ = ((\BOportMap|mux2|y[1]~1_combout\ $ (\BOportMap|somasub|Add0~5_combout\ $ (!\BOportMap|somasub|Add0~4\)))) # (GND)
-- \BOportMap|somasub|Add0~7\ = CARRY((\BOportMap|mux2|y[1]~1_combout\ & ((\BOportMap|somasub|Add0~5_combout\) # (!\BOportMap|somasub|Add0~4\))) # (!\BOportMap|mux2|y[1]~1_combout\ & (\BOportMap|somasub|Add0~5_combout\ & !\BOportMap|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|mux2|y[1]~1_combout\,
	datab => \BOportMap|somasub|Add0~5_combout\,
	datad => VCC,
	cin => \BOportMap|somasub|Add0~4\,
	combout => \BOportMap|somasub|Add0~6_combout\,
	cout => \BOportMap|somasub|Add0~7\);

-- Location: LCCOMB_X26_Y12_N24
\BOportMap|regP|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|regP|q[1]~feeder_combout\ = \BOportMap|somasub|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|somasub|Add0~6_combout\,
	combout => \BOportMap|regP|q[1]~feeder_combout\);

-- Location: LCFF_X26_Y12_N25
\BOportMap|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|regP|q[1]~feeder_combout\,
	aclr => \BCportMap|state.S1~regout\,
	ena => \BCportMap|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regP|q\(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y12_N14
\BOportMap|mux1|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux1|y[2]~2_combout\ = (\BCportMap|state.S1~regout\ & (\entA~combout\(2))) # (!\BCportMap|state.S1~regout\ & ((\BOportMap|somasub|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S1~regout\,
	datab => \entA~combout\(2),
	datac => \BOportMap|somasub|Add0~9_combout\,
	combout => \BOportMap|mux1|y[2]~2_combout\);

-- Location: LCFF_X26_Y12_N15
\BOportMap|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|mux1|y[2]~2_combout\,
	ena => \BCportMap|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regA|q\(2));

-- Location: LCCOMB_X26_Y12_N18
\BOportMap|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|mux2|y[2]~2_combout\ = (\BCportMap|state.S4~regout\ & ((\BOportMap|regA|q\(2)))) # (!\BCportMap|state.S4~regout\ & (\BOportMap|regP|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|regP|q\(2),
	datac => \BOportMap|regA|q\(2),
	datad => \BCportMap|state.S4~regout\,
	combout => \BOportMap|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X26_Y12_N8
\BOportMap|somasub|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~9_combout\ = (\BOportMap|somasub|Add0~8_combout\ & ((\BOportMap|mux2|y[2]~2_combout\ & (\BOportMap|somasub|Add0~7\ & VCC)) # (!\BOportMap|mux2|y[2]~2_combout\ & (!\BOportMap|somasub|Add0~7\)))) # 
-- (!\BOportMap|somasub|Add0~8_combout\ & ((\BOportMap|mux2|y[2]~2_combout\ & (!\BOportMap|somasub|Add0~7\)) # (!\BOportMap|mux2|y[2]~2_combout\ & ((\BOportMap|somasub|Add0~7\) # (GND)))))
-- \BOportMap|somasub|Add0~10\ = CARRY((\BOportMap|somasub|Add0~8_combout\ & (!\BOportMap|mux2|y[2]~2_combout\ & !\BOportMap|somasub|Add0~7\)) # (!\BOportMap|somasub|Add0~8_combout\ & ((!\BOportMap|somasub|Add0~7\) # (!\BOportMap|mux2|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|somasub|Add0~8_combout\,
	datab => \BOportMap|mux2|y[2]~2_combout\,
	datad => VCC,
	cin => \BOportMap|somasub|Add0~7\,
	combout => \BOportMap|somasub|Add0~9_combout\,
	cout => \BOportMap|somasub|Add0~10\);

-- Location: LCFF_X26_Y12_N27
\BOportMap|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|somasub|Add0~9_combout\,
	aclr => \BCportMap|state.S1~regout\,
	sload => VCC,
	ena => \BCportMap|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regP|q\(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X27_Y12_N11
\BOportMap|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(3),
	sload => VCC,
	ena => \BCportMap|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regB|q\(3));

-- Location: LCCOMB_X27_Y12_N22
\BOportMap|somasub|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~11_combout\ = (\BCportMap|state.S4~regout\) # (\BOportMap|regB|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCportMap|state.S4~regout\,
	datad => \BOportMap|regB|q\(3),
	combout => \BOportMap|somasub|Add0~11_combout\);

-- Location: LCCOMB_X26_Y12_N10
\BOportMap|somasub|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somasub|Add0~12_combout\ = \BOportMap|mux2|y[3]~3_combout\ $ (\BOportMap|somasub|Add0~10\ $ (!\BOportMap|somasub|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|mux2|y[3]~3_combout\,
	datad => \BOportMap|somasub|Add0~11_combout\,
	cin => \BOportMap|somasub|Add0~10\,
	combout => \BOportMap|somasub|Add0~12_combout\);

-- Location: LCFF_X26_Y12_N29
\BOportMap|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|somasub|Add0~12_combout\,
	aclr => \BCportMap|state.S1~regout\,
	sload => VCC,
	ena => \BCportMap|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|regP|q\(3));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \BCportMap|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
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
	datain => \BOportMap|regP|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
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
	datain => \BOportMap|regP|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
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
	datain => \BOportMap|regP|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
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
	datain => \BOportMap|regP|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));
END structure;


