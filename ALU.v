`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:42 05/08/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Result,
    input [3:0] sel,
    output zflag
    );

assign zflag = (Result == 16'b0);

always @(*)
begin 

case (sel)
	4'b0000: Result = A + B;
	4'b0001: Result = A - B;
	4'b0010: Result = A * B;
	//4'b0011: Result = call load from memory function;
	//4'b0100: Result = call store function;
	4'b0101: MAC(A,B, clk, 1, rst, Result) ;
	//4'b0110: Result = A & B;
	4'b0111: Result = A & B;
	4'b1000: Result = A | B;
	4'b1001: Result = A ^ B;
	4'b1010: Result = ~(A ^ B);
	//4'b1011: branch
	4'b1100: Result = (A == B);
	//4'b1101: do nothing function
	

endcase

end


endmodule
