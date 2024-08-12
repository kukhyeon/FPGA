// 1-bit full adder using gate primitive
module full_adder_g(a, b, cin, sum, cout);
    input a, b, cin; // 1-bit
    output sum, cout; // 1-bit
    wire s1, c1, c2; // 1-bit

    xor     (s1, a, b); // Instance name is skipped
    and     (c1, a, b); // Instance name is skipped
    and G3 (c2, s1, cin);
    xor G4 (sum, s1, cin);
    xor G5 (cout, c1, c2);
endmodule
