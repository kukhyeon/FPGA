// Blocking assignment
module blkl;
    output out;
    reg a, b, clk;

    initial begin
        a = 0;
        b = 1;
        clk = 0;
    end
    
    always clk = #5 ~clk;

    always @ (posedge clk) begin
        a = b; // a = 1
        b = a; // b = a = 1
               // a and b operate sequentially
    end
endmodule
