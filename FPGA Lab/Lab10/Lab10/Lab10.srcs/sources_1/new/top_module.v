`timescale 1ns / 1ps

module top_module(
    input   wire clk_ref,     // 기준 클럭 입력
    input   wire [3:0] btn,   // 4비트 버튼 입력
    output  wire [3:0] led    // 4비트 LED 출력
    );

    // counter_top_debouncer 모듈 인스턴스화
    counter_top_debouncer ut(
        .clk_ref(clk_ref),    // 기준 클럭을 모듈에 연결
        .rst(btn[0]),         // 버튼 0을 리셋 신호로 사용
        .en(btn[1]),          // 버튼 1을 카운터 활성화 신호로 사용
        .up(btn[2]),          // 버튼 2로 카운터 증가
        .down(btn[3]),        // 버튼 3으로 카운터 감소
        .cnt(led)             // 4비트 카운터 출력을 LED에 연결
    );
endmodule

