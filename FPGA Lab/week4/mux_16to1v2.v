`timescale 1ns / 1ps

module mux_16to1v2(
    input   [3:0]   A,
    input   [3:0]   B,
    input   [3:0]   C,
    input   [3:0]   D,
    input   [3:0]   sel,
    output          Y
    );

    wire out_8to1_1, out_8to1_2;

    mux_8to1 mux_8to1_1 (
        .a(A[1:0]), 
        .b(A[3:2]), 
        .c(B[1:0]), 
        .d(B[3:2]), 
        .sel(sel[2:0]), 
        .out(out_8to1_1)
    );

    mux_8to1 mux_8to1_2 (
        .a(C[1:0]), 
        .b(C[3:2]), 
        .c(D[1:0]), 
        .d(D[3:2]), 
        .sel(sel[2:0]), 
        .out(out_8to1_2)
    );

    assign Y = (sel[3] == 0) ? out_8to1_1 : out_8to1_2;

endmodule