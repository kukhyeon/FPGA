`timescale 1ns / 1ps
// Behavioral level modeling.
// Modeling a half-adder using continuous assignment.

module half_adder2(a, b, sum, cout);
    input a, b;
    output sum, cout;
    // Due to hardware characteristics, changing the order of statements will still result in the same circuit
    assign cout = a & b;
    assign sum = a ^ b;
endmodule