module LFSR_4b (
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk)
begin
    if (rst)
        q <= 4'b0001; // 초깃값 설정
    else
        begin
            q[0] <= q[0] ^ q[3]; // 첫 번쨰 FF's D input is XOR of Q[0] and Q[3]
            q[1] <= q[0];        // Shift the bits
            q[2] <= q[1];
            q[3] <= q[2];
        end
end

endmodule 