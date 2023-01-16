-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/12/2022 21:09:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          switch_display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY switch_display_vhd_vec_tst IS
END switch_display_vhd_vec_tst;
ARCHITECTURE switch_display_arch OF switch_display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL distance : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL switch : STD_LOGIC;
COMPONENT switch_display
	PORT (
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	distance : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : switch_display
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out,
	distance => distance,
	switch => switch
	);

-- switch
t_prcs_switch: PROCESS
BEGIN
	switch <= '1';
	WAIT FOR 340000 ps;
	switch <= '0';
WAIT;
END PROCESS t_prcs_switch;
-- distance[7]
t_prcs_distance_7: PROCESS
BEGIN
	distance(7) <= '0';
WAIT;
END PROCESS t_prcs_distance_7;
-- distance[6]
t_prcs_distance_6: PROCESS
BEGIN
	distance(6) <= '0';
WAIT;
END PROCESS t_prcs_distance_6;
-- distance[5]
t_prcs_distance_5: PROCESS
BEGIN
	distance(5) <= '0';
WAIT;
END PROCESS t_prcs_distance_5;
-- distance[4]
t_prcs_distance_4: PROCESS
BEGIN
	distance(4) <= '0';
WAIT;
END PROCESS t_prcs_distance_4;
-- distance[3]
t_prcs_distance_3: PROCESS
BEGIN
	distance(3) <= '0';
WAIT;
END PROCESS t_prcs_distance_3;
-- distance[2]
t_prcs_distance_2: PROCESS
BEGIN
	distance(2) <= '1';
WAIT;
END PROCESS t_prcs_distance_2;
-- distance[1]
t_prcs_distance_1: PROCESS
BEGIN
	distance(1) <= '1';
WAIT;
END PROCESS t_prcs_distance_1;
-- distance[0]
t_prcs_distance_0: PROCESS
BEGIN
	distance(0) <= '1';
WAIT;
END PROCESS t_prcs_distance_0;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '1';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '1';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '1';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;
END switch_display_arch;
