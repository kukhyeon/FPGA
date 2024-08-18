// Decoder using case
reg [15:0] rega;
reg [9:0] result;

always @(rega) begin
    case (rega)
        16'd0: result = 10'b0111111111;
        16'd1: result = 10'b1011111111;
        16'd2: result = 10'b1101111111;
        16'd3: result = 10'b1110111111;
        16'd4: result = 10'b1111011111;
        16'd5: result = 10'b1111101111;
        16'd6: result = 10'b1111110111;
        16'd7: result = 10'b1111111011;
        16'd8: result = 10'b1111111101;
        16'd9: result = 10'b1111111110;
        default: result = 10'bx; // if not default, this circuit will operate like a latch
    endcase
end