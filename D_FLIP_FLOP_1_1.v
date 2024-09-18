`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:37:50 04/25/2024 
// Design Name: 
// Module Name:    D_FLIP_FLOP_1_1 
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
module D_FLIP_FLOP_1_1(d,clk,q);
   
  input d;
    input clk;
    output reg q;
   
always @ (d or clk)

begin  
q = d;
end

endmodule
