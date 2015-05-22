`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:53:07 05/12/2015 
// Design Name: 
// Module Name:    ClkDiv 
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
	module ClkDiv(
	input clk_100M,
	 input rst,
	 output reg clk_sclk,
	 output reg clk_mclk,
	 output clk_lrclk
    );

	///////////////////////////////////////////////|||||||||||||||||||||||||
	wire temp_clk_mclk, temp_clk_sclk, temp_clk1;
	 reg [6:0] lr_cnt;

	// reg [13:0] debouncer_cnt;
	 clk_div CD (.CLK_IN1(clk_100M), .CLK_OUT1(temp_clk_mclk), .CLK_OUT2(temp_clk_sclk), .RESET(rst)); 
	 
	 always @ (posedge temp_clk_mclk or posedge rst) 
	 begin
		if (rst)
			clk_mclk <= 1'b0;
		else
			clk_mclk <= ~clk_mclk;
	 end
	 
	 always @ (posedge temp_clk_sclk or posedge rst) /////beyzabat el frequency
	 begin
		if (rst) 
			begin
			clk_sclk <= 1'b0;
			lr_cnt <= 7'b0000000;
			end
		else
			begin
			clk_sclk <= ~clk_sclk;
			lr_cnt <= lr_cnt + 7'b0000001; ///////////////?????????????????????
			end
	 end
	assign clk_lrclk = lr_cnt[6];
	/////////////////////////////////////////////////||||||||||||||||||||||

endmodule
