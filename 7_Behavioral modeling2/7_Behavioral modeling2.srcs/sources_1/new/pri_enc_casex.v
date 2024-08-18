// 4-bit priority encoder using casex
module pri_enc_casex (
    encode, enc
);
    input [3:0] encode;
    output [1:0] enc;
    reg [1:0] enc;

    always @(encode) begin
        casex (encode)
            4'b1xxx: enc = 2'b11; // Assign binary 11 if encode == 1xxx
            4'b01xx: enc = 2'b10;
            4'b001x: enc = 2'b01;
            4'b0001: enc = 2'b00;
        endcase
    end
    
endmodule