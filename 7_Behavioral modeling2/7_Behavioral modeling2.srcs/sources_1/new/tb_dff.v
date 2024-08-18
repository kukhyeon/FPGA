// Producing periodic signals using forever statement
module tb_dff(

    );
    reg clk, din;
    dff UI (clk, din, q);

    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;
    end

    initial begin
        din = 1'b0;
        forever begin
            #15 din = 1'b1;
            #20 din = 1'b0;
            #30 din = 1'b1;
            #20 din = 1'b0;
        end
    end
endmodule
