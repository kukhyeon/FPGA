module freq_divider #(parameter DIVISOR = 1)(
    input clk_in,
    input rst,
    output reg clk_out
    );
    reg [$clog2(DIVISOR)-1:0] cnt;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            cnt     <= 0;
            clk_out <= 0;
        end else begin
            if (cnt == DIVISOR/2 - 1) begin
                cnt     <= 0;
                clk_out <= ~clk_out;
            end else begin
                cnt <= cnt + 1;
            end
        end
    end
endmodule