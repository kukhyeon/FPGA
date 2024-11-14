`timescale 1ns/1ps

module cofm_tb;

    reg         clk;
    reg         rst;
    reg [1:0]   x;
    wire        sale;
    wire        ret;
    
    // 테스트할 모듈 인스턴스화
    cofm uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .sale(sale),
        .ret(ret)
    );
    
    // 클럭 생성
    always #10 clk = ~clk;  // 20ns 주기의 클럭 생성
    
    // 입력 신호 변경을 클럭에 동기화
    initial begin
        // 초기 설정
        clk = 0;
        rst = 0;
        x = 2'd0;
        
        // 리셋 신호 생성 (비동기식 리셋이므로 초기화 후 일정 시간 유지)
        #5 rst = 1;
        #85
        // 시나리오 1: 100원 투입 후 버튼 누름 -> 동전 반환
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd2;   // 버튼 누름

        // 시나리오 2: 500원 투입 후 버튼 누름 -> 커피 제공
        @(posedge clk); x = 2'd1;   // 500원 투입
        @(posedge clk); x = 2'd2;   // 버튼 누름

        // 시나리오 3: 100원 5개 투입 후 버튼 누름 -> 커피 제공
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd2;   // 버튼 누름

        // 시나리오 4: 100원 3개 투입 후 500원 투입 -> 즉시 동전 반환
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd0;   // 100원 투입
        @(posedge clk); x = 2'd1;   // 500원 투입
        // 시나리오 5: 아무 입력 없이 버튼 누름 -> 동작 없음
        @(posedge clk); x = 2'd2;   // 버튼 누름

        
        // 테스트 종료
        #20 $finish;
    end
    
    // 모니터링
    initial begin
        $monitor("Time: %0t | x: %b | sale: %b | ret: %b | state: %d", $time, x, sale, ret, uut.state);
    end
    
endmodule  
