`timescale 1ns / 1ps
// Structural modeling with bottom mudule instances

module full_add(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire w1, w2, w3; // It's possible to skip declaring if the wire is 1-bit

    half_adder U1(.a(a), .b(b), .sum(w1), .cout(w2)); // Port mapping by name
    half_adder U2(w1, cin, sum, w3);                   // Port mapping by position
    or         U3(cout, w2, w3);                      // Gate primitive instance
endmodule
