`timescale 1ns / 1ps  // 시뮬레이션 시간 단위 및 정밀도 설정

module Add3(
    input   [3:0]        Bin,     // 4비트 입력 신호 Bin
    output reg  [3:0]   Bout      // 4비트 출력 신호 Bout
    );

    reg     [3:0]   B;            // 내부 레지스터 B 선언
    
    // Bin 입력을 기준으로 BCD 변환 수행
    always @(*) begin
        B = Bin;                  // 입력 값을 B에 저장
        
        if (B >= 4'b0101) begin   // B의 값이 5 이상일 경우
            B = B + 3;            // B에 3을 더함
        end
        
        Bout = B;                 // 최종 결과를 출력 Bout에 할당
    end

endmodule
