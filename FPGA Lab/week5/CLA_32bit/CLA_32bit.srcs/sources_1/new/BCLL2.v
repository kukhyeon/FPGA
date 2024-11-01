`timescale 1ns / 1ps

module BCLL2(
    input   [1:0] Gin,       // 2��Ʈ ���� ��Ʈ �Է� Gin
    input   [1:0] Pin,       // 2��Ʈ ���� ��Ʈ �Է� Pin
    input         Cin,       // �Է� ĳ�� ��Ʈ Cin
    output        Gout,      // ��ü ���� ��Ʈ ��� Gout
    output        Pout,      // ��ü ���� ��Ʈ ��� Pout
    output        C,         // ���� ĳ�� ��Ʈ C
    output        Cout       // ��� ĳ�� ��Ʈ Cout
    );

    // ù ��° 16��Ʈ ����� ���� ��Ʈ�� ���� ��Ʈ�� ����� ���� ĳ�� ��Ʈ C ���
    assign C = (Gin[0] | (Pin[0] & Cin));
    // �� ��° 16��Ʈ ��ϱ��� ����Ͽ� ��ü ���� ��Ʈ Gout ���
    assign Gout = (Gin[1] | (Pin[1] & Gin[0]));
    // ��ü ���� ��Ʈ Pout ���
    assign Pout = (Pin[1] & Pin[0]);
    // ���� ��� ĳ�� ��Ʈ Cout ���
    assign Cout = Gout | (Pout & Cin);

endmodule
