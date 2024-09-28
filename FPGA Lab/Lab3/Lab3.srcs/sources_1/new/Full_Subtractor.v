`timescale 1ns / 1ps
module Full_Subtractor(
    input       x,
    input       y,
    input       bin,
    output      diff,
    output      bout
    );

    wire d1, b1, b2;

    Half_Subtractor u0 (.x(x),  .y(y),  .diff(d1),  .borr(b1));
    Half_Subtractor u1 (.x(d1),  .y(bin),  .diff(diff),  .borr(b2));

    assign bout = b1 | b2;
        
endmodule
