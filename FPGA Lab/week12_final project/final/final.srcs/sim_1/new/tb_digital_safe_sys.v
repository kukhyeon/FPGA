`timescale 1ns / 1ps

module digit_safe_sys_tb;

    reg clk_ref;
    reg rst;
    reg pw_set;
    reg up;
    reg down;
    reg slide;
    reg place;
    reg ok;
    reg pw_endset;
    wire [6:0] ssd;
    wire seg_en;
    wire success_led;

    // DUT 인스턴스화
    digit_safe_sys dut (
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
        .success_led(success_led)
    );

    // 클럭 생성
    initial begin
        clk_ref = 0;
        forever #20 clk_ref = ~clk_ref; // 25MHz 클럭 (주기 40ns)
    end

    // 초기화 및 입력 신호 제어
    initial begin
        // 초기화
        rst = 1;
        pw_set = 0;
        up = 0;
        down = 0;
        slide = 0;
        place = 0;
        ok = 0;
        pw_endset = 0;

        // 리셋 해제
        #10000000 rst = 0;

        // 비밀번호 설정 모드 진입
        #10000000 pw_set = 1;
        #30000000 pw_set = 0; // 신호 활성화 및 비활성화 30ms 주기

        // 첫 번째 자리수 설정 (digits[0] = 3)
        #100 up = 1;
        #30000000 up = 0; // 신호 유지 30ms
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 두 번째 자리수 설정 (digits[1] = 1)
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 세 번째 자리수 설정 (digits[2] = 4)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 네 번째 자리수 설정 (digits[3] = 2)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 비밀번호 설정 완료
        #100 pw_endset = 1;
        #30000000 pw_endset = 0;

        // 약간의 대기
        #30000000;

        // 비밀번호 입력 시작
        // 첫 번째 자리수 입력 (digits[0] = 3)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 두 번째 자리수 입력 (digits[1] = 1)
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 세 번째 자리수 입력 (digits[2] = 4)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 다음 자리로 이동
        #100 slide = 1;
        #30000000 slide = 0;

        // 네 번째 자리수 입력 (digits[3] = 2)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // 비밀번호 확인
        #100 ok = 1;
        #30000000 ok = 0;

        // 시뮬레이션 종료
        #300000000 $finish; // 300ms 추가
    end

    // 모니터링
    initial begin
        $monitor("Time: %0t | success_led: %b | digits: %d%d%d%d | ssd: %b | seg_en: %b", $time, success_led, dut.pw_manager.digits[0], dut.pw_manager.digits[1], dut.pw_manager.digits[2], dut.pw_manager.digits[3], ssd, seg_en);
    end

endmodule
