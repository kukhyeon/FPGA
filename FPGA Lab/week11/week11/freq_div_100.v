`timescale 1ns / 1ps

module freq_div_100(
    input       clk_ref,     // 기준 클럭 입력
    input       rst,         // 리셋 신호
    output reg  clk_div      // 분주된 출력 클럭
    );
    reg [5:0]   cnt;         // 주파수 분주를 위한 6비트 카운터
    always @(posedge clk_ref or posedge rst)
    begin
        if(rst)
        begin
            cnt     <= 6'd0;     // 카운터를 0으로 리셋
            clk_div <= 1'd0;     // 출력 클럭도 0으로 리셋
        end
        else
        begin
            if(cnt == 6'd49)     // 카운터가 49에 도달하면 clk_div 토글
            begin
                cnt <= 6'd0;     // 50번의 사이클 후 카운터를 0으로 리셋
                clk_div <= ~clk_div;  // 클럭 신호를 토글
            end
            else
            begin
                cnt <= cnt + 1'b1;    // 카운터를 증가시킴
            end
        end
    end

endmodule