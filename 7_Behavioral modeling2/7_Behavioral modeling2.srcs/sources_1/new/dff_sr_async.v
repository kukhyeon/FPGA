// D_ff having async Active-Low set/reset
module dff_sr_async(
    clk, d, rb, sb, q, qb
    );
    input clk, d, rb, sb;
    output q, qb;
    reg q;
    always @(posedge clk or negedge rb or negedge sb) 
    begin
            if (rb == 0)
                q <= 0;
            else if (sb == 0)
                q <= 1; 
            else
                q <= d;
    end
    assign qb = ~q;
endmodule
