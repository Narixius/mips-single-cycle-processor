`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:40 05/29/2020 
// Design Name: 
// Module Name:    Mux_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_32(input1, input2, op, out);
	input [31:0] input1, input2;
	input op;
	output [31:0] out;
	
	assign out = op == 0 ? input1 : input2;
endmodule
