module nor_for(
    a, b, y
    );
    input [3:0] a, b;
    output [3:0]   y;
    reg   [3:0] y;
    integer     i;

    always @(a or b) begin
        for(i=0; i<4; i=i+1)
            y[i] = ~(a[i]|b[i]); 
    end
endmodule
