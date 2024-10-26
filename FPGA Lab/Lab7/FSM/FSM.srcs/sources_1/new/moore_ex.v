`timescale 1ns / 1ps

module moore_ex(
    input               clk,
    input               rst,
    input               x,
    output              z
    );

    parameter [1:0]     s0 = 0,
                        s1 = 1,
                        s2 = 2,
                        s3 = 3;
    
    reg [1:0] state;
    assign  z = (state == s3) ? 1 : 0;

    always @(posedge clk) begin
        if(!rst) begin
            state <= s0;
        end
        else begin
            case (state)
                s0: begin
                    if (x)
                        state <= s1;
                    else
                        state <= s0;
                end 
                s1: begin
                    if (x)
                        state <= s1;
                    else
                        state <= s2;
                end 
                s2: begin
                    if (x) 
                        state <= s3;
                    else
                        state <= s0;
                end 
                s3: begin
                    if (x)
                        state <= s1;
                    else
                        state <= s2;
                end 
            endcase
        end
    end
endmodule
