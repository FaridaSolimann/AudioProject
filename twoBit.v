`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:19 05/21/2015 
// Design Name: 
// Module Name:    twoBit 
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
module twoBit(
    clk,
    rst,
	 O
    );
	 input clk,rst;
	  output reg[1:0] O;
	 always @(posedge clk)
	 begin
		if(rst == 0)
		begin
			O=O+1;	
		end
		if(rst == 1)
			 O = 2'b00;
	 end
endmodule

