module tb_fs;
    reg x, y, bin;
    wire diff, bout;

    Full_Subtractor UUT (
        .x(x),
        .y(y),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
                x = 0;  y = 0;  bin = 0;
        #100;   x = 0;  y = 0;  bin = 1;
        #100;   x = 0;  y = 1;  bin = 0;
        #100;   x = 0;  y = 1;  bin = 1;
        #100;   x = 1;  y = 0;  bin = 0;
        #100;   x = 1;  y = 0;  bin = 1;
        #100;   x = 1;  y = 1;  bin = 0;
        #100;   x = 1;  y = 1;  bin = 1;
        
    end
endmodule
