`timescale 1ns / 1ps  // �ùķ��̼� �ð� ���� �� ���е� ����

module Add3(
    input   [3:0]        Bin,     // 4��Ʈ �Է� ��ȣ Bin
    output reg  [3:0]   Bout      // 4��Ʈ ��� ��ȣ Bout
    );

    reg     [3:0]   B;            // ���� �������� B ����
    
    // Bin �Է��� �������� BCD ��ȯ ����
    always @(*) begin
        B = Bin;                  // �Է� ���� B�� ����
        
        if (B >= 4'b0101) begin   // B�� ���� 5 �̻��� ���
            B = B + 3;            // B�� 3�� ����
        end
        
        Bout = B;                 // ���� ����� ��� Bout�� �Ҵ�
    end

endmodule
