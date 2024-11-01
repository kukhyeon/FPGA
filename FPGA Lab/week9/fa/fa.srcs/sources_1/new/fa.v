`timescale 1ns / 1ps

module fa(
    input [2:0] sw,       // Input switches
    output [1:0] led      // Output LEDs
    );

    wire X, Y, Cin, Cout, Sum;
    
    assign X = sw[0];
    assign Y = sw[1];
    assign Cin = sw[2];
    assign led[0] = Cout; // Connect Cout to led[0]
    assign led[1] = Sum;  // Connect Sum to led[1]

    // Full adder logic
    assign Sum = X ^ Y ^ Cin;
    assign Cout = (X & Y) | (Y & Cin) | (X & Cin);

endmodule
