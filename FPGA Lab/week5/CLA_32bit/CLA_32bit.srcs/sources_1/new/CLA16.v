`timescale 1ns / 1ps
module CLA16(
    input  [15:0] a,         // 16비트 입력 a
    input  [15:0] b,         // 16비트 입력 b
    input         Cin,       // 입력 캐리 비트 Cin
    output [15:0] sum,       // 16비트 출력 합계 sum
    output        Gout,      // 출력 전체 생성 비트 Gout
    output        Pout,      // 출력 전체 전달 비트 Pout
    output        Cout       // 출력 캐리 비트 Cout
);

// 4개의 생성 비트와 전달 비트를 저장하기 위한 4비트 와이어 G와 P 선언
wire [3:0] G;
wire [3:0] P;
// 각 4비트 덧셈기 모듈 사이의 캐리를 전달하는 3비트 와이어 C 선언
wire [3:1] C;

// 4비트 덧셈기 모듈 CLA4 네 개를 이용하여 16비트 덧셈을 수행
CLA4 adder0(.A(a[3:0]),   .B(b[3:0]),   .Cin(Cin),    .sum(sum[3:0]),   .Gout(G[0]), .Pout(P[0]));  // 하위 4비트 덧셈
CLA4 adder1(.A(a[7:4]),   .B(b[7:4]),   .Cin(C[1]),   .sum(sum[7:4]),   .Gout(G[1]), .Pout(P[1]));  // 다음 4비트 덧셈
CLA4 adder2(.A(a[11:8]),  .B(b[11:8]),  .Cin(C[2]),   .sum(sum[11:8]),  .Gout(G[2]), .Pout(P[2]));  // 다음 4비트 덧셈
CLA4 adder3(.A(a[15:12]), .B(b[15:12]), .Cin(C[3]),   .sum(sum[15:12]), .Gout(G[3]), .Pout(P[3]));  // 상위 4비트 덧셈

// 4개의 생성 및 전달 비트를 이용하여 최종 전체 생성 및 전달 비트와 캐리 비트를 계산하는 CLL4 모듈 사용
CLL4 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
