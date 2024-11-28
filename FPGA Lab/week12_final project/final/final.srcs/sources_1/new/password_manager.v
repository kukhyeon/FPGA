`timescale 1ns / 1ps


module password_manager(
    input clk,
    input rst,
    input pw_set,
    input up,
    input down,
    input slide,
    input place,
    input pw_endset,
    input ok,
    output reg success,
    output [6:0] ssd,
    output       seg_en
    );

    // ?‚´ë¶? ë³??ˆ˜?“¤
    reg [1:0] current_digit;
    reg [3:0] digits [3:0];      // 4ê°œì˜ ?ë¦¬ìˆ˜ë¥? ???¥ (?¸?±?Š¤ 0ë¶??„° 3ê¹Œì?)
    reg [15:0] set_password;
    reg [15:0] entered_password;

    // ?””ë°”ìš´?‹± ë°? ?™ê¸°í™”?œ ?…? ¥?“¤
    wire up_deb, down_deb, slide_deb, pw_set_deb, pw_endset_deb, ok_deb, place_deb;

    // ?…? ¥ ?‹ ?˜¸ ?™ê¸°í™” ë°? ?””ë°”ìš´?‹±
    synchronizer sync_up(.clk(clk), .async_in(up), .sync_out(up_sync));
    debouncer db_up(.clk(clk), .reset(rst), .noisy(up_sync), .clean(up_deb));

    synchronizer sync_down(.clk(clk), .async_in(down), .sync_out(down_sync));
    debouncer db_down(.clk(clk), .reset(rst), .noisy(down_sync), .clean(down_deb));

    synchronizer sync_slide(.clk(clk), .async_in(slide), .sync_out(slide_sync));
    debouncer db_slide(.clk(clk), .reset(rst), .noisy(slide_sync), .clean(slide_deb));

    synchronizer sync_pw_set(.clk(clk), .async_in(pw_set), .sync_out(pw_set_sync));
    debouncer db_pw_set(.clk(clk), .reset(rst), .noisy(pw_set_sync), .clean(pw_set_deb));

    synchronizer sync_pw_endset(.clk(clk), .async_in(pw_endset), .sync_out(pw_endset_sync));
    debouncer db_pw_endset(.clk(clk), .reset(rst), .noisy(pw_endset_sync), .clean(pw_endset_deb));

    synchronizer sync_ok(.clk(clk), .async_in(ok), .sync_out(ok_sync));
    debouncer db_ok(.clk(clk), .reset(rst), .noisy(ok_sync), .clean(ok_deb));

    synchronizer sync_place(.clk(clk), .async_in(place), .sync_out(place_sync));
    debouncer db_place(.clk(clk), .reset(rst), .noisy(place_sync), .clean(place_deb));

    // ëª¨ë“œ ? œ?–´ë¥? ?œ„?•œ ?ƒ?ƒœ ë¨¸ì‹ 
    reg [1:0] mode; // 0: ??ê¸?, 1: ë¹„ë?ë²ˆí˜¸ ?„¤? •, 2: ë¹„ë?ë²ˆí˜¸ ?™•?¸

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mode <= 2'd0;
            current_digit <= 2'd0;
            set_password <= 16'd0;
            entered_password <= 16'd0;
            success <= 1'b0;
            digits[0] <= 4'd0;
            digits[1] <= 4'd0;
            digits[2] <= 4'd0;
            digits[3] <= 4'd0;
        end else begin
            case (mode)
                2'd0: begin // ??ê¸? ?ƒ?ƒœ
                    success <= 1'b0;
                    if (pw_set_deb) begin
                        mode <= 2'd1;
                        current_digit <= 2'd0;
                    end
                end
                2'd1: begin // ë¹„ë?ë²ˆí˜¸ ?„¤? •
                    if (slide_deb) begin
                        current_digit <= (current_digit + 1) % 4;
                    end else if (up_deb) begin
                        if (digits[current_digit] < 4'd9)
                            digits[current_digit] <= digits[current_digit] + 1;
                        else
                            digits[current_digit] <= 4'd0;
                    end else if (down_deb) begin
                        if (digits[current_digit] > 4'd0)
                            digits[current_digit] <= digits[current_digit] - 1;
                        else
                            digits[current_digit] <= 4'd9;
                    end else if (pw_endset_deb) begin
                        set_password <= {digits[0], digits[1], digits[2], digits[3]};
                        mode <= 2'd2;
                        current_digit <= 2'd0;
                        // ë¹„ë?ë²ˆí˜¸ ?…? ¥?„ ?œ„?•´ digits ì´ˆê¸°?™”
                        digits[0] <= 4'd0;
                        digits[1] <= 4'd0;
                        digits[2] <= 4'd0;
                        digits[3] <= 4'd0;
                    end
                end
                2'd2: begin // ë¹„ë?ë²ˆí˜¸ ?™•?¸
                    if (slide_deb) begin
                        current_digit <= (current_digit + 1) % 4;
                    end else if (up_deb) begin
                        if (digits[current_digit] < 4'd9)
                            digits[current_digit] <= digits[current_digit] + 1;
                        else
                            digits[current_digit] <= 4'd0;
                    end else if (down_deb) begin
                        if (digits[current_digit] > 4'd0)
                            digits[current_digit] <= digits[current_digit] - 1;
                        else
                            digits[current_digit] <= 4'd9;
                    end else if (ok_deb) begin
                        entered_password <= {digits[0], digits[1], digits[2], digits[3]};
                        if (entered_password == set_password) begin
                            success <= 1'b1;
                        end else begin
                            success <= 1'b0;
                        end
                        mode <= 2'd0;
                        // digits ì´ˆê¸°?™”
                        digits[0] <= 4'd0;
                        digits[1] <= 4'd0;
                        digits[2] <= 4'd0;
                        digits[3] <= 4'd0;
                    end
                end
                default: mode <= 2'd0;
            endcase
        end
    end

    // place ?‹ ?˜¸?— ?”°?¼ ?‘œ?‹œ?•  ?ˆ«? ?„ ?ƒ
    reg [7:0] display_number;

    always @(*) begin
        if (place_deb) begin
            // placeê°? 1?¼ ?•Œ digits[0], digits[1] ?‘œ?‹œ
            display_number = {digits[0], digits[1]};
        end else begin
            // placeê°? 0?¼ ?•Œ digits[2], digits[3] ?‘œ?‹œ
            display_number = {digits[2], digits[3]};
        end
    end

    // 7?„¸ê·¸ë¨¼?Š¸ ?””?Š¤?”Œ? ˆ?´?— ?ˆ«? ?‘œ?‹œ
    dec2ssd_top display_digits (
        .clk(clk),
        .rst(rst),
        .number(display_number),
        .ssd(ssd),
        .seg_en(seg_en)
    );

endmodule