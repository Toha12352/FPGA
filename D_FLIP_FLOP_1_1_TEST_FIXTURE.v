`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:06:28 04/25/2024
// Design Name:   D_FLIP_FLOP_1_1
// Module Name:   /home/ise/Desktop/Gr - A/D_FLIP_FLOP_1_1/D_FLIP_FLOP_1_1_TEST_FIXTURE.v
// Project Name:  D_FLIP_FLOP_1_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FLIP_FLOP_1_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FLIP_FLOP_1_1_TEST_FIXTURE;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_FLIP_FLOP_1_1 uut (
		.d(d), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		  // Wait 100 ns for global reset to finish
		#100;
		
        d = 1;
		clk = 1;
      #100; 
       d = 0;
		clk = 1;
			// Wait 100 ns for global reset to finish
		#100;
		
		d = 1;
		clk = 1;
          // Wait 100 ns for global reset to finish
      #100;

      d = 0;
		clk = 1;
		    // Wait 100 ns for global reset to finish
		#100;
		
		d = 1;
		clk = 1;
     		// Wait 100 ns for global reset to finish
      #100;

   d = 0;
		clk = 1;
		
		// Wait 100 ns for global reset to finish
    #100;
		// Add stimulus here

	end
      
endmodule

