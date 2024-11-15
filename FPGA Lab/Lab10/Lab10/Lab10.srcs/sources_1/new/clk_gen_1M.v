`timescale 1ns / 1ps

module clk_gen_1M(
    input   clk_ref,
    input   rst,
    output  clk_out
    );

    wire    clk_125M = clk_ref;
    wire    clk_100M;
    wire    clk_1M;

    clk_gen_100M     u0  (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M));
    freq_div_100    u1  (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
    assign clk_out = clk_1M;
endmodule