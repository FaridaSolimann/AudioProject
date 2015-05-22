`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:48 05/13/2015 
// Design Name: 
// Module Name:    Echo 
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
module Echo(
    input clk,
	 input rst,
	 input [11:0] SignalIn,
    output [11:0]SignalOut,
	 input wr_en,
	 input en,
	 input rd_en	 
    );
	 
	 
	 wire [11:0] Fout;
	 assign SignalOut = en ? SignalIn + (Fout>>1) : SignalIn;
	 
	 
 maged test (
  .clk(clk), // input clk
  .rst(rst), // input rst
  .din(SignalIn), // input [15 : 0] din
  .wr_en(wr_en), // input wr_en
  .rd_en(rd_en), // input rd_en
  .dout(Fout), // output [15 : 0] dout
  .full(), // output full
  .empty() // output empty
);

endmodule
