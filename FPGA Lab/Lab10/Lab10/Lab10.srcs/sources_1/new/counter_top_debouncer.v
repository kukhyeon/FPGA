module counter_top_debouncer(
    input clk_ref, rst, en, up, down,
    output [3:0] cnt
    );

    wire clk_125M = clk_ref;  // clk_ref�� clk_125M���� �Ҵ�
    wire clk_100M, clk_1M, clk_10K, clk_100; // ���� ���ļ��� Ŭ�� ��ȣ
    wire s_up, s_down;        // ����ȭ�� ��ư ��ȣ
    wire d_up, d_down;        // ��ٿ�� ��ư ��ȣ

    // 100 MHz Ŭ�� ������ ���� Ŭ�� ������
    clk_gen_100M u0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M) );

    // ���� ���ļ��� Ŭ�� ������ ���� ���ļ� ���ֱ�
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M) );
    freq_div_100 u2 (.clk_ref(clk_1M), .rst(rst), .clk_div(clk_10K) );
    freq_div_100 u3 (.clk_ref(clk_10K), .rst(rst), .clk_div(clk_100) );

    // ��ư ��ȣ�� Ŭ�� �����ο� ���� ����ȭ
    synchronizer s0 (.clk(clk_100), .async_in(up), .sync_out(s_up) );
    synchronizer s1 (.clk(clk_100), .async_in(down), .sync_out(s_down) );

    // ����ȭ�� ��ư ��ȣ�� ��ٿ ó��
    debouncer d0 (.clk(clk_100), .noisy(s_up), .debounced(d_up) );
    debouncer d1 (.clk(clk_100), .noisy(s_down), .debounced(d_down) );

    // 4��Ʈ ��/�ٿ� ī����
    ud_counter_4 c0 (.clk(clk_100), .rst(rst), .en(en), .up(d_up), .down(d_down), .cnt(cnt) );

endmodule
