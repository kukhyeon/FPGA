module tb_nand4
    reg [3:0] a;
    wire      y;
    integer   i;

    nand4_op1 U0 (a, y);
    initial begin
        a = 0;
        for(i = 1; i< 32; i = i+1)
            #20 a = i;
    end

endmodule
