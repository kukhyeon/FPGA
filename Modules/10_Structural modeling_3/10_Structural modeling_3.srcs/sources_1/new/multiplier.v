// Multiplier module using conditional product
module multiplier(
    a, b, product
    );
    parameter a_width = 8, b_width = 8;
    localparam product_width = a_width+b_width;
    // localparam can not be modified directly with defparam or module instance statement using #
    input [a_width-1:0]         a;
    input [b_width-1:0]         b;
    output [product_width-1:0]  product;

    generate
        if((a_width<8) || (b_width<8))
            CIA_mul #(a_width, b_width) u1(a, b, product);
            // instanec a CLA multiplier
        else
            WALLACE_mul #(a_width, b_width) u1(a, b, product);
            // instance a Wallae-tree multiplier
    endgenerate
endmodule
