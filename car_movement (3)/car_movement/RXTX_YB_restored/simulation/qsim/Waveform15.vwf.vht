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
-- Generated on "12/12/2022 20:23:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          distance2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY distance2_vhd_vec_tst IS
END distance2_vhd_vec_tst;
ARCHITECTURE distance2_arch OF distance2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_58Ms : STD_LOGIC;
SIGNAL dist : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL echo : STD_LOGIC;
COMPONENT distance2
	PORT (
	clk_58Ms : IN STD_LOGIC;
	dist : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	echo : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : distance2
	PORT MAP (
-- list connections between master ports and signals
	clk_58Ms => clk_58Ms,
	dist => dist,
	echo => echo
	);

-- clk_58Ms
t_prcs_clk_58Ms: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk_58Ms <= '0';
		WAIT FOR 15000 ps;
		clk_58Ms <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk_58Ms <= '0';
WAIT;
END PROCESS t_prcs_clk_58Ms;

-- echo
t_prcs_echo: PROCESS
BEGIN
	echo <= '0';
	WAIT FOR 30000 ps;
	echo <= '1';
	WAIT FOR 310000 ps;
	echo <= '0';
	WAIT FOR 320000 ps;
	echo <= '1';
	WAIT FOR 260000 ps;
	echo <= '0';
WAIT;
END PROCESS t_prcs_echo;
END distance2_arch;
