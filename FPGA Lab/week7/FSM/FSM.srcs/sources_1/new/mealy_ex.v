`timescale 1ns / 1ps

module mealy_ex(
    input               clk,
    input               rst,
    input               x,
    output  reg         z
    );

    parameter [1:0] s0 = 0,
                    s1 = 1,
                    s2 = 2;

    reg [1:0]   state;

    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            z       <= 0;
            state   <= 0;
        end
        else begin
            case (state)
                s0: begin
                    if(x) begin
                    z           <= 1;
                    state       <= s1;
                    end
                    else begin
                        z       <= 0;
                        state   <= s0;
                    end
                end
                s1: begin
                    if(x) begin
                    z           <= 0;
                    state       <= s2;
                    end
                    else begin
                        z       <= 1;
                        state   <= s1;
                    end
                end
                s2: begin
                    if(x) begin
                    z           <= 1;
                    state       <= s0;
                    end
                    else begin
                        z       <= 0;
                        state   <= s2;
                    end
                end
                default: begin
                    z           <= 0;
                    state       <= s0;
                end         
            endcase
        end
    end
endmodule
