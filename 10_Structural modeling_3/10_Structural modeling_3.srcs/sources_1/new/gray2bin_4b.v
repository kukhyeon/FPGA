// Using always
module gray2bin_4b(
    bin, gray
    );
    parameter size = 4;
            output [size-1:0] bin;
            input [size-1:0] gray;
            reg   [size-1:0] bin, cnt;
    integer i, j;

    always @(gray) begin
        for (i = 0; i<4; i=i+1) begin
            cnt = 0;
            for (j = i; i<4 ;i=i+1) begin
                cnt[i] = gray[j]^cnt[i];
            bin[i] = cnt[i];
            end
        end
    end
endmodule
