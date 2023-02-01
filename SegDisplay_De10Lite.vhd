-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Wed Feb 01 18:31:15 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SegDisplay_De10Lite IS 
	PORT
	(
		input_clk :  IN  STD_LOGIC;
		input_rst :  IN  STD_LOGIC;
		input_nr :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		out_bcd0 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_bcd1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_bcd2 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_bcd3 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_bcd4 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_bcd5 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END SegDisplay_De10Lite;

ARCHITECTURE bdf_type OF SegDisplay_De10Lite IS 

COMPONENT tobdc_dotoff
	PORT(i_bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_seg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT num_to_bcd
GENERIC (N : INTEGER
			);
	PORT(i_clk : IN STD_LOGIC;
		 i_rst : IN STD_LOGIC;
		 i_num : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
		 o_bcd0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_bcd1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_bcd2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_bcd3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_bcd4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_bcd5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT expandinput
GENERIC (i_N : INTEGER;
			o_N : INTEGER
			);
	PORT(i_val : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 o_val : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(18 DOWNTO 0);


BEGIN 



b2v_bcd_controller0 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_0,
		 o_seg => out_bcd0);


b2v_bcd_controller1 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_1,
		 o_seg => out_bcd1);


b2v_bcd_controller2 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_2,
		 o_seg => out_bcd2);


b2v_bcd_controller3 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_3,
		 o_seg => out_bcd3);


b2v_bcd_controller4 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_4,
		 o_seg => out_bcd4);


b2v_bcd_controller5 : tobdc_dotoff
PORT MAP(i_bcd => SYNTHESIZED_WIRE_5,
		 o_seg => out_bcd5);


b2v_binConverter : num_to_bcd
GENERIC MAP(N => 19
			)
PORT MAP(i_clk => input_clk,
		 i_rst => input_rst,
		 i_num => SYNTHESIZED_WIRE_6,
		 o_bcd0 => SYNTHESIZED_WIRE_0,
		 o_bcd1 => SYNTHESIZED_WIRE_1,
		 o_bcd2 => SYNTHESIZED_WIRE_2,
		 o_bcd3 => SYNTHESIZED_WIRE_3,
		 o_bcd4 => SYNTHESIZED_WIRE_4,
		 o_bcd5 => SYNTHESIZED_WIRE_5);


b2v_inst : expandinput
GENERIC MAP(i_N => 10,
			o_N => 19
			)
PORT MAP(i_val => input_nr,
		 o_val => SYNTHESIZED_WIRE_6);


END bdf_type;