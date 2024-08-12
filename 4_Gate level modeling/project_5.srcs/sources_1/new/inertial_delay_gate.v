/*
This Verilog code module is a simple test bench named inertial_delay_gate. This module uses two registers, a and b, to simulate the behavior of an AND gate. The main functionalities are as follows:

Register Declaration: reg a, b; declares two registers, a and b.

AND Gate: and #30(out, a, b); performs a logical AND operation on a and b with a delay of 30 time units.

Initial Block: The initial block defines the changes in the values of a and b over time.

Initially, a and b are set to 0.
After 50 time units, a and b are set to 1.
After another 50 time units, a and b are set back to 0.
After another 50 time units, a and b are set to 1.
After 20 time units, b is set to 0.
Finally, it waits for an additional 50 time units.

This simulation is designed to observe the output of the AND gate as the values of a and b change over time.
*/
module inertial_delay_gate();
    reg a, b;

    and #30(out, a, b);

    initial begin
            a = 1'b0;
            b = 1'b0;
    #50     a = 1'b1;
            b = 1'b1;
    #50     a = 1'b0;
            b = 1'b0;
    #50     a = 1'b1;
            b = 1'b1;
    #20     b = 1'b0;
    #50;
    end
endmodule
