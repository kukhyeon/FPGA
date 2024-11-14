`timescale 1ns / 1ps

module counter_top(
    input   clk_ref,
    input   rst,
    input   en,
    input   up,
    input   down,
    output  [3:0] cnt
    );

    wire    clk_125M = clk_ref;
    wire    clk_100M, clk_1M, clk_10K, clk_100;

    clk_gen_100M u0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M));
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
    freq_div_100 u2 (.clk_ref(clk_1M), .rst(rst), .clk_div(clk_10K));
    freq_div_100 u3 (.clk_ref(clk_10K), .rst(rst), .clk_div(clk_100));
    ud_counter_4 u4 (.clk(clk_100), .rst(rst), .en(en), .up(up), .down(down), .cnt(cnt));
endmodule
