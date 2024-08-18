// 2:1 MUX using case 
module mux21_case (
    a, b, sel, out
);
    input [1:0] a, b;
    input       sel;
    output [1:0] out;
    reg [1:0] out;

    always @(a or b or sel) begin
        case (sel)
            0 : out = a;
            1 : out = b;

            // default is skipped 
        endcase
    end
endmodule