`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:12 05/12/2015 
// Design Name: 
// Module Name:    InOut_Separator 
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
module InOut_Separator(input[15:0] dW, input RW, output[15:0] dR, inout[15:0] mem_data);
	
	assign dR = mem_data;
	assign mem_data = (RW?dW:16'bz);
endmodule
