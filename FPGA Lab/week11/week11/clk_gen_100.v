`timescale 1ns / 1ps

module clk_gen_100(
    input   clk_ref,    // ���� Ŭ�� �Է�
    input   rst,        // ���� ��ȣ �Է�
    output  clk_out     // ���ֵ� Ŭ��
    );

    wire    clk_125M = clk_ref;                     // 125Mhz�� Ŭ���� ���� Ŭ������ ����
    wire    clk_100M, clk_1M, clk_10M, clk_100;     // 3���� ���ָ� ���� 3���� ���� wire

    clk_gen_100M u0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M));
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
    freq_div_100 u2 (.clk_ref(clk_1M), .rst(rst), .clk_div(clk_10K));
    freq_div_100 u3 (.clk_ref(clk_10K), .rst(rst), .clk_div(clk_100));
    
    assign  clk_out = clk_100;  // 100Hz�� ���ֵ� Ŭ��
endmodule