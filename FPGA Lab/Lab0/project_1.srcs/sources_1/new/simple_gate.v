`timescale 1ns / 1ps
// Data Flow Modeling
module simple_gate(
    input       a,
    input       b,
    input       c,
    output      d
    );

    wire k;

    assign k = a&b; // and
    assign d = k^c;  // xor
    
endmodule