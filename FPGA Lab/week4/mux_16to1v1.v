`timescale 1ns / 1ps

module mux_16to1v1(
    input   [3:0]   A,
    input   [3:0]   B,
    input   [3:0]   C,
    input   [3:0]   D,
    input   [3:0]   sel,
    output          Y
    );

    wire out_A, out_B, out_C, out_D;
    
    mux_4to1 mux_A (.a(A[0]), .b(A[1]), .c(A[2]), .d(A[3]), .sel(sel[1:0]), .out(out_A));
    mux_4to1 mux_B (.a(B[0]), .b(B[1]), .c(B[2]), .d(B[3]), .sel(sel[1:0]), .out(out_B));
    mux_4to1 mux_C (.a(C[0]), .b(C[1]), .c(C[2]), .d(C[3]), .sel(sel[1:0]), .out(out_C));
    mux_4to1 mux_D (.a(D[0]), .b(D[1]), .c(D[2]), .d(D[3]), .sel(sel[1:0]), .out(out_D));

    mux_4to1 mux_final (.a(out_A), .b(out_B), .c(out_C), .d(out_D), .sel(sel[3:2]), .out(Y));


endmodule
