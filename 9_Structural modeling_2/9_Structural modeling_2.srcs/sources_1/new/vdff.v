// Changing parameter's value by defparam
module vdff(
    out, in, clk
    );
    parameter size = 1;
    parameter delay = 1;
    input [0:size-1] in;
    input clk;
    output [0:size-1] out;
    reg [0:size-1] out;

    always @(posedge clk) 
        # delay out = in;
endmodule
