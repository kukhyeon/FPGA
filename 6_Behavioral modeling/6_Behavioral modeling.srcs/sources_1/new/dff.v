// Sequential circuit modeling using always
module dff (
    clk, din, qout
);
    input clk, din;
    output qout;
    reg qout;

    always @(posedge clk) begin
        qout <= din; // Non-blocking assignment
    end
endmodule