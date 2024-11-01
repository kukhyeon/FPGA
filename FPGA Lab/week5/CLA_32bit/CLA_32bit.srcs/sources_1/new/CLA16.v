`timescale 1ns / 1ps
module CLA16(
    input  [15:0] a,         // 16��Ʈ �Է� a
    input  [15:0] b,         // 16��Ʈ �Է� b
    input         Cin,       // �Է� ĳ�� ��Ʈ Cin
    output [15:0] sum,       // 16��Ʈ ��� �հ� sum
    output        Gout,      // ��� ��ü ���� ��Ʈ Gout
    output        Pout,      // ��� ��ü ���� ��Ʈ Pout
    output        Cout       // ��� ĳ�� ��Ʈ Cout
);

// 4���� ���� ��Ʈ�� ���� ��Ʈ�� �����ϱ� ���� 4��Ʈ ���̾� G�� P ����
wire [3:0] G;
wire [3:0] P;
// �� 4��Ʈ ������ ��� ������ ĳ���� �����ϴ� 3��Ʈ ���̾� C ����
wire [3:1] C;

// 4��Ʈ ������ ��� CLA4 �� ���� �̿��Ͽ� 16��Ʈ ������ ����
CLA4 adder0(.A(a[3:0]),   .B(b[3:0]),   .Cin(Cin),    .sum(sum[3:0]),   .Gout(G[0]), .Pout(P[0]));  // ���� 4��Ʈ ����
CLA4 adder1(.A(a[7:4]),   .B(b[7:4]),   .Cin(C[1]),   .sum(sum[7:4]),   .Gout(G[1]), .Pout(P[1]));  // ���� 4��Ʈ ����
CLA4 adder2(.A(a[11:8]),  .B(b[11:8]),  .Cin(C[2]),   .sum(sum[11:8]),  .Gout(G[2]), .Pout(P[2]));  // ���� 4��Ʈ ����
CLA4 adder3(.A(a[15:12]), .B(b[15:12]), .Cin(C[3]),   .sum(sum[15:12]), .Gout(G[3]), .Pout(P[3]));  // ���� 4��Ʈ ����

// 4���� ���� �� ���� ��Ʈ�� �̿��Ͽ� ���� ��ü ���� �� ���� ��Ʈ�� ĳ�� ��Ʈ�� ����ϴ� CLL4 ��� ���
CLL4 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
