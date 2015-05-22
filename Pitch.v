`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:59 05/18/2015 
// Design Name: 
// Module Name:    Pitch 
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
module Pitch(
    input clk,
    input rst,
    input pitch_en,
    input [15:0] dataIn,
    output [15:0] dataOut
    );

	reg [31:0] i;
	wire [31:0] x2;
	wire [31:0] x;
	wire [63:0] constant; 
	
	assign x = ((i * 2 *3 *100)/32000);//i >>1;
	assign x2 = x*x;
	assign constant = (1 + (x2 *(x2 - 12))/24) ;	
	
	always @ (posedge clk or posedge rst)
	begin
	if (rst | pitch_en)
	begin
	i <=0;
	end
/*	else
	if ( i == 230365)
	i <= 0;*/
	else
	i <= i+1;
	end

	assign dataOut = dataIn* constant;

	


endmodule
