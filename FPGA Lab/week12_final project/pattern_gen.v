`timescale 1ns/1ps

module pattern_gen(                 // 화면에 출력할 패턴 생성 모듈
	input clk,                     // 픽셀 클록 입력
	input reset_n,                 // 리셋 신호 입력
	input [1:0] pattern_select,    // 패턴을 선택할 2비트 신호

	output        o_vs,            // 수직 동기화 신호 (vsync)
	output        o_hs,            // 수평 동기화 신호 (hsync)
	//output        o_de,

	////Zybo 7010 또는 Zybo 7020에서 출력할 컬러 데이터
	output [3:0] o_r_data, // 빨간색 데이터
	output [3:0] o_g_data, // 녹색 데이터
	output [3:0] o_b_data  // 파란색 데이터
	
);
//	=======================================
//	파라미터 정의
//	=======================================
// 1280x720 해상도 설정 (74.25 MHz @ 60Hz)
//parameter h_front_porch  = 32'd110;
//parameter h_sync_width   = 32'd40;
//parameter h_back_porch   = 32'd220;
//parameter h_active       = 32'd1280;
//
//parameter v_front_porch  = 32'd5;
//parameter v_sync_width   = 32'd5;
//parameter v_back_porch   = 32'd20;
//parameter v_active       = 32'd720;

// 640x480 해상도 설정 (25.2 MHz @ 60Hz)
parameter h_front_porch  = 32'd16  ;        // 수평 전방 포르치 : 16
parameter h_sync_width   = 32'd96  ;        // 수평 동기화 신호의 폭 : 96
parameter h_back_porch   = 32'd48  ;        // 수평 후방 포르치 : 48
parameter h_active       = 32'd640 ;        // 수평 활성 영역 : 640

parameter v_front_porch  = 32'd10 ;         // 수직 전방 포르치 : 10
parameter v_sync_width   = 32'd2  ;         // 수직 동기화 신호의 폭 : 2
parameter v_back_porch   = 32'd33 ;         // 수직 후방 포르치 : 33
parameter v_active       = 32'd480;         // 수직 활성 영역 : 480

parameter h_total        = h_front_porch + h_sync_width + h_back_porch + h_active; // 수평 전체 라인 수
parameter v_total        = v_front_porch + v_sync_width + v_back_porch + v_active; // 수직 전체 라인 수

parameter init_cnt_top = 32'h0000_0fff; // 초기 카운트 설정값, 바운싱 방지

//	=======================================
//	레지스터 및 와이어 정의
//	=======================================
reg [31:0] init_cnt;    // 초기 카운트, 가로 비트가 끝나는지 확인하기 위한 카운터
reg [31:0] h_cnt;       // 수평 카운트, 세로 비트가 끝나는지 확인하기 위한 카운터

wire h_sync_hit        ;    // 수평 동기화 신호가 도달했는지 확인하는 신호
wire h_back_porch_hit  ;    // 수평 후방 포르치가 도달했는지 확인하는 신호 
wire h_active_hit      ;    // 수평 활성 영역에 도달했는지 확인하는 신호
wire h_front_porch_hit ;    // 수평 전방 포르치에 도달했는지 확인하는 신호

reg [31:0] line_cnt;        // 세로 라인 카운트, 세로 비트가 끝나는지 확인하는 카운터
wire active_line;           // 활성 라인 여부 확인, 실제 데이터 출력되는 영역

reg vs;                     // 수직 동기화 신호
reg hs;                     // 수평 동기화 신호
reg de;                     // 데이터 활성화 신호

reg [15:0] de_cnt;          // 데이터 활성화 카운트

//	=======================================
//	구조적 코딩
//	=======================================
// 초기 대기 상태
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)                         // 리셋이 활성화 되면
      init_cnt <= 32'b0;                // 초기 카운트 0으로 설정
   else if(init_cnt == init_cnt_top)    // 초기 카운트가 설정값에 도달하면
      init_cnt <= init_cnt;             // 초기 카운트 유지
   else                                 // 설정값에 도달하지 않으면
      init_cnt <= init_cnt + 1'b1;      // 초기 카운트를 1씩 증가

// 수평 카운트
always @ (posedge clk, negedge reset_n)  // 패턴 생성기의 타이밍 제어
   if(~reset_n)                         // 리셋이 활성화 되면
      h_cnt <= 32'b0;                   // 수평 카운트 초기화
   else if(h_cnt == h_total - 1'b1)     // 수평 픽셀이 끝나면
      h_cnt <= 32'b0;                   // 수평 카운트 초기화
   else if(init_cnt == init_cnt_top)    // 초기 카운트가 설정값에 도달하면
      h_cnt <= h_cnt + 1'b1;            // 수평 카운트를 1씩 증가

// 수평 동기 신호가 특정 영역에 도달했음을 나타내는 신호
assign h_sync_hit        = (h_cnt == h_sync_width - 1'b1) ? 1'b1 : 1'b0;   // 첫 번째 h_sync pulse에 도달했을 때 1 출력
assign h_back_porch_hit  = (h_cnt == h_sync_width + h_back_porch - 1'b1) ? 1'b1 : 1'b0;  // 백 포치에 도달하면 1 출력
assign h_active_hit      = (h_cnt == h_sync_width + h_back_porch + h_active - 1'b1) ? 1'b1 : 1'b0;  // 액티브 영역에 도달하면 1 출력
assign h_front_porch_hit = (h_cnt == h_sync_width + h_back_porch + h_active + h_front_porch - 1'b1) ? 1'b1 : 1'b0; // 프론트 포치까지 도달하면 1 출력

// 수직 카운트 (라인 카운팅)
always @ (posedge clk, negedge reset_n)
   if(~reset_n)                     // reset_n이 0일 경우
      line_cnt <= 32'b0;            // line 카운트 초기화
   else if(h_front_porch_hit && (line_cnt == v_total - 1'b1))   // 프론트 포치에서 수직 라인이 끝났을 때
      line_cnt <= 32'b0;            // line 카운트 초기화
   else if(h_front_porch_hit)       // 수평 카운트가 끝났을 때
      line_cnt <= line_cnt + 1'b1;  // 수직 라인 카운트 1 증가

// 수직 액티브 영역의 표시
assign active_line = ((line_cnt > v_sync_width + v_back_porch - 1'b1) && (line_cnt < v_sync_width + v_back_porch + v_active)) ? 1'b1 : 1'b0;
// 액티브 영역이 되기 전에 라인 카운트가 특정 영역을 지나면 액티브 라인 신호를 1로 설정

// VSYNC 생성
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)                 // reset_n이 0일 경우
      vs <= 1'b0;               // vsync 초기화
   else if((line_cnt == v_total - 1'b1) && (h_front_porch_hit))     // 수직 라인이 끝나고 수평 포치가 끝날 때
      vs <= 1'b0;               // vsync 0 설정
   else if((line_cnt == v_sync_width - 1'b1) && (h_front_porch_hit))// 수직 싱크 영역에 도달하고 프론트 포치가 끝날 때
      vs <= 1'b1;               // vsync 1 설정

// HSYNC 생성
always @ (posedge clk, negedge reset_n)
   if(~reset_n)    // reset_n이 0일 경우
      hs <= 1'b0;  // hsync 초기화
   else if(h_front_porch_hit)  // 프론트 포치에서
      hs <= 1'b0;   // hsync 0 설정
   else if(h_sync_hit)// 수평 동기 신호에 도달하면
      hs <= 1'b1;  // hsync 1 설정 

// 데이터 활성화 신호 생성
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)             // reset_n이 0일 경우
      de <= 1'b0;           // 데이터 활성화 초기화
   else if(active_line)     // 액티브 라인에서
      if(h_back_porch_hit)  // 백 포치에 도달하면
         de <= 1'b1;        // 데이터 활성화 1
      else if(h_active_hit) // 액티브 영역에 도달하면
         de <= 1'b0;        // 데이터 활성화 0

assign o_vs = vs;   // vsync 출력
assign o_hs = hs;   // hsync 출력
//assign o_de = de;

always @ (posedge clk, negedge reset_n) // 실제 데이터 출력 카운트 계산
  if(~reset_n)     // reset_n이 0일 경우
    de_cnt <= 16'b0; // de_cnt 초기화
  else if(~de) // 데이터 활성화가 0일 때
    de_cnt <= 16'b0;  // 카운트 0
  else if(de)  // 데이터 활성화가 1일 때 
    de_cnt <= de_cnt + 1'b1;  // 카운트 증가

//// RGB 비디오 패턴 코드 ////
// 패턴 0 (화이트 / 블랙)
wire p0_r_en = ( de_cnt <  (h_active*1/2));  // 데이터 출력 카운트가 h_active 영역의 절반 미만일 때
wire p0_g_en = ( de_cnt <  (h_active*1/2));  // 데이터 출력 카운트가 h_active 영역의 절반 미만일 때
wire p0_b_en = ( de_cnt <  (h_active*1/2));  // 데이터 출력 카운트가 h_active 영역의 절반 미만일 때

// 패턴 1 (화이트 / 레드 / 그린 / 블루)
wire p1_r_en = ( de_cnt <  (h_active*2/4));  // 데이터 출력 카운트가 h_active 영역의 절반 미만일 때
wire p1_g_en = ((de_cnt <  (h_active*1/4)) || (de_cnt >=  (h_active*2/4))) && (de_cnt < (h_active*3/4));  // 카운트가 h_active 영역의 1/4보다 작거나 2/4에서 3/4 사이일 때
wire p1_b_en = ((de_cnt <  (h_active*1/4)) || (de_cnt >=  (h_active*3/4)));  // 카운트가 h_active 영역의 1/4보다 작거나 3/4 이상일 때

// 패턴 2 (레드 / 그린 / 블루 / 화이트 / 블랙)
wire p2_r_en = ( de_cnt <  (h_active*1/5)) || (de_cnt >= (h_active*4/5));  // 카운트가 h_active 영역의 1/5 미만이거나 4/5 이상일 때
wire p2_g_en = ((de_cnt >= (h_active*1/5)) && (de_cnt <  (h_active*2/5))) || (de_cnt >= (h_active*4/5));  // 1/5 이상 2/5 미만이거나 4/5 이상일 때
wire p2_b_en = ((de_cnt >= (h_active*2/5)) && (de_cnt <  (h_active*3/5))) || (de_cnt >= (h_active*4/5));  // 2/5 이상 3/5 미만이거나 4/5 이상일 때

// 패턴 3 (과제!)
wire p3_r_en = (line_cnt<v_back_porch+v_sync_width+(v_active*1/2));  // 백 포치와 싱크 영역을 고려하여 카운트
wire p3_g_en = (de_cnt<(h_active*1/2));  // h_active 영역의 절반 미만일 때
wire p3_b_en = ((de_cnt<(h_active*1/2)) && (line_cnt<v_back_porch+v_sync_width+(v_active*1/2))) || ((de_cnt>=(h_active*1/2))&&(line_cnt>=v_back_porch+v_sync_width+(v_active*1/2))); // 조건에 맞는 카운트들

// 패턴 선택 신호에 따른 색상 변수 설정
wire r_en = (pattern_select == 2'd0)?    p0_r_en :    // 선택 신호가 00일 경우 p0_r_en
         (pattern_select == 2'd1)?    p1_r_en :      // 선택 신호가 01일 경우 p1_r_en
         (pattern_select == 2'd2)?    p2_r_en : p3_r_en; // 선택 신호가 10일 경우 p2_r_en, 나머지 경우는 p3_r_en

wire g_en = (pattern_select == 2'd0)?    p0_g_en :    // 선택 신호가 00일 경우 p0_g_en
         (pattern_select == 2'd1)?    p1_g_en :     // 선택 신호가 01일 경우 p1_g_en
         (pattern_select == 2'd2)?    p2_g_en : p3_g_en;  // 선택 신호가 10일 경우 p2_g_en, 나머지 경우는 p3_g_en

wire b_en = (pattern_select == 2'd0)?    p0_b_en :    // 선택 신호가 00일 경우 p0_b_en
         (pattern_select == 2'd1)?    p1_b_en :     // 선택 신호가 01일 경우 p1_b_en
         (pattern_select == 2'd2)?    p2_b_en : p3_b_en; // 선택 신호가 10일 경우 p2_b_en, 나머지 경우는 p3_b_en

////Color data out for Zybo 7010
//위의 RGB enable 값을 data 값들과 연결함
assign o_r_data = (de & r_en) ? 4'b1111 : 4'b0;  //Red data 출력
assign o_g_data = (de & g_en) ? 4'b1111 : 4'b0;  //Green data 출력
assign o_b_data = (de & b_en) ? 4'b1111 : 4'b0;  //Blue data 출력

endmodule


