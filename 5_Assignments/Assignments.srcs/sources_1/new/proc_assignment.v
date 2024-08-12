// Procedure assignment
module proc_assignment(clk, a, b, out);
    input clk, a, b;
    output out;
    reg    out, c;

    always @(posedge clk) begin
        c = a & b;      // blocking assignment
        out <= c;       // nonblocking assignment
    end
endmodule