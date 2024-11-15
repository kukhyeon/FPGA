`timescale 1ns / 1ps

module freq_div_100(
    input       clk_ref,     // ���� Ŭ�� �Է�
    input       rst,         // ���� ��ȣ
    output reg  clk_div      // ���ֵ� ��� Ŭ��
    );
    reg [5:0]   cnt;         // ���ļ� ���ָ� ���� 6��Ʈ ī����
    always @(posedge clk_ref or posedge rst)
    begin
        if(rst)
        begin
            cnt     <= 6'd0;     // ī���͸� 0���� ����
            clk_div <= 1'd0;     // ��� Ŭ���� 0���� ����
        end
        else
        begin
            if(cnt == 6'd49)     // ī���Ͱ� 49�� �����ϸ� clk_div ���
            begin
                cnt <= 6'd0;     // 50���� ����Ŭ �� ī���͸� 0���� ����
                clk_div <= ~clk_div;  // Ŭ�� ��ȣ�� ���
            end
            else
            begin
                cnt <= cnt + 1'b1;    // ī���͸� ������Ŵ
            end
        end
    end

endmodule