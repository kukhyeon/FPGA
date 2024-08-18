module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    // 3-bit 2-input OR Gate (bitwise OR)
    assign out_or_bitwise = a | b;  // 비트 단위 OR 연산

    // Logical OR operation (3-bit wide inputs treated as single boolean values)
    assign out_or_logical = (a != 3'b000) || (b != 3'b000);  // 논리 OR 연산

    // Bitwise NOT operation for each bit of a and b
    assign out_not = {~b[2], ~b[1], ~b[0], ~a[2], ~a[1], ~a[0]};  // a와 b의 각 비트를 개별적으로 반전하여 결합

endmodule
