`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:46 05/21/2015 
// Design Name: 
// Module Name:    BCD 
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
module BCD(
    input en,
    input in,
    output reg [6:0] out
    );
	 
	 parameter [6:0] fo2= 7'b1100011, taht = 7'b0011101;
	 
	 always @ (in or en)
	 begin
	 if (en)
	 case(in)
	 0: out = ~fo2;
	 1: out = ~taht;
	 default: 
	 out = 7'b x;
	 endcase
	 else 
	 out = 7'b111_111_1;
	 
	 end
	 
	 
	 
	 
	 


endmodule
