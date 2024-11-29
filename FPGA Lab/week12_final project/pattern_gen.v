`timescale 1ns/1ps

module pattern_gen(                 // ȭ�鿡 ����� ���� ���� ���
	input clk,                     // �ȼ� Ŭ�� �Է�
	input reset_n,                 // ���� ��ȣ �Է�
	input [1:0] pattern_select,    // ������ ������ 2��Ʈ ��ȣ

	output        o_vs,            // ���� ����ȭ ��ȣ (vsync)
	output        o_hs,            // ���� ����ȭ ��ȣ (hsync)
	//output        o_de,

	////Zybo 7010 �Ǵ� Zybo 7020���� ����� �÷� ������
	output [3:0] o_r_data, // ������ ������
	output [3:0] o_g_data, // ��� ������
	output [3:0] o_b_data  // �Ķ��� ������
	
);
//	=======================================
//	�Ķ���� ����
//	=======================================
// 1280x720 �ػ� ���� (74.25 MHz @ 60Hz)
//parameter h_front_porch  = 32'd110;
//parameter h_sync_width   = 32'd40;
//parameter h_back_porch   = 32'd220;
//parameter h_active       = 32'd1280;
//
//parameter v_front_porch  = 32'd5;
//parameter v_sync_width   = 32'd5;
//parameter v_back_porch   = 32'd20;
//parameter v_active       = 32'd720;

// 640x480 �ػ� ���� (25.2 MHz @ 60Hz)
parameter h_front_porch  = 32'd16  ;        // ���� ���� ����ġ : 16
parameter h_sync_width   = 32'd96  ;        // ���� ����ȭ ��ȣ�� �� : 96
parameter h_back_porch   = 32'd48  ;        // ���� �Ĺ� ����ġ : 48
parameter h_active       = 32'd640 ;        // ���� Ȱ�� ���� : 640

parameter v_front_porch  = 32'd10 ;         // ���� ���� ����ġ : 10
parameter v_sync_width   = 32'd2  ;         // ���� ����ȭ ��ȣ�� �� : 2
parameter v_back_porch   = 32'd33 ;         // ���� �Ĺ� ����ġ : 33
parameter v_active       = 32'd480;         // ���� Ȱ�� ���� : 480

parameter h_total        = h_front_porch + h_sync_width + h_back_porch + h_active; // ���� ��ü ���� ��
parameter v_total        = v_front_porch + v_sync_width + v_back_porch + v_active; // ���� ��ü ���� ��

parameter init_cnt_top = 32'h0000_0fff; // �ʱ� ī��Ʈ ������, �ٿ�� ����

//	=======================================
//	�������� �� ���̾� ����
//	=======================================
reg [31:0] init_cnt;    // �ʱ� ī��Ʈ, ���� ��Ʈ�� �������� Ȯ���ϱ� ���� ī����
reg [31:0] h_cnt;       // ���� ī��Ʈ, ���� ��Ʈ�� �������� Ȯ���ϱ� ���� ī����

wire h_sync_hit        ;    // ���� ����ȭ ��ȣ�� �����ߴ��� Ȯ���ϴ� ��ȣ
wire h_back_porch_hit  ;    // ���� �Ĺ� ����ġ�� �����ߴ��� Ȯ���ϴ� ��ȣ 
wire h_active_hit      ;    // ���� Ȱ�� ������ �����ߴ��� Ȯ���ϴ� ��ȣ
wire h_front_porch_hit ;    // ���� ���� ����ġ�� �����ߴ��� Ȯ���ϴ� ��ȣ

reg [31:0] line_cnt;        // ���� ���� ī��Ʈ, ���� ��Ʈ�� �������� Ȯ���ϴ� ī����
wire active_line;           // Ȱ�� ���� ���� Ȯ��, ���� ������ ��µǴ� ����

reg vs;                     // ���� ����ȭ ��ȣ
reg hs;                     // ���� ����ȭ ��ȣ
reg de;                     // ������ Ȱ��ȭ ��ȣ

reg [15:0] de_cnt;          // ������ Ȱ��ȭ ī��Ʈ

//	=======================================
//	������ �ڵ�
//	=======================================
// �ʱ� ��� ����
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)                         // ������ Ȱ��ȭ �Ǹ�
      init_cnt <= 32'b0;                // �ʱ� ī��Ʈ 0���� ����
   else if(init_cnt == init_cnt_top)    // �ʱ� ī��Ʈ�� �������� �����ϸ�
      init_cnt <= init_cnt;             // �ʱ� ī��Ʈ ����
   else                                 // �������� �������� ������
      init_cnt <= init_cnt + 1'b1;      // �ʱ� ī��Ʈ�� 1�� ����

// ���� ī��Ʈ
always @ (posedge clk, negedge reset_n)  // ���� �������� Ÿ�̹� ����
   if(~reset_n)                         // ������ Ȱ��ȭ �Ǹ�
      h_cnt <= 32'b0;                   // ���� ī��Ʈ �ʱ�ȭ
   else if(h_cnt == h_total - 1'b1)     // ���� �ȼ��� ������
      h_cnt <= 32'b0;                   // ���� ī��Ʈ �ʱ�ȭ
   else if(init_cnt == init_cnt_top)    // �ʱ� ī��Ʈ�� �������� �����ϸ�
      h_cnt <= h_cnt + 1'b1;            // ���� ī��Ʈ�� 1�� ����

// ���� ���� ��ȣ�� Ư�� ������ ���������� ��Ÿ���� ��ȣ
assign h_sync_hit        = (h_cnt == h_sync_width - 1'b1) ? 1'b1 : 1'b0;   // ù ��° h_sync pulse�� �������� �� 1 ���
assign h_back_porch_hit  = (h_cnt == h_sync_width + h_back_porch - 1'b1) ? 1'b1 : 1'b0;  // �� ��ġ�� �����ϸ� 1 ���
assign h_active_hit      = (h_cnt == h_sync_width + h_back_porch + h_active - 1'b1) ? 1'b1 : 1'b0;  // ��Ƽ�� ������ �����ϸ� 1 ���
assign h_front_porch_hit = (h_cnt == h_sync_width + h_back_porch + h_active + h_front_porch - 1'b1) ? 1'b1 : 1'b0; // ����Ʈ ��ġ���� �����ϸ� 1 ���

// ���� ī��Ʈ (���� ī����)
always @ (posedge clk, negedge reset_n)
   if(~reset_n)                     // reset_n�� 0�� ���
      line_cnt <= 32'b0;            // line ī��Ʈ �ʱ�ȭ
   else if(h_front_porch_hit && (line_cnt == v_total - 1'b1))   // ����Ʈ ��ġ���� ���� ������ ������ ��
      line_cnt <= 32'b0;            // line ī��Ʈ �ʱ�ȭ
   else if(h_front_porch_hit)       // ���� ī��Ʈ�� ������ ��
      line_cnt <= line_cnt + 1'b1;  // ���� ���� ī��Ʈ 1 ����

// ���� ��Ƽ�� ������ ǥ��
assign active_line = ((line_cnt > v_sync_width + v_back_porch - 1'b1) && (line_cnt < v_sync_width + v_back_porch + v_active)) ? 1'b1 : 1'b0;
// ��Ƽ�� ������ �Ǳ� ���� ���� ī��Ʈ�� Ư�� ������ ������ ��Ƽ�� ���� ��ȣ�� 1�� ����

// VSYNC ����
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)                 // reset_n�� 0�� ���
      vs <= 1'b0;               // vsync �ʱ�ȭ
   else if((line_cnt == v_total - 1'b1) && (h_front_porch_hit))     // ���� ������ ������ ���� ��ġ�� ���� ��
      vs <= 1'b0;               // vsync 0 ����
   else if((line_cnt == v_sync_width - 1'b1) && (h_front_porch_hit))// ���� ��ũ ������ �����ϰ� ����Ʈ ��ġ�� ���� ��
      vs <= 1'b1;               // vsync 1 ����

// HSYNC ����
always @ (posedge clk, negedge reset_n)
   if(~reset_n)    // reset_n�� 0�� ���
      hs <= 1'b0;  // hsync �ʱ�ȭ
   else if(h_front_porch_hit)  // ����Ʈ ��ġ����
      hs <= 1'b0;   // hsync 0 ����
   else if(h_sync_hit)// ���� ���� ��ȣ�� �����ϸ�
      hs <= 1'b1;  // hsync 1 ���� 

// ������ Ȱ��ȭ ��ȣ ����
always @ (posedge clk, negedge reset_n) 
   if(~reset_n)             // reset_n�� 0�� ���
      de <= 1'b0;           // ������ Ȱ��ȭ �ʱ�ȭ
   else if(active_line)     // ��Ƽ�� ���ο���
      if(h_back_porch_hit)  // �� ��ġ�� �����ϸ�
         de <= 1'b1;        // ������ Ȱ��ȭ 1
      else if(h_active_hit) // ��Ƽ�� ������ �����ϸ�
         de <= 1'b0;        // ������ Ȱ��ȭ 0

assign o_vs = vs;   // vsync ���
assign o_hs = hs;   // hsync ���
//assign o_de = de;

always @ (posedge clk, negedge reset_n) // ���� ������ ��� ī��Ʈ ���
  if(~reset_n)     // reset_n�� 0�� ���
    de_cnt <= 16'b0; // de_cnt �ʱ�ȭ
  else if(~de) // ������ Ȱ��ȭ�� 0�� ��
    de_cnt <= 16'b0;  // ī��Ʈ 0
  else if(de)  // ������ Ȱ��ȭ�� 1�� �� 
    de_cnt <= de_cnt + 1'b1;  // ī��Ʈ ����

//// RGB ���� ���� �ڵ� ////
// ���� 0 (ȭ��Ʈ / ��)
wire p0_r_en = ( de_cnt <  (h_active*1/2));  // ������ ��� ī��Ʈ�� h_active ������ ���� �̸��� ��
wire p0_g_en = ( de_cnt <  (h_active*1/2));  // ������ ��� ī��Ʈ�� h_active ������ ���� �̸��� ��
wire p0_b_en = ( de_cnt <  (h_active*1/2));  // ������ ��� ī��Ʈ�� h_active ������ ���� �̸��� ��

// ���� 1 (ȭ��Ʈ / ���� / �׸� / ���)
wire p1_r_en = ( de_cnt <  (h_active*2/4));  // ������ ��� ī��Ʈ�� h_active ������ ���� �̸��� ��
wire p1_g_en = ((de_cnt <  (h_active*1/4)) || (de_cnt >=  (h_active*2/4))) && (de_cnt < (h_active*3/4));  // ī��Ʈ�� h_active ������ 1/4���� �۰ų� 2/4���� 3/4 ������ ��
wire p1_b_en = ((de_cnt <  (h_active*1/4)) || (de_cnt >=  (h_active*3/4)));  // ī��Ʈ�� h_active ������ 1/4���� �۰ų� 3/4 �̻��� ��

// ���� 2 (���� / �׸� / ��� / ȭ��Ʈ / ��)
wire p2_r_en = ( de_cnt <  (h_active*1/5)) || (de_cnt >= (h_active*4/5));  // ī��Ʈ�� h_active ������ 1/5 �̸��̰ų� 4/5 �̻��� ��
wire p2_g_en = ((de_cnt >= (h_active*1/5)) && (de_cnt <  (h_active*2/5))) || (de_cnt >= (h_active*4/5));  // 1/5 �̻� 2/5 �̸��̰ų� 4/5 �̻��� ��
wire p2_b_en = ((de_cnt >= (h_active*2/5)) && (de_cnt <  (h_active*3/5))) || (de_cnt >= (h_active*4/5));  // 2/5 �̻� 3/5 �̸��̰ų� 4/5 �̻��� ��

// ���� 3 (����!)
wire p3_r_en = (line_cnt<v_back_porch+v_sync_width+(v_active*1/2));  // �� ��ġ�� ��ũ ������ ����Ͽ� ī��Ʈ
wire p3_g_en = (de_cnt<(h_active*1/2));  // h_active ������ ���� �̸��� ��
wire p3_b_en = ((de_cnt<(h_active*1/2)) && (line_cnt<v_back_porch+v_sync_width+(v_active*1/2))) || ((de_cnt>=(h_active*1/2))&&(line_cnt>=v_back_porch+v_sync_width+(v_active*1/2))); // ���ǿ� �´� ī��Ʈ��

// ���� ���� ��ȣ�� ���� ���� ���� ����
wire r_en = (pattern_select == 2'd0)?    p0_r_en :    // ���� ��ȣ�� 00�� ��� p0_r_en
         (pattern_select == 2'd1)?    p1_r_en :      // ���� ��ȣ�� 01�� ��� p1_r_en
         (pattern_select == 2'd2)?    p2_r_en : p3_r_en; // ���� ��ȣ�� 10�� ��� p2_r_en, ������ ���� p3_r_en

wire g_en = (pattern_select == 2'd0)?    p0_g_en :    // ���� ��ȣ�� 00�� ��� p0_g_en
         (pattern_select == 2'd1)?    p1_g_en :     // ���� ��ȣ�� 01�� ��� p1_g_en
         (pattern_select == 2'd2)?    p2_g_en : p3_g_en;  // ���� ��ȣ�� 10�� ��� p2_g_en, ������ ���� p3_g_en

wire b_en = (pattern_select == 2'd0)?    p0_b_en :    // ���� ��ȣ�� 00�� ��� p0_b_en
         (pattern_select == 2'd1)?    p1_b_en :     // ���� ��ȣ�� 01�� ��� p1_b_en
         (pattern_select == 2'd2)?    p2_b_en : p3_b_en; // ���� ��ȣ�� 10�� ��� p2_b_en, ������ ���� p3_b_en

////Color data out for Zybo 7010
//���� RGB enable ���� data ����� ������
assign o_r_data = (de & r_en) ? 4'b1111 : 4'b0;  //Red data ���
assign o_g_data = (de & g_en) ? 4'b1111 : 4'b0;  //Green data ���
assign o_b_data = (de & b_en) ? 4'b1111 : 4'b0;  //Blue data ���

endmodule


