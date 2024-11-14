`timescale 1ns / 1ps

module debouncer #(parameter N = 10, // ��ٿ�� �Ӱ谪
                   parameter K = 4)  // ������ Ȯ���� ���� ī���� ũ��
(
    input       clk,       // Ŭ�� �Է�
    input       noisy,     // ����� �ִ� ��ư �Է� ��ȣ
    output      debounced  // ��ٿ�̵� ��ư ��� ��ȣ
    );

    reg     [K-1: 0] cnt;  // ��ٿ���� ���� ī���� ��������

    always @(posedge clk) begin
        if(noisy)   
            cnt <= cnt + 1'b1;   // ������ ��ȣ�� ������ ī���� ����
        else        
            cnt <= 0;            // ����� ������ ī���� ����
    end

    assign debounced = (cnt == N) ? 1'b1 : 1'b0; // ī���Ͱ� �Ӱ谪�� �����ϸ� ����� 1
endmodule

