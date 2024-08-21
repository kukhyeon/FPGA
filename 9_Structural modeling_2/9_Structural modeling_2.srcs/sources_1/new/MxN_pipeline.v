module MxN_pipeline(
    in, out, clk
    );
    parameter M = 3, N = 4; // M = width, N = depth
    input [M-1:0]   in;
    output [M-1:0]  out;
    input           clk;
    wire    [M*(N-1):1] t;

    // #(M) is setting Parameter BITS value again
    dffn #(M) p [1:N] ({out, t}, {t, in}, clk);
endmodule
