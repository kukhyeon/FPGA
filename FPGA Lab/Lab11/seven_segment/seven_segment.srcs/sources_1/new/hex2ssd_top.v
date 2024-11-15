`timescale 1ns / 1ps


module hex2ssd_top(
    input           clk,
    input           rst,
    input   [3:0]   hex,
    output          seg_en,
    output  [6:0]   ssd
    );

    wire    clk_125M = clk;
    wire    clk_100M, clk_1M;

    clk_gen_100M    u0  (.clk_ref(clk_125M),    .rst(rst),    .clk_out(clk_100M));
    freq_div_100    u1  (.clk_ref(clk_100M),     .rst(rst),      .clk_div(clk_1M));
    hex2ssd         s0  (.hex(hex), .seg(ssd));

    assign seg_en  =   (clk_1M) ? 1'b1 : 1'b0;
endmodule
