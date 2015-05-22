`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:22 05/21/2015 
// Design Name: 
// Module Name:    Mux4 
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
module Mux4(q, echo_en,lowpass_en, plus, minus);

//input[1:0] select;
input echo_en, lowpass_en, plus, minus;
//parameter [6:0] d1 ,d2,d3,d4;
output  reg [6:0]   q;

always @(*)
begin
	
		  if(echo_en) q = 7'b0110000;
		  if(lowpass_en) q = 7'b1110001;
		  if(plus) q = 7'b1101000;
		  if(minus) q = 7'b1000010;
		  else q = 7'b1111111;
       /* 2'b01 :
		  if(echo_en) q = 7'b0110001;
		  else if(lowpass_en) q = 7'b1100010;
		  else if(plus) q = 7'b1111001;
		  else if(minus) q = 7'b1100010;
		  else q = 7'b1111111;
        2'b10 :
		  if(echo_en) q = 7'b1101000;
		  else if(lowpass_en) q = 7'b1100011;
		  else if(plus) q = 7'b0000110;
		  else if(minus) q = 7'b1100011;
		  else q = 7'b1111111;

        2'b11 :
		  if(echo_en) q = 7'b0000001;
		  else if(lowpass_en) q = 7'b1111111;
		  else if(plus) q = 7'b1000001;
		  else if(minus) q = 7'b1101010;
		  else q = 7'b1111111;

      endcase
		*/
end

endmodule
