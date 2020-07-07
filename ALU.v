`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:17:52 05/21/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(in1, in2, operation, out, zero);

	output reg [31:0] out;
	output reg zero;
	input  [31:0] in1, in2;
	input  [3:0] operation;

	always @(*) begin
	
		if(operation == 4'b0010) begin
			//add
			$display("** add");
			out <= in1 + in2;
			if(in1 + in2 == 0)
				zero <= 1;
			else
				zero <= 0;
		end else
		if(operation == 4'b0110) begin
			//sub
			$display("** sub");
			out <= in1 - in2;
			if(in1 - in2 == 0)
				zero <= 1;
			else
				zero <= 0;
		end else
		if(operation == 4'b0000) begin
			//and
			$display("** and");
			out <= in1 & in2;
			if(in1 && in2 == 0)
				zero <= 1;
			else
				zero <= 0;
		end else
		if(operation == 4'b0001) begin
			//or
			$display("** or");
			out <= in1 | in2;
			if(in1 | in2 == 0)
				zero <= 1;
			else
				zero <= 0;
		end else
		if(operation == 4'b0111) begin
			//slt
			$display("** slt");
			out <= in1 < in2;
			zero <= 0;
		end
	
	end

endmodule
