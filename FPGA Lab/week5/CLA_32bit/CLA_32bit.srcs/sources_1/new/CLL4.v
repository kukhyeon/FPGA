module CLL4 (
    input   [3:0] Gin,       // 4비트 생성 비트 입력 Gin
    input   [3:0] Pin,       // 4비트 전달 비트 입력 Pin
    input         Cin,       // 입력 캐리 비트 Cin
    output        Gout,      // 전체 생성 비트 출력 Gout
    output        Pout,      // 전체 전달 비트 출력 Pout
    output  [3:1] C,         // 내부 캐리 비트 C
    output        Cout       // 출력 캐리 비트 Cout
);

    // 각 비트 블록의 생성/전달 비트를 사용하여 내부 캐리 비트를 순차적으로 계산
    assign C[1] = (Gin[0] | (Pin[0] & Cin));                                    // 첫 번째 블록 캐리 C[1]
    assign C[2] = (Gin[1] | (Pin[1] & Gin[0]) | (Pin[1] & Pin[0] & Cin));       // 두 번째 블록 캐리 C[2]
    assign C[3] = (Gin[2] | (Pin[2] & Gin[1]) | (Pin[2] & Pin[1] & Gin[0]) 
                    | (Pin[2] & Pin[1] & Pin[0] & Cin));                        // 세 번째 블록 캐리 C[3] 
    // 네 번째 블록까지 고려한 전체 생성 비트 Gout 계산 (Group Generate)
    assign Gout = (Gin[3] | (Pin[3] & Gin[2]) | (Pin[3] & Pin[2] & Gin[1]) 
                    | (Pin[3] & Pin[2] & Pin[1] & Gin[0]));                     
    // 전체 전달 비트 Pout 계산 (Group Propagate)
    assign Pout = (Pin[3] & Pin[2] & Pin[1] & Pin[0]);
    // 최종 출력 캐리 비트 Cout 계산
    assign Cout = Gout | (Pout & Cin);

endmodule
