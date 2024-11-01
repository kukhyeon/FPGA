`timescale 1ns / 1ps

module comparator_2bit (
    input  [1:0] A,  // 2비트 입력 A
    input  [1:0] B,  // 2비트 입력 B
    output  A_Big,  // A > B일 때 1
    output  Equal,    // A == B일 때 1
    output  B_Big      // A < B일 때 1
);

    // A > B일 때의 조건
    assign A_Big = (A > B);
    
    // A == B일 때의 조건
    assign Equal = (A == B);
    
    // A < B일 때의 조건
    assign B_Big = (A < B);

endmodule

