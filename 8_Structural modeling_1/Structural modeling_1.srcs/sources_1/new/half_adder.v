module half_adder(
    a, b, sum, cout
    );
    input a, b;
    output sum, cout;
    wire cout_bar; // Can skip

    xor U0 (sum, a, b);
    nand (cout_bar, a, b); // Can skip the instance name
    not U1 (cout, cout_bar);
endmodule
