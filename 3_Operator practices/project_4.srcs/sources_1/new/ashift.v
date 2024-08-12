module ashift;
    reg signed [3:0] start, result; // -8 ~ 7
    initial begin
            start = 4'b1000;
            result = (start >>> 2); // result = 1110
            // Shifting right by 2 bits is the same as dividing by 2^2.
    end
endmodule