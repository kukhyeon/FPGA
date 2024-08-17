// Simulating periodic signal
module behave;
    reg a, b;

    initial begin
        a = 1'b1;
        b = 1'b0;
    end

    always
        #50 a = ~a;
    always
        #100 b = ~b;
endmodule
