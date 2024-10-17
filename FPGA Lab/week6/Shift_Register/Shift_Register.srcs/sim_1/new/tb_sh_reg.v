`timescale 1ns / 1ps

module tb_sh_reg;
    parameter BITS = 16;
    
    reg clk, rstn, en, mode, data;

    wire    [BITS-1:0]  out;

    sh_reg  #(BITS) UUT (clk, rstn, en, mode, data, out);

    always #10 clk = ~clk;

    initial begin
                        clk <= 0; rstn <= 0; en <= 0; mode <= 0; data <= 0;
        #20;            rstn <= 1; en <= 1;
        repeat (6) @ (posedge clk)  data <= ~data;
        #15;            mode = 1;
        repeat (4) @ (posedge clk)  data <= ~data;
        repeat (5) @ (posedge clk)
        $finish;
    end

    initial begin
        $monitor    ("time = %0t rsten = %0b en = %0b mode = %0b data = %b, out = %b", $time, rstn, en, mode, data, out);
    end
endmodule
