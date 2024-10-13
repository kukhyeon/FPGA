`timescale 1ns / 1ps

module CLA32(
    input  [31:0] a,
    input  [31:0] b,
    input         Cin,
    output [31:0] sum,
    output        Gout,
    output        Pout,
    output        Cout
    );

wire [1:0]  G;
wire [1:0]  P;
wire        C;

CLA16 adder0(.a(a[15:0]),   .b(b[15:0]),   .Cin(Cin),    .sum(sum[15:0]),   .Gout(G[0]), .Pout(P[0]));
CLA16 adder1(.a(a[31:16]),   .b(b[31:16]),   .Cin(C),    .sum(sum[31:16]),   .Gout(G[1]), .Pout(P[1]));

BCLL2 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
