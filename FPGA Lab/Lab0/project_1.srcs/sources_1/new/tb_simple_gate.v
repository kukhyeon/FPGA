`timescale 1ns / 1ps
// Make Testnech Code
module tb_simple_gate();
    //inputs
    reg a,b,c;
    //Outputs
    wire d;

    //uut or dut
    simple_gate uut_simple_gate(
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );

    //Simulation Code
    initial begin
                a = 0; b = 0; c = 0;
        #100    a = 0; b = 0; c = 1;
        #100    a = 0; b = 1; c = 0;
        #100    a = 0; b = 1; c = 1;
        #100    a = 1; b = 0; c = 0;
        #100    a = 1; b = 0; c = 1;
        #100    a = 1; b = 1; c = 0;
        #100    a = 1; b = 1; c = 1;
        
    end
endmodule
