// Inertial delay in concurrent assignments
module inertial_dalay();
    reg a, b;
    wire A;
    assign #30 A = a & b;
    
    initial begin
            a = 1'b0;
            b = 1'b0;
        #50 a = 1'b1;
            b = 1'b1;
        #50 a = 1'b0;
            b = 1'b0;
        #50 a = 1'b1;
            b = 1'b1;
        #20 b = 1'b0; // This delay is shorter than the assignment delay, so it will be skipped in the output wire A
        #50;
    end
endmodule