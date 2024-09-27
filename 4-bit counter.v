module counter_4bit (
    input clk,       // Clock signal
    input rst,       // Reset signal
    output [3:0] q   // 4-bit output
);
    reg [3:0] count;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 4'b0000;  // Reset counter to 0
        end else begin
            count <= count + 1; // Increment counter
        end
    end

    assign q = count;  // Assign counter value to output
endmodule
