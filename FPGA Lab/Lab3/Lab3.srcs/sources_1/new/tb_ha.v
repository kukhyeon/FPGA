module tb_ha;
    reg a, b;
    wire sum, cout;

    Half_Adder UUT (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial 
    begin
                a = 0; b = 0;
        #100;   a = 0; b = 1;
        #100;   a = 1; b = 0;
        #100;   a = 1; b = 1;         
    end
endmodule
