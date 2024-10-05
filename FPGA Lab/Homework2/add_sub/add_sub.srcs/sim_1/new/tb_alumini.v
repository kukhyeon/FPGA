`timescale 1ns / 1ps

module alu_mini_tb();
    reg [3:0] A;        // 4비트 입력 A
    reg [3:0] B;        // 4비트 입력 B
    reg Op;             // 제어 신호
    wire V;             // overflow
    wire [3:0] Sum;     // 4비트 합 출력

    // DUT (Device Under Test) 인스턴스 생성
    alu_mini uut (
        .A(A),
        .B(B),
        .Op(Op),
        .V(V),
        .Sum(Sum)
    );

    initial begin
        // Sum = 0000, Overflow = 0
        A = 4'b0000; B = 4'b0000; Op = 1'b0; #10;
        // Sum = 1000, Overflow = 1
        A = 4'b0011; B = 4'b0101; Op = 1'b0; #10;
        // Sum = 0011, Overflow = 0
        A = 4'b0110; B = 4'b0011; Op = 1'b1; #10;
        // Sum = 1100, Overflow = 1
        A = 4'b0111; B = 4'b0101; Op = 1'b0; #10;
        // Sum = 1011, Overflow = 0
        A = 4'b0010; B = 4'b0111; Op = 1'b1; #10;
        // Sum = 0000, Overflow = 0
        A = 4'b1111; B = 4'b0001; Op = 1'b0; #10;
        $finish;
    end
endmodule