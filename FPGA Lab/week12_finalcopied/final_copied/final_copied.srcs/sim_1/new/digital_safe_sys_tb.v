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

    // Clock generation: 125MHz Ŭ�� (8ns �ֱ�)
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
        rst = 0; // ���� ��Ȱ��ȭ
        #10;
        rst = 1;

        // ��ٸ�
        #100;

        // ��й�ȣ ���� ����
        pw_set = 1;
        #20;
        pw_set = 0;

        // �ڸ��� 0 ���� (���� 3���� ����)
        repeat (3) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 1 ���� (���� 2���� ����)
        repeat (2) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 2 ���� (���� 5���� ����)
        repeat (5) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 3 ���� (���� 7���� ����)
        repeat (7) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ��й�ȣ ���� �Ϸ�
        pw_endset = 1;
        #20;
        pw_endset = 0;
        #10;

        // ��ٸ�
        #100;

        // ��й�ȣ ���� (�ùٸ� ��й�ȣ: 3, 2, 5, 7)
        // ��й�ȣ �Է� ȭ������ ��ȯ
        place = 1;
        #10;
        place = 0;
        #10;

        // ��й�ȣ �Է� (���� ����, �ùٸ� ��й�ȣ)
        // OK ��ư ����
        ok = 1;
        #20;
        ok = 0;
        #10;

        // VGA ���� Ȯ�� (�ʷϻ� ����)

        // ��ٸ�
        #100;

        // ��й�ȣ �ٽ� ����
        pw_set = 1;
        #20;
        pw_set = 0;
        #10;

        // �ڸ��� 0 ���� (���� 1���� ����)
        repeat (1) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 1 ���� (���� 4���� ����)
        repeat (4) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 2 ���� (���� 6���� ����)
        repeat (6) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ���� �ڸ��� �̵�
        slide = 1;
        #10;
        slide = 0;
        #10;

        // �ڸ��� 3 ���� (���� 8���� ����)
        repeat (8) begin
            up = 1;
            #10;
            up = 0;
            #10;
        end

        // ��й�ȣ ���� �Ϸ�
        pw_endset = 1;
        #20;
        pw_endset = 0;
        #10;

        // ��ٸ�
        #100;

        // ��й�ȣ ���� (�߸��� ��й�ȣ: 1, 4, 6, 8)
        // ��й�ȣ �Է� ȭ������ ��ȯ
        place = 1;
        #10;
        place = 0;
        #10;

        // ��й�ȣ �Է� (�߸��� ��)
        // OK ��ư ����
        ok = 1;
        #20;
        ok = 0;
        #10;

        // VGA ���� Ȯ�� (������ ����)

        // ��ٸ�
        #100;

        // �ùķ��̼� ����
        $finish;
    end

    // ����͸��� ���� ��� �޽���
    initial begin
        $monitor("Time=%0dns | pw_set=%b, up=%b, down=%b, slide=%b, place=%b, pw_endset=%b, ok=%b | ssd=%b, seg_en=%b, led=%b, led6_r=%b, led6_g=%b | VGA Status: vs=%b, hs=%b, R=%b, G=%b, B=%b",
                 $time, pw_set, up, down, slide, place, pw_endset, ok, ssd, seg_en, led, led6_r, led6_g, o_vs, o_hs, o_r_data, o_g_data, o_b_data);
    end

endmodule
