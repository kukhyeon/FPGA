`timescale 1ns / 1ps

module Add3(
    input   [3:0]   Bin,
    output  reg [3:0]   Bout
    );

    reg     [3:0]   B;
    
    always @(*) begin
        B = Bin;
        
        if (B >= 4'b0101) begin
            B = B + 3;
        end
        
        Bout = B;
    end

endmodule