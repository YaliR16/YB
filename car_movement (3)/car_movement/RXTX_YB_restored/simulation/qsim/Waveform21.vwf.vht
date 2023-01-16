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
-- Generated on "12/18/2022 23:54:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          motor_status
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY motor_status_vhd_vec_tst IS
END motor_status_vhd_vec_tst;
ARCHITECTURE motor_status_arch OF motor_status_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dist : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL motor : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL status : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT motor_status
	PORT (
	dist : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	motor : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	status : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : motor_status
	PORT MAP (
-- list connections between master ports and signals
	dist => dist,
	motor => motor,
	status => status
	);
-- dist[7]
t_prcs_dist_7: PROCESS
BEGIN
	dist(7) <= '0';
WAIT;
END PROCESS t_prcs_dist_7;
-- dist[6]
t_prcs_dist_6: PROCESS
BEGIN
	dist(6) <= '0';
	WAIT FOR 10000 ps;
	dist(6) <= '1';
	WAIT FOR 260000 ps;
	dist(6) <= '0';
	WAIT FOR 380000 ps;
	dist(6) <= '1';
	WAIT FOR 160000 ps;
	dist(6) <= '0';
WAIT;
END PROCESS t_prcs_dist_6;
-- dist[5]
t_prcs_dist_5: PROCESS
BEGIN
	dist(5) <= '0';
	WAIT FOR 10000 ps;
	dist(5) <= '1';
	WAIT FOR 260000 ps;
	dist(5) <= '0';
	WAIT FOR 560000 ps;
	dist(5) <= '1';
	WAIT FOR 60000 ps;
	dist(5) <= '0';
WAIT;
END PROCESS t_prcs_dist_5;
-- dist[4]
t_prcs_dist_4: PROCESS
BEGIN
	dist(4) <= '0';
	WAIT FOR 830000 ps;
	dist(4) <= '1';
	WAIT FOR 60000 ps;
	dist(4) <= '0';
WAIT;
END PROCESS t_prcs_dist_4;
-- dist[3]
t_prcs_dist_3: PROCESS
BEGIN
	dist(3) <= '0';
	WAIT FOR 830000 ps;
	dist(3) <= '1';
	WAIT FOR 10000 ps;
	dist(3) <= '0';
	WAIT FOR 50000 ps;
	dist(3) <= '1';
	WAIT FOR 50000 ps;
	dist(3) <= '0';
WAIT;
END PROCESS t_prcs_dist_3;
-- dist[2]
t_prcs_dist_2: PROCESS
BEGIN
	dist(2) <= '0';
WAIT;
END PROCESS t_prcs_dist_2;
-- dist[1]
t_prcs_dist_1: PROCESS
BEGIN
	dist(1) <= '0';
WAIT;
END PROCESS t_prcs_dist_1;
-- dist[0]
t_prcs_dist_0: PROCESS
BEGIN
	dist(0) <= '0';
WAIT;
END PROCESS t_prcs_dist_0;
END motor_status_arch;
