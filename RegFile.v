`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:58:07 05/12/2015 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(
    input clk,
    input rst,
    input [3:0] Addr_A,
    input [3:0] Addr_B,
    input [3:0] Addr_W,
    input [15:0] Data_W,
    output [15:0] Data_A,
    output [15:0] Data_B,
    input wr
    );
	 
	 reg [15:0] Regfile [15:0];
	 integer i;
	 
	 always @ (posedge clk)
	 begin
	 if (rst)
	 for (i=0; i < 16; i=i+1)
			Regfile[i] = 16'b0;
	 else
		if(wr)
		 Regfile[Addr_W] = Data_w;
	 end;

	assign Data_A = Regfile[Addr_A];
	assign Data_B = Regfile[Addr_B];
	
endmodule
