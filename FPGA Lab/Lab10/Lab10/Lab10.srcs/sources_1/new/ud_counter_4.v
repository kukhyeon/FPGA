`timescale 1ns / 1ps

module ud_counter_4(
    input               clk,     // Ŭ�� ��ȣ
    input               rst,     // ���� ��ȣ
    input               en,      // Ȱ��ȭ ��ȣ
    input               up,      // ���� ��ȣ
    input               down,    // ���� ��ȣ
    output  reg [3:0]   cnt      // 4��Ʈ ī���� ���
    );

    always @(posedge clk or posedge rst) begin
        if (rst)
            cnt <= 4'b0000;       // ī���͸� 0���� ����
        else if (en) begin
            if (up)
                cnt <= cnt + 4'b0001;   // 'up'�� ���� �� ī���� ����
            else if (down)
                cnt <= cnt - 4'b0001;   // 'down'�� ���� �� ī���� ����
        end
    end
endmodule
