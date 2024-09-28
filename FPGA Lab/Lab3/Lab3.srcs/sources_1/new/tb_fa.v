module tb_fa;
    reg a, b, cin;
    wire sum, cout;

    Full_Adder UUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial
    begin
                    a = 0; b = 0; cin = 0;
        #100;       a = 0; b = 0; cin = 1;
        #100;       a = 0; b = 1; cin = 0;
        #100;       a = 0; b = 1; cin = 1;
        #100;       a = 1; b = 0; cin = 0;
        #100;       a = 1; b = 0; cin = 1;
        #100;       a = 1; b = 1; cin = 0;
        #100;       a = 1; b = 1; cin = 1;
            
    end
endmodule
