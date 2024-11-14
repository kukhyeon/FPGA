`timescale 1ns/1ps

module cofm(
    input           clk,
    input           rst,
    input   [1:0]   x,      // �Է� ��ȣ x�� 2��Ʈ�� ����
    output  reg     sale,
    output  reg     ret    
);
    // ���¸� �ٷ�� ���� ����ȭ
    parameter [2:0] s0 = 3'd0,
                    s1 = 3'd1,
                    s2 = 3'd2,
                    s3 = 3'd3,
                    s4 = 3'd4,
                    s5 = 3'd5;

    reg [2:0]   state;
    // x = 0 -> w100, x = 1 -> w500, x = 2 -> ��ư
    always @(posedge clk or negedge rst) begin
    // ��ȣ �ʱ�ȭ
        if(!rst) begin
            sale    <= 0;
            ret     <= 0;
            state   <= s0;
        end
        else begin
            case (state)
                s0: begin
                    if(x == 2'd0) begin  // 100�� ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s1;
                    end
                    else if(x == 2'd1) begin  // 500�� ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s5;
                    end
                    else if(x == 2'd2) begin  // ��ư ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s0;
                    end
                    else begin      // ����ġ ���� ��Ȳ ���
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s0;
                    end
                end
                s1: begin
                    if(x == 2'd0) begin  // 100�� ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s2;
                    end
                    else if(x == 2'd1 || x == 2'd2) begin  // 500�� ����
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s0;
                    end
                    else begin
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s1;
                    end
                end
                s2: begin
                    if(x == 2'd0) begin  // 100�� ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s3;
                    end
                    else if(x == 2'd1 || x == 2'd2) begin  // 500�� ����
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s0;
                    end
                    else begin
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s2;
                    end
                end
                s3: begin
                    if(x == 2'd0) begin  // 100�� ����
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s4;
                    end
                    else if(x == 2'd1 || x == 2'd2) begin  // 500�� ����
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s0;
                    end
                    else begin
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s3;
                    end
                end
                s4: begin
                    if(x == 2'd0) begin  // 100�� ��ȯ
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s5;
                    end
                    else if(x == 2'd1 || x == 2'd2) begin  // 500�� ��ȯ
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s0;
                    end
                    else begin
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s4;
                    end
                end
                s5: begin
                    if(x == 2'd0) begin  // 100�� ��ȯ
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s1;
                    end
                    else if(x == 2'd1) begin  // 500�� ����
                        sale        <= 0;
                        ret         <= 1;  // ���� ��ȯ
                        state       <= s5;
                    end
                    else if(x == 2'd2) begin  // ��ư ����
                        sale        <= 1;  // Ŀ�� ����
                        ret         <= 0;
                        state       <= s0;
                    end
                    else begin
                        sale        <= 0;
                        ret         <= 0;
                        state       <= s5;
                    end
                end   
                default: begin      // ����ġ ���� ��Ȳ ���
                    sale        <= 0;
                    ret         <= 0;
                    state       <= s0;
                end         
            endcase
        end
    end
endmodule  
