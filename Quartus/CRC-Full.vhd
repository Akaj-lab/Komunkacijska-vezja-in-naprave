-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"
-- CREATED		"Sun Feb 26 09:46:15 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY CRC-Full IS 
	PORT
	(
		DIN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RED :  IN  STD_LOGIC;
		DOT :  OUT  STD_LOGIC
	);
END CRC-Full;

ARCHITECTURE bdf_type OF CRC-Full IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	DFF_D9 :  STD_LOGIC;
SIGNAL	DFF_D10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	DFF_D12 :  STD_LOGIC;
SIGNAL	DFF_D13 :  STD_LOGIC;
SIGNAL	DFF_D14 :  STD_LOGIC;
SIGNAL	DFF_D15 :  STD_LOGIC;
SIGNAL	DFF_D1 :  STD_LOGIC;
SIGNAL	DFF_D2 :  STD_LOGIC;
SIGNAL	DFF_D3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	DFF_D5 :  STD_LOGIC;
SIGNAL	DFF_D6 :  STD_LOGIC;
SIGNAL	DFF_D7 :  STD_LOGIC;
SIGNAL	DFF_D8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	DFF_D16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	DFF_D11 :  STD_LOGIC;
SIGNAL	DFF_D4 :  STD_LOGIC;


BEGIN 
DOT <= DFF_D16;



PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D1 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D10 <= DFF_D9;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D11 <= DFF_D10;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D12 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D13 <= DFF_D12;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D14 <= DFF_D13;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D15 <= DFF_D14;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D16 <= DFF_D15;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D2 <= DFF_D1;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D3 <= DFF_D2;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D4 <= DFF_D3;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D5 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D6 <= DFF_D5;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D7 <= DFF_D6;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D8 <= DFF_D7;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_D9 <= DFF_D8;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_3 AND DFF_D16;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_7 XOR DFF_D11;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_7 XOR DFF_D4;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_7 XOR DIN;


SYNTHESIZED_WIRE_3 <= NOT(RED);



END bdf_type;