module counter_top_debouncer(
    input clk_ref, rst, en, up, down,
    output [3:0] cnt
    );

    wire clk_125M = clk_ref;  // clk_ref를 clk_125M으로 할당
    wire clk_100M, clk_1M, clk_10K, clk_100; // 여러 주파수의 클럭 신호
    wire s_up, s_down;        // 동기화된 버튼 신호
    wire d_up, d_down;        // 디바운스된 버튼 신호

    // 100 MHz 클럭 생성을 위한 클럭 생성기
    clk_gen_100M u0 (.clk_ref(clk_125M), .rst(rst), .clk_out(clk_100M) );

    // 낮은 주파수의 클럭 생성을 위한 주파수 분주기
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M) );
    freq_div_100 u2 (.clk_ref(clk_1M), .rst(rst), .clk_div(clk_10K) );
    freq_div_100 u3 (.clk_ref(clk_10K), .rst(rst), .clk_div(clk_100) );

    // 버튼 신호를 클럭 도메인에 맞춰 동기화
    synchronizer s0 (.clk(clk_100), .async_in(up), .sync_out(s_up) );
    synchronizer s1 (.clk(clk_100), .async_in(down), .sync_out(s_down) );

    // 동기화된 버튼 신호를 디바운스 처리
    debouncer d0 (.clk(clk_100), .noisy(s_up), .debounced(d_up) );
    debouncer d1 (.clk(clk_100), .noisy(s_down), .debounced(d_down) );

    // 4비트 업/다운 카운터
    ud_counter_4 c0 (.clk(clk_100), .rst(rst), .en(en), .up(d_up), .down(d_down), .cnt(cnt) );

endmodule
