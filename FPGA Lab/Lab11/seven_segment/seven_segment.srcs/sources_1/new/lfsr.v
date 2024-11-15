`timescale 1ns / 1ps

module lfsr(
    input           clk,
    input           rstn,
    output  [15:0]  out_p,
    output          out_s
    );

    reg [15:0]  data;
    reg in, out;

    always @(posedge clk or negedge rstn) begin
            if(!rstn)
            begin
                data    <=  16'h1234;
                in      <= 1'b0;
                out     <= data[15];
            end
            else
            begin
                in      <= data[15] ^ data[13] ^ data[12] ^ data[10];
                out     <= data[15];
                data    <= {data[14:0], in};
            end 
        end
    assign out_p = data;
    assign out_s = out;

    endmodule
