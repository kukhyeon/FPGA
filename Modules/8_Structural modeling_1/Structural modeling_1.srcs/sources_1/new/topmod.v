// Port mapping practice
// Port mapping by sequence
module topmod;
    wire [1:0]  v, w;

    modB b1(v[0], v[1], w[0], w[1]);
endmodule


// Port mapping by name
module topmod2;
    wire [1:0] v, w;
    modB b1(.wb(v[1]), .wa(v[0]), .d(w[1]), .c(w[0]));
    
endmodule