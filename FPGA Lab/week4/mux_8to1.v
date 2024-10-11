`timescale 1ns / 1ps

module mux_8to1(
    input   [1:0]   a,
    input   [1:0]   b,
    input   [1:0]   c,
    input   [1:0]   d,
    input   [2:0]   sel,
    output  reg   out
    );

    always @(*) begin
        case (sel)
            3'b000   :   out = a[0];
            3'b001   :   out = a[1];
            3'b010   :   out = b[0];
            3'b011   :   out = b[1]; 
            3'b100   :   out = c[0];
            3'b101   :   out = c[1];
            3'b110   :   out = d[0];
            3'b111   :   out = d[1]; 
            default :   out = 1'bx;
        endcase
    end
    

endmodule