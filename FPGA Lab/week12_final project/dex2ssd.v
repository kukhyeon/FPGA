module dec2ssd(
    input  [3:0] dec,     // 4비트 입력 숫자
    output reg [6:0] seg  // 7세그먼트 출력
);
    always @(*) begin
        case(dec)
            4'd0: seg = 7'b0111111;
            4'd1: seg = 7'b0000110;
            4'd2: seg = 7'b1011011;
            4'd3: seg = 7'b1001111;
            4'd4: seg = 7'b1100110;
            4'd5: seg = 7'b1101101;
            4'd6: seg = 7'b1111101;
            4'd7: seg = 7'b0000111;
            4'd8: seg = 7'b1111111;
            4'd9: seg = 7'b1101111;
            default: seg = 7'b1111111; // 공백
        endcase
    end
endmodule
