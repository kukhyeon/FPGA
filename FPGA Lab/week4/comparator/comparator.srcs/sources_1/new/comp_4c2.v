`timescale 1ns / 1ps
module comp_4c2(
    input  [3:0] a,
    input  [3:0] b,
    output       a_big,
    output       b_big,
    output       equal 
    );

    wire   [3:0] bit_eq;
    wire   [3:0] bit_a_big;
    wire   [3:0] bit_b_big;

    comp_1 u0 (.a(a[0]), .b(b[0]), .a_big(bit_a_big[0]), .b_big(bit_b_big[0]), .equal(bit_eq[0]));
    comp_1 u1 (.a(a[1]), .b(b[1]), .a_big(bit_a_big[1]), .b_big(bit_b_big[1]), .equal(bit_eq[1]));
    comp_1 u2 (.a(a[2]), .b(b[2]), .a_big(bit_a_big[2]), .b_big(bit_b_big[2]), .equal(bit_eq[2]));
    comp_1 u3 (.a(a[3]), .b(b[3]), .a_big(bit_a_big[3]), .b_big(bit_b_big[3]), .equal(bit_eq[3]));
    
    assign equal = (bit_eq[0] & bit_eq[1] & bit_eq[2] & bit_eq[3]);
    assign a_big = ((((bit_a_big[0] & bit_eq[1]) | bit_a_big[1]) & bit_eq[2]) | bit_a_big[2]) & bit_eq[3] | bit_a_big[3];
    assign b_big = ((((bit_b_big[0] & bit_eq[1]) | bit_b_big[1]) & bit_eq[2]) | bit_b_big[2]) & bit_eq[3] | bit_b_big[3];

endmodule