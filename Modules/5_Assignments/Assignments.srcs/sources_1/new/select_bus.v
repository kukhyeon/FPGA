// 16-bit select bus using concurrent assignments
module select_bus(busout, bus0, bus1, bus2, bus3, enable, s);
    parameter n = 16;
    parameter Zee = 16'bz; // 16-bit high impedance
    output  [1:n] busout;
    input   [1:n] bus0, bus1, bus2, bus3;
    input         enable;
    input   [1:0] s;
    tri     [1:n] data; // tri net declaration

// Declare net having concurrent assignment (implicit concurrent assignment)
   assign busout = enable ? data : Zee;

// Expression using assignments four times
    assign data = (s == 0) ? bus0 : Zee;
    assign data = (s == 1) ? bus1 : Zee;
    assign data = (s == 2) ? bus2 : Zee;
    assign data = (s == 3) ? bus3 : Zee;

endmodule
