`timescale 1ns / 1ps

module endocer_8to3(
    input           [7:0] in,
    output  reg     [2:0] out
    );

    always @(*) begin
        case (in)
            8'h01   :   out = 3'd0;
            8'h02   :   out = 3'd1;
            8'h04   :   out = 3'd2;
            8'h08   :   out = 3'd3;
            8'h10   :   out = 3'd4;
            8'h20   :   out = 3'd5;
            8'h40   :   out = 3'd6;
            8'h80   :   out = 3'd7;
            default:    out = 3'bxxx;
        endcase
    end
endmodule
