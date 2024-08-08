// Testbench example
module test_fix(); // No list in port
    reg A, B, C;
    circuit cl(A, B, C, Out);

    initial begin
                // Sequential assignments need to be positioned
                A = 0; B = 1; C = 0;
            #50 A = 1; // '#' means delay or changing parameter
            #50 A = 0; C = 1;
            #50        C = 0;
            #50 $finish; // '$' is a system task
    end // No synthesis, just simulation
endmodule // It operates from begin to end once
