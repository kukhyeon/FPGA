// Parameter practice
module param;
    wire [7:0] y1_out;
    wire [3:0] y2_out;
    reg [7:0] b1, c1;
    reg [3:0] b2, c2;
    modXnor             G1 (y1_out, b1, c1); // use default parameters
    modXnor     #(4, 5) G2 (y2_out, b2, c2); // overrides default parameters
    // Module instance cannot having delay
    // Gate primitive instantiation cannot get parameter overridings
endmodule
