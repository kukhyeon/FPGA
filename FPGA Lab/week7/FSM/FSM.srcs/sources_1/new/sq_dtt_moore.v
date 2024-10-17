`timescale 1ns / 1ps

module moore_ex(
    input               clk,
    input               rstn,
    input               in,
    output              out
    );

    parameter [1:0]     s0 = 3'b000,
                        s1 = 3'b001,
                        s2 = 3'b010,
                        s3 = 3'b011,
                        s4 = 3'b100;
    
    reg [2:0] cst, nst;
    always @(posedge clk) begin
        if (!rstn) begin
            cst <= 30;
        end
        else begin
            cst <= nst;
        end
    end

    always @(*) begin
        nst <= cst;
            case (cst)
                s0: begin
                    if (in)
                        nst <= s1;
                    else
                        nst <= s0;
                end 
                s1: begin
                    if (in)
                        nst <= s2;
                    else
                        nst <= s0;
                end 
                s2: begin
                    if (in)
                        nst <= s3;
                    else
                        nst <= s0;
                end 
                s3: begin
                    if (in)
                        nst <= s4;
                    else
                        nst <= s0;
                end 
                s4: begin
                    if (in)
                        nst <= s2;
                    else
                        nst <= s0;
                end 
            endcase
        end
        assign out = cst == s4;
endmodule
