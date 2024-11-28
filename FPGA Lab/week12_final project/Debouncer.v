module debouncer(
    input clk,
    input reset,
    input noisy,
    output reg clean
    );

    reg [18:0] count;
    reg state;

    parameter N = 18'd249999; // 디바운싱 시간 조정을 위한 파라미터

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 1'b0;
            count <= 0;
            clean <= 1'b0;
        end else begin
            if (noisy != state) begin
                count <= count + 1;
                if (count == N) begin
                    state <= noisy;
                    clean <= noisy;
                    count <= 0;
                end
            end else begin
                count <= 0;
            end
        end
    end

endmodule