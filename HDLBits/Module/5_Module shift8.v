module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
    wire [7:0] wire1, wire2, wire3;
    
// ( input clk, input [7:0] d, output [7:0] q );
    my_dff8 U0 (.q(wire1), .clk(clk), .d(d));
    my_dff8 U1 (.q(wire2), .clk(clk), .d(wire1));
    my_dff8 U2 (.q(wire3), .clk(clk), .d(wire2));
    
    always @(*) begin
        case (sel)
            0 : q = d;
            1 : q = wire1;
            2 : q = wire2;
            3 : q = wire3;
            default: q = 4'bx;
        endcase
    end

endmodule