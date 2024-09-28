module top(
    clk, in1, in2, o1, o2
    );
    input clk;
    input [0:4] in1;
    input [0:9] in2;
    output [0:4] o1;
    output [0:9] o2;

    annotate U0 ();
    vdff m1(o1, in1, clk);
endmodule
