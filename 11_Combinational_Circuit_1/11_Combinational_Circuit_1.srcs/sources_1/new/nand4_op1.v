module nand4_op1(
    a, y
    );
    input [3:0] a;
    output      y;

    assign y = ~(a[0] & a[1] & a[2] & a[3]);
//  assign y = ~&a;
//  nand U0(y, a[0], a[1], a[2], a[3]);

endmodule
