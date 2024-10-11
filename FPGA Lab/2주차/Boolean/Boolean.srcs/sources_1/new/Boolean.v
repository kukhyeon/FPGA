`timescale 1ns / 1ps

// 모듈 이름 및 port 선언
module Boolean(
    input wire A,   
    input wire B,  
    input wire C,   
    output wire Y  
);
    
    wire temp, temp2;               // 임시 wire 선언
    assign temp = A & ~B & ~C;      // temp는 A가 1이고 B와 C가 0일 때 1
    assign temp2 = B & C;           // temp2는 B와 C가 모두 1일 때 1
    assign Y = temp | temp2;        // Y는 temp와 temp2 중 하나라도 1이면 1
endmodule
