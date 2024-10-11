`timescale 1ns / 1ps
module parity_4b(
    input A,  // 입력 A
    input B,  // 입력 B
    input C,  // 입력 C
    input P,  // 입력 P
    output Cp // 출력 Cp
    );

    wire temp1, temp2;
    assign temp1 = A ^ B;
    assign temp2 = C ^ P;
    assign Cp = temp1 ^ temp2;
endmodule