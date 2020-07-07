`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:35 05/29/2020 
// Design Name: 
// Module Name:    Shift_26_28 
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
module Shift_26_28(in, out);
	input [25:0] in;
	output [27:0] out;
	assign out = {in, 2'b00};
	
	
endmodule
