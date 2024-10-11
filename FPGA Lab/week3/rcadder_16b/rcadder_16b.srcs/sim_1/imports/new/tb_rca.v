module tb_rca_16bit;
    reg [15:0] A, B;  // 16비트 입력 A와 B
    reg        Cin;   // 캐리 입력
    
    wire [15:0] Sum;  // 16비트 합 출력
    wire       Cout;  // 캐리 출력
    wire [16:0] data_out;  // 최종 출력 데이터 (캐리 포함)

    // 16비트 Ripple Carry Adder 인스턴스화
    Ripple_Carry_Adder_16bit UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum)
    );

    // 캐리와 합을 합쳐서 data_out에 할당
    assign data_out = {Cout, Sum};

    initial begin
        // 초기값 설정
                 A = 16'd0;     B = 16'd0;     Cin = 1'b0;
        #100;    A = 16'd1234;  B = 16'd5678;  Cin = 1'b0;  // 1: 일반적인 값
        #100;    A = 16'd32768; B = 16'd32768; Cin = 1'b1;  // 2: 큰 값과 캐리 입력
        #100;    A = 16'd65535; B = 16'd1;     Cin = 1'b0;  // 3: 최대값 + 1
        #100;    A = 16'd1;     B = 16'd1;     Cin = 1'b1;  // 4: 작은 값과 캐리 입력
        #100;     $finish;
    end
endmodule