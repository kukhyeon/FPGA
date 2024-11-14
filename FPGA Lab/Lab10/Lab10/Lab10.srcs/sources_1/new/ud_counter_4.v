`timescale 1ns / 1ps

module ud_counter_4(
    input               clk,     // 클럭 신호
    input               rst,     // 리셋 신호
    input               en,      // 활성화 신호
    input               up,      // 증가 신호
    input               down,    // 감소 신호
    output  reg [3:0]   cnt      // 4비트 카운터 출력
    );

    always @(posedge clk or posedge rst) begin
        if (rst)
            cnt <= 4'b0000;       // 카운터를 0으로 리셋
        else if (en) begin
            if (up)
                cnt <= cnt + 4'b0001;   // 'up'이 높을 때 카운터 증가
            else if (down)
                cnt <= cnt - 4'b0001;   // 'down'이 높을 때 카운터 감소
        end
    end
endmodule
