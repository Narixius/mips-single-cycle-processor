`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:51:27 05/21/2020 
// Design Name: 
// Module Name:    PC 
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
module PC(out, in, clk, startin);
	input [31:0] in;
	input startin, clk;
	output reg [31:0] out;
	
	always @(posedge clk) begin
		
		if(startin) begin
			$display("pc 0");
			$display(0);
			out <= 32'b0;
		end else begin
			$display("pc in");
			$display(in);
			out <= in;
		end
	end

endmodule
