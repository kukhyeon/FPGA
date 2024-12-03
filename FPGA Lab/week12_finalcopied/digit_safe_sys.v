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
    output led6_g,
    output o_vs,
    output o_hs,
    output [3:0] o_r_data,
    output [3:0] o_g_data,
    output [3:0] o_b_data        
    );

    wire clk_25_2M;
    clk_gen_25M u0 (.clk_ref(clk_ref), .rst(rst), .clk_out(clk_25_2M));  

    wire [1:0] vga_status;

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
        .ssd(ssd),
        .led(led),          
        .seg_en(seg_en),
        .led6_r(led6_r),   
        .led6_g(led6_g),
        .vga_status(vga_status)
    );
    
    pattern_gen vga_inst (
        .clk(clk_25_2M),
        .reset_n(~rst),
        .pattern_select(vga_status),
        .o_vs(o_vs),
        .o_hs(o_hs),
        .o_r_data(o_r_data),
        .o_g_data(o_g_data),
        .o_b_data(o_b_data)
    );
endmodule
