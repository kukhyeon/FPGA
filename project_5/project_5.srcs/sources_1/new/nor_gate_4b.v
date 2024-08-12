// #1
module nor_gate_4b(a, b, y);
    input [3:0] a, b;
    output [3:0] y;

    nor U0 [3:0] (y, a, b); // 2-bit nor gate array
endmodule

//#2
module nor_gate_4b_eq(a, b, y);
    input [3:0] a, b;
    output [3:0] y;

    nor U3 (y[3], a[3], b[3]); 
    nor U2 (y[2], a[2], b[2]); 
    nor U1 (y[1], a[1], b[1]); 
    nor U0 (y[0], a[0], b[0]); 
endmodule
// Module #1 and #2 operate as same