`timescale 1ns / 1ps

module hex2ssd_top_tb;

    // 테스트벤치에서 사용할 파라미터와 레지스터 선언
    reg clk;
    reg rst;
    reg start;
    reg stop;
    wire seg_en1;
    wire seg_en2;
    wire [6:0] ssd;

    // 테스트할 DUT (Device Under Test) 인스턴스화
    hex2ssd_top uut (
        .clk(clk),
        .start(start),
        .stop(stop),
        .rst(rst),
        .seg_en1(seg_en1),
        .seg_en2(seg_en2),
        .ssd(ssd)
    );

    // 클럭 생성: 125MHz (주기 8ns)
    initial begin
        clk = 0;
        forever #4 clk = ~clk; // 4ns마다 clk를 토글하여 125MHz 생성
    end

    // 테스트 시나리오
    initial begin
        // 초기화
        rst = 1;
        start = 0;
        stop = 0;
        #20;           // 20ns 대기

        rst = 0;       // 리셋 해제
        start = 1;
    end

    // 출력 모니터링
    initial begin
        $monitor("Time: %0t | Start: %b | Stop: %b | Reset: %b | Seconds: %0d | Hundredths: %0d", 
                 $time, start, stop, rst, uut.seconds, uut.hundredths);
    end

endmodule
