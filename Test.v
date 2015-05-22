`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:59 05/11/2015 
// Design Name: 
// Module Name:    Test 
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
module Test(
		input clk,
		input i2s_en,
		input mic_en,
		input mic_sData,
		input rst,
		input plus,
		input minus,
		input echo_en,
		input lowpass_en,
		input echo_en_rd,
		input pitch_en,
		output i2s_mclk,
		output i2s_sclk,
		output i2s_lrclk,
		output i2s_sdata,
		output mic_sclk,
		//output [3:0]decoder_out,
		output mic_ncs
		//output f,
		//output [6:0] q
		//input en
    );
	 reg [15:0] i2s_pData;
	 wire [11:0] filter_data;
	 wire [11:0] filter_data1, filter_data2, lowpass_data;
	 wire clk_mclk, clk_sclk, clk_lrclk, done;
	 wire [15:0] mic_pData, filter_pData;
	 wire [1:0] O;
	 //assign f = 0;
	//assign i2s_pData = echo_en?filter_data:mic_pData;
	
	always@(*)
	begin
	if(echo_en) 
		i2s_pData = filter_data;
	else 
		if(lowpass_en)  i2s_pData = lowpass_data;
	else 
		i2s_pData = mic_pData;
	end
	
	//twoBit te1 (clk_sclk,rst,O);
	//dec d1 ( binary_in , decoder_out ,en);
   ClkDiv cc (clk, rst,  clk_sclk, clk_mclk, clk_lrclk);

   Lowpass h1 (clk_sclk, rst, lowpass_en,mic_pData,lowpass_data);
	//highpass h2 ( mic_pData, highpass_en, rst, clk_sclk, filter_data3);
    //Mux4(q, echo_en, lowpass_en, plus, minus);

//assign i2s_pData = echo_en?filter_data:mic_pData;
  // assign i2s_pData = lowpass_en?filter_data1:mic_pData;
	//assign i2s_pData = highpass_en?filter_data3:mic_pData;

	PmodI2S i2s (i2s_pData, clk_mclk, clk_sclk, clk_lrclk,rst, i2s_en, i2s_mclk, i2s_sclk, i2s_lrclk, i2s_sdata);
	// pD ?? volume control ??
		
	//highpass h1 (in0, out, mic_pData, inold, out, clk_sclk);
	
	//Pitch pt (~done,rst, done&pitch_en, mic_pData[11:0], filter_data);
  	
	Echo ec( ~done, rst,mic_pData[11:0],filter_data,echo_en, echo_en, echo_en_rd);
	//Echo ec1( clk_sclk, rst,filter_data,filter_data1,done&echo_en);
	//Echo ec2( clk_sclk, rst,filter_data1,filter_data2,done&echo_en);
	/*module BCD(
    input en,
    input in,
    output reg [6:0] out
    );*/
	
	
	PmodMIC mic (~clk_lrclk, mic_en, done, mic_pData, clk_sclk, rst, mic_sData, mic_sclk, mic_ncs);
   

endmodule