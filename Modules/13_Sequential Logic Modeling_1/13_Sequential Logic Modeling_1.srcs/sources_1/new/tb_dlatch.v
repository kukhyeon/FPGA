module tb_dlatch;
    reg clk, d;
    dlatch U0(clk, d, q);

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end
    initial begin
        d = 1'b0;
        forever begin
            #15 d = 1'b1;   #20 d = 1'b0;
            #10 d = 1'b1;   #10 d = 1'b0;
            #10 d = 1'b1;   #15 d = 1'b0;
        end
    end
endmodule
