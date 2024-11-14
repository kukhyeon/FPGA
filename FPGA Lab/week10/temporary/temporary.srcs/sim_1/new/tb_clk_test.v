`timescale 1ns/1ps

module clk_test_tb;

    reg clk;
    reg reset;
    wire [3:0] counter;

    // UUT (Unit Under Test) �ν��Ͻ�ȭ
    clk_test uut (
        .clk(clk),
        .reset(reset),
        .counter(counter)
    );

    // Ŭ�� ����
    initial clk = 0;
    always #5 clk = ~clk; // 10ns �ֱ�

    // ���� ��ȣ ���� �� �ùķ��̼� ����
    initial begin
        reset = 1;      // �ʱ� ���� Ȱ��ȭ
        #15;
        reset = 0;      // ���� ��Ȱ��ȭ

        // �ùķ��̼� �ð� ����
        #200 $finish;
    end

    // ����͸�
    initial begin
        $monitor("Time=%0t ns, Reset=%b, Counter=%d", $time, reset, counter);
    end

endmodule
