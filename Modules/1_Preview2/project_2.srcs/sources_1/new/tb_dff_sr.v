// Test bench example of module dff_sr
module tb_dff_sr;
        reg set, reset, clock, din;
    // Instance of dff_sr module
    dff_sr U0_dff_sr (set, reset, clock, din, q, qb); 

    initial begin
        clock = 1'b0; // 1-bit binary, 0
        forever begin
            #10 clock = ~clock; // Clock toggles every 10 ns
        end
    end

    initial begin
        forever begin 
            // Generate stimulus for D flip-flop
                din = 0; reset = 1; set = 1;
            #15 din = 1;
            #30 reset = 0;
            #10 reset = 1;
            #25 din = 0;
            #20 set = 0;
            #10 set = 1;
            #30 din = 0;
        end
    end
endmodule