`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/05 14:59:46
// Design Name: 
// Module Name: tb_top_divider
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


module tb_top_divider();

    // inputs
    reg         clk_ref, rst;
    
    // outputs
    wire        clk_60, clk_45, clk_15, clk_7;
    
    // UUT
    top_divider UUT (clk_ref, rst, clk_60, clk_45, clk_15, clk_7);
    
    // testcode
    always  #4 clk_ref = ~ clk_ref;
    
    initial
    begin
                        clk_ref = 0; rst = 1;
        #10                          rst = 0; 
    end
    
    // monitor
    initial
    begin
        $monitor("Time = %0t, clk_ref = %b, rst = %b, clk_60 = %b, clk_45 = %b, clk_15 = %b, clk_7 = %b",
                 $time, clk_ref, rst, clk_60, clk_45, clk_15, clk_7);
    end
    
endmodule
