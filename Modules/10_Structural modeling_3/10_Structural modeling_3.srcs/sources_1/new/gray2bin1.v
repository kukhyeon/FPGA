// gray-to-binary using generate-for
module gray2bin1(
    bin, gray
    );
    parameter SIZE = 4; // this module is parameterizable
    output [SIZE-1:0] bin;
    input [SIZE-1:0] gray;
    genvar i;
    
    generate
        for(i=0; i<SIZE; i = i+1) begin :bit
            assign bin[i] = ^gray[SIZE-1:i]; // Using assignment in for loop especially
        end
    endgenerate
endmodule
