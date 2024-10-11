module CLL4 (
    input   [3:0] Gin, Pin,
    input         Cin,
    output        Gout, Pout,
    output  [3:1] C,
    output Cout  
);

assign C[1] = (Gin[0] | (Pin[0] & Cin));
assign C[2] = (Gin[1] | (Pin[1] & Gin[0]) | (Pin[1] & Pin[0] & Cin));
assign C[3] = (Gin[2] | (Pin[2] & Gin[1]) | (Pin[2] & Pin[1] & Gin[0]) | (Pin[2] & Pin[1] & Pin[0] & Cin));
assign Gout = (Gin[3] | (Pin[3] & Gin[2]) | (Pin[3] & Pin[2] & Gin[1]) | (Pin[3] & Pin[2] & Pin[1] & Gin[0]));
assign Pout = (Pin[3] & Pin[2] & Pin[1] & Pin[0]);

assign Cout = Gout | (Pout & Cin);

endmodule