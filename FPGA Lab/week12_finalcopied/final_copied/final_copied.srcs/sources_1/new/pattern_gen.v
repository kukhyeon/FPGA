`timescale 1ns/1ps

module pattern_gen(
    input clk,
    input reset_n,
    input [1:0] pattern_select,

    output o_vs,
    output o_hs,
    output [3:0] o_r_data,
    output [3:0] o_g_data,
    output [3:0] o_b_data
);

// VGA 타이밍 파라미터 설정 (640x480 @60Hz)
parameter h_front_porch  = 32'd16;
parameter h_sync_width   = 32'd96;
parameter h_back_porch   = 32'd48;
parameter h_active       = 32'd640;

parameter v_front_porch  = 32'd10;
parameter v_sync_width   = 32'd2;
parameter v_back_porch   = 32'd33;
parameter v_active       = 32'd480;

parameter h_total        = h_front_porch + h_sync_width + h_back_porch + h_active;
parameter v_total        = v_front_porch + v_sync_width + v_back_porch + v_active;

// 레지스터 및 와이어 선언
reg [31:0] h_cnt;
reg [31:0] v_cnt;
reg hs;
reg vs;
reg de;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        h_cnt <= 0;
    else if (h_cnt == h_total - 1)
        h_cnt <= 0;
    else
        h_cnt <= h_cnt + 1;
end

always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        v_cnt <= 0;
    else if (h_cnt == h_total - 1) begin
        if (v_cnt == v_total - 1)
            v_cnt <= 0;
        else
            v_cnt <= v_cnt + 1;
    end
end

// HSYNC 생성
always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        hs <= 1;
    else if (h_cnt < h_sync_width)
        hs <= 0;
    else
        hs <= 1;
end

// VSYNC 생성
always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        vs <= 1;
    else if (v_cnt < v_sync_width)
        vs <= 0;
    else
        vs <= 1;
end

// 데이터 유효 신호(DE) 생성
always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        de <= 0;
    else if ((h_cnt >= h_sync_width + h_back_porch) && (h_cnt < h_sync_width + h_back_porch + h_active) &&
             (v_cnt >= v_sync_width + v_back_porch) && (v_cnt < v_sync_width + v_back_porch + v_active))
        de <= 1;
    else
        de <= 0;
end

// 화면 색상 결정
reg [3:0] r_data;
reg [3:0] g_data;
reg [3:0] b_data;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        r_data <= 4'd0;
        g_data <= 4'd0;
        b_data <= 4'd0;
    end else if (de) begin
        case (pattern_select)
            2'd0: begin // 흰색 화면
                r_data <= 4'hF;
                g_data <= 4'hF;
                b_data <= 4'hF;
            end
            2'd1: begin // 초록색 화면 (비밀번호 성공)
                r_data <= 4'h0;
                g_data <= 4'hF;
                b_data <= 4'h0;
            end
            2'd2: begin // 빨간색 화면 (비밀번호 실패)
                r_data <= 4'hF;
                g_data <= 4'h0;
                b_data <= 4'h0;
            end
            default: begin // 기본 흰색 화면
                r_data <= 4'hF;
                g_data <= 4'hF;
                b_data <= 4'hF;
            end
        endcase
    end else begin
        r_data <= 4'd0;
        g_data <= 4'd0;
        b_data <= 4'd0;
    end
end

assign o_hs = hs;
assign o_vs = vs;
assign o_r_data = r_data;
assign o_g_data = g_data;
assign o_b_data = b_data;

endmodule
