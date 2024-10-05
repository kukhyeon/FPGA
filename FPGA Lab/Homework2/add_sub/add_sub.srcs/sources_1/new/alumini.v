`timescale 1ns / 1ps
module alu_mini(
    input [3:0] A,      // 4비트 입력 A
    input [3:0] B,      // 4비트 입력 B
    input Op,           // 부호를 제어하는 신호
    output V,           // overflow
    output [3:0] Sum    // 4비트 합 출력
    );

    wire [3:0] carry;   // 내부 캐리 연결선
    wire [3:0] B_in;    // 내부 B 연결선
    wire carry_in;      // 초기 carry_in 연결선
    wire carry_out;     // 마지막 출력을 맵핑하기 위함
    
    // Op에 따른 B_in 값 설정
    assign B_in = B ^ {4{Op}};    // Op = 1이면 부호 반전
    assign carry_in = Op;           // carry_in을 통해 1을 더함

    // 각 비트에 대해 Full Adder 인스턴스화
    Full_Adder FA0 (.a(A[0]), .b(B_in[0]), .cin(carry_in), .sum(Sum[0]), .cout(carry[0]));
    Full_Adder FA1 (.a(A[1]), .b(B_in[1]), .cin(carry[0]), .sum(Sum[1]), .cout(carry[1]));
    Full_Adder FA2 (.a(A[2]), .b(B_in[2]), .cin(carry[1]), .sum(Sum[2]), .cout(carry[2]));
    Full_Adder FA3 (.a(A[3]), .b(B_in[3]), .cin(carry[2]), .sum(Sum[3]), .cout(carry_out));
    
    // Overflow detector 수정
    assign V = carry[2] ^ carry_out;
endmodule