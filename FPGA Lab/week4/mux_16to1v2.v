`timescale 1ns / 1ps
module mux_16to1v2(
    input   [3:0]   A,      // 입력 A (4비트)
    input   [3:0]   B,      // 입력 B (4비트)
    input   [3:0]   C,      // 입력 C (4비트)
    input   [3:0]   D,      // 입력 D (4비트)
    input   [3:0]   sel,    // 선택 신호 (4비트)
    output          Y       // 출력 Y
    );
    
    wire out_8to1_1, out_8to1_2; // 8:1 멀티플렉서 출력 신호 선언

    // 첫 번째 8:1 멀티플렉서 인스턴스
    mux_8to1 mux_8to1_1 (
        .a(A[1:0]),      // A의 하위 2비트
        .b(A[3:2]),      // A의 상위 2비트
        .c(B[1:0]),      // B의 하위 2비트
        .d(B[3:2]),      // B의 상위 2비트
        .sel(sel[2:0]),  // 하위 3비트 선택 신호
        .out(out_8to1_1) // 첫 번째 8:1 MUX 출력
    );

    // 두 번째 8:1 멀티플렉서 인스턴스
    mux_8to1 mux_8to1_2 (
        .a(C[1:0]),      // C의 하위 2비트
        .b(C[3:2]),      // C의 상위 2비트
        .c(D[1:0]),      // D의 하위 2비트
        .d(D[3:2]),      // D의 상위 2비트
        .sel(sel[2:0]),  // 하위 3비트 선택 신호
        .out(out_8to1_2) // 두 번째 8:1 MUX 출력
    );

    // 최종 출력 선택: sel[3] 비트에 따라 두 8:1 MUX 중 하나를 선택
    assign Y = (sel[3] == 0) ? out_8to1_1 : out_8to1_2;
endmodule
