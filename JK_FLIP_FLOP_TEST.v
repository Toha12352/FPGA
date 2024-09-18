`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:42 04/25/2024
// Design Name:   JK_FLIP_FLOP
// Module Name:   /home/ise/Desktop/Gr - A/JK_FLIP_FLOP/JK_FLIP_FLOP_TEST.v
// Project Name:  JK_FLIP_FLOP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FLIP_FLOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FLIP_FLOP_TEST;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg reset;

	// Outputs
	wire q;
	wire qn;

	// Instantiate the Unit Under Test (UUT)
	JK_FLIP_FLOP uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.reset(reset), 
		.q(q), 
		.qn(qn)
	);

	initial begin
		 forever begin 
		   clk<=0;
			#100;
			clk<=1;
			#100;
			end 
			
end 
       initial begin 
           reset=1;j=1;k=0;
			  #100;
			  reset=1;j=0;k=0;
			  #100;
			  reset=1;j=0;k=1;
			  #100;
			  reset=1;j=1;k=0;
			  #100;
           reset=0;j=1;k=1;
			  #100;
		// Wait 100 ns for global reset to finish
		  
        
		// Add stimulus here

	end
      
endmodule
