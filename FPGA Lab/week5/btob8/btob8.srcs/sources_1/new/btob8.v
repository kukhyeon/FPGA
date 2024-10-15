`timescale 1ns / 1ps

module btob8(
    input   [9:0]   B,
    output  [7:0]   P
    );

    assign          B[9] = 0;
    assign          B[8] = 0;
    wire    [9:0]   temp;
    
    Add3 C1 (.Bin(B[8:5]), .Bout(temp[8:5]));
    Add3 C2 (.Bin({{temp[7:5]}, B[4]}), .Bout(temp[7:4]));
    Add3 C3 (.Bin({{temp[6:4]}, B[3]}), .Bout(temp[6:3]));
    
    

    
endmodule
