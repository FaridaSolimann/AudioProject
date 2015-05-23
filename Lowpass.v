`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:42 05/21/2015 
// Design Name: 
// Module Name:    Lowpass 
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
module Lowpass(input clk, input rst, input en, input [15:0] in, output [15:0] out);
	
	reg [15:0] ff [31:0];
	//assign out = en ? ((ff[0]>> 16'd16) + (ff[1]>> 16'd16) + (ff[2]>> 16'd15) + (ff[3]>> 16'd14) + (ff[4]>> 16'd13) + (ff[5]>> 16'd12) + (ff[6]>> 16'd11) + (ff[7]>> 16'd10) + (ff[8]>> 16'd9)
	//+ (ff[9]>> 16'd8) + (ff[10]>> 16'd7) + (ff[11]>> 16'd6) + (ff[12]>> 16'd5)
	//+ (ff[13]>> 16'd4) + (ff[14]>> 16'd3) + (ff[15]>> 16'd2)+ (ff[16]>> 16'd2) + (ff[17]>> 16'd3)
	//+ (ff[18]>> 16'd4) + (ff[19]>> 16'd5) + (ff[20]>> 16'd6) + (ff[21]>> 16'd7) + (ff[22]>> 16'd8) + (ff[23]>> 16'd9) + (ff[24]>> 16'd10)
	//+ (ff[25]>> 16'd11) + (ff[26]>> 16'd12) + (ff[27]>> 16'd13) + (ff[28]>> 16'd14) + (ff[29]>> 16'd15) + (ff[30]>> 16'd16) + (ff[31]>> 16'd16)) : 16'b0;
	
	assign out = en ? ( ff[0] + ff[1] + ff[2]+ ff[3]+ ff[4]+ ff[5]+ ff[6]+ ff[7]+ ff[8]+ ff[9]+ ff[10]+ ff[11]+ ff[12]+ ff[13]+ ff[14]+
	ff[15]+ ff[16]+ ff[17]+ ff[18]+ ff[19]+ ff[20]+ ff[21]+ ff[22]+ ff[23]+ ff[24]+ ff[25]+ ff[26]+ ff[27]+ ff[28]+ ff[29]+ ff[30]+ ff[31]) >> 6 : 16'b0;
	
	integer i, j;
	always@(posedge clk or posedge rst) begin
		if(rst)
			for(i = 0; i < 32; i = i + 1)
				ff[i] <= 16'b0;
		else if(en) begin
			ff[0] <= in;
			for(i = 1; i < 32; i = i + 1)
				ff[i] <= ff[i-1];
		end
	end
	//always@(*)
		//for(j = 0; j < 127; j = j + 1)
		//	out = out + ff[j];
		
		//function lowpass(real[0..n] x, real dt, real RC)
  // var real[0..n] y
  // var real a := dt / (RC + dt)
   
endmodule

