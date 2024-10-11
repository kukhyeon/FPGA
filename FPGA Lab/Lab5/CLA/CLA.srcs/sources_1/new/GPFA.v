module GPFA (
    input   A, B, Cin,
    output  G, P, Sum
);

assign G = A&B;
assign P = A^B;
assign Sim = P ^ Cin;
    
endmodule