`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:12 05/12/2015 
// Design Name: 
// Module Name:    PmodMIC_FSM 
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
module PmodMIC_FSM(
	 input start,
	 input mic_en,
	 output done,
	 input clk_sclk,
	 input rst,
	 output cntr_ncs
    );
	 
	 reg[1:0] state, nextstate;
	 reg[3:0] cnt;
	 parameter[1:0] IDLE = 2'b00, A0 = 2'b01, A1 = 2'b10, X = 2'b11;
	 
	 assign cntr_ncs = state != A0;
	 assign done = state == IDLE;
	 
	 always@(negedge clk_sclk) begin
		if(state == IDLE) cnt <= 4'b1111;
		else cnt <= cnt - 1'b1;
	 end
	 
	 always@(*) begin
		case(state)
			IDLE: nextstate = (start&&mic_en?A0:state);
			A0: nextstate = (!cnt?A1:state);
			A1: nextstate = (start?state:IDLE);
			default: nextstate = X;
		endcase
	 end
	 
	 always@(negedge clk_sclk or posedge rst) begin
		if(rst) state <= IDLE;
		else state <= nextstate;
	 end
	 
endmodule
