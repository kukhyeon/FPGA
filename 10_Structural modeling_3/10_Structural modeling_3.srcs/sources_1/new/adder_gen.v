// Ripple-carry adder having 2-dimensional net delaring at outward of generate loop
module adder_gen1(
    co, sum, a, b, ci
    );
    parameter size = 4;
    output  [size-1:0] sum;
    output             co;
    input   [size-1:0] a, b;
    input              ci;
    wire    [size  :0] c;
    wire    [size-1:0] t [1:3]; // Declaring 2d net
    genvar             i;

    assign c[0] = ci;
    generate
        for (i = 0; i<size; i=i+1) begin:bit
            xor g1(t[1][i],  a[i],      b[i]);
            xor g2(sum[i],   t[1][i],   c[i]);
            and g3(t[2][i],  a[i],      b[i]);
            and g4(t[3][i],  t[1][i],   c[i]);
            or  g5(c[i+1],   t[2][i],   t[3][i]);
        end
    endgenerate
    assign co = c[size];
endmodule
