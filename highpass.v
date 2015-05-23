`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:53 05/19/2015 
// Design Name: 
// Module Name:    highpass 
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
module highpass(
    input [15:0] in0,
	 input en,
	 input rst,
	 input clk,
    output [15:0] out
    );
	 
parameter[15:0] fs1 = 48000;
//reg cutoff = 1000;
parameter[15:0] rc = 17 ; //100000/(cutoff *2*pie)
parameter reg [15:0] dt = 2; // 100000/ fs1;
reg [15:0]alpha = (rc*10000) /(rc+dt);
reg [15:0] ff [1:0];
reg [15:0] temp;

//reg [11:0] original = in0;
//out = alpha * (inold + in2 - in1);
	//assign out = en ? ( ff[0] + ff[1] + ff[2]+ ff[3]+ ff[4]+ ff[5]+ ff[6]+ ff[7]+ ff[8]+ ff[9]+ ff[10]+ ff[11]+ ff[12]+ ff[13]+ ff[14]+
	//ff[15]+ ff[16]+ ff[17]+ ff[18]+ ff[19]+ ff[20]+ ff[21]+ ff[22]+ ff[23]+ ff[24]+ ff[25]+ ff[26]+ ff[27]+ ff[28]+ ff[29]+ ff[30]+ ff[31]) >> 6 : 16'b0;
	assign out = en ? ff[i] : 16'b0;
	integer i, j;
	always@(posedge clk or posedge rst) begin
		if(rst) begin
			ff[0] <= 16'b0;
			ff[1] <= 16'b0;
			end
		else if(en) begin    
			   ff[0] <= in0;
				//ff[i] <= ff[i-1];
				ff[0] <= alpha * (ff[1] + in0 - temp) ;
				ff[1] <= ff[0];
				temp <= in0;
            end
				
	end

endmodule
