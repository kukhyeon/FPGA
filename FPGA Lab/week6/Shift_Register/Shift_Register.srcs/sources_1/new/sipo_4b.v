`timescale 1ns / 1ps
module sipo_4b(
    input               clk,
    input               rst,
    input               id,
    input               mode,
    input               ser_in,
    output  reg[3:0]    par_out
    );

    always @(posedge clk or negedge rst) begin
        if(!rst)
            par_out <= #1   4'b0000;
        else if(id)
            par_out <= #1   4'b1010;
        else
        begin
            if(mode)
                par_out <= #1 {par_out[2:0], ser_in};
            else
                par_out <= #1 {ser_in, par_out[3:1]}; 
        end
    end
endmodule
