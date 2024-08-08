// Test bench example of half adder
module tb_ha;
    reg a, b;
    half_adder U0_half_adder(a, b, sum, cout); 
    initial begin
            a = 0; b = 0;
        #10 a = 1;
        #10 a = 0;
            b = 1;
        #10 a = 1;
        #10 a = 0;
            b = 0;
    end
endmodule