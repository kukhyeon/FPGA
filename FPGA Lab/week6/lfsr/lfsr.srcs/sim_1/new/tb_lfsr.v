`timescale 1ns / 1ps

module tb_LFSR_4b();

    reg clk, rst;
    wire [3:0] q;

    // 테스트할 DUT(Device Under Test) 인스턴스화
    LFSR_4b uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // 클럭 생성: 10 타임 유닛마다 clk 신호를 토글
    always #10 clk = ~clk;

    // 초기 블록을 사용하여 자극(stimulus) 적용
    initial begin
        clk = 0;        // clk를 0으로 초기화
        rst = 0;        // 리셋 적용
        #10;            // 10 타임 유닛 대기
        rst = 1;        // 리셋 해제
        #10;
        rst = 0;

        // 자극 적용
        #20;            // 20 타임 유닛 대기
        repeat (10) @ (posedge clk);  // 10개의 클럭 사이클 동안 대기

        #100 $finish;   // 100 타임 유닛 후 시뮬레이션 종료
    end

    // clk, rst, q 신호의 변경 사항을 모니터링
    initial begin
        $monitor("clk=%0t rst=%b out=%b", $time, rst, q);
    end

endmodule
