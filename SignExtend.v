`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:50 05/29/2020 
// Design Name: 
// Module Name:    SignExtend 
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
module SignExtend(in, result);
	
	input [15:0] in;
	output [31:0] result;
	
	assign result = in[15] == 0 ? {16'b0, in} : {16'b1, in};
	//always @(in) begin
		
	//		$display("ini");
	//	if(in[15]==0) begin
	//		$display({16'b0, in});
	//		result <= {16'b0, in};
	//	end else begin
	//		$display({16'b1, in});
	//		result <= {16'b1, in};
	//	end
		
	//end
	
endmodule
