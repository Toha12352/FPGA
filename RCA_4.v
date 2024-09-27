`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:18 04/25/2024 
// Design Name: 
// Module Name:    RCA_4 
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
module  RCA_4(
  
 output Cout, 
output [3:0] Sum ,
input [3:0] A,B,
	
input Cin
 
 
);
wire c0,c1,c2;
     // Intermediate carry outputs

    // Instantiate 4 full adders
    FULL_ADDER FA0 (c0,Sum[0],A[0], B[0], Cin);  // Add LSB
    FULL_ADDER FA1 (c1,Sum[1],A[1], B[1], c0  );   // Add 2nd bit
    FULL_ADDER FA2 (c2,Sum[2],A[2], B[2], c1);   // Add 3rd bit
    FULL_ADDER FA3 (Cout,Sum[3],A[3], B[3], c2); // Add MSB
endmodule 
