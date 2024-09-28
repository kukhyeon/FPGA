// 4-input NAND Gate using operators
module nand4_op2(a, y);
    input [3:0] a;
    output y;
    // Used bit operator
    assign y = ~(a[0] & a[1] & a[2] & a[3]);
endmodule
