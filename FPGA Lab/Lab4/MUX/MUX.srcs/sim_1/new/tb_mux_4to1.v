module tb_mux_4to1;
    reg     a, b, c, d;
    reg [1:0]      sel;

    wire        out;
    mux_4to1 UUT    (a, b, c, d, sel, out);
    initial begin
                            a = 0; b = 0; c = 0; d = 0;
        #100 sel = 2'b11;   a = 0; b = 0; c = 0; d = 1;
        #100 sel = 2'b10;   a = 0; b = 0; c = 1; d = 0;
        #100 sel = 2'b01;   a = 0; b = 0; c = 1; d = 0;
        #100 sel = 2'b00;   a = 0; b = 1; c = 1; d = 1;
        #100;       $finish;
    end
endmodule
