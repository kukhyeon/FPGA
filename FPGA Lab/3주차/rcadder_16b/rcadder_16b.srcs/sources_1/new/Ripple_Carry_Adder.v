module Ripple_Carry_Adder_16bit(
    input [15:0] A, B,  // 16비트 입력 A와 B
    input Cin,          // 캐리 입력
    output [15:0] Sum,  // 16비트 합 출력
    output Cout         // 캐리 출력
);

    wire [15:0] carry;  // 내부 캐리 연결선

    // 각 비트에 대해 Full Adder 인스턴스화
    Full_Adder FA0 (.a(A[0]), .b(B[0]), .cin(Cin), .sum(Sum[0]), .cout(carry[0]));  // 비트 0 덧셈
    Full_Adder FA1 (.a(A[1]), .b(B[1]), .cin(carry[0]), .sum(Sum[1]), .cout(carry[1]));  // 비트 1 덧셈
    Full_Adder FA2 (.a(A[2]), .b(B[2]), .cin(carry[1]), .sum(Sum[2]), .cout(carry[2]));  // 비트 2 덧셈
    Full_Adder FA3 (.a(A[3]), .b(B[3]), .cin(carry[2]), .sum(Sum[3]), .cout(carry[3]));  // 비트 3 덧셈
    Full_Adder FA4 (.a(A[4]), .b(B[4]), .cin(carry[3]), .sum(Sum[4]), .cout(carry[4]));  // 비트 4 덧셈
    Full_Adder FA5 (.a(A[5]), .b(B[5]), .cin(carry[4]), .sum(Sum[5]), .cout(carry[5]));  // 비트 5 덧셈
    Full_Adder FA6 (.a(A[6]), .b(B[6]), .cin(carry[5]), .sum(Sum[6]), .cout(carry[6]));  // 비트 6 덧셈
    Full_Adder FA7 (.a(A[7]), .b(B[7]), .cin(carry[6]), .sum(Sum[7]), .cout(carry[7]));  // 비트 7 덧셈
    Full_Adder FA8 (.a(A[8]), .b(B[8]), .cin(carry[7]), .sum(Sum[8]), .cout(carry[8]));  // 비트 8 덧셈
    Full_Adder FA9 (.a(A[9]), .b(B[9]), .cin(carry[8]), .sum(Sum[9]), .cout(carry[9]));  // 비트 9 덧셈
    Full_Adder FA10 (.a(A[10]), .b(B[10]), .cin(carry[9]), .sum(Sum[10]), .cout(carry[10]));  // 비트 10 덧셈
    Full_Adder FA11 (.a(A[11]), .b(B[11]), .cin(carry[10]), .sum(Sum[11]), .cout(carry[11]));  // 비트 11 덧셈
    Full_Adder FA12 (.a(A[12]), .b(B[12]), .cin(carry[11]), .sum(Sum[12]), .cout(carry[12]));  // 비트 12 덧셈
    Full_Adder FA13 (.a(A[13]), .b(B[13]), .cin(carry[12]), .sum(Sum[13]), .cout(carry[13]));  // 비트 13 덧셈
    Full_Adder FA14 (.a(A[14]), .b(B[14]), .cin(carry[13]), .sum(Sum[14]), .cout(carry[14]));  // 비트 14 덧셈
    Full_Adder FA15 (.a(A[15]), .b(B[15]), .cin(carry[14]), .sum(Sum[15]), .cout(Cout));  // 비트 15 덧셈

endmodule