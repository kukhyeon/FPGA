module nand4_if(
    a, y
    );
    input [3:0] a;
    output      y;
    reg         y;

    always@(a) begin
        if (a == 4'b1111)   y = 1'b0;
        else                y = 1'b1;
    end
endmodule
