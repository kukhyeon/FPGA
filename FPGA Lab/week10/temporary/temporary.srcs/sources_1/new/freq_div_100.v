`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/04 20:07:15
// Design Name: 
// Module Name: freq_div_100
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module freq_div_100(
    input           clk_ref, rst,                       // clock reference, reset bit
    output  reg     clk_div                             // divided clock
    );
    
    reg     [5:0]   cnt;                                 // count bit
    
    always  @   (posedge clk_ref or posedge rst)
    begin
        if(rst)                                          // reset = 1, count = 0, clk_div = 0
        begin
            cnt     <= 6'b0;
            clk_div <= 1'd0;
        end
        else                                             // reset = 0
        begin
            if(cnt == 6'd49)                             // cnt == 49, cnt = 0 & clk_div inverted
            begin
                cnt     <= 6'd0;
                clk_div <= ~ clk_div;
            end
            else                                          // cnt /= 49, cnt = cnt + 1
            begin
                cnt <= cnt + 1'b1;
            end
        end
    end
    
endmodule
