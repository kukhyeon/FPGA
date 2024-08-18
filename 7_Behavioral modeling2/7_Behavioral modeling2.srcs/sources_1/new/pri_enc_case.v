// Priority encoder using case with constant
module pri_enc_case(
    encode, enc
    );
    input [3:0] encode;
    output [1:0] enc;
    reg [1:0] enc;

    always @(encode) begin
        case (1) // Constant
            encode[3]: enc = 2'b11;
            encode[2]: enc = 2'b10;
            encode[1]: enc = 2'b01;
            encode[0]: enc = 2'b00; 
            default: $display("Error: One of the bits expected ON");
        endcase
    end
endmodule
