`timescale 1ns / 1ps

module digit_safe_sys_tb;

    // Inputs
    reg clk_ref;
    reg rst;
    reg pw_set;
    reg up;
    reg down;
    reg slide;
    reg place;
    reg ok;
    reg pw_endset;

    // Outputs
    wire [6:0] ssd;
    wire seg_en;
    wire [3:0] led;
    wire led6_r;
    wire led6_g;
    wire o_vs;
    wire o_hs;
    wire [3:0] o_r_data;
    wire [3:0] o_g_data;
    wire [3:0] o_b_data;

    // Instantiate the Unit Under Test (UUT)
    digit_safe_sys uut (
        .clk_ref(clk_ref), 
        .rst(rst), 
        .pw_set(pw_set), 
        .up(up), 
        .down(down), 
        .slide(slide), 
        .place(place), 
        .ok(ok), 
        .pw_endset(pw_endset), 
        .ssd(ssd), 
        .seg_en(seg_en), 
        .led(led), 
        .led6_r(led6_r), 
        .led6_g(led6_g), 
        .o_vs(o_vs), 
        .o_hs(o_hs), 
        .o_r_data(o_r_data), 
        .o_g_data(o_g_data), 
        .o_b_data(o_b_data)
    );

    // Clock generation: 125MHz 클럭 (8ns 주기)
    initial begin
        clk_ref = 0;
        forever #4 clk_ref = ~clk_ref;
    end

    // Initial block for stimulus
    initial begin
        // Initialize Inputs
        rst = 1;
        pw_set = 0;
        up = 0;
        down = 0;
        slide = 0;
        place = 0;
        ok = 0;
        pw_endset = 0;

        // Apply Reset
        #10;
        rst = 0; // 리셋 비활성화
        #10;
        rst = 1;

        // 기다림
        #100;

        // 비밀번호 설정 시작
        pw_set = 1;
        #20;
        pw_set = 0;

        // 자리수 0 설정 (값을 3으로 설정)
        repeat (3) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 1 설정 (값을 2으로 설정)
        repeat (2) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 2 설정 (값을 5으로 설정)
        repeat (5) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 3 설정 (값을 7으로 설정)
        repeat (7) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 비밀번호 설정 완료
        pw_endset = 1;
        #20;
        pw_endset = 0;
        #10;

        // 기다림
        #100;

        // 비밀번호 검증 (올바른 비밀번호: 3, 2, 5, 7)
        // 비밀번호 입력 화면으로 전환
        place = 1;
        #10;
        place = 0;
        #10;

        // 비밀번호 입력 (변경 없음, 올바른 비밀번호)
        // OK 버튼 눌림
        ok = 1;
        #20;
        ok = 0;
        #10;

        // VGA 상태 확인 (초록색 예상)

        // 기다림
        #100;

        // 비밀번호 다시 설정
        pw_set = 1;
        #20;
        pw_set = 0;
        #10;

        // 자리수 0 설정 (값을 1으로 설정)
        repeat (1) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 1 설정 (값을 4으로 설정)
        repeat (4) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 2 설정 (값을 6으로 설정)
        repeat (6) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 다음 자리로 이동
        slide = 1;
        #10;
        slide = 0;
        #10;

        // 자리수 3 설정 (값을 8으로 설정)
        repeat (8) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // 비밀번호 설정 완료
        pw_endset = 1;
        #20;
        pw_endset = 0;
        #10;

        // 기다림
        #100;

        // 비밀번호 검증 (잘못된 비밀번호: 1, 4, 6, 8)
        // 비밀번호 입력 화면으로 전환
        place = 1;
        #10;
        place = 0;
        #10;

        // 비밀번호 입력 (잘못된 값)
        // OK 버튼 눌림
        ok = 1;
        #20;
        ok = 0;
        #10;

        // VGA 상태 확인 (빨간색 예상)

        // 기다림
        #100;

        // 시뮬레이션 종료
        $finish;
    end

    // 모니터링을 위한 출력 메시지
    initial begin
        $monitor("Time=%0dns | pw_set=%b, up=%b, down=%b, slide=%b, place=%b, pw_endset=%b, ok=%b | ssd=%b, seg_en=%b, led=%b, led6_r=%b, led6_g=%b | VGA Status: vs=%b, hs=%b, R=%b, G=%b, B=%b",
                 $time, pw_set, up, down, slide, place, pw_endset, ok, ssd, seg_en, led, led6_r, led6_g, o_vs, o_hs, o_r_data, o_g_data, o_b_data);
    end

endmodule
