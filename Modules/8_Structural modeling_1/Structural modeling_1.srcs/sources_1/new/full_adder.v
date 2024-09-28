// Structural modeling of 1-bit full adder circuit
module full_adder(
    input a, b, cin;
    output sum, cout;
    wire temp_sum, temp_c1. temp_c2; // Can skip
    );
    // Instantiation of half_adder module
    half_adder u0(a, b, temp_sum, temp_c1); // Port mapping by sequence
    half_adder u1(.a(temp_sum),
                  .b(cin),
                  .sum(sum),
                  /cout(temp_c2)); // Port mapping by name
    or u2(cout, temp_c1, temp_c2); // Gate primitive instance
endmodule
