`timescale 1ns / 1ps

module comp_2(
    input  [1:0] a,
    input  [1:0] b,
    output       a_big,
    output       b_big,
    output       equal
);

wire   [1:0] bit_eq;
wire   [1:0] bit_a_big;
wire   [1:0] bit_b_big;

comp_1 u0 (.a(a[0]), .b(b[0]), .a_big(bit_a_big[0]), .b_big(bit_b_big[0]), .equal(bit_eq[0]));
comp_1 u1 (.a(a[1]), .b(b[1]), .a_big(bit_a_big[1]), .b_big(bit_b_big[1]), .equal(bit_eq[1]));

assign equal = (bit_eq[0] & bit_eq[1]);
assign a_big = bit_a_big[1] | (bit_a_big[0] & bit_eq[1]);
assign b_big = bit_b_big[1] | (bit_b_big[0] & bit_eq[1]);

endmodule
