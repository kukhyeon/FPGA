`timescale 1ns / 1ps

module synchronizer(
    input   clk,         // 클럭 신호
    input   async_in,    // 비동기 입력 신호
    output  reg sync_out // 동기화된 출력 신호
    );

    reg tmp;  // 중간 값을 저장할 임시 레지스터

    always @(posedge clk) begin
        tmp         <= async_in;   // 클럭 엣지에서 입력 신호를 'tmp'로 동기화
        sync_out    <= tmp;        // 'tmp'에서 동기화된 출력 제공
    end
endmodule
