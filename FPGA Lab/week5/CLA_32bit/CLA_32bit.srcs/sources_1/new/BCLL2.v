`timescale 1ns / 1ps

module BCLL2(
    input   [1:0] Gin,       // 2비트 생성 비트 입력 Gin
    input   [1:0] Pin,       // 2비트 전달 비트 입력 Pin
    input         Cin,       // 입력 캐리 비트 Cin
    output        Gout,      // 전체 생성 비트 출력 Gout
    output        Pout,      // 전체 전달 비트 출력 Pout
    output        C,         // 내부 캐리 비트 C
    output        Cout       // 출력 캐리 비트 Cout
    );

    // 첫 번째 16비트 블록의 생성 비트와 전달 비트를 사용해 내부 캐리 비트 C 계산
    assign C = (Gin[0] | (Pin[0] & Cin));
    // 두 번째 16비트 블록까지 고려하여 전체 생성 비트 Gout 계산
    assign Gout = (Gin[1] | (Pin[1] & Gin[0]));
    // 전체 전달 비트 Pout 계산
    assign Pout = (Pin[1] & Pin[0]);
    // 최종 출력 캐리 비트 Cout 계산
    assign Cout = Gout | (Pout & Cin);

endmodule
