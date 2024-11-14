`timescale 1ns / 1ps

module synchronizer(
    input   clk,         // Ŭ�� ��ȣ
    input   async_in,    // �񵿱� �Է� ��ȣ
    output  reg sync_out // ����ȭ�� ��� ��ȣ
    );

    reg tmp;  // �߰� ���� ������ �ӽ� ��������

    always @(posedge clk) begin
        tmp         <= async_in;   // Ŭ�� �������� �Է� ��ȣ�� 'tmp'�� ����ȭ
        sync_out    <= tmp;        // 'tmp'���� ����ȭ�� ��� ����
    end
endmodule
