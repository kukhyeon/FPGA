module CLL4 (
    input   [3:0] Gin,       // 4��Ʈ ���� ��Ʈ �Է� Gin
    input   [3:0] Pin,       // 4��Ʈ ���� ��Ʈ �Է� Pin
    input         Cin,       // �Է� ĳ�� ��Ʈ Cin
    output        Gout,      // ��ü ���� ��Ʈ ��� Gout
    output        Pout,      // ��ü ���� ��Ʈ ��� Pout
    output  [3:1] C,         // ���� ĳ�� ��Ʈ C
    output        Cout       // ��� ĳ�� ��Ʈ Cout
);

    // �� ��Ʈ ����� ����/���� ��Ʈ�� ����Ͽ� ���� ĳ�� ��Ʈ�� ���������� ���
    assign C[1] = (Gin[0] | (Pin[0] & Cin));                                    // ù ��° ��� ĳ�� C[1]
    assign C[2] = (Gin[1] | (Pin[1] & Gin[0]) | (Pin[1] & Pin[0] & Cin));       // �� ��° ��� ĳ�� C[2]
    assign C[3] = (Gin[2] | (Pin[2] & Gin[1]) | (Pin[2] & Pin[1] & Gin[0]) 
                    | (Pin[2] & Pin[1] & Pin[0] & Cin));                        // �� ��° ��� ĳ�� C[3] 
    // �� ��° ��ϱ��� ����� ��ü ���� ��Ʈ Gout ��� (Group Generate)
    assign Gout = (Gin[3] | (Pin[3] & Gin[2]) | (Pin[3] & Pin[2] & Gin[1]) 
                    | (Pin[3] & Pin[2] & Pin[1] & Gin[0]));                     
    // ��ü ���� ��Ʈ Pout ��� (Group Propagate)
    assign Pout = (Pin[3] & Pin[2] & Pin[1] & Pin[0]);
    // ���� ��� ĳ�� ��Ʈ Cout ���
    assign Cout = Gout | (Pout & Cin);

endmodule
