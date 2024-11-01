`timescale 1ns / 1ps

module CLA32(
    input  [31:0] a,         // 32비트 입력 a
    input  [31:0] b,         // 32비트 입력 b
    input         Cin,       // 입력 캐리 비트 Cin
    output [31:0] sum,       // 32비트 출력 합계 sum
    output        Gout,      // 출력 전체 생성 비트 Gout
    output        Pout,      // 출력 전체 전달 비트 Pout
    output        Cout       // 출력 캐리 비트 Cout
    );

// 내부 생성 및 전달 비트를 저장하기 위한 2비트 와이어 G와 P 선언
wire [1:0]  G;
wire [1:0]  P;
// 두 16비트 덧셈기의 결과 캐리를 전달하는 와이어 C 선언
wire        C;

// 16비트 덧셈기 모듈 CLA16 두 개를 이용하여 32비트 덧셈을 수행
CLA16 adder0(.a(a[15:0]),   .b(b[15:0]),   .Cin(Cin),    .sum(sum[15:0]),   .Gout(G[0]), .Pout(P[0])); // 하위 16비트 덧셈
CLA16 adder1(.a(a[31:16]),   .b(b[31:16]),   .Cin(C),    .sum(sum[31:16]),   .Gout(G[1]), .Pout(P[1])); // 상위 16비트 덧셈

// 전체 생성 및 전달 비트를 계산하고 출력 캐리 비트를 계산하는 블록 캐리 룩어헤드 로직 BCLL2 모듈 사용
BCLL2 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
