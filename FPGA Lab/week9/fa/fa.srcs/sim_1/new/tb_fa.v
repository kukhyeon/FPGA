`timescale 1ns / 1ps

module fa_tb;

    // Inputs
    reg [2:0] sw;

    // Outputs
    wire [1:0] led;

    // Instantiate the fa module
    fa uut (
        .sw(sw),
        .led(led)
    );

    // Test cases
    initial begin
        // Test case 1: 0 + 0 + 0
        sw = 3'b000;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 2: 0 + 0 + 1
        sw = 3'b001;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 3: 0 + 1 + 0
        sw = 3'b010;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 4: 0 + 1 + 1
        sw = 3'b011;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 5: 1 + 0 + 0
        sw = 3'b100;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 6: 1 + 0 + 1
        sw = 3'b101;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 7: 1 + 1 + 0
        sw = 3'b110;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // Test case 8: 1 + 1 + 1
        sw = 3'b111;
        #10;
        $display("sw = %b, Sum = %b, Cout = %b", sw, led[1], led[0]);

        // End simulation
        $finish;
    end

endmodule
