`timescale 1ns / 1ps

module top_module (
    input wire [3:0] sw,       // ����ġ �Է� (4��)
    output wire [2:0] led      // LED ��� (3��)
);

    wire A_Big, Equal, B_Big;

    // A�� B �Է� ����
    comparator_2bit comp (
        .A(sw[1:0]),           // A = sw[1:0]
        .B(sw[3:2]),           // B = sw[3:2]
        .A_Big(A_Big),         // A > B ���
        .Equal(Equal),         // A == B ���
        .B_Big(B_Big)          // A < B ���
    );

    // LED ����
    assign led[0] = A_Big;     // A_Big�� LED0�� ����
    assign led[1] = Equal;     // Equal�� LED1�� ����
    assign led[2] = B_Big;     // B_Big�� LED2�� ����

endmodule


