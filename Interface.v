`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:34 05/17/2015 
// Design Name: 
// Module Name:    Interface 
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
module Interface(
		
		input clk,
		input clk_display,
		input rst,
		input mic_en,
		input i2s_en,
		input echo_en,
		input up, 
		input down,
		input ok,
		output reg [6:0] o,
		input high_pass_en,
		input low_pass_en,
		input pitch_en
    );

always@(posedge clk or rst)
begin
if(rst) o <= 7'b1111111;
else
if(echo_en) o <= 7'b0110000;
else
if(low_pass_en) o <= 7'b1110001;
else
if(up) o <= 7'b1000001;

end 
	 
endmodule
