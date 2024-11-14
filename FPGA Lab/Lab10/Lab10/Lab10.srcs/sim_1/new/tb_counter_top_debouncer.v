`timescale 1ns / 1ps

module tb_counter_top_debouncer;

    // Inputs
    reg clk_ref; // ���� Ŭ�� (125MHz)
    reg rst;     // ���� ��ȣ
    reg en;      // ī���� Ȱ��ȭ ��ȣ
    reg up;      // ī���� ���� ��ȣ
    reg down;    // ī���� ���� ��ȣ

    // Outputs
    wire [3:0] cnt; // ī���� ��� ��

    // UUT (�׽�Ʈ�� ���) �ν��Ͻ�ȭ
    counter_top_debouncer uut (
        .clk_ref(clk_ref),
        .rst(rst),
        .en(en),
        .up(up),
        .down(down),
        .cnt(cnt)
    );


    // ��� ����͸�
    initial begin
        $monitor("Time=%0t ns, cnt=%d", $time, cnt);
    end

    // �׽�Ʈ ������
    initial begin
        // �ʱ�ȭ
        en = 0; up = 0; down = 0;
        #10 rst = 1; 

        rst = 0; // ���� ����
        #100000
        en = 1;  // ī���� Ȱ��ȭ
        #100000

        // UP ��ư ���� (ī���� ����)
        up = 1;
        #100000;    // 200,000ns ���� ���� (0.2ms)
        up = 0;
        #100000;   // 200,000ns ���

        // DOWN ��ư ���� (ī���� ����)
        down = 1;
        #100000;
        down = 0;
        #100000;

        // UP ��ư ���� �� ����
        repeat (5) begin
            up = 1;
            #100000;
            up = 0;
            #100000;
        end

        // DOWN ��ư ���� �� ����
        repeat (3) begin
            down = 1;
            #100000;
            down = 0;
            #100000;
        end

        // �ùķ��̼� ����
        #5000000; // 5ms ���
        $stop;
    end

endmodule
