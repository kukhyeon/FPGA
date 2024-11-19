`timescale 1ns / 1ps

module hex2ssd_top_tb;

    // �׽�Ʈ��ġ���� ����� �Ķ���Ϳ� �������� ����
    reg clk;
    reg rst;
    reg start;
    reg stop;
    wire seg_en1;
    wire seg_en2;
    wire [6:0] ssd1;
    wire [6:0] ssd2;
    

    // �׽�Ʈ�� DUT (Device Under Test) �ν��Ͻ�ȭ
    hex2ssd_top uut (
        .clk(clk),
        .start(start),
        .stop(stop),
        .rst(rst),
        .seg_en1(seg_en1),
        .seg_en2(seg_en2),
        .ssd1(ssd1),
        .ssd2(ssd2)
    );

    // Ŭ�� ����: 125MHz (�ֱ� 8ns)
    initial begin
        clk = 0;
        forever #4 clk = ~clk; // 4ns���� clk�� ����Ͽ� 125MHz ����
    end

    // �׽�Ʈ �ó�����
    initial begin
        // �ʱ�ȭ
        rst = 1;
        start = 0;
        stop = 0;
        #20;           // 20ns ���

        rst = 0;       // ���� ����
        start = 1;     // �����ġ ����
    end

endmodule
