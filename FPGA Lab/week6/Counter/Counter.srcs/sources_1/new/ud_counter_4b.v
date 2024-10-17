`timescale 1ns / 1ps

module ud_counter_4b(
    input                   clk,
    input                   rstn,
    input                   en,
    input                   ud,
    output  reg  [3:0]      cnt
    );

    always @(posedge clk) begin
        if(!rstn)
            cnt <= 4'b0000;
        else
        begin
            if(en)
            begin
                if(ud)
                    cnt <= cnt + 4'b0001;
                else
                    cnt <= cnt - 4'b0001;
            end
            else
            begin
                cnt <= cnt;
            end
        end
    end
endmodule
