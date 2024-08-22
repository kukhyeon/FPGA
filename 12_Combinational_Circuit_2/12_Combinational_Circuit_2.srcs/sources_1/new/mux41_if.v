module mux41_if (
    sel, a, b, c, d, y
);
    input   [1:0]   sel;
    input   [3:0]   a, b, c, d;
    output  [3:0]   y;
    reg     [3:0]   y;

    always @(sel or a or b or c or d) begin
        if      (sel == 2'b00) y = a;
        else if (sel == 2'b01) y = b;
        else if (sel == 2'b10) y = c;
        else if (sel == 2'b11) y = d;
        else                   y = 4'bx; // if sel is X or Z
    end
    
endmodule