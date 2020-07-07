`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:48:48 05/21/2020 
// Design Name: 
// Module Name:    Adder 
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
module Adder(digit1, digit2, result);
	input [31:0] digit1, digit2;
	
	output [31:0] result;
 	
	
	/*always @(digit1 or digit2) begin
		$display("---- add module");
		$display(digit1);
		$display(digit2);
		$display("----");
		result <= digit1 + digit2;
	end*/
	assign result = digit1 + digit2;

endmodule
