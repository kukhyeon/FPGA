module top_module (
    input a, b, c, d, e,
    output reg [24:0] out );

    wire [24:0] temp1;
    wire [24:0] temp2;
    
    assign temp1 = { {5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign temp2 =  {5{a, b, c, d, e}};

    always @(*) begin
        integer i;
        for(i=24; i>=0; i = i-1) begin
            out[i] = ~(temp1[i] ^ temp2[i]);
        end
    end

endmodule

