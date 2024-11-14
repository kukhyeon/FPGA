`timescale 1ns/1ps

module cofm_tb;

    reg         clk;
    reg         rst;
    reg [1:0]   x;
    wire        sale;
    wire        ret;
    
    // �׽�Ʈ�� ��� �ν��Ͻ�ȭ
    cofm uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .sale(sale),
        .ret(ret)
    );
    
    // Ŭ�� ����
    always #10 clk = ~clk;  // 20ns �ֱ��� Ŭ�� ����
    
    // �Է� ��ȣ ������ Ŭ���� ����ȭ
    initial begin
        // �ʱ� ����
        clk = 0;
        rst = 0;
        x = 2'd0;
        
        // ���� ��ȣ ���� (�񵿱�� �����̹Ƿ� �ʱ�ȭ �� ���� �ð� ����)
        #5 rst = 1;
        #85
        // �ó����� 1: 100�� ���� �� ��ư ���� -> ���� ��ȯ
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd2;   // ��ư ����

        // �ó����� 2: 500�� ���� �� ��ư ���� -> Ŀ�� ����
        @(posedge clk); x = 2'd1;   // 500�� ����
        @(posedge clk); x = 2'd2;   // ��ư ����

        // �ó����� 3: 100�� 5�� ���� �� ��ư ���� -> Ŀ�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd2;   // ��ư ����

        // �ó����� 4: 100�� 3�� ���� �� 500�� ���� -> ��� ���� ��ȯ
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd0;   // 100�� ����
        @(posedge clk); x = 2'd1;   // 500�� ����
        // �ó����� 5: �ƹ� �Է� ���� ��ư ���� -> ���� ����
        @(posedge clk); x = 2'd2;   // ��ư ����

        
        // �׽�Ʈ ����
        #20 $finish;
    end
    
    // ����͸�
    initial begin
        $monitor("Time: %0t | x: %b | sale: %b | ret: %b | state: %d", $time, x, sale, ret, uut.state);
    end
    
endmodule  
