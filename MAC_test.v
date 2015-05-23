`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:13:25 05/09/2015
// Design Name:   MAC
// Module Name:   C:/Users/Farida/Documents/Uni/Spring 2015/Digital Design/Projects/Project 2/DSP/MAC_test.v
// Project Name:  DSP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MAC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MAC_test;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg clk;
	reg en;
	reg rst;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	MAC uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.out(out)
	);

	always #10 clk = !clk;
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		en = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 1;
		en = 1;
		
		# 20
		
		rst =0;
		
		A = 20;
		B = 10;
		
		# 500
		
		en = 0;
		
		
        
		// Add stimulus here

	end
      
endmodule

