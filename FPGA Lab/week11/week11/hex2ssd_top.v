`timescale 1ns / 1ps


module hex2ssd_top(
    input           clk,
    input           rst,
    input   [3:0]   hex,
    output          seg_en,
    output  [6:0]   ssd,
    output  [6:0]   ssd2
    );

    wire    clk_125M = clk;
    wire    clk_100, clk_10, clk_1, clk_0_1;

    clk_gen_100     u0  (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100));
    freq_div_10     u1  (.clk_ref(clk_100), .rst(rst), .clk_out(clk_10));
    freq_div_10     u2  (.clk_ref(clk_10), .rst(rst), .clk_out(clk_1));
    freq_div_10     u3  (.clk_ref(clk_1), .rst(rst), .clk_out(clk_0_1));
    
    hex2ssd         s0  (.hex(hex), .seg(ssd));

    assign seg_en  =   (clk_1M) ? 1'b1 : 1'b0;
endmodule
