`timescale 1ns/1ps
module FULL_ADDER(
   input A,      // First input bit
    input B,      // Second input bit
    input Cin,    // Carry-in bit
    output Sum,   // Sum output
    output Cout   // Carry-out output
);
  wire w1 ,w2 ,w3;
    assign Sum = A ^ B ^ Cin;        // XOR operation for sum
    assign Cout = (A & B) | (Cin & (A ^ B));  // Carry-out calculation


endmodule
