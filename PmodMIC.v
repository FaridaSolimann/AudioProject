`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:16:06 05/12/2015 
// Design Name: 
// Module Name:    PmodMIC 
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
module PmodMIC(
	 input start,
	 input mic_en,
	 output done,
	 output reg[15:0] pData,
	 
	 input clk_sclk,
	 input rst,
	 
	 input mic_sData,
	 output mic_sclk,
	 output mic_ncs
    );
	 
	 assign mic_sclk = clk_sclk;
	 
	 PmodMIC_FSM f1(start, mic_en, done, clk_sclk, rst, mic_ncs);
	 
	 always@(posedge clk_sclk) 
	 begin
	 
		if(~mic_ncs) 
		pData <= {pData[14:0], mic_sData};
		
	 end
	 
endmodule
