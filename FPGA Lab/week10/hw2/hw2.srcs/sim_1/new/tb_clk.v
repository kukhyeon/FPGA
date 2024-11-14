`timescale 1ns / 1ps

module tb_clk;
    reg clk_in;       
    reg reset;        
    wire clk_60Hz, clk_45Hz, clk_15Hz, clk_7Hz;
    
    clock_divider_top uut (
        .clk_in(clk_in),
        .reset(reset), 
        .clk_60Hz(clk_60Hz),
        .clk_45Hz(clk_45Hz),
        .clk_15Hz(clk_15Hz),
        .clk_7Hz(clk_7Hz)
    );

    initial clk_in = 0;
    always #4 clk_in = ~clk_in;

    initial begin
        reset = 1;
        #10 reset = 0;  
    end
endmodule
