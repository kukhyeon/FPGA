module top_module ( input clk, 
                    input d, 
                    output q
                    );

    wire tp1_wire, tp2_wire; // 내부 wire

    my_dff instance1(.q(tp1_wire), .clk(clk), .d(d));
    my_dff instance2(.q(tp2_wire), .clk(clk), .d(tp1_wire));
    my_dff instance3(.q(q), .clk(clk), .d(tp2_wire));
    
endmodule
