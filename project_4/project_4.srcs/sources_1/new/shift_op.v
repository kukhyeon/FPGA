module shift_op ();
    wire signed [7:0] data1 = 8'b1010_1100; 
    wire        [7:0] data2 = 8'b1000_1111;
    reg         [7:0] out1, out2;
    
    always @(data1, data2) begin
        out1 = data1 >>> 2; // out1 : 1110_1011
        out2 = data2 >>> 2; // out2 : 0010_1100, it's same as using '>>' because data2 is unsigned
        #100 $stop;
    end
endmodule