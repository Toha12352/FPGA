`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:42 04/25/2024 
// Design Name: 
// Module Name:    JK_FLIP_FLOP 
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
module JK_FLIP_FLOP(
    input j,
    input k,
    input clk ,
    input reset ,
    output q,
    output qn
    );
	reg q;
  reg qn;

	initial begin 
	  q = 1'b0;
	  qn= ~q;
	  end 
	  	always @ (posedge clk)

	begin 
	   case ({j,k})
		2'b01:q=0;
		2'b10:q=1;
		2'b11:q=~q;
		endcase
		qn=~q;
	end
 endmodule
