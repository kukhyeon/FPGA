`timescale 1ns / 1ps
module tb_hs;
    reg x, y;
    wire diff, borr;

    Half_Subtractor UUT (
        .x(x),
        .y(y),
        .diff(diff),
        .borr(borr)
    );

    initial begin
                x = 0;  y = 0;
        #100    x = 0;  y = 1;
        #100    x = 1;  y = 0;
        #100    x = 1;  y = 1;
    end
endmodule
