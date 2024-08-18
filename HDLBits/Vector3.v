module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    // Concatenate the 5-bit inputs into a 30-bit temporary wire
    wire [29:0] temp;

    assign temp = {a, b, c, d, e, f};

    // Assign 8-bit segments of temp to the outputs
    assign w = temp[29:22]; // 8 bits from the top
    assign x = temp[21:14]; // next 8 bits
    assign y = temp[13:6];  // next 8 bits
    assign z = {temp[5:0], 2'b11}; // last 6 bits + 2 padding bits

endmodule
