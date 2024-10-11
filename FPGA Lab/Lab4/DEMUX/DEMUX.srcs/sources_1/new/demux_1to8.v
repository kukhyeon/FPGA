`timescale 1ns / 1ps

module demux_1to8(
    input           data,
    input       [2:0] sel,
    output  reg [7:0] out
    );

    always @(*) begin
        case (sel)
            3'b000: out = {7'd0, data};
            3'b001: out = {6'd0, data, 1'd0};
            3'b010: out = {5'd0, data, 2'd0};
            3'b011: out = {4'd0, data, 3'd0};
            3'b100: out = {3'd0, data, 4'd0};
            3'b101: out = {2'd0, data, 5'd0};
            3'b110: out = {1'd0, data, 6'd0};
            3'b111: out = {data, 7'd0};
        endcase
    end
endmodule
