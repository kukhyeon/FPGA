module CLA32_tb;

    reg [31:0] a;
    reg [31:0] b;
    reg        Cin;
    wire [31:0] sum;
    wire       Gout, Pout, Cout;

    // Instantiate the Device Under Test (DUT)
    CLA32 uut (
        .a(a),
        .b(b),
        .Cin(Cin),
        .sum(sum),
        .Gout(Gout),
        .Pout(Pout),
        .Cout(Cout)
    );

    initial begin
        // Test Case 1
        // Inputs:
        // a     = 0x00000000
        // b     = 0x00000000
        // Cin   = 0
        // Expected Outputs:
        // sum   = 0x00000000
        // Cout  = 0
        // Gout  = 0
        // Pout  = 0
        a = 32'h00000000; b = 32'h00000000; Cin = 0;
        #10;

        // Test Case 2
        // Inputs:
        // a     = 0xFFFFFFFF
        // b     = 0x00000001
        // Cin   = 0
        // Expected Outputs:
        // sum   = 0x00000000
        // Cout  = 1
        // Gout  = 1
        // Pout  = 0
        a = 32'hFFFFFFFF; b = 32'h00000001; Cin = 0;
        #10;

        // Test Case 3
        // Inputs:
        // a     = 0x12345678
        // b     = 0x87654321
        // Cin   = 0
        // Expected Outputs:
        // sum   = 0x99999999
        // Cout  = 0
        // Gout  = 0
        // Pout  = 1
        a = 32'h12345678; b = 32'h87654321; Cin = 0;
        #10;

        // Test Case 4
        // Inputs:
        // a     = 0xFFFFFFFF
        // b     = 0xFFFFFFFF
        // Cin   = 1
        // Expected Outputs:
        // sum   = 0xFFFFFFFF
        // Cout  = 1
        // Gout  = 1
        // Pout  = 1
        a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; Cin = 1;
        #10;

        // Test Case 5
        // Inputs:
        // a     = 0x80000000
        // b     = 0x80000000
        // Cin   = 0
        // Expected Outputs:
        // sum   = 0x00000000
        // Cout  = 1
        // Gout  = 0
        // Pout  = 0
        a = 32'h80000000; b = 32'h80000000; Cin = 0;
        #10;

        // Test Case 6
        // Inputs:
        // a     = 0x7FFFFFFF
        // b     = 0x00000001
        // Cin   = 0
        // Expected Outputs:
        // sum   = 0x80000000
        // Cout  = 0
        // Gout  = 0
        // Pout  = 1
        a = 32'h7FFFFFFF; b = 32'h00000001; Cin = 0;
        #10;

        // Test Case 7
        // Inputs:
        // a     = 0xAAAAAAAA
        // b     = 0x55555555
        // Cin   = 1
        // Expected Outputs:
        // sum   = 0x00000000
        // Cout  = 1
        // Gout  = 1
        // Pout  = 0
        a = 32'hAAAAAAAA; b = 32'h55555555; Cin = 1;
        #10;

        // Test Case 8
        // Inputs:
        // a     = 0xDEADBEEF
        // b     = 0x12345678
        // Cin   = 1
        // Expected Outputs:
        // sum   = 0xF0E21468
        // Cout  = 0
        // Gout  = 0
        // Pout  = 1
        a = 32'hDEADBEEF; b = 32'h12345678; Cin = 1;
        #10;

        // Finish simulation
        $stop;
    end

endmodule
