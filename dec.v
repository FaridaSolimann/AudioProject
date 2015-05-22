`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:06 05/21/2015 
// Design Name: 
// Module Name:    dec 
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
module dec (
 binary_in   , //  2 bit binary input
decoder_out , //  4-bit  out
 enable        //  Enable for the decoder
 );
input [1:0] binary_in  ;
 input  enable ;
 output [3:0] decoder_out ;
  
  reg [3:0] decoder_out ;
  
  always @ (enable or binary_in)
 begin
   decoder_out = 0;
  if (enable) begin
     case (binary_in)
        2'b00 : decoder_out = 4'b1110;
        2'b01 : decoder_out = 4'b1101;
        2'b10 : decoder_out = 4'b1011;
        2'b11 : decoder_out = 4'b0111;
      endcase
    end
  end
  
  endmodule
