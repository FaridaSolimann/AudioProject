`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:31 05/12/2015 
// Design Name: 
// Module Name:    PmodI2S 
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
module PmodI2S(
	 input [15:0] pData,
	 input clk_mclk,
	 input clk_sclk,
	 input clk_lrclk,
	 input rst,
	 input i2s_en,
	 
	 output i2s_mclk,
	 output i2s_sclk,
	 output i2s_lrclk,
	 output i2s_sdin
    );
	
	 wire ncs;
	 wire load;
	 
	 reg[15:0] temp; 
	 assign i2s_mclk = clk_mclk;
	 assign i2s_sclk = clk_sclk;
	 assign i2s_lrclk = clk_lrclk;
	 
	 PmodI2S_FSM f1(~clk_lrclk, i2s_en, clk_sclk, rst, ncs, load);
	 
	 assign i2s_sdin = temp[15];
	 always@(negedge clk_sclk) begin
		if(~ncs) temp[15:0] <= {temp[14:0], 1'bx};
		else if(load) temp <= pData;
	 end
	 
endmodule

