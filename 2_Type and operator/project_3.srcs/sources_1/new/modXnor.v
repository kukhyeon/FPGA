// module instance
module modXnor (y_out, a, b);
    parameter size = 8, delay = 15;
    output  [size-1:0] y_out; //8-bit
    input [size-1:0] a, b; //8-bit
    wire [size-1:0] #delay y_out = a~^b; // bit-wise XNOR
endmodule