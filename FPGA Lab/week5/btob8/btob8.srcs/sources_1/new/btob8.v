`timescale 1ns / 1ps  // �ùķ��̼� �ð� ���� �� ���е� ����

module btob8(
    input   [9:0]   B,  // 10��Ʈ �Է� ��ȣ B
    output  [9:0]   P   // 10��Ʈ ��� ��ȣ P
    );

    // �Է� ��ȣ B�� ���� 2��Ʈ�� 0���� ������ ������ ��ȣ B_modified ����
    wire    [9:0]   B_modified;
    assign  B_modified = {2'b00, B[7:0]}; // B[9]�� B[8]�� 0���� ����

    // ���ο��� ����� �ӽ� ���̾� ����
    wire    [9:0]   temp1;
    wire    [9:0]   temp2;
    wire    [9:0]   temp3;
    wire    [9:0]   temp4;
    
    assign  temp3[9] = 0; // temp3�� �ֻ��� ��Ʈ�� 0���� ����
    
    // Add3 ��� �ν��Ͻ� C1: B_modified[8:5]�� 3�� ���� ����� temp1[8:5]�� ����
    Add3 C1 (.Bin(B_modified[8:5]), .Bout(temp1[8:5]));
    assign  temp3[8] = temp1[8]; // temp1[8] ���� temp3[8]�� �Ҵ�
    
    // Add3 ��� �ν��Ͻ� C2: temp1[7:5]�� B_modified[4]�� �����Ͽ� 3�� ���� ����� temp2[7:4]�� ����
    Add3 C2 (.Bin({temp1[7:5], B_modified[4]}), .Bout(temp2[7:4]));
    assign  temp3[7] = temp2[7]; // temp2[7] ���� temp3[7]�� �Ҵ�
    
    // Add3 ��� �ν��Ͻ� C3: temp2[6:4]�� B_modified[3]�� �����Ͽ� 3�� ���� ����� temp3[6:3]�� ����
    Add3 C3 (.Bin({temp2[6:4], B_modified[3]}), .Bout(temp3[6:3]));
    
    // Add3 ��� �ν��Ͻ� C6: temp3[9:6]�� 3�� ���� ����� temp4[9:6]�� ����
    Add3 C6 (.Bin(temp3[9:6]), .Bout(temp4[9:6]));
    assign  P[9] = temp4[9]; // temp4[9] ���� ��� P�� �ֻ��� ��Ʈ�� �Ҵ�
    
    // Add3 ��� �ν��Ͻ� C4: temp3[5:3]�� B_modified[2]�� �����Ͽ� 3�� ���� ����� temp4[5:2]�� ����
    Add3 C4 (.Bin({temp3[5:3], B_modified[2]}), .Bout(temp4[5:2]));
    
    // Add3 ��� �ν��Ͻ� C7: temp4[8:5]�� 3�� ���� ����� ��� P[8:5]�� ����
    Add3 C7 (.Bin(temp4[8:5]), .Bout(P[8:5]));
    
    // Add3 ��� �ν��Ͻ� C5: temp4[4:2]�� B_modified[1]�� �����Ͽ� 3�� ���� ����� ��� P[4:1]�� ����
    Add3 C5 (.Bin({temp4[4:2], B_modified[1]}), .Bout(P[4:1]));

    assign  P[0] = B_modified[0]; // P[0]�� B_modified[0]���� �Ҵ� (������ ��Ʈ)

endmodule  
