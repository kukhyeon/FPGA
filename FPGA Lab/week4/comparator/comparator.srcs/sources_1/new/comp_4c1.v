`timescale 1ns / 1ps
module comp_4c1(
    input  [3:0] a,
    input  [3:0] b,
    output       a_big,
    output       b_big,
    output       equal 
    );

    wire   [3:0] bit_eq;
    wire   [3:0] bit_a_big;
    wire   [3:0] bit_b_big;

    comp_2 u00 (.a(a[1:0]), .b(b[1:0]), .a_big(bit_a_big[1:0]), .b_big(bit_b_big[1:0]), .equal(bit_eq[1:0]));
    comp_2 u01 (.a(a[3:2]), .b(b[3:2]), .a_big(bit_a_big[3:2]), .b_big(bit_b_big[3:2]), .equal(bit_eq[3:2]));


    // Combinational logic
    assign equal = (bit_eq[1:0] & bit_eq[3:2]);
    assign a_big = bit_a_big[3:2] | (bit_a_big[1:0] & bit_eq[3:2]);
    assign b_big = bit_b_big[3:2] | (bit_b_big[1:0] & bit_eq[3:2]);

endmodule