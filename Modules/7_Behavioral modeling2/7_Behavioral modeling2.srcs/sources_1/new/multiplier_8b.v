// Shift-add multiplier using repeat
module multiplier_8b(
    opa, opb, result
    );
    parameter Size = 8 , LongSize = 2*Size;
    input [Size-1:0]    opa, opb;
    output [LongSize-1:0] result;
    reg [LongSize-1:0] result, shift_opa, shift_opb;

    always @(opa or opb) begin
        shift_opa = opa;        // multiplicand
        shift_opb = opb;        // multiplier
        result = 0;
        repeat(Size) begin
            if(shift_opb[0]) // LSB of shift_opb
                result = result + shift_opa;
            shift_opa = shift_opa << 1;
            shift_opb = shift_opb >> 1;
        end
    end
endmodule
