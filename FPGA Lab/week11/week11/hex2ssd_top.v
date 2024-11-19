module hex2ssd_top(
    input           clk,
    (* mark_debug = 1 *)input   start,              // btn[0]�� ����
    (* mark_debug = 1 *)input   stop,               // btn[1]�� ����
    (* mark_debug = 1 *)input   rst,                // btn[2]�� ����
    (* mark_debug = 1 *)output  [6:0]   ssd1,       // ù ��° ���÷����� 7���׸�Ʈ ���
    (* mark_debug = 1 *)output  seg_en1,            // ù ��° ���÷��� Ȱ��ȭ ��ȣ
    (* mark_debug = 1 *)output  [6:0]   ssd2,       // �� ��° ���÷����� 7���׸�Ʈ ���
    (* mark_debug = 1 *)output  seg_en2             // �� ��° ���÷��� Ȱ��ȭ ��ȣ
    );

    // �ʿ��� ���ļ��� Ŭ�� ����
    wire clk_125M = clk;
    wire clk_100Hz;   // 0.01�ʸ��� �޽� ����

    // 125MHz �Է� Ŭ���� 100Hz�� ����
    clk_gen_100 c0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100Hz));

    reg [6:0] underpoint;   // �Ҽ��� �Ʒ� �� �ڸ� (00 ~ 99)
    reg [6:0] integer_part;      // ���� �� �ڸ� (00 ~ 99)
    reg running;            // �����ġ ���� ���¸� ��Ÿ���� ��ȣ

    // ���� �� ���� ��ȣ ó��
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            running <= 1'b0;
        end else begin
            if (start)
                running <= 1'b1;
            else if (stop)
                running <= 1'b0;
        end
    end

    // 0.01�ʸ��� ī���� ����
    always @(posedge clk_100Hz or posedge rst) begin
        if (rst) begin  // ���� �κа� �Ҽ��� �κ� �ʱ�ȭ
            underpoint <= 7'd0;
            integer_part    <= 7'd0;
        end else if (running) begin
            if ((integer_part == 7'd99) && (underpoint == 7'd99)) begin
                // 99.99�ʿ� �����ϸ� ���� ���� �� ���� ���
                underpoint <= underpoint;
                integer_part   <= integer_part;
                // �Ҽ����� 99�� �ٴٸ��� �ʱ�ȭ �� ���� +1
            end else if (underpoint == 7'd99) begin
                underpoint <= 7'd0;
                integer_part <= integer_part + 1;
                // �Ϲ����� ��� �Ҽ��� +1
            end else begin
                underpoint <= underpoint + 1;
            end
        end
    end

    // �� ���÷��̿� ǥ���� ���� ���
    (* mark_debug = 1 *)wire [3:0] digit1 = integer_part / 10;       // ���� ���� �ڸ�
    (* mark_debug = 1 *)wire [3:0] digit2 = integer_part % 10;       // ���� ���� �ڸ�
    (* mark_debug = 1 *)wire [3:0] digit3 = underpoint / 10;    // �Ҽ��� �Ʒ� ���� �ڸ�
    (* mark_debug = 1 *)wire [3:0] digit4 = underpoint % 10;    // �Ҽ��� �Ʒ� ���� �ڸ�

    wire [6:0] sega, segb, segc, segd;

    // ù ��° ���÷��� ��� (�� ����)
    hex2ssd ssd1_inst (
        .hex(digit1),
        .seg(sega)
    );
    hex2ssd ssd1_inst2 (
        .hex(digit2),
        .seg(segb)
    );
    // �� ���׸�Ʈ���� ���ڸ� �����ư��� ���
    assign seg_en1 = (clk_100Hz) ? 1'b1 : 1'b0;
    assign ssd1 = (clk_100Hz) ? sega : segb;

    // �� ��° ���÷��� ��� (�Ҽ��� �Ʒ� ����)
    hex2ssd ssd2_inst (
        .hex(digit3),
        .seg(segc)
    );

    hex2ssd ssd2_inst2 (
        .hex(digit4),
        .seg(segd)
    );
    // �� ���׸�Ʈ���� ���ڸ� �����ư��� ���
    assign seg_en2 = (clk_100Hz) ? 1'b1 : 1'b0;
    assign ssd2 = (clk_100Hz) ? segc : segd;

endmodule
