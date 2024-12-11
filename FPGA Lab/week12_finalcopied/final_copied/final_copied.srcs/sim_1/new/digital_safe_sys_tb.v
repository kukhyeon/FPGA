`timescale 1ns / 1ps

module digital_safe_sys_tb;

    // �׽�Ʈ ��ġ���� ����� �������Ϳ� ���̾� ����
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
    
    // DUT �ν��Ͻ�ȭ
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
    
    // Ŭ�� ����
    initial begin
        clk_ref = 0;
        forever #20 clk_ref = ~clk_ref; // 25MHz Ŭ�� (�ֱ� 40ns)
    end
    // ��ٿ�� ���� ���� �ֱ�� 25ms, ���� ��ư���� 40ms ���� ���� �����ؾ���
    // 6.6ms�뿡 seg_en active
    // �ʱ�ȭ �� �׽�Ʈ �ó�����
    initial begin
        // �ʱ� ��ȣ ����
        rst = 1;
        pw_set = 0;
        up = 0;
        down = 0;
        slide = 0;
        place = 0;
        ok = 0;
        pw_endset = 0;
        
        // ���� ����
        #100000;
        rst = 0;
        
        // ��й�ȣ ���� ���� ����
        #150000;
        pw_set_pulse();
        
        // ù ��° �ڸ� ���� ���� (��: 1)
        #150000;
        up_pulse();
        #50000;
        slide_pulse(); // ���� �ڸ��� �̵�
        #100000; 
        
        // �� ��° �ڸ� ���� ���� (��: 1)
        up_pulse(); // ��й�ȣ 0011
        #100000; 
        
        // ��й�ȣ ���� �Ϸ�
        pw_endset_pulse();
        #50000;

        // ��й�ȣ �Է� �õ� (��Ȯ�� ��й�ȣ �Է�)
        // ù ��° �ڸ� ���� �Է� (1)
        up_pulse();
        #100000; 
        slide_pulse();
        
        
        // �� ��° �ڸ� ���� �Է� (1)
        #100000; 
        up_pulse();
        #100000; 
        ok_pulse();
        #100000 
        // place test;
        place_pulse();
        
        // �ùķ��̼� ����
        #2000000;
        $stop;
    end
    
    // ��ư ���� �ùķ��̼� �Լ��� (��ٿ ���� �ð� ���)
    task pw_set_pulse;
        begin
            pw_set = 1;
            #20000000; // 20ms ���� ��ȣ ���� (��ٿ ���� �ð����� ���)
            pw_set = 0;
        end
    endtask
    
    task up_pulse;
        begin
            up = 1;
            #51000000; // 51ms ���� ��ȣ ����
            up = 0;
        end
    endtask
    
    task down_pulse;
        begin
            down = 1;
            #51000000; // 51ms ���� ��ȣ ����
            down = 0;
        end
    endtask
    
    task slide_pulse;
        begin
            slide = 1;
            #51000000; // 51ms ���� ��ȣ ����
            slide = 0;
        end
    endtask
    
    task pw_endset_pulse;
        begin
            pw_endset = 1;
            #51000000; // 51ms ���� ��ȣ ����
            pw_endset = 0;
        end
    endtask
    
    task ok_pulse;
        begin
            ok = 1;
            #51000000; // 51ms ���� ��ȣ ����
            ok = 0;
        end
    endtask


    task place_pulse;
        begin
            place = 1;
            #51000000; // 51ms ���� ��ȣ ����
            place = 0;
        end
    endtask

endmodule