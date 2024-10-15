module GPFA (
    input   A, B, Cin,
    output  G, P, Sum
);

assign G = A&B;
assign P = A^B;
assign Sum = P ^ Cin;
    
endmodule