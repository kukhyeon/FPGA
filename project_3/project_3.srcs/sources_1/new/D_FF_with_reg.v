// Reg practice
module dff(clk, d, qout);
    input d, clk; // I/O port
    output qout;
    reg qout; // Declare 1-bit variable

    always @ (posedge clk) begin
        qout <= d;
    end
endmodule