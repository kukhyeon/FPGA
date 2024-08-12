module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // 4-input AND gate
    assign out_and = in[0] && in[1] && in[2] && in[3];
    
    // 4-input OR gate
    assign out_or = in[0] || in[1] || in[2] || in[3];
    
    // 4-input XOR gate
    assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];

endmodule

// minimize
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // 4-input AND gate
    assign out_and = &in;  // AND 연산자는 모든 비트를 AND
    // 4-input OR gate
    assign out_or = |in;  // OR 연산자는 모든 비트를 OR
    // 4-input XOR gate
    assign out_xor = ^in; // XOR 연산자는 모든 비트를 XOR

endmodule
