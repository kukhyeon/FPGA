// Combiantion circuit modeling using always syntax
module sample(a, b, out);
    input a, b;
    output out;
    reg out; // It's hard to assign if you don't declare it using reg

    always @ (a or b) begin // It's okay changing 'or' to ','
        if(a==1 || b==1) out = 1;
        //(a' and b') 
        else             out = 0;
    end
endmodule