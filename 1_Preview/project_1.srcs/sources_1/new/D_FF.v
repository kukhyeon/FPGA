`timescale 1ns / 1ps
// D flip-flop, operating at the positive edge of CLK.
// Behavioral level modeling.

module D_FF(clk, din, rst, q);
    input clk, din, rst;
    output q;
    reg q;

always @(posedge clk or posedge rst)
begin
    if (rst == 1)
        q <=0;
    else
        q <= din;
end

endmodule