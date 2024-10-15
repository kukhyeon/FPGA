`timescale 1ns / 1ps

module BCLL2(
    input   [1:0] Gin, Pin,
    input         Cin,
    output        Gout, Pout,
    output        C,
    output Cout  
    );
    assign C = (Gin[0] | (Pin[0] & Cin));
    assign Gout = (Gin[1] | (Pin[1] & Gin[0]));
    assign Pout = (Pin[1] & Pin[0]);
    assign Cout = Gout | (Pout & Cin);

endmodule
