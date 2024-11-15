`timescale 1ns / 1ps

module freq_div_10(
    input       clk_ref,     // ���� Ŭ�� �Է�
    input       rst,         // ���� ��ȣ
    output reg  clk_div      // ���ֵ� ��� Ŭ��
    );
    reg [2:0]   cnt;         // ���ļ� ���ָ� ���� 3��Ʈ ī����
    always @(posedge clk_ref or posedge rst)
    begin
        if(rst)
        begin
            cnt     <= 3'd0;     // ī���͸� 0���� ����
            clk_div <= 1'd0;     // ��� Ŭ���� 0���� ����
        end
        else
        begin
            if(cnt == 3'd4)     // ī���Ͱ� 4�� �����ϸ� clk_div ���
            begin
                cnt <= 3'd0;     // 5���� ����Ŭ �� ī���͸� 0���� ����
                clk_div <= ~clk_div;  // Ŭ�� ��ȣ�� ���
            end
            else
            begin
                cnt <= cnt + 1'b1;    // ī���͸� ������Ŵ
            end
        end
    end

endmodule
