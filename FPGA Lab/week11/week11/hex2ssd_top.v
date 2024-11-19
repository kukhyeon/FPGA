module hex2ssd_top(
    input           clk,
    (* mark_debug = 1 *)input   start,              // btn[0]에 맵핑
    (* mark_debug = 1 *)input   stop,               // btn[1]에 맵핑
    (* mark_debug = 1 *)input   rst,                // btn[2]에 맵핑
    (* mark_debug = 1 *)output  [6:0]   ssd1,       // 첫 번째 디스플레이의 7세그먼트 출력
    (* mark_debug = 1 *)output  seg_en1,            // 첫 번째 디스플레이 활성화 신호
    (* mark_debug = 1 *)output  [6:0]   ssd2,       // 두 번째 디스플레이의 7세그먼트 출력
    (* mark_debug = 1 *)output  seg_en2             // 두 번째 디스플레이 활성화 신호
    );

    // 필요한 주파수의 클럭 생성
    wire clk_125M = clk;
    wire clk_100Hz;   // 0.01초마다 펄스 생성

    // 125MHz 입력 클럭을 100Hz로 분주
    clk_gen_100 c0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100Hz));

    reg [6:0] underpoint;   // 소수점 아래 두 자리 (00 ~ 99)
    reg [6:0] integer_part;      // 정수 두 자리 (00 ~ 99)
    reg running;            // 스톱워치 동작 상태를 나타내는 신호

    // 시작 및 정지 신호 처리
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            running <= 1'b0;
        end else begin
            if (start)
                running <= 1'b1;
            else if (stop)
                running <= 1'b0;
        end
    end

    // 0.01초마다 카운터 증가
    always @(posedge clk_100Hz or posedge rst) begin
        if (rst) begin  // 정수 부분과 소수점 부분 초기화
            underpoint <= 7'd0;
            integer_part    <= 7'd0;
        end else if (running) begin
            if ((integer_part == 7'd99) && (underpoint == 7'd99)) begin
                // 99.99초에 도달하면 상태 유지 및 리셋 대기
                underpoint <= underpoint;
                integer_part   <= integer_part;
                // 소수점이 99에 다다르면 초기화 및 정수 +1
            end else if (underpoint == 7'd99) begin
                underpoint <= 7'd0;
                integer_part <= integer_part + 1;
                // 일반적인 경우 소수점 +1
            end else begin
                underpoint <= underpoint + 1;
            end
        end
    end

    // 각 디스플레이에 표시할 숫자 계산
    (* mark_debug = 1 *)wire [3:0] digit1 = integer_part / 10;       // 초의 십의 자리
    (* mark_debug = 1 *)wire [3:0] digit2 = integer_part % 10;       // 초의 일의 자리
    (* mark_debug = 1 *)wire [3:0] digit3 = underpoint / 10;    // 소수점 아래 십의 자리
    (* mark_debug = 1 *)wire [3:0] digit4 = underpoint % 10;    // 소수점 아래 일의 자리

    wire [6:0] sega, segb, segc, segd;

    // 첫 번째 디스플레이 출력 (초 단위)
    hex2ssd ssd1_inst (
        .hex(digit1),
        .seg(sega)
    );
    hex2ssd ssd1_inst2 (
        .hex(digit2),
        .seg(segb)
    );
    // 한 세그먼트에서 숫자를 번갈아가며 출력
    assign seg_en1 = (clk_100Hz) ? 1'b1 : 1'b0;
    assign ssd1 = (clk_100Hz) ? sega : segb;

    // 두 번째 디스플레이 출력 (소수점 아래 단위)
    hex2ssd ssd2_inst (
        .hex(digit3),
        .seg(segc)
    );

    hex2ssd ssd2_inst2 (
        .hex(digit4),
        .seg(segd)
    );
    // 한 세그먼트에서 숫자를 번갈아가며 출력
    assign seg_en2 = (clk_100Hz) ? 1'b1 : 1'b0;
    assign ssd2 = (clk_100Hz) ? segc : segd;

endmodule
