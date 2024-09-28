`timescale 1ns / 1ps
// Structural Modeling
module Half_Adder(
    input       a,
    input       b,
    output      sum,
    output      cout
    );

    xor u0 (sum, a, b);
    and u1 (cout, a, b);
endmodule
