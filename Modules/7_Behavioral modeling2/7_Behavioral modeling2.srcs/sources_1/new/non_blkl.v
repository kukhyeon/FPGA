// Non_blocking assignment
module non_blkl;
    output out;
    reg a, b, clk;

    initial begin
        a = 0;
        b = 1;
        clk = 0;
    end
    
    always clk = #5 ~clk;

    always @ (posedge clk) begin
        a <= b; // a = 1, 0, 1, ....
        b <= a; // b = 0, 1, 0, ....
                // Both a and b operate at the same time
    end
endmodule
