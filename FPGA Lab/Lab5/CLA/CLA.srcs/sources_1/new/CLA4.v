`timescale 1ns / 1ps

module CLA4(
    input   [3:0]   A, B,
    input   Cin,
    output  [3:0]   sum,
    output  Gout, Pout, Cout
    );
    wire [3:0] G, P;
    wire [3:1] C;

    GPFA    u0  (A[0], B[0], Cin, G[0], P[0], sum[0]);
    GPFA    u1  (A[1], B[1], C[1], G[1], P[1], sum[1]);
    GPFA    u2  (A[2], B[2], C[2], G[2], P[2], sum[2]);
    GPFA    u3  (A[3], B[3], C[3], G[3], P[3], sum[3]);
    
    CLL4 m1(.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));
endmodule
