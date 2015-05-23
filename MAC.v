`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:33 05/09/2015 
// Design Name: 
// Module Name:    MAC 
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
module MAC(
    input [15:0] A,
    input [15:0] B,
    input clk,
	 input en,
    input rst,
    output reg [31:0] out
    );
	 
	 wire [31:0] mul;
	 
	 assign mul = A * B;
	 
	 always @ (posedge clk or posedge rst)
	 begin
	 if (rst)
		out <= 0;
	 else
		if (en)
			out <= out + mul;
	end;		
		
		
		


endmodule
