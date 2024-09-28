module tb_rca;
    reg [3:0] x, y;
    reg       cin;
    
    wire [3:0] sum;
    wire       cout;
    wire [4:0] data_out;

    Ripple_Carry_Adder UUT (
        .x(x),
        .y(y),
        .cin(cin),
        .cout(cout),
        .sum(sum)
    );

    assign data_out = {cout, sum};

    initial begin
                x = 4'd0;   y = 4'd0;   cin = 1'b0;
        #100;    x = 4'd3;   y = 4'd8;   cin = 1'b1;
        #100;    x = 4'd4;   y = 4'd9;   cin = 1'b0;
        #100;    x = 4'd7;   y = 4'd11;   cin = 1'b1;
        #30;    $finish;
    end
endmodule
