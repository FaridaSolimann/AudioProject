`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:50 05/12/2015 
// Design Name: 
// Module Name:    addrEncoder 
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
module addrEncoder(input[23:0] addr, output[25:0] mem_addr);

	assign mem_addr = {2'b00, addr};

endmodule
