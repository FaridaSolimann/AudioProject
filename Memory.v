`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:52 05/12/2015 
// Design Name: 
// Module Name:    Memory 
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
	module Memory(
	input[23:0] addr, input[15:0] dW, input RE, input WE, output[15:0] dR,
	output[25:0] mem_addr, inout[15:0] mem_data, output mem_clk,
	output mem_OE, output mem_WE, output mem_CE, output mem_ADV, output mem_WAIT, output mem_UB, 
	output mem_LB, output mem_CRE
	);
	
	wire RW;	
	assign mem_clk = 1'b0;
	
	addrEncoder addrEncoder_instance (addr, mem_addr);
	FlagEncoder FlagEncoder_instance	(RE, WE, RW, mem_OE, mem_WE, mem_CE, mem_ADV, mem_WAIT, mem_UB, mem_LB, mem_CRE);
	InOut_Separator InOut_Separator_instance (dW, RW, dR, mem_data);
	 
endmodule
