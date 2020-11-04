// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Wed Sep 30 12:54:13 2020"

module full_adder_1_bit(
	A,
	B,
	Cin,
	S,
	Cout
);


input wire	A;
input wire	B;
input wire	Cin;
output wire	S;
output wire	Cout;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_0 = A ^ B;

assign	S = SYNTHESIZED_WIRE_0 ^ Cin;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_1 & Cin;

assign	SYNTHESIZED_WIRE_2 = A & B;

assign	SYNTHESIZED_WIRE_1 = B | A;

assign	Cout = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;


endmodule
