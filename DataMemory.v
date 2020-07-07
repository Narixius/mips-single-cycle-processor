`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:30 05/29/2020 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(Address, WriteData, MemWrite, MemRead, ReadData, startin, clk);
	
	input      [31:0] Address, WriteData;
	input             MemWrite, MemRead, startin, clk;
	output reg [31:0] ReadData;
	reg        [8:0] mem[255:0];
	integer i;
	
	always @(clk) begin
	
		if(startin) begin
			$display("DM Initialized");
			for(i = 0; i < 256; i = i + 4) begin
				{mem[i], mem[i+1], mem[i+2], mem[i+3]} <= 1;
			end
		end
		
	end
	
	
	
	always @(posedge clk) begin
		if(MemWrite)
			{mem[Address], mem[Address+1], mem[Address+2], mem[Address+3]} <= WriteData;
	end
	
	always @(MemRead, Address) begin
		if(MemRead) 
			ReadData <= {mem[Address], mem[Address+1], mem[Address+2], mem[Address+3]};
	
	end
	
endmodule
