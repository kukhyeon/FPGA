module dec2ssd_top(
    input   clk,
    input   rst,
    input  [7:0] number,
    output [6:0] ssd,
    output reg seg_en
    );

    wire [3:0] digit1 = number[7:4]; // number의 상위 4비트
    wire [3:0] digit2 = number[3:0]; // number의 하위 4비트

    wire [6:0] ssd1, ssd2;

    dec2ssd ssd_inst1(
        .dec(digit1),
        .seg(ssd1)
    );

    dec2ssd ssd_inst2(
        .dec(digit2),
        .seg(ssd2)
    );

    // 클럭 분주기 추가
    reg [15:0] clk_div_counter;
    always @(posedge clk or posedge rst) begin
        if (rst)
            clk_div_counter <= 0;
        else
            clk_div_counter <= clk_div_counter + 1;
    end

    wire slow_clk = clk_div_counter[15]; // 분주된 클럭

    // 분주된 클럭을 사용하여 seg_en과 ssd 제어
    always @(posedge slow_clk or posedge rst) begin
        if (rst)
            seg_en <= 1'b0;
        else
            seg_en <= ~seg_en;
    end

    assign ssd = (seg_en) ? ssd1 : ssd2;

endmodule
