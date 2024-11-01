`timescale 1ns / 1ps

module tb_LFSR_4b();

    reg clk, rst;
    wire [3:0] q;

    // �׽�Ʈ�� DUT(Device Under Test) �ν��Ͻ�ȭ
    LFSR_4b uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Ŭ�� ����: 10 Ÿ�� ���ָ��� clk ��ȣ�� ���
    always #10 clk = ~clk;

    // �ʱ� ����� ����Ͽ� �ڱ�(stimulus) ����
    initial begin
        clk = 0;        // clk�� 0���� �ʱ�ȭ
        rst = 0;        // ���� ����
        #10;            // 10 Ÿ�� ���� ���
        rst = 1;        // ���� ����
        #10;
        rst = 0;

        // �ڱ� ����
        #20;            // 20 Ÿ�� ���� ���
        repeat (10) @ (posedge clk);  // 10���� Ŭ�� ����Ŭ ���� ���

        #100 $finish;   // 100 Ÿ�� ���� �� �ùķ��̼� ����
    end

    // clk, rst, q ��ȣ�� ���� ������ ����͸�
    initial begin
        $monitor("clk=%0t rst=%b out=%b", $time, rst, q);
    end

endmodule
