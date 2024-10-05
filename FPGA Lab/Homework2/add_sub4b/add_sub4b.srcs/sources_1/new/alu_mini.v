`timescale 1ns / 1ps
module alu_mini(
    input [3:0] A,      // 4비트 입력 A
    input [3:0] B,      // 4비트 입력 B
    input Cin,          // 캐리 입력
    input Op,           // 부호를 제어하는 신호
    output V,           // overflow
    output Cout,        // 최종 Cout
    output [3:0] Sum    // 4비트 합 출력
    );

    wire [3:0] carry;   // 내부 캐리 연결선

    // 각 비트에 대해 Full Adder 인스턴스화
    Full_Adder FA0 (.a(A[0]), .b(B[0] ^ Op), .cin(Cin), .sum(Sum[0]), .cout(carry[0]));  // 비트 0 덧셈
    Full_Adder FA1 (.a(A[1]), .b(B[1] ^ Op), .cin(carry[0]), .sum(Sum[1]), .cout(carry[1]));  // 비트 1 덧셈
    Full_Adder FA2 (.a(A[2]), .b(B[2] ^ Op), .cin(carry[1]), .sum(Sum[2]), .cout(carry[2]));  // 비트 2 덧셈
    Full_Adder FA3 (.a(A[3]), .b(B[3] ^ Op), .cin(carry[2]), .sum(Sum[3]), .cout(Cout));  // 비트 3 덧셈

    // Overflow detector
    assign V = carry[2] ^ Cout;
endmodule