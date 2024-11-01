`timescale 1ns / 1ps

module comparator_2bit (
    input  [1:0] A,  // 2��Ʈ �Է� A
    input  [1:0] B,  // 2��Ʈ �Է� B
    output  A_Big,  // A > B�� �� 1
    output  Equal,    // A == B�� �� 1
    output  B_Big      // A < B�� �� 1
);

    // A > B�� ���� ����
    assign A_Big = (A > B);
    
    // A == B�� ���� ����
    assign Equal = (A == B);
    
    // A < B�� ���� ����
    assign B_Big = (A < B);

endmodule

