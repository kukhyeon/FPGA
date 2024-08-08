// 4-bit 2-input NOR Gate using operators
module nor_op(a, b, y);
    input [3:0] a, b; // 4-bit
    output [3:0] y;
    assign y = ~(a|b); // NOR operator
endmodule