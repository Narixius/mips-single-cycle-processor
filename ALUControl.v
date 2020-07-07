`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:56 06/18/2020 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(Func, Aluop, Alucontrol);
	input [1:0] Aluop;
	input [5:0] Func;
	output reg [3:0]  Alucontrol;
	
	always @(*) begin
		
		if(Aluop == 2'b11) begin
			// addi, lw, sw
			// add
			Alucontrol <= 4'b0010;
		end else if(Aluop == 2'b01) begin
			// beq
			// sub
			Alucontrol <= 4'b0110;
		end else if(Aluop == 0) begin
			// R-type 
			if(Func == 0) begin
				// add
				Alucontrol <= 4'b0010;
			end else 
			if (Func == 1) begin
				// sub
				Alucontrol <= 4'b0110;
			end else 
			if (Func == 2) begin
				// and
				Alucontrol <= 4'b0000;
			end else 
			if (Func == 3) begin
				// or
				Alucontrol <= 4'b0001;
			end else 
			if (Func == 4) begin
				// slt
				Alucontrol <= 4'b0111;
			end
		end
		
	end
	
endmodule
