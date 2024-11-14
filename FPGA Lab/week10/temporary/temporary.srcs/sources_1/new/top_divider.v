`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/05 14:44:52
// Design Name: 
// Module Name: top_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_divider(
    input           clk_ref, rst,                           // input reference clock, reset
    output          clk_60, clk_45, clk_15, clk_7           // output 60, 45, 15, 7 Hz clock 
    );
    
    // wire
    wire    clk_125M = clk_ref;
    wire    clk_60M, clk_600K, clk_6k;
    wire    clk_45M, clk_450K, clk_4500;
    wire    clk_15M, clk_150K, clk_1500;
    wire    clk_7M, clk_70K, clk_700;
    
    // clk generator
    clk_wiz_0 c0  (clk_60M, clk_45M, clk_15M, clk_7M, rst, clk_125M);
    
    // clock 60 line
    freq_div_100    f0  (clk_60M, rst, clk_600K);
    freq_div_100    f1  (clk_600K, rst, clk_6K);
    freq_div_100    f2  (clk_6K, rst, clk_60);
    
    // clock 45 line
    freq_div_100    f3  (clk_45M, rst, clk_450K);
    freq_div_100    f4  (clk_450K, rst, clk_4500);
    freq_div_100    f5  (clk_4500, rst, clk_45);
    
    // clock 15 line
    freq_div_100    f6  (clk_15M, rst, clk_150K);
    freq_div_100    f7  (clk_150K, rst, clk_1500);
    freq_div_100    f8  (clk_1500, rst, clk_15);
    
    // clock 7 line
    freq_div_100    f9   (clk_7M, rst, clk_70K);
    freq_div_100    f10  (clk_70K, rst, clk_700);
    freq_div_100    f11  (clk_700, rst, clk_7);
    
endmodule
