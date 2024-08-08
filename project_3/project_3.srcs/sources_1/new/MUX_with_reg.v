// Reg practice
module MUX_with_reg(a, b, sel, out);
    input [1:0] a, b; // 2-bit input
    input       sel; // 1-bit input
    output [1:0] out; // 2-bit output
    reg [1:0] out; // 2-bit output

    always @ (a or b or sel) begin
        if(sel == 1'b0) // MUX properties
            out = a;
        else
            out = b;
    end
endmodule
