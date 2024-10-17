`timescale 1ns / 1ps

module sh_reg #(parameter BITS = 8)(
    input                       clk,
    input                       rstn,
    input                       en,
    input                       mode,
    input                       data,
    output  reg [BITS-1:0]      out
    );
    
    always @(posedge clk) begin
        if(!rstn)
        begin
            out <= {BITS{1'b0}};
        end
        else
        begin
            if(en)
            begin
                case (mode)
                    0:  out <= {out[BITS-2:0], data};
                    1:  out <= {data, out[BITS-1:1]};
                endcase
            end
            else
            begin
                out <= out;
            end
        end
    end
    
endmodule
