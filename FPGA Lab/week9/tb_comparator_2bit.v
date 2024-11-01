`timescale 1ns / 1ps

module tb_comparator_2bit;
    // ??? ?? ??? ??? ????
    reg [1:0] A;
    reg [1:0] B;
    wire A_Big;
    wire Equal;
    wire B_Big;

    // ?????? comparator_2bit ?¥í????
    comparator_2bit uut (
        .A(A),
        .B(B),
        .A_Big(A_Big),
        .Equal(Equal),
        .B_Big(B_Big)
    );

    // ??????? ????
    initial begin
//        $display("A  B  | A_Big Equal B_Big");
//        $monitor("%b %b |     %b         %b        %b", A, B, A_Big, Equal, B_Big);

        // ???? ?????
        A = 2'b00; B = 2'b00; #10;  // A == B
        A = 2'b01; B = 2'b00; #10;  // A > B
        A = 2'b01; B = 2'b01; #10;  // A == B
        A = 2'b01; B = 2'b10; #10;  // A < B
        A = 2'b10; B = 2'b01; #10;  // A > B
        A = 2'b10; B = 2'b10; #10;  // A == B
        A = 2'b10; B = 2'b11; #10;  // A < B
        A = 2'b11; B = 2'b10; #10;  // A > B
        A = 2'b11; B = 2'b11; #10;  // A == B

        // ??????? ????
        $finish;
    end
endmodule

