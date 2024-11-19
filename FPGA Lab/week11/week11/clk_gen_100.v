`timescale 1ns / 1ps

module clk_gen_100(
    input   clk_ref,    // 기준 클럭 입력
    input   rst,        // 리셋 신호 입력
    output  clk_out     // 분주된 클럭
    );

    wire    clk_125M = clk_ref;                     // 125Mhz의 클럭을 기준 클럭으로 설정
    wire    clk_100M, clk_1M, clk_10M, clk_100;     // 3번의 분주를 위한 3개의 사이 wire

    clk_gen_100M u0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M));
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
    freq_div_100 u2 (.clk_ref(clk_1M), .rst(rst), .clk_div(clk_10K));
    freq_div_100 u3 (.clk_ref(clk_10K), .rst(rst), .clk_div(clk_100));
    
    assign  clk_out = clk_100;  // 100Hz로 분주된 클럭
endmodule