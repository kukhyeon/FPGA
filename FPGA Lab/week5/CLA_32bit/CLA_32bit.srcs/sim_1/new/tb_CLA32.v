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
        // Test Case 1: Gout 생성 확인 (Carry 발생)
        a = 32'hFFFFFFFF; b = 32'h00000001; Cin = 0; // 모든 비트 1에 1을 더해 Carry 발생
        #10;

        // Test Case 2: Pout 생성 확인 (Carry 전파)
        a = 32'hAAAAAAAA; b = 32'h55555555; Cin = 1; // 전파 조건을 만들어 Carry가 확산
        #10;

        // Test Case 3: Sum 결과 확인
        a = 32'h12345678; b = 32'h87654321; Cin = 0; // 다양한 비트 조합으로 Sum 확인
        #10;
        // Finish simulation
        $stop;
    end

endmodule
