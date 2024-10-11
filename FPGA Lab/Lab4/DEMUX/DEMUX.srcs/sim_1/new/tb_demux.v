`timescale 1ns / 1ps

module tb_demux_1to8;

// inputs
reg data;
reg [2:0] sel;

// outputs
wire [7:0] out;

// UUT
demux_1to8 UUT (data, sel, out);

// Testcode
initial
begin
    data = 1'b0; sel = 3'd0;
    #100; data = 1'b1; sel = 3'd0;
    #100; data = 1'b1; sel = 3'd1;
    #100; data = 1'b1; sel = 3'd2;
    #100; data = 1'b1; sel = 3'd3;
    #100; data = 1'b1; sel = 3'd4;
    #100; data = 1'b1; sel = 3'd5;
    #100; data = 1'b1; sel = 3'd6;
    #100; data = 1'b1; sel = 3'd7;
    #100; data = 1'b0; sel = 3'd0;
    #100; data = 1'b0; sel = 3'd1;
    #100; data = 1'b0; sel = 3'd2;
    #100; data = 1'b0; sel = 3'd3;
    #100; $finish;
end

endmodule
