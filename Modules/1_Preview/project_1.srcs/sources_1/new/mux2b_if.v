`timescale 1ns / 1ps

module mux2b_if(in0, in1, sel, out);
    input [1:0] in0, in1; // 2-bit
    input       sel; // 1-bit
    output [1:0] out; // 2-bit
    reg    [1:0] out; // variable type 2-bit

    // The type of objects inside always block must be reg
    // always block is procedural assignment, so the order of statements matters
    always @(sel or in0 or in1) begin
        if(sel == 0)
            out = in0; 
        else
            out = in1;
    end
endmodule