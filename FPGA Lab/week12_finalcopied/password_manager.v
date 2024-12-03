`timescale 1ns / 1ps

module password_manager(
    input clk,
    input rst,
    input pw_set,     // ����ġ �Է�
    input up,         // ��ư �Է�
    input down,       // ��ư �Է�
    input slide,      // ��ư �Է�
    input place,      // ����ġ �Է�
    input pw_endset,  // ��ư �Է�
    input ok,         // ����ġ �Է�
    output [6:0] ssd,
    output seg_en,
    output reg [3:0] led,     // LED ��� �߰�
    output reg led6_r,        // RGB LED6 ������ ä��
    output reg led6_g,        // RGB LED6 �ʷϻ� ä��
    output reg [1:0] vga_status
    );

    reg [1:0] current_digit;
    reg [3:0] digits [3:0];
    reg [15:0] set_password;

    // ��ư �Է¿� ���� ��ٿ�� �� ���� ����
    wire up_deb, down_deb, slide_deb, pw_endset_deb;
    wire pw_set_sync, ok_sync, place_sync;

    // ��ư �Է¿� ���� ����ȭ �� ��ٿ��
    synchronizer sync_up(.clk(clk), .async_in(up), .sync_out(up_sync));
    debouncer db_up(.clk(clk), .reset(rst), .noisy(up_sync), .clean(up_deb));

    synchronizer sync_down(.clk(clk), .async_in(down), .sync_out(down_sync));
    debouncer db_down(.clk(clk), .reset(rst), .noisy(down_sync), .clean(down_deb));

    synchronizer sync_slide(.clk(clk), .async_in(slide), .sync_out(slide_sync));
    debouncer db_slide(.clk(clk), .reset(rst), .noisy(slide_sync), .clean(slide_deb));

    synchronizer sync_pw_endset(.clk(clk), .async_in(pw_endset), .sync_out(pw_endset_sync));
    debouncer db_pw_endset(.clk(clk), .reset(rst), .noisy(pw_endset_sync), .clean(pw_endset_deb));

    // ����ġ �Է¿� ���� ����ȭ
    synchronizer sync_pw_set(.clk(clk), .async_in(pw_set), .sync_out(pw_set_sync));
    synchronizer sync_ok(.clk(clk), .async_in(ok), .sync_out(ok_sync));
    synchronizer sync_place(.clk(clk), .async_in(place), .sync_out(place_sync));

    // ��ư �Է¿� ���� ���� ����
    reg up_deb_prev, down_deb_prev, slide_deb_prev, pw_endset_deb_prev;
    wire up_deb_edge, down_deb_edge, slide_deb_edge, pw_endset_deb_edge;

    assign up_deb_edge = up_deb & ~up_deb_prev;
    assign down_deb_edge = down_deb & ~down_deb_prev;
    assign slide_deb_edge = slide_deb & ~slide_deb_prev;
    assign pw_endset_deb_edge = pw_endset_deb & ~pw_endset_deb_prev;

    // ����ġ �Է¿� ���� ���� ����
    reg pw_set_prev, ok_prev;
    wire pw_set_edge, ok_edge;

    assign pw_set_edge = pw_set_sync & ~pw_set_prev;
    assign ok_edge = ok_sync & ~ok_prev;



    always @(posedge clk or posedge rst) begin
        if (rst) begin
            up_deb_prev <= 0;
            down_deb_prev <= 0;
            slide_deb_prev <= 0;
            pw_endset_deb_prev <= 0;
            pw_set_prev <= 0;
            ok_prev <= 0;
        end else begin
            up_deb_prev <= up_deb;
            down_deb_prev <= down_deb;
            slide_deb_prev <= slide_deb;
            pw_endset_deb_prev <= pw_endset_deb;
            pw_set_prev <= pw_set_sync;
            ok_prev <= ok_sync;
        end
    end

    reg ok_prev_state; // new one
    reg [1:0] mode;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mode <= 2'd0;
            current_digit <= 2'd0;
            set_password <= 16'd0;
            digits[3] <= 4'd0;
            digits[2] <= 4'd0;
            digits[1] <= 4'd0;
            digits[0] <= 4'd0;
            led <= 4'b0000;          // LED �ʱ�ȭ
            led6_r <= 1'b0;          // RGB LED6 �ʱ�ȭ
            led6_g <= 1'b0;
            vga_status <= 2'd0; // VGA ȭ���� ������� �ʱ�ȭ
            ok_prev_state <= 1'b0;
        end else begin
            case (current_digit)
                2'd0: led <= 4'b0001;
                2'd1: led <= 4'b0010;
                2'd2: led <= 4'b0100;
                2'd3: led <= 4'b1000;
                default: led <= 4'b0000;
            endcase
            // place_sync�� ���� RGB LED6 ����
            if (place_sync) begin
                // place_sync�� 1�̸� �ʷϻ� ǥ��
                led6_r <= 1'b0;
                led6_g <= 1'b1;
            end else begin
                // place_sync�� 0�̸� ������ ǥ��
                led6_r <= 1'b1;
                led6_g <= 1'b0;
            end
            // OK ����ġ ���� ��ȭ ����
            if (ok_sync && !ok_prev_state) begin
                // OK ����ġ ����
                ok_prev_state <= 1'b1;
            end else if (!ok_sync && ok_prev_state) begin
                // OK ����ġ ��������
                ok_prev_state <= 1'b0;
                vga_status <= 2'd0; // VGA ȭ���� ������� ����
            end
            case (mode)
                2'd0: begin
                    if (pw_set_edge) begin
                        mode <= 2'd1;
                        current_digit <= 2'd0;
                    end
                end
                2'd1: begin
                    if (slide_deb_edge) begin
                        if (current_digit == 3)
                            current_digit <= 0;
                        else
                            current_digit <= current_digit + 1;
                    end else if (up_deb_edge) begin
                        if (digits[current_digit] < 4'd9)
                            digits[current_digit] <= digits[current_digit] + 1;
                        else
                            digits[current_digit] <= 4'd0;
                    end else if (down_deb_edge) begin
                        if (digits[current_digit] > 4'd0)
                            digits[current_digit] <= digits[current_digit] - 1;
                        else
                            digits[current_digit] <= 4'd9;
                    end else if (pw_endset_deb_edge) begin
                        set_password <= {digits[3], digits[2], digits[1], digits[0]};
                        mode <= 2'd2;
                        current_digit <= 2'd0;
                        digits[3] <= 4'd0;
                        digits[2] <= 4'd0;
                        digits[1] <= 4'd0;
                        digits[0] <= 4'd0;
                    end
                end
                2'd2: begin
                    if (slide_deb_edge) begin
                        if (current_digit == 3)
                            current_digit <= 0;
                        else
                            current_digit <= current_digit + 1;
                    end else if (up_deb_edge) begin
                        if (digits[current_digit] < 4'd9)
                            digits[current_digit] <= digits[current_digit] + 1;
                        else
                            digits[current_digit] <= 4'd0;
                    end else if (down_deb_edge) begin
                        if (digits[current_digit] > 4'd0)
                            digits[current_digit] <= digits[current_digit] - 1;
                        else
                            digits[current_digit] <= 4'd9;
                    end else if (ok_edge) begin
                        if ({digits[3], digits[2], digits[1], digits[0]} == set_password) begin
                            vga_status <= 2'd1; // VGA ȭ���� �ʷϻ����� ����
                        end else
                            vga_status <= 2'd2; // VGA ȭ���� ���������� ����
                        mode <= 2'd0;
                        digits[3] <= 4'd0;
                        digits[2] <= 4'd0;
                        digits[1] <= 4'd0;
                        digits[0] <= 4'd0;
                    end
                end
                default: mode <= 2'd0;
            endcase
        end
    end

    // ǥ���� ���� ����
    reg [7:0] display_number;

    always @(*) begin
        if (place_sync) begin
            display_number = {digits[3], digits[2]}; // ���� �ڸ��� õ�� �ڸ�
        end else begin
            display_number = {digits[1], digits[0]}; // ���� �ڸ��� ���� �ڸ�
        end
    end

    // 7���׸�Ʈ ���÷��� ���� ���
    dec2ssd_top display_digits (
        .clk(clk),
        .rst(rst),
        .number(display_number),
        .ssd(ssd),
        .seg_en(seg_en)
    );

endmodule
