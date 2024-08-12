`timescale 1ns / 1ps

module half_adder (a, b, sum, cout);
    input a,b; // 1-bit
    output sum, cout; //1-bit
    wire cout_bar;

    xor(sum, a, b);
    nand(cout_bar, a, b);
    not (cout, cout_bar);
endmodule
// sum = a ^ b 
// cout = a & b

