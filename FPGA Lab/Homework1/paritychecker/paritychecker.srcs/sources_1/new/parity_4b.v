`timescale 1ns / 1ps
module parity_4b(
    input A,
    input B,
    input C,
    input P,
    output Cp
    );

    wire temp1, temp2;
    assign temp1 = A ^ B;
    assign temp2 = C ^ P;
    assign Cp = temp1 ^ temp2;
endmodule