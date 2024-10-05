`timescale 1ns / 1ps

module alu_mini_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    reg Op;
    wire V;
    wire Cout;
    wire [3:0] Sum;

    // DUT (Device Under Test) 인스턴스 생성
    alu_mini uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Op(Op),
        .V(V),
        .Cout(Cout),
        .Sum(Sum)
    );

    initial begin
        // 초기값 설정
        A = 4'b0000; B = 4'b0000; Cin = 1'b0; Op = 1'b0;
        #10;

        // A + B 테스트 (Op = 0)
        A = 4'b0011; B = 4'b0101; Cin = 1'b0; Op = 1'b0;
        #10;
        
        // A - B 테스트 (Op = 1, Cin = 1)
        A = 4'b0110; B = 4'b0011; Cin = 1'b1; Op = 1'b1;
        #10;

        // A + B 테스트, 오버플로 확인 (Op = 0)
        A = 4'b0111; B = 4'b0101; Cin = 1'b0; Op = 1'b0;
        #10;

        // A - B 테스트, 결과 음수 (Op = 1, Cin = 1)
        A = 4'b0010; B = 4'b0111; Cin = 1'b1; Op = 1'b1;
        #10;

        // A + B 테스트, carry out 확인 (Op = 0)
        A = 4'b1111; B = 4'b0001; Cin = 1'b0; Op = 1'b0;
        #10;

        // 테스트 종료
        $finish;
    end
endmodule