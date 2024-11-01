`timescale 1ns / 1ps

module top_module (
    input wire [3:0] sw,       // 스위치 입력 (4개)
    output wire [2:0] led      // LED 출력 (3개)
);

    wire A_Big, Equal, B_Big;

    // A와 B 입력 설정
    comparator_2bit comp (
        .A(sw[1:0]),           // A = sw[1:0]
        .B(sw[3:2]),           // B = sw[3:2]
        .A_Big(A_Big),         // A > B 결과
        .Equal(Equal),         // A == B 결과
        .B_Big(B_Big)          // A < B 결과
    );

    // LED 매핑
    assign led[0] = A_Big;     // A_Big을 LED0에 매핑
    assign led[1] = Equal;     // Equal을 LED1에 매핑
    assign led[2] = B_Big;     // B_Big을 LED2에 매핑

endmodule


