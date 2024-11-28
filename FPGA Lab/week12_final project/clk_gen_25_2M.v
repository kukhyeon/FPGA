`timescale 1ns / 1ps

module clk_gen_25M(
    input   clk_ref,   // ���� Ŭ�� �Է�
    input   rst,       // ���� ��ȣ �Է�
    output  clk_out    // 25.2 MHz ��� Ŭ��
    );

    wire clk_125M = clk_ref;  // ���� Ŭ���� clk_125M���� �Ҵ�

    // 25.2 MHz Ŭ���� �����ϱ� ���� Ŭ�� ������ �ν��Ͻ�
    clk_wiz_0 clk_gen (
        .clk_out1(clk_out),  // ������ ��� Ŭ��
        .reset(rst),         // ���� ��ȣ
        .clk_in1(clk_125M)   // �Է� Ŭ��
    );
endmodule
