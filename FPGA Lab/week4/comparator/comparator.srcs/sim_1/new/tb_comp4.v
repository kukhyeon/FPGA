`timescale 1ns / 1ps

module tb_comp_4c1;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire a_big;
    wire b_big;
    wire equal;

    // Instantiate the Unit Under Test (UUT)
    comp_4c1 uut (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin
        // Initialize Inputs
        a = 4'b0000;
        b = 4'b0000;

        // Wait for global reset
        #10;

        // Test case 1: a = b
        a = 4'b1010;
        b = 4'b1010;
        #10;
        // Expected: a_big = 0, b_big = 0, equal = 1
        $display("Test 1 - a: %b, b: %b, a_big: %b, b_big: %b, equal: %b", a, b, a_big, b_big, equal);
        
        // Test case 2: a > b
        a = 4'b1100;
        b = 4'b1010;
        #10;
        // Expected: a_big = 1, b_big = 0, equal = 0
        $display("Test 2 - a: %b, b: %b, a_big: %b, b_big: %b, equal: %b", a, b, a_big, b_big, equal);
        
        // Test case 3: a < b
        a = 4'b0011;
        b = 4'b0110;
        #10;
        // Expected: a_big = 0, b_big = 1, equal = 0
        $display("Test 3 - a: %b, b: %b, a_big: %b, b_big: %b, equal: %b", a, b, a_big, b_big, equal);
        
        // Test case 4: a = 4'b0000, b = 4'b1111
        a = 4'b0000;
        b = 4'b1111;
        #10;
        // Expected: a_big = 0, b_big = 1, equal = 0
        $display("Test 4 - a: %b, b: %b, a_big: %b, b_big: %b, equal: %b", a, b, a_big, b_big, equal);

        // Test case 5: a = 4'b1111, b = 4'b0000
        a = 4'b1111;
        b = 4'b0000;
        #10;
        // Expected: a_big = 1, b_big = 0, equal = 0
        $display("Test 5 - a: %b, b: %b, a_big: %b, b_big: %b, equal: %b", a, b, a_big, b_big, equal);

        // Finish simulation
        $stop;
    end

endmodule