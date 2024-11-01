`timescale 1ns / 1ps  // 시뮬레이션 시간 단위 및 정밀도 설정

module btob8(
    input   [9:0]   B,  // 10비트 입력 신호 B
    output  [9:0]   P   // 10비트 출력 신호 P
    );

    // 입력 신호 B의 상위 2비트를 0으로 설정한 수정된 신호 B_modified 생성
    wire    [9:0]   B_modified;
    assign  B_modified = {2'b00, B[7:0]}; // B[9]와 B[8]을 0으로 설정

    // 내부에서 사용할 임시 와이어 선언
    wire    [9:0]   temp1;
    wire    [9:0]   temp2;
    wire    [9:0]   temp3;
    wire    [9:0]   temp4;
    
    assign  temp3[9] = 0; // temp3의 최상위 비트를 0으로 설정
    
    // Add3 모듈 인스턴스 C1: B_modified[8:5]에 3을 더한 결과를 temp1[8:5]에 저장
    Add3 C1 (.Bin(B_modified[8:5]), .Bout(temp1[8:5]));
    assign  temp3[8] = temp1[8]; // temp1[8] 값을 temp3[8]에 할당
    
    // Add3 모듈 인스턴스 C2: temp1[7:5]와 B_modified[4]를 연결하여 3을 더한 결과를 temp2[7:4]에 저장
    Add3 C2 (.Bin({temp1[7:5], B_modified[4]}), .Bout(temp2[7:4]));
    assign  temp3[7] = temp2[7]; // temp2[7] 값을 temp3[7]에 할당
    
    // Add3 모듈 인스턴스 C3: temp2[6:4]와 B_modified[3]을 연결하여 3을 더한 결과를 temp3[6:3]에 저장
    Add3 C3 (.Bin({temp2[6:4], B_modified[3]}), .Bout(temp3[6:3]));
    
    // Add3 모듈 인스턴스 C6: temp3[9:6]에 3을 더한 결과를 temp4[9:6]에 저장
    Add3 C6 (.Bin(temp3[9:6]), .Bout(temp4[9:6]));
    assign  P[9] = temp4[9]; // temp4[9] 값을 출력 P의 최상위 비트에 할당
    
    // Add3 모듈 인스턴스 C4: temp3[5:3]과 B_modified[2]를 연결하여 3을 더한 결과를 temp4[5:2]에 저장
    Add3 C4 (.Bin({temp3[5:3], B_modified[2]}), .Bout(temp4[5:2]));
    
    // Add3 모듈 인스턴스 C7: temp4[8:5]에 3을 더한 결과를 출력 P[8:5]에 저장
    Add3 C7 (.Bin(temp4[8:5]), .Bout(P[8:5]));
    
    // Add3 모듈 인스턴스 C5: temp4[4:2]와 B_modified[1]을 연결하여 3을 더한 결과를 출력 P[4:1]에 저장
    Add3 C5 (.Bin({temp4[4:2], B_modified[1]}), .Bout(P[4:1]));

    assign  P[0] = B_modified[0]; // P[0]을 B_modified[0]으로 할당 (최하위 비트)

endmodule  
