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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "08/26/2021 15:59:47"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux2 IS
    PORT (
	d0 : IN std_logic_vector(3 DOWNTO 0);
	d1 : IN std_logic_vector(3 DOWNTO 0);
	s : IN std_logic;
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END mux2;

-- Design Ports Information
-- y[0]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic;
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \d1[0]~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \d1[1]~input_o\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \d1[2]~input_o\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \d1[3]~input_o\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_s <= s;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y31_N16
\y[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\y[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\y[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~2_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\y[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~3_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOIBUF_X0_Y10_N8
\d0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\s~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\d1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(0),
	o => \d1[0]~input_o\);

-- Location: LCCOMB_X5_Y1_N0
\y~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (\s~input_o\ & ((\d1[0]~input_o\))) # (!\s~input_o\ & (\d0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d0[0]~input_o\,
	datac => \s~input_o\,
	datad => \d1[0]~input_o\,
	combout => \y~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\d0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\d1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(1),
	o => \d1[1]~input_o\);

-- Location: LCCOMB_X5_Y1_N26
\y~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y~1_combout\ = (\s~input_o\ & ((\d1[1]~input_o\))) # (!\s~input_o\ & (\d0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[1]~input_o\,
	datab => \d1[1]~input_o\,
	datac => \s~input_o\,
	combout => \y~1_combout\);

-- Location: IOIBUF_X0_Y19_N1
\d1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(2),
	o => \d1[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\d0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: LCCOMB_X5_Y1_N28
\y~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y~2_combout\ = (\s~input_o\ & (\d1[2]~input_o\)) # (!\s~input_o\ & ((\d0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1[2]~input_o\,
	datac => \s~input_o\,
	datad => \d0[2]~input_o\,
	combout => \y~2_combout\);

-- Location: IOIBUF_X0_Y4_N22
\d0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\d1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(3),
	o => \d1[3]~input_o\);

-- Location: LCCOMB_X5_Y1_N6
\y~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y~3_combout\ = (\s~input_o\ & ((\d1[3]~input_o\))) # (!\s~input_o\ & (\d0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[3]~input_o\,
	datab => \d1[3]~input_o\,
	datac => \s~input_o\,
	combout => \y~3_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;
END structure;


