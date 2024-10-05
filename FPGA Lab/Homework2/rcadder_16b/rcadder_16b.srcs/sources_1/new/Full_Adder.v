module Full_Adder(
    input a, b, cin,     // 입력: 두 개의 비트 (a, b)와 캐리 입력 (cin)
    output sum, cout     // 출력: 합 (sum)과 캐리 출력 (cout)
);
    assign sum = a ^ b ^ cin;      // 합 계산 (XOR)
    assign cout = (a & b) | (b & cin) | (a & cin);  // 캐리 출력 계산
endmodule