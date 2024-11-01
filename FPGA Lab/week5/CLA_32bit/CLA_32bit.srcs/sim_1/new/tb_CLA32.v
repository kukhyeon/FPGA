module CLA32_tb;

    reg [31:0] a;
    reg [31:0] b;
    reg        Cin;
    wire [31:0] sum;
    wire       Gout, Pout, Cout;

    // Instantiate the Device Under Test (DUT)
    CLA32 uut (
        .a(a),
        .b(b),
        .Cin(Cin),
        .sum(sum),
        .Gout(Gout),
        .Pout(Pout),
        .Cout(Cout)
    );

    initial begin
        // Test Case 1: Gout ���� Ȯ�� (Carry �߻�)
        a = 32'hFFFFFFFF; b = 32'h00000001; Cin = 0; // ��� ��Ʈ 1�� 1�� ���� Carry �߻�
        #10;

        // Test Case 2: Pout ���� Ȯ�� (Carry ����)
        a = 32'hAAAAAAAA; b = 32'h55555555; Cin = 1; // ���� ������ ����� Carry�� Ȯ��
        #10;

        // Test Case 3: Sum ��� Ȯ��
        a = 32'h12345678; b = 32'h87654321; Cin = 0; // �پ��� ��Ʈ �������� Sum Ȯ��
        #10;
        // Finish simulation
        $stop;
    end

endmodule
