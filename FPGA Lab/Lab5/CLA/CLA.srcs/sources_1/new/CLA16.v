`timescale 1ns / 1ps
module CLA16(
    input  [15:0] a,
    input  [15:0] b,
    input         Cin,
    output [15:0] sum,
    output        Gout,
    output        Pout,
    output        Cout
);

wire [3:0] G;
wire [3:0] P;
wire [3:1] C;

CLA4 adder0(.A(a[3:0]),   .B(b[3:0]),   .Cin(Cin),    .sum(sum[3:0]),   .Gout(G[0]), .Pout(P[0]));
CLA4 adder1(.A(a[7:4]),   .B(b[7:4]),   .Cin(C[1]),   .sum(sum[7:4]),   .Gout(G[1]), .Pout(P[1]));
CLA4 adder2(.A(a[11:8]),  .B(b[11:8]),  .Cin(C[2]),   .sum(sum[11:8]),  .Gout(G[2]), .Pout(P[2]));
CLA4 adder3(.A(a[15:12]), .B(b[15:12]), .Cin(C[3]),   .sum(sum[15:12]), .Gout(G[3]), .Pout(P[3]));

BCLL4 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));

endmodule
