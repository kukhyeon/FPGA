// 4-input NAND Gate using operators
module nand4_op1(a, y);
    input [3:0] a;
    output y;
    // Used operator to simplify
    assign y = ~&a; 
endmodule
