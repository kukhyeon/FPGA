`timescale 1ns / 1ps

module digital_safe_sys_tb;

    // 테스트 벤치에서 사용할 레지스터와 와이어 선언
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
    wire [3:0] led;
    wire led6_r;
    wire led6_g;
    wire o_vs;
    wire o_hs;
    wire [3:0] o_r_data;
    wire [3:0] o_g_data;
    wire [3:0] o_b_data;
    
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
        .led(led),
        .led6_r(led6_r),
        .led6_g(led6_g),
        .o_vs(o_vs),
        .o_hs(o_hs),
        .o_r_data(o_r_data),
        .o_g_data(o_g_data),
        .o_b_data(o_b_data)
    );
    
    // 클럭 생성
    initial begin
        clk_ref = 0;
        forever #20 clk_ref = ~clk_ref; // 25MHz 클럭 (주기 40ns)
    end
    // 디바운서에 의한 실제 주기는 25ms, 따라서 버튼들은 40ms 동안 값을 유지해야함
    // 6.6ms쯤에 seg_en active
    // 초기화 및 테스트 시나리오
    initial begin
        // 초기 신호 설정
        rst = 1;
        pw_set = 0;
        up = 0;
        down = 0;
        slide = 0;
        place = 0;
        ok = 0;
        pw_endset = 0;
        
        // 리셋 해제
        #100000;
        rst = 0;
        
        // 비밀번호 설정 모드로 진입
        #100000;
        pw_set_pulse();
        
        // 첫 번째 자리 숫자 설정 (예: 1)
        #150000;
        up_pulse();
        // 95ms
        #50000;
        slide_pulse(); // 다음 자리로 이동
        // 140ms
        #100000; // 150ms
        
        // 두 번째 자리 숫자 설정 (예: 2)
        up_pulse(); // 비밀번호 0011
        // 190ms
        #100000; // 200ms
        
        // 비밀번호 설정 완료
        pw_endset_pulse();
        // 220ms
        #50000; // 225ms

        // 비밀번호 입력 시도 (정확한 비밀번호 입력)
        // 첫 번째 자리 숫자 입력 (1)
        up_pulse();
        // 265ms
        #100000; // 275ms
        slide_pulse();
        // 315ms
        
        
        // 두 번째 자리 숫자 입력 (2)
        #100000; // 325ms
        up_pulse();
        // 365ms
        #100000; // 375ms
        ok_pulse();
        // 415ms
        #100000 // 425ms
        // place test;
        place_pulse();
        // 465ms
        
        // 시뮬레이션 종료
        #2000000;
        $stop;
    end
    
    // 버튼 눌림 시뮬레이션 함수들 (디바운서 지연 시간 고려)
    task pw_set_pulse;
        begin
            pw_set = 1;
            #20000000; // 20ms 동안 신호 유지 (디바운서 지연 시간보다 길게)
            pw_set = 0;
        end
    endtask
    
    task up_pulse;
        begin
            up = 1;
            #40000000; // 40ms 동안 신호 유지
            up = 0;
        end
    endtask
    
    task down_pulse;
        begin
            down = 1;
            #40000000;
            down = 0;
        end
    endtask
    
    task slide_pulse;
        begin
            slide = 1;
            #40000000;
            slide = 0;
        end
    endtask
    
    task pw_endset_pulse;
        begin
            pw_endset = 1;
            #40000000;
            pw_endset = 0;
        end
    endtask
    
    task ok_pulse;
        begin
            ok = 1;
            #40000000;
            ok = 0;
        end
    endtask


    task place_pulse;
        begin
            place = 1;
            #40000000;
            place = 0;
        end
    endtask

endmodule
