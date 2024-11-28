`timescale 1ns / 1ps
module digit_safe_sys(
    input clk_ref,
    input rst,
    input pw_set,
    input up,
    input down,
    input slide,
    input place,
    input ok,
    input pw_endset,
    output [6:0] ssd,        
    output      seg_en,
    output [3:0] led,      
    output led6_r,        
    output led6_g        
    );

    wire clk_25_2M;
    clk_gen_25M u0 (.clk_ref(clk_ref), .rst(rst), .clk_out(clk_25_2M));  

    wire success;

    password_manager pw_manager (
        .clk(clk_25_2M),
        .rst(rst),
        .pw_set(pw_set),
        .up(up),
        .down(down),
        .slide(slide),
        .place(place),
        .pw_endset(pw_endset),
        .ok(ok),
        .success(success),
        .ssd(ssd),
        .led(led),          
        .seg_en(seg_en),
        .led6_r(led6_r),   
        .led6_g(led6_g)
    );
    //assign success_led = success;
endmodule
