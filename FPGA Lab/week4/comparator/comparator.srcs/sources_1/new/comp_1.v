`timescale 1ns / 1ps

module comp_1(
    input       a,
    input       b,
    output      a_big,
    output      b_big,
    output      equal
    );

    assign equal = (a & b) | (~a & ~b);
    assign a_big = (a & ~b);
    assign b_big = (~a & b);
endmodule