module shift;
    reg [3:0] start, result;

    initial begin
        start = 1; // 4'b0001
        result =(start << 2); // result = 0100, 2-bit shifted
    end
endmodule
