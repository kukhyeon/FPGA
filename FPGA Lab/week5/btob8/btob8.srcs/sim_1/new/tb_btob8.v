module tb_btob8;

  // Inputs
  reg [9:0] in;

  // Outputs
  wire [9:0] out;

  // Instantiate the Unit Under Test (UUT)
  btob8 uut (
    .B(in), 
    .P(out)
  );

  initial begin
    // Initialize Inputs
    in = 8'b00000000;

    // Wait for global reset to finish
    #10;

    // Test Cases

    // Test Case 1
    in = 8'b00000101; // Input: 5
    #10;
    $display("in = %b, out = %b", in, out);

    // Test Case 2
    in = 8'b01010101; // Input: 85
    #10;
    $display("in = %b, out = %b", in, out);

    // Test Case 3
    in = 8'b11111111; // Input: 255
    #10;
    $display("in = %b, out = %b", in, out);

    // Finish the simulation
    $stop;
  end

endmodule
