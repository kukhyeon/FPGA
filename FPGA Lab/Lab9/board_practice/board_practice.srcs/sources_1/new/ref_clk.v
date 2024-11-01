`timescale 1ns / 1ps

module ref_clk(
    input       clk_ref,
    input       rst,
    output      clk_5M
    );

    wire    clk_125M = clk_ref;
    
    clk_wiz_0   clk_gen (clk_5M, rst, clk_125M);        
endmodule
