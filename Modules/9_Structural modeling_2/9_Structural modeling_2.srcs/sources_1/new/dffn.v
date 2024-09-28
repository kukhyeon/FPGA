// Changing module parameter's value
module dffn(
    q, d, clk
    );
        parameter BITS = 1;
    input [BITS-1:0] d;
    input            clk;
    output [BITS-1:0] q;

    DFF dff_array [BITS-1:0] (q, d, clk); // instance array
endmodule
