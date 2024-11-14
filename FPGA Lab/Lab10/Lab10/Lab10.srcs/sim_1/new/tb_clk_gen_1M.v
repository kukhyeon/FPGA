`timescale 1ns / 1ps

module tb_clk_gen_1M(

    );

    reg clk_ref, rst;
    wire clk_1M;

    clk_gen_1M UUT (.clk_ref(clk_ref), .rst(rst), .clk_out(clk_1M));

    always #4 clk_ref = ~clk_ref;

    initial begin
        clk_ref = 0;    rst = 1;
        #10             rst = 0;
    end
endmodule
