`timescale 1ns / 1ps

module VPG_top(
 input clk_ref,
 input rst, 
 input [1:0] pattern_select,
 output o_vs,
 output o_hs, 
 output [3:0] o_r_data, 
 output [3:0] o_g_data,
 output [3:0] o_b_data 
    );

    wire clk_125M = clk_ref;
    wire clk_25_2M;

    clk_gen_25_2M u0 (.clk_ref(clk_ref), .reset(rst), .clk_25_2M(clk_25_2M));
    pattern_gen u1 (.clk(clk_25_2M), .reset_n(~rst), .pattern_select(pattern_select), .o_vs(o_vs), .o_hs(o_hs), .o_r_data(o_r_data), .o_g_data(o_g_data), .o_b_data(o_b_data));

endmodule


