`timescale 1ns / 1ps

module mux_16to1v2_tb;

  // Inputs
  reg [3:0] A;
  reg [3:0] B;
  reg [3:0] C;
  reg [3:0] D;
  reg [3:0] sel;

  // Output
  wire Y;

  // Instantiate the Unit Under Test (UUT)
  mux_16to1v2 uut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .sel(sel),
    .Y(Y)
  );

  initial begin
    // For check results
    $monitor("Time = %0t | A = %b, B = %b, C = %b, D = %b, sel = %b, Y = %b", $time, A, B, C, D, sel, Y);
    // Initialize Inputs
    A = 4'b1010;
    B = 4'b0101;
    C = 4'b1100;
    D = 4'b0011;
    sel = 4'b0000;

    // Test cases
        sel = 4'b0000; 
    #10 sel = 4'b0001; 
    #10 sel = 4'b0010; 
    #10 sel = 4'b0011; 
    #10 sel = 4'b0100;
    #10 sel = 4'b0101;
    #10 sel = 4'b0110; 
    #10 sel = 4'b0111; 
    #10 sel = 4'b1000;
    #10 sel = 4'b1001; 
    #10 sel = 4'b1010; 
    #10 sel = 4'b1011;
    #10 sel = 4'b1100;
    #10 sel = 4'b1101; 
    #10 sel = 4'b1110; 
    #10 sel = 4'b1111; 
    
    // End simulation
    #10 $finish;
  end

endmodule
