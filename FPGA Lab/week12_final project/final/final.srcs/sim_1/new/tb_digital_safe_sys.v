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
        .success_led(success_led)
    );

    // Ŭ�� ����
    initial begin
        clk_ref = 0;
        forever #20 clk_ref = ~clk_ref; // 25MHz Ŭ�� (�ֱ� 40ns)
    end

    // �ʱ�ȭ �� �Է� ��ȣ ����
    initial begin
        // �ʱ�ȭ
        rst = 1;
        pw_set = 0;
        up = 0;
        down = 0;
        slide = 0;
        place = 0;
        ok = 0;
        pw_endset = 0;

        // ���� ����
        #10000000 rst = 0;

        // ��й�ȣ ���� ��� ����
        #10000000 pw_set = 1;
        #30000000 pw_set = 0; // ��ȣ Ȱ��ȭ �� ��Ȱ��ȭ 30ms �ֱ�

        // ù ��° �ڸ��� ���� (digits[0] = 3)
        #100 up = 1;
        #30000000 up = 0; // ��ȣ ���� 30ms
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� ���� (digits[1] = 1)
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� ���� (digits[2] = 4)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� ���� (digits[3] = 2)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ��й�ȣ ���� �Ϸ�
        #100 pw_endset = 1;
        #30000000 pw_endset = 0;

        // �ణ�� ���
        #30000000;

        // ��й�ȣ �Է� ����
        // ù ��° �ڸ��� �Է� (digits[0] = 3)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� �Է� (digits[1] = 1)
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� �Է� (digits[2] = 4)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ���� �ڸ��� �̵�
        #100 slide = 1;
        #30000000 slide = 0;

        // �� ��° �ڸ��� �Է� (digits[3] = 2)
        #100 up = 1;
        #30000000 up = 0;
        #100 up = 1;
        #30000000 up = 0;

        // ��й�ȣ Ȯ��
        #100 ok = 1;
        #30000000 ok = 0;

        // �ùķ��̼� ����
        #300000000 $finish; // 300ms �߰�
    end

    // ����͸�
    initial begin
        $monitor("Time: %0t | success_led: %b | digits: %d%d%d%d | ssd: %b | seg_en: %b", $time, success_led, dut.pw_manager.digits[0], dut.pw_manager.digits[1], dut.pw_manager.digits[2], dut.pw_manager.digits[3], ssd, seg_en);
    end

endmodule
