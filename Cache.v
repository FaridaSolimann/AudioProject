`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:08:56 05/12/2015 
// Design Name: 
// Module Name:    Cache 
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
module Cache(
    input clk,
    input rst,
    input [2:0] Addr_A,
    input [2:0] Addr_B,
    input [2:0] Addr_W,
    input [15:0] Data_W,
    output [15:0] Data_A,
    output [15:0] Data_B,
    input wr
    );
	 
	 
	 reg [15:0] Cache [15:0];
	 integer i;
	 
	 always @ (posedge clk)
	 begin
	 if (rst)
	 for (i=0; i < 16; i=i+1)
			Cache[i] = 16'b0;
	 else
		if(wr)
		 Cache[Addr_W] = Data_w;
	 end;

	assign Data_A = Cache[Addr_A];
	assign Data_B = Cache[Addr_B];


endmodule
