`timescale 1ns / 1ps

module CLA32(
    input  [31:0] a,         // 32��Ʈ �Է� a
    input  [31:0] b,         // 32��Ʈ �Է� b
    input         Cin,       // �Է� ĳ�� ��Ʈ Cin
    output [31:0] sum,       // 32��Ʈ ��� �հ� sum
    output        Gout,      // ��� ��ü ���� ��Ʈ Gout
    output        Pout,      // ��� ��ü ���� ��Ʈ Pout
    output        Cout       // ��� ĳ�� ��Ʈ Cout
    );

// ���� ���� �� ���� ��Ʈ�� �����ϱ� ���� 2��Ʈ ���̾� G�� P ����
wire [1:0]  G;
wire [1:0]  P;
// �� 16��Ʈ �������� ��� ĳ���� �����ϴ� ���̾� C ����
wire        C;

// 16��Ʈ ������ ��� CLA16 �� ���� �̿��Ͽ� 32��Ʈ ������ ����
CLA16 adder0(.a(a[15:0]),   .b(b[15:0]),   .Cin(Cin),    .sum(sum[15:0]),   .Gout(G[0]), .Pout(P[0])); // ���� 16��Ʈ ����
CLA16 adder1(.a(a[31:16]),   .b(b[31:16]),   .Cin(C),    .sum(sum[31:16]),   .Gout(G[1]), .Pout(P[1])); // ���� 16��Ʈ ����

// ��ü ���� �� ���� ��Ʈ�� ����ϰ� ��� ĳ�� ��Ʈ�� ����ϴ� ��� ĳ�� ������ ���� BCLL2 ��� ���
BCLL2 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
