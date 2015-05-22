`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:50 05/18/2015 
// Design Name: 
// Module Name:    Volume 
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
module Volume(
    input vol,
    input [15:0] dataIn,
    input [15:0] dataOut
    );


assign dataOut = dataIn << vol;

endmodule
