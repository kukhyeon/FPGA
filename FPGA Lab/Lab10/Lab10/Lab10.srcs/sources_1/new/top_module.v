`timescale 1ns / 1ps

module top_module(
    input   wire clk_ref,     // ���� Ŭ�� �Է�
    input   wire [3:0] btn,   // 4��Ʈ ��ư �Է�
    output  wire [3:0] led    // 4��Ʈ LED ���
    );

    // counter_top_debouncer ��� �ν��Ͻ�ȭ
    counter_top_debouncer ut(
        .clk_ref(clk_ref),    // ���� Ŭ���� ��⿡ ����
        .rst(btn[0]),         // ��ư 0�� ���� ��ȣ�� ���
        .en(btn[1]),          // ��ư 1�� ī���� Ȱ��ȭ ��ȣ�� ���
        .up(btn[2]),          // ��ư 2�� ī���� ����
        .down(btn[3]),        // ��ư 3���� ī���� ����
        .cnt(led)             // 4��Ʈ ī���� ����� LED�� ����
    );
endmodule

