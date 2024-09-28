`timescale 1ns / 1ps
module Half_Subtractor(
    input       x,
    input       y,
    output      diff,
    output      borr
    );

    assign diff = x^y;
    assign borr = (~x) & y;
endmodule
