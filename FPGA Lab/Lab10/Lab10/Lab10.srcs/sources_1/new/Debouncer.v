`timescale 1ns / 1ps

module debouncer #(parameter N = 10, // 디바운싱 임계값
                   parameter K = 4)  // 안정성 확인을 위한 카운터 크기
(
    input       clk,       // 클럭 입력
    input       noisy,     // 노이즈가 있는 버튼 입력 신호
    output      debounced  // 디바운싱된 버튼 출력 신호
    );

    reg     [K-1: 0] cnt;  // 디바운싱을 위한 카운터 레지스터

    always @(posedge clk) begin
        if(noisy)   
            cnt <= cnt + 1'b1;   // 노이즈 신호가 있으면 카운터 증가
        else        
            cnt <= 0;            // 노이즈가 없으면 카운터 리셋
    end

    assign debounced = (cnt == N) ? 1'b1 : 1'b0; // 카운터가 임계값에 도달하면 출력은 1
endmodule

