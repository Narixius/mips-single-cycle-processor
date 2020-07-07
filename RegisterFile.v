`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:01 05/29/2020 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, startin, clk, val, regNo);
	
	input [4:0]  Read1, Read2, WriteReg, regNo;
	input [31:0] WriteData;
	input RegWrite, startin, clk;
	output reg [31:0] Data1, Data2, val;
	
	reg [31:0] mem [31:0];
	integer i;
	
	always @(clk) begin
		
		if(startin) begin
			$display("RF Initialized");
			for(i = 0; i < 32; i = i + 1) begin
				mem[i] <= 0;
			end
		end
	end
	
	always @(posedge clk) begin
		
		if(RegWrite) begin
			if(WriteReg != 0)
				mem[WriteReg] <= WriteData;
		end
		
	end
	
	
	always @(Read1 or Read2)begin
			Data1 <= mem[Read1];
			Data2 <= mem[Read2];
			val <= mem[regNo];
	end
	
	
	
endmodule
