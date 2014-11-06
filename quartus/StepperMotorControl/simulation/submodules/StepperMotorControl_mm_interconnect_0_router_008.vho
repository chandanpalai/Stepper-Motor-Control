--IP Functional Simulation Model
--VERSION_BEGIN 14.0 cbx_mgl 2014:06:17:18:10:38:SJ cbx_simgen 2014:06:17:18:06:03:SJ  VERSION_END


-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_mm_interconnect_0_router_008 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (102 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (6 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (102 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END StepperMotorControl_mm_interconnect_0_router_008;

 ARCHITECTURE RTL OF StepperMotorControl_mm_interconnect_0_router_008 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_w310w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_008_src_channel_0_314_dataout :	STD_LOGIC;
 BEGIN

	wire_w310w(0) <= NOT s_wire_steppermotorcontrol_mm_interconnect_0_router_008_src_channel_0_314_dataout;
	s_wire_steppermotorcontrol_mm_interconnect_0_router_008_src_channel_0_314_dataout <= (((NOT sink_data(87)) AND (NOT sink_data(88))) AND (NOT sink_data(89)));
	sink_ready <= src_ready;
	src_channel <= ( "0" & "0" & "0" & "0" & "0" & s_wire_steppermotorcontrol_mm_interconnect_0_router_008_src_channel_0_314_dataout & wire_w310w);
	src_data <= ( sink_data(102 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;

 END RTL; --StepperMotorControl_mm_interconnect_0_router_008
--synopsys translate_on
--VALID FILE
