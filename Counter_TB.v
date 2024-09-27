module tb_counter_4bit;
    
    // Inputs to the DUT (Device Under Test)
    reg clk;
    reg rst;
    
    // Output from the DUT
    wire [3:0] q;
    
    // Instantiate the 4-bit counter module
    counter_4bit uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );
    
    // Clock generation
    always #5 clk = ~clk;  // Generate a clock with a period of 10 time units

    initial begin
        // Initialize inputs
        clk = 0;
        rst = 0;
        
        // Apply reset
        #10 rst = 1;   // Assert reset at time 10
        #10 rst = 0;   // Deassert reset at time 20
        
        // Let the counter run for a few clock cycles
        #100;
        
        // Apply reset again to see if the counter resets
        #10 rst = 1;
        #10 rst = 0;
        
        // Let the counter run again
        #50;
        
        // End simulation
        $finish;
    end
    
    // Monitor the output
    initial begin
        $monitor("At time %t, rst = %b, count = %b", $time, rst, q);
    end
endmodule
