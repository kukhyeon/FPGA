`timescale 1ns / 1ps
module tb_parity_4b;
    reg a, b, c, p;
    wire cp;
    
    // DUT (Device Under Test) 인스턴스화
    parity_4b dut (
        .A(a),          // 입력 A 연결
        .B(b),          // 입력 B 연결
        .C(c),          // 입력 C 연결
        .P(p),          // 입력 P 연결
        .Cp(cp)         // 출력 Cp 연결
    );

    initial begin
        // 시작 상태: A, B, C, P 모두 0
        a = 0; b = 0; c = 0; p = 0;
        
        // 시뮬레이션 시간 지연 및 입력 신호 변화
        #100 a = 0; b = 0; c = 0; p = 1; // A=0, B=0, C=0, P=1
        #100 a = 0; b = 0; c = 1; p = 0; // A=0, B=0, C=1, P=0
        #100 a = 0; b = 0; c = 1; p = 1; // A=0, B=0, C=1, P=1
        #100 a = 0; b = 1; c = 0; p = 0; // A=0, B=1, C=0, P=0
        #100 a = 0; b = 1; c = 0; p = 1; // A=0, B=1, C=0, P=1
        #100 a = 0; b = 1; c = 1; p = 0; // A=0, B=1, C=1, P=0
        #100 a = 0; b = 1; c = 1; p = 1; // A=0, B=1, C=1, P=1
        #100 a = 1; b = 0; c = 0; p = 0; // A=1, B=0, C=0, P=0
        #100 a = 1; b = 0; c = 0; p = 1; // A=1, B=0, C=0, P=1
        #100 a = 1; b = 0; c = 1; p = 0; // A=1, B=0, C=1, P=0
        #100 a = 1; b = 0; c = 1; p = 1; // A=1, B=0, C=1, P=1
        #100 a = 1; b = 1; c = 0; p = 0; // A=1, B=1, C=0, P=0
        #100 a = 1; b = 1; c = 0; p = 1; // A=1, B=1, C=0, P=1
        #100 a = 1; b = 1; c = 1; p = 0; // A=1, B=1, C=1, P=0
        #100 a = 1; b = 1; c = 1; p = 1; // A=1, B=1, C=1, P=1
        
        // 시뮬레이션 종료
        #100 $stop;
    end

endmodule