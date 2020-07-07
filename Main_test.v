`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:04:40 06/19/2020
// Design Name:   Main
// Module Name:   G:/B complex/Semester 4/LAB/7/Nariman.Movaffaghi_Assignment7/Main_t.v
// Project Name:  Nariman.Movaffaghi_Assignment7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_t;

	// Inputs
	reg clk;
	reg startin;
	reg [4:0] regNo;

	// Outputs
	wire [31:0] val;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.clk(clk), 
		.startin(startin), 
		.regNo(regNo), 
		.val(val)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		startin = 1;
		regNo = 9;
		
		//#100; 
		//clk = 1;
		
		#110;
		//#10;
		startin = 0;
		//#100;
		//clk = 0;
		//#100; 
		//clk = 1;
		

	end
	always #100 clk = ~clk;
endmodule

