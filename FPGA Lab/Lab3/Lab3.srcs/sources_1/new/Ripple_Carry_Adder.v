`timescale 1ns / 1ps

module Ripple_Carry_Adder(
    input       [3:0] x,
    input       [3:0] y,
    input             cin,
    output            cout,
    output      [3:0] sum
    );

    wire c1, c2, c3;

    Full_Adder  u0  (.a(x[0]), .b(y[0]), .cin(cin), .cout(c1), .sum(sum[0]));
    Full_Adder  u1  (.a(x[1]), .b(y[1]), .cin(c1), .cout(c2), .sum(sum[1]));
    Full_Adder  u2  (.a(x[2]), .b(y[2]), .cin(c2), .cout(c3), .sum(sum[2]));
    Full_Adder  u3  (.a(x[3]), .b(y[3]), .cin(c3), .cout(cout), .sum(sum[3]));
    
endmodule
