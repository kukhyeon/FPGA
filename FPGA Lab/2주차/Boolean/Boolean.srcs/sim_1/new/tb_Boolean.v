module tb_boolean;  // 테스트벤치 모듈 정의
    reg a, b, c;     // 입력 신호를 위한 reg 선언
    wire y;          // 출력 신호를 위한 wire 선언

    // DUT (Design Under Test) 인스턴스화
    Boolean U0(
        .A(a),      // 입력 A 연결
        .B(b),      // 입력 B 연결
        .C(c),      // 입력 C 연결
        .Y(y)       // 출력 Y 연결
    );

    initial begin  // 초기 블록 시작
        // 초기 입력 값 설정
        a = 0; b = 0; c = 0; // 시작 상태: A, B, C 모두 0

        // 시뮬레이션 시간 지연 및 입력 신호 변화
             a = 0; b = 0; c = 0; // 100ns 후: A=0, B=0, C=0
        #100 a = 0; b = 0; c = 1; // 100ns 후: A=0, B=0, C=1
        #100 a = 0; b = 1; c = 0; // 100ns 후: A=0, B=1, C=0
        #100 a = 0; b = 1; c = 1; // 100ns 후: A=0, B=1, C=1
        #100 a = 1; b = 0; c = 0; // 100ns 후: A=1, B=0, C=0
        #100 a = 1; b = 0; c = 1; // 100ns 후: A=1, B=0, C=1
        #100 a = 1; b = 1; c = 0; // 100ns 후: A=1, B=1, C=0
        #100 a = 1; b = 1; c = 1; // 100ns 후: A=1, B=1, C=1

        #100 $finish; // 시뮬레이션 종료
    end
endmodule
