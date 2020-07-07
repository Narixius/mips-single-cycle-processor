`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:42:09 05/21/2020 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(address, instruction, startin);

	input		  [31:0] address;
	input             startin;
	output reg [31:0] instruction;
	

	reg [8:0] IM [79:0];

	always @(*) begin
	
		if(startin) begin
			{IM[0],IM[1],IM[2],IM[3]}     = 32'b10001110000010000000000000000000;
			{IM[4],IM[5],IM[6],IM[7]}     = 32'b10001110000010010000000000000100;
			{IM[8],IM[9],IM[10],IM[11]}   = 32'b00000001001010000100100000100000;
			{IM[12],IM[13],IM[14],IM[15]} = 32'b10001110000010000000000000001000;
			{IM[16],IM[17],IM[18],IM[19]} = 32'b00000001001010000100100000100000;
			{IM[20],IM[21],IM[22],IM[23]} = 32'b10001110000010000000000000001100;
			{IM[24],IM[25],IM[26],IM[27]} = 32'b00000001001010000100100000100000;
			{IM[28],IM[29],IM[30],IM[31]} = 32'b10001110000010000000000000010000;
			{IM[32],IM[33],IM[34],IM[35]} = 32'b00000001001010000100100000100000;
			{IM[36],IM[37],IM[38],IM[39]} = 32'b10001110000010000000000000010100;
			{IM[40],IM[41],IM[42],IM[43]} = 32'b00000001001010000100100000100000;
			{IM[44],IM[45],IM[46],IM[47]} = 32'b10001110000010000000000000011000;
			{IM[48],IM[49],IM[50],IM[51]} = 32'b00000001001010000100100000100000;
			{IM[52],IM[53],IM[54],IM[55]} = 32'b10001110000010000000000000011100;
			{IM[56],IM[57],IM[58],IM[59]} = 32'b00000001001010000100100000100000;
			{IM[60],IM[61],IM[62],IM[63]} = 32'b10001110000010000000000000100000;
			{IM[64],IM[65],IM[66],IM[67]} = 32'b00000001001010000100100000100000;
			{IM[68],IM[69],IM[70],IM[71]} = 32'b10001110000010000000000000100100;
			{IM[72],IM[73],IM[74],IM[75]} = 32'b00000001001010000100100000100000;
			{IM[76],IM[77],IM[78],IM[79]} = 32'b10101110000010010000000000101000;
			
			//instruction <= {IM[address], IM[address+1], IM[address+2], IM[address+3]};
		end else begin
			 $display("IM");
			 $display(address);
			$display({IM[address], IM[address+1], IM[address+2], IM[address+3]});
			instruction <= {IM[address], IM[address+1], IM[address+2], IM[address+3]};
		end
		
		
	end
	
		//assign instruction = {IM[address], IM[address+1], IM[address+2], IM[address+3]};
	
endmodule


