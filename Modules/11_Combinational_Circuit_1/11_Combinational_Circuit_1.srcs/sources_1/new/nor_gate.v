module nor_gate(
    a, b, y
    );
    input [3:0] a, b;
    output [3:0] y;

    nor U0 [3:0] (y, a, b);
endmodule
