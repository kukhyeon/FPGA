module mux21_if (
    a, b, sel, out
);
    input [1:0] a, b;
    input       sel;
    output [1:0] out;
    reg [1:0] out;

    always @(a or b or sel) // Combinational circuit
        if(!sel) // sel = 1, X, Z
            out = a;
        else
            out = b;
    
endmodule