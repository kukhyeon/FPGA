module top_module (
    input [7:0] in,
    output reg [31:0] out );//

    always @(*) begin
        if (in[7] == 1)
            out = { {24{1'b1}}, in};
        else
            out = { {24{1'b0}}, in};
    end
endmodule
