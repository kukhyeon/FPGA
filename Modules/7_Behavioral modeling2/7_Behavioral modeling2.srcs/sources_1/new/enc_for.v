// 8-bit priority encoder using loop
module enc_for(
    in, out
    );
    input [7:0] in;
    output reg [2:0] out;
    integer i;

    always @(in) begin : loop
        out = 0;
        for (i = 7; i >= 0; i = i-1) begin
            if(in[i]) begin
                out = i;
                disable loop; // In HDL, it finishes always statement
            end
        end
    end
endmodule
