`timescale 1ns / 1ps

module tb_ref_clk;

    reg clk_ref, rst;

    wire clk_5M;
    
    ref_clk UUT (clk_ref, rst, clk_5M);

    always #4 clk_ref = ~clk_ref;

    initial begin
                clk_ref = 0; rst = 1;
        #10                  rst = 0;
    end
endmodule
