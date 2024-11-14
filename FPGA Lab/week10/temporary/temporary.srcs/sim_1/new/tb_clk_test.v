`timescale 1ns/1ps

module clk_test_tb;

    reg clk;
    reg reset;
    wire [3:0] counter;

    // UUT (Unit Under Test) 인스턴스화
    clk_test uut (
        .clk(clk),
        .reset(reset),
        .counter(counter)
    );

    // 클럭 생성
    initial clk = 0;
    always #5 clk = ~clk; // 10ns 주기

    // 리셋 신호 생성 및 시뮬레이션 제어
    initial begin
        reset = 1;      // 초기 리셋 활성화
        #15;
        reset = 0;      // 리셋 비활성화

        // 시뮬레이션 시간 설정
        #200 $finish;
    end

    // 모니터링
    initial begin
        $monitor("Time=%0t ns, Reset=%b, Counter=%d", $time, reset, counter);
    end

endmodule
