module tb_boolean;
    reg a, b, c;
    wire y;

    Boolean U0(
        .A(a),
        .B(b),
        .C(c),
        .Y(y)
    );

    initial begin
        a = 0; b = 0; c = 0;

        #100 a = 0; b = 0; c = 0;
        #100 a = 0; b = 0; c = 1;
        #100 a = 0; b = 1; c = 0;
        #100 a = 0; b = 1; c = 1;
        #100 a = 1; b = 0; c = 0;
        #100 a = 1; b = 0; c = 1;
        #100 a = 1; b = 1; c = 0;
        #100 a = 1; b = 1; c = 1;

        #100 $finish;
    end

endmodule
