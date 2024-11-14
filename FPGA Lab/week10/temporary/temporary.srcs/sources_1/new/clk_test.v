`timescale 1ns/1ps

module clk_test(
    input wire clk,
    input wire reset,
    output reg [3:0] counter
);

    // 초기값 설정
    initial counter = 0;

    always @(posedge clk or posedge reset) begin
        if (reset)
            counter <= 0;
        else
            counter <= counter + 1;
    end

endmodule
