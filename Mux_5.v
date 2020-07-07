`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:30 05/29/2020 
// Design Name: 
// Module Name:    Mux_5 
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
module Mux_5(input1, input2, op, out);
	input [4:0] input1, input2;
	input op;
	output [4:0] out;
	
	assign out = op == 0 ? input1 : input2;

endmodule
