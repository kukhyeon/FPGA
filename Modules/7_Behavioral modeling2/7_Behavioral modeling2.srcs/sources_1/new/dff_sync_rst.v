// D_ff having async Active-Low set/reset
module dff_sync_rst (
    clk, d, rst_n, q, qb
);
    input clk, d, rst_n;
    output q, qb;
    reg q;

    assign qb = ~q;

    always @(posedge clk) // Include only clk 
    begin
        if(!rst_n) // Active-low reset
            q <= 1'b0;
        else
            q <= d;
    end
endmodule