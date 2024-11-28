`timescale 1ns / 1ps

module clk_gen_25M(
    input   clk_ref,   // 기준 클럭 입력
    input   rst,       // 리셋 신호 입력
    output  clk_out    // 25.2 MHz 출력 클럭
    );

    wire clk_125M = clk_ref;  // 기준 클럭을 clk_125M으로 할당

    // 25.2 MHz 클럭을 생성하기 위한 클럭 위저드 인스턴스
    clk_wiz_0 clk_gen (
        .clk_out1(clk_out),  // 생성된 출력 클럭
        .reset(rst),         // 리셋 신호
        .clk_in1(clk_125M)   // 입력 클럭
    );
endmodule
