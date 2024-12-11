// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Dec  4 11:41:32 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week12_finalcopied/final_copied/final_copied.sim/sim_1/synth/timing/xsim/digital_safe_sys_tb_time_synth.v}
// Design      : digit_safe_sys
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_gen_25M
   (clk_out1,
    rst_IBUF,
    clk_ref);
  output clk_out1;
  input rst_IBUF;
  input clk_ref;

  wire clk_out1;
  wire clk_ref;
  wire rst_IBUF;

  (* IMPORTED_FROM = "c:/Users/namkukhyeon/Documents/FPGA/FPGA Lab/week12_finalcopied/final_copied/final_copied.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_gen
       (.clk_in1(clk_ref),
        .clk_out1(clk_out1),
        .reset(rst_IBUF));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(47.250000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(46.875000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module debouncer
   (down_deb,
    current_digit_0,
    D,
    state_reg_0,
    clk_out1,
    rst_IBUF,
    state_reg_1,
    pw_set_prev,
    \current_digit_reg[0] ,
    pw_set_sync,
    \current_digit_reg[0]_0 ,
    down_deb_prev,
    \digits_reg[3][1] ,
    pw_endset_deb_prev,
    pw_endset_deb,
    \current_digit[1]_i_3_0 ,
    \digits_reg[3][0] ,
    up_deb_prev,
    up_deb,
    \digits_reg[3][0]_0 ,
    \digits_reg[3][1]_0 ,
    \digits_reg[3][1]_1 ,
    \digits_reg[3][1]_2 ,
    \current_digit[1]_i_3_1 ,
    ok_prev,
    ok_sync);
  output down_deb;
  output current_digit_0;
  output [1:0]D;
  output state_reg_0;
  input clk_out1;
  input rst_IBUF;
  input state_reg_1;
  input pw_set_prev;
  input \current_digit_reg[0] ;
  input pw_set_sync;
  input \current_digit_reg[0]_0 ;
  input down_deb_prev;
  input \digits_reg[3][1] ;
  input pw_endset_deb_prev;
  input pw_endset_deb;
  input \current_digit[1]_i_3_0 ;
  input \digits_reg[3][0] ;
  input up_deb_prev;
  input up_deb;
  input \digits_reg[3][0]_0 ;
  input \digits_reg[3][1]_0 ;
  input \digits_reg[3][1]_1 ;
  input \digits_reg[3][1]_2 ;
  input \current_digit[1]_i_3_1 ;
  input ok_prev;
  input ok_sync;

  wire [1:0]D;
  wire clk_out1;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[10]_i_1__0_n_0 ;
  wire \count[11]_i_1__0_n_0 ;
  wire \count[12]_i_1__0_n_0 ;
  wire \count[13]_i_1__0_n_0 ;
  wire \count[14]_i_1__0_n_0 ;
  wire \count[15]_i_1__0_n_0 ;
  wire \count[16]_i_1__0_n_0 ;
  wire \count[17]_i_1__0_n_0 ;
  wire \count[18]_i_1__0_n_0 ;
  wire \count[18]_i_2__0_n_0 ;
  wire \count[18]_i_3__0_n_0 ;
  wire \count[18]_i_4__0_n_0 ;
  wire \count[18]_i_5__0_n_0 ;
  wire \count[18]_i_6__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[5]_i_1__0_n_0 ;
  wire \count[6]_i_1__0_n_0 ;
  wire \count[7]_i_1__0_n_0 ;
  wire \count[8]_i_1__0_n_0 ;
  wire \count[9]_i_1__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire \current_digit[1]_i_3_0 ;
  wire \current_digit[1]_i_3_1 ;
  wire \current_digit[1]_i_4_n_0 ;
  wire \current_digit[1]_i_6_n_0 ;
  wire current_digit_0;
  wire \current_digit_reg[0] ;
  wire \current_digit_reg[0]_0 ;
  wire \digits_reg[3][0] ;
  wire \digits_reg[3][0]_0 ;
  wire \digits_reg[3][1] ;
  wire \digits_reg[3][1]_0 ;
  wire \digits_reg[3][1]_1 ;
  wire \digits_reg[3][1]_2 ;
  wire down_deb;
  wire down_deb_prev;
  wire ok_prev;
  wire ok_sync;
  wire pw_endset_deb;
  wire pw_endset_deb_prev;
  wire pw_set_prev;
  wire pw_set_sync;
  wire rst_IBUF;
  wire state_i_1__0_n_0;
  wire state_reg_0;
  wire state_reg_1;
  wire up_deb;
  wire up_deb_prev;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({1'b0,1'b0,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[0]_i_1__0 
       (.I0(down_deb),
        .I1(state_reg_1),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[10]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__1_n_6),
        .O(\count[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[11]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__1_n_5),
        .O(\count[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[12]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__1_n_4),
        .O(\count[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[13]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__2_n_7),
        .O(\count[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[14]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__2_n_6),
        .O(\count[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[15]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__2_n_5),
        .O(\count[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[16]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__2_n_4),
        .O(\count[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[17]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__3_n_7),
        .O(\count[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[18]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__3_n_6),
        .O(\count[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \count[18]_i_2__0 
       (.I0(\count[18]_i_3__0_n_0 ),
        .I1(\count[18]_i_4__0_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count[18]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_3__0 
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[15] ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[12] ),
        .I4(\count[18]_i_5__0_n_0 ),
        .O(\count[18]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_4__0 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[18] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count[18]_i_6__0_n_0 ),
        .O(\count[18]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[18]_i_5__0 
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[14] ),
        .O(\count[18]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[18]_i_6__0 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[4] ),
        .O(\count[18]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[1]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry_n_7),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[2]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry_n_6),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[3]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry_n_5),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[4]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry_n_4),
        .O(\count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[5]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__0_n_7),
        .O(\count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[6]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__0_n_6),
        .O(\count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[7]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__0_n_5),
        .O(\count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[8]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__0_n_4),
        .O(\count[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[9]_i_1__0 
       (.I0(\count[18]_i_2__0_n_0 ),
        .I1(state_reg_1),
        .I2(down_deb),
        .I3(count0_carry__1_n_7),
        .O(\count[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[10]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[11]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[12]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[13]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[14]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[15]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[16]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[17]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[18]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[4]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[5]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[6]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[7]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[8]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[9]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFF7555FFFFFFFF)) 
    \current_digit[1]_i_3 
       (.I0(\current_digit[1]_i_4_n_0 ),
        .I1(pw_set_prev),
        .I2(\current_digit_reg[0] ),
        .I3(pw_set_sync),
        .I4(\current_digit_reg[0]_0 ),
        .I5(\current_digit[1]_i_6_n_0 ),
        .O(current_digit_0));
  LUT6 #(
    .INIT(64'hFFF2FFFFFFFFFFFF)) 
    \current_digit[1]_i_4 
       (.I0(down_deb),
        .I1(down_deb_prev),
        .I2(\digits_reg[3][1] ),
        .I3(pw_endset_deb_prev),
        .I4(pw_endset_deb),
        .I5(\current_digit[1]_i_3_0 ),
        .O(\current_digit[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2FFFFFFFFFF)) 
    \current_digit[1]_i_6 
       (.I0(down_deb),
        .I1(down_deb_prev),
        .I2(\digits_reg[3][1] ),
        .I3(\current_digit[1]_i_3_1 ),
        .I4(ok_prev),
        .I5(ok_sync),
        .O(\current_digit[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800080808AA0808)) 
    \digits[0][0]_i_1 
       (.I0(\digits_reg[3][0] ),
        .I1(down_deb),
        .I2(down_deb_prev),
        .I3(up_deb_prev),
        .I4(up_deb),
        .I5(\digits_reg[3][0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0606060691990000)) 
    \digits[0][1]_i_1 
       (.I0(\digits_reg[3][0] ),
        .I1(\digits_reg[3][1]_0 ),
        .I2(\digits_reg[3][1]_1 ),
        .I3(\digits_reg[3][1]_2 ),
        .I4(state_reg_0),
        .I5(\digits_reg[3][1] ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \digits[0][3]_i_6 
       (.I0(down_deb),
        .I1(down_deb_prev),
        .O(state_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    state_i_1__0
       (.I0(down_deb),
        .I1(state_reg_1),
        .I2(\count[18]_i_2__0_n_0 ),
        .O(state_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_i_1__0_n_0),
        .Q(down_deb));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (pw_endset_deb,
    clk_out1,
    rst_IBUF,
    state_reg_0);
  output pw_endset_deb;
  input clk_out1;
  input rst_IBUF;
  input state_reg_0;

  wire clk_out1;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[10]_i_1__2_n_0 ;
  wire \count[11]_i_1__2_n_0 ;
  wire \count[12]_i_1__2_n_0 ;
  wire \count[13]_i_1__2_n_0 ;
  wire \count[14]_i_1__2_n_0 ;
  wire \count[15]_i_1__2_n_0 ;
  wire \count[16]_i_1__2_n_0 ;
  wire \count[17]_i_1__2_n_0 ;
  wire \count[18]_i_1__2_n_0 ;
  wire \count[18]_i_2__2_n_0 ;
  wire \count[18]_i_3__2_n_0 ;
  wire \count[18]_i_4__2_n_0 ;
  wire \count[18]_i_5__2_n_0 ;
  wire \count[18]_i_6__2_n_0 ;
  wire \count[1]_i_1__2_n_0 ;
  wire \count[2]_i_1__2_n_0 ;
  wire \count[3]_i_1__2_n_0 ;
  wire \count[4]_i_1__2_n_0 ;
  wire \count[5]_i_1__2_n_0 ;
  wire \count[6]_i_1__2_n_0 ;
  wire \count[7]_i_1__2_n_0 ;
  wire \count[8]_i_1__2_n_0 ;
  wire \count[9]_i_1__2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire pw_endset_deb;
  wire rst_IBUF;
  wire state_i_1__2_n_0;
  wire state_reg_0;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({1'b0,1'b0,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[0]_i_1__2 
       (.I0(pw_endset_deb),
        .I1(state_reg_0),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[10]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__1_n_6),
        .O(\count[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[11]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__1_n_5),
        .O(\count[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[12]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__1_n_4),
        .O(\count[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[13]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__2_n_7),
        .O(\count[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[14]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__2_n_6),
        .O(\count[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[15]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__2_n_5),
        .O(\count[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[16]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__2_n_4),
        .O(\count[16]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[17]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__3_n_7),
        .O(\count[17]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[18]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__3_n_6),
        .O(\count[18]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \count[18]_i_2__2 
       (.I0(\count[18]_i_3__2_n_0 ),
        .I1(\count[18]_i_4__2_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count_reg_n_0_[8] ),
        .O(\count[18]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[18]_i_3__2 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[16] ),
        .I4(\count[18]_i_5__2_n_0 ),
        .O(\count[18]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[18]_i_4__2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[17] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[15] ),
        .I4(\count[18]_i_6__2_n_0 ),
        .O(\count[18]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[18]_i_5__2 
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[13] ),
        .O(\count[18]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[18]_i_6__2 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[10] ),
        .O(\count[18]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[1]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry_n_7),
        .O(\count[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[2]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry_n_6),
        .O(\count[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[3]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry_n_5),
        .O(\count[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[4]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry_n_4),
        .O(\count[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[5]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__0_n_7),
        .O(\count[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[6]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__0_n_6),
        .O(\count[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[7]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__0_n_5),
        .O(\count[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[8]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__0_n_4),
        .O(\count[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[9]_i_1__2 
       (.I0(\count[18]_i_2__2_n_0 ),
        .I1(state_reg_0),
        .I2(pw_endset_deb),
        .I3(count0_carry__1_n_7),
        .O(\count[9]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[0]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[10]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[11]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[12]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[13]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[14]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[15]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[16]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[17]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[18]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[1]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[2]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[3]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[4]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[5]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[6]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[7]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[8]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[9]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    state_i_1__2
       (.I0(pw_endset_deb),
        .I1(state_reg_0),
        .I2(\count[18]_i_2__2_n_0 ),
        .O(state_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_i_1__2_n_0),
        .Q(pw_endset_deb));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_1
   (slide_deb,
    slide_deb_prev_reg,
    slide_deb_prev_reg_0,
    E,
    \current_digit_reg[1] ,
    \current_digit_reg[0] ,
    \current_digit_reg[1]_0 ,
    \FSM_onehot_mode_reg[1] ,
    \FSM_onehot_mode_reg[0] ,
    \FSM_onehot_mode_reg[2] ,
    slide_deb_prev_reg_1,
    state_reg_0,
    clk_out1,
    rst_IBUF,
    state_reg_1,
    slide_deb_prev,
    \FSM_onehot_mode_reg[2]_0 ,
    pw_endset_deb,
    pw_endset_deb_prev,
    \set_password_reg[15] ,
    ok_sync,
    ok_prev,
    \FSM_onehot_mode_reg[2]_1 ,
    \digits_reg[0][0] ,
    current_digit,
    \FSM_onehot_mode_reg[1]_0 ,
    CO,
    pw_set_sync,
    pw_set_prev);
  output slide_deb;
  output slide_deb_prev_reg;
  output slide_deb_prev_reg_0;
  output [0:0]E;
  output [0:0]\current_digit_reg[1] ;
  output [0:0]\current_digit_reg[0] ;
  output [0:0]\current_digit_reg[1]_0 ;
  output \FSM_onehot_mode_reg[1] ;
  output \FSM_onehot_mode_reg[0] ;
  output \FSM_onehot_mode_reg[2] ;
  output slide_deb_prev_reg_1;
  output state_reg_0;
  input clk_out1;
  input rst_IBUF;
  input state_reg_1;
  input slide_deb_prev;
  input \FSM_onehot_mode_reg[2]_0 ;
  input pw_endset_deb;
  input pw_endset_deb_prev;
  input \set_password_reg[15] ;
  input ok_sync;
  input ok_prev;
  input \FSM_onehot_mode_reg[2]_1 ;
  input \digits_reg[0][0] ;
  input [1:0]current_digit;
  input \FSM_onehot_mode_reg[1]_0 ;
  input [0:0]CO;
  input pw_set_sync;
  input pw_set_prev;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_mode[2]_i_2_n_0 ;
  wire \FSM_onehot_mode_reg[0] ;
  wire \FSM_onehot_mode_reg[1] ;
  wire \FSM_onehot_mode_reg[1]_0 ;
  wire \FSM_onehot_mode_reg[2] ;
  wire \FSM_onehot_mode_reg[2]_0 ;
  wire \FSM_onehot_mode_reg[2]_1 ;
  wire clk_out1;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[10]_i_1__1_n_0 ;
  wire \count[11]_i_1__1_n_0 ;
  wire \count[12]_i_1__1_n_0 ;
  wire \count[13]_i_1__1_n_0 ;
  wire \count[14]_i_1__1_n_0 ;
  wire \count[15]_i_1__1_n_0 ;
  wire \count[16]_i_1__1_n_0 ;
  wire \count[17]_i_1__1_n_0 ;
  wire \count[18]_i_1__1_n_0 ;
  wire \count[18]_i_2__1_n_0 ;
  wire \count[18]_i_3__1_n_0 ;
  wire \count[18]_i_4__1_n_0 ;
  wire \count[18]_i_5__1_n_0 ;
  wire \count[18]_i_6__1_n_0 ;
  wire \count[1]_i_1__1_n_0 ;
  wire \count[2]_i_1__1_n_0 ;
  wire \count[3]_i_1__1_n_0 ;
  wire \count[4]_i_1__1_n_0 ;
  wire \count[5]_i_1__1_n_0 ;
  wire \count[6]_i_1__1_n_0 ;
  wire \count[7]_i_1__1_n_0 ;
  wire \count[8]_i_1__1_n_0 ;
  wire \count[9]_i_1__1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [1:0]current_digit;
  wire [0:0]\current_digit_reg[0] ;
  wire [0:0]\current_digit_reg[1] ;
  wire [0:0]\current_digit_reg[1]_0 ;
  wire \digits_reg[0][0] ;
  wire ok_prev;
  wire ok_sync;
  wire pw_endset_deb;
  wire pw_endset_deb_prev;
  wire pw_set_prev;
  wire pw_set_sync;
  wire rst_IBUF;
  wire \set_password_reg[15] ;
  wire slide_deb;
  wire slide_deb_prev;
  wire slide_deb_prev_reg;
  wire slide_deb_prev_reg_0;
  wire slide_deb_prev_reg_1;
  wire state_i_1__1_n_0;
  wire state_reg_0;
  wire state_reg_1;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_mode[0]_i_1 
       (.I0(\FSM_onehot_mode_reg[2]_1 ),
        .I1(\FSM_onehot_mode[2]_i_2_n_0 ),
        .I2(\FSM_onehot_mode_reg[1]_0 ),
        .O(\FSM_onehot_mode_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_mode[1]_i_1 
       (.I0(\FSM_onehot_mode_reg[1]_0 ),
        .I1(\FSM_onehot_mode[2]_i_2_n_0 ),
        .I2(\FSM_onehot_mode_reg[2]_0 ),
        .O(\FSM_onehot_mode_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_mode[2]_i_1 
       (.I0(\FSM_onehot_mode_reg[2]_0 ),
        .I1(\FSM_onehot_mode[2]_i_2_n_0 ),
        .I2(\FSM_onehot_mode_reg[2]_1 ),
        .O(\FSM_onehot_mode_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888F888)) 
    \FSM_onehot_mode[2]_i_2 
       (.I0(slide_deb_prev_reg_0),
        .I1(CO),
        .I2(pw_set_sync),
        .I3(\FSM_onehot_mode_reg[1]_0 ),
        .I4(pw_set_prev),
        .I5(slide_deb_prev_reg),
        .O(\FSM_onehot_mode[2]_i_2_n_0 ));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({1'b0,1'b0,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[0]_i_1__1 
       (.I0(slide_deb),
        .I1(state_reg_1),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[10]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__1_n_6),
        .O(\count[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[11]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__1_n_5),
        .O(\count[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[12]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__1_n_4),
        .O(\count[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[13]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__2_n_7),
        .O(\count[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[14]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__2_n_6),
        .O(\count[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[15]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__2_n_5),
        .O(\count[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[16]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__2_n_4),
        .O(\count[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[17]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__3_n_7),
        .O(\count[17]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[18]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__3_n_6),
        .O(\count[18]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \count[18]_i_2__1 
       (.I0(\count[18]_i_3__1_n_0 ),
        .I1(\count[18]_i_4__1_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count[18]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_3__1 
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[15] ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[12] ),
        .I4(\count[18]_i_5__1_n_0 ),
        .O(\count[18]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_4__1 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[18] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count[18]_i_6__1_n_0 ),
        .O(\count[18]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[18]_i_5__1 
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[14] ),
        .O(\count[18]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[18]_i_6__1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[4] ),
        .O(\count[18]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[1]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry_n_7),
        .O(\count[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[2]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry_n_6),
        .O(\count[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[3]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry_n_5),
        .O(\count[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[4]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry_n_4),
        .O(\count[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[5]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__0_n_7),
        .O(\count[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[6]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__0_n_6),
        .O(\count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[7]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__0_n_5),
        .O(\count[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[8]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__0_n_4),
        .O(\count[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[9]_i_1__1 
       (.I0(\count[18]_i_2__1_n_0 ),
        .I1(state_reg_1),
        .I2(slide_deb),
        .I3(count0_carry__1_n_7),
        .O(\count[9]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[10]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[11]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[12]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[13]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[14]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[15]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[16]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[17]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[18]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[1]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[2]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[3]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[4]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[5]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[6]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[7]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[8]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[9]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_digit[1]_i_2 
       (.I0(slide_deb),
        .I1(slide_deb_prev),
        .O(state_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \current_digit[1]_i_5 
       (.I0(slide_deb_prev),
        .I1(slide_deb),
        .I2(\FSM_onehot_mode_reg[2]_1 ),
        .I3(\FSM_onehot_mode_reg[2]_0 ),
        .O(slide_deb_prev_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \digits[0][3]_i_1 
       (.I0(slide_deb_prev_reg),
        .I1(slide_deb_prev_reg_0),
        .I2(\digits_reg[0][0] ),
        .I3(current_digit[1]),
        .I4(current_digit[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000B00000)) 
    \digits[0][3]_i_3 
       (.I0(slide_deb_prev),
        .I1(slide_deb),
        .I2(ok_sync),
        .I3(ok_prev),
        .I4(\FSM_onehot_mode_reg[2]_1 ),
        .I5(\set_password_reg[15] ),
        .O(slide_deb_prev_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    \digits[1][3]_i_1 
       (.I0(slide_deb_prev_reg),
        .I1(slide_deb_prev_reg_0),
        .I2(\digits_reg[0][0] ),
        .I3(current_digit[1]),
        .I4(current_digit[0]),
        .O(\current_digit_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    \digits[2][3]_i_1 
       (.I0(slide_deb_prev_reg),
        .I1(slide_deb_prev_reg_0),
        .I2(\digits_reg[0][0] ),
        .I3(current_digit[0]),
        .I4(current_digit[1]),
        .O(\current_digit_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \digits[3][3]_i_1 
       (.I0(slide_deb_prev_reg),
        .I1(slide_deb_prev_reg_0),
        .I2(\digits_reg[0][0] ),
        .I3(current_digit[1]),
        .I4(current_digit[0]),
        .O(\current_digit_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h000000000000B000)) 
    \set_password[15]_i_1 
       (.I0(slide_deb_prev),
        .I1(slide_deb),
        .I2(\FSM_onehot_mode_reg[2]_0 ),
        .I3(pw_endset_deb),
        .I4(pw_endset_deb_prev),
        .I5(\set_password_reg[15] ),
        .O(slide_deb_prev_reg));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    state_i_1__1
       (.I0(slide_deb),
        .I1(state_reg_1),
        .I2(\count[18]_i_2__1_n_0 ),
        .O(state_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_i_1__1_n_0),
        .Q(slide_deb));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_2
   (up_deb,
    D,
    state_reg_0,
    \FSM_onehot_mode_reg[1] ,
    up_deb_prev_reg,
    clk_out1,
    rst_IBUF,
    state_reg_1,
    \digits_reg[3][2] ,
    \digits_reg[3][2]_0 ,
    \digits_reg[3][2]_1 ,
    \digits_reg[3][2]_2 ,
    \digits_reg[3][2]_3 ,
    \digits_reg[0][0] ,
    \digits_reg[0][0]_0 ,
    slide_deb,
    slide_deb_prev,
    up_deb_prev,
    down_deb_prev,
    down_deb);
  output up_deb;
  output [1:0]D;
  output state_reg_0;
  output \FSM_onehot_mode_reg[1] ;
  output up_deb_prev_reg;
  input clk_out1;
  input rst_IBUF;
  input state_reg_1;
  input \digits_reg[3][2] ;
  input \digits_reg[3][2]_0 ;
  input \digits_reg[3][2]_1 ;
  input \digits_reg[3][2]_2 ;
  input \digits_reg[3][2]_3 ;
  input \digits_reg[0][0] ;
  input \digits_reg[0][0]_0 ;
  input slide_deb;
  input slide_deb_prev;
  input up_deb_prev;
  input down_deb_prev;
  input down_deb;

  wire [1:0]D;
  wire \FSM_onehot_mode_reg[1] ;
  wire clk_out1;
  wire [18:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_1_n_0 ;
  wire \count[17]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire \count[18]_i_2_n_0 ;
  wire \count[18]_i_3_n_0 ;
  wire \count[18]_i_4_n_0 ;
  wire \count[18]_i_5_n_0 ;
  wire \count[18]_i_6_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire [18:1]data0;
  wire \digits_reg[0][0] ;
  wire \digits_reg[0][0]_0 ;
  wire \digits_reg[3][2] ;
  wire \digits_reg[3][2]_0 ;
  wire \digits_reg[3][2]_1 ;
  wire \digits_reg[3][2]_2 ;
  wire \digits_reg[3][2]_3 ;
  wire down_deb;
  wire down_deb_prev;
  wire rst_IBUF;
  wire slide_deb;
  wire slide_deb_prev;
  wire state_i_1_n_0;
  wire state_reg_0;
  wire state_reg_1;
  wire up_deb;
  wire up_deb_prev;
  wire up_deb_prev_reg;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],data0[18:17]}),
        .S({1'b0,1'b0,count[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[0]_i_1 
       (.I0(up_deb),
        .I1(state_reg_1),
        .I2(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[10]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[10]),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[11]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[11]),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[12]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[12]),
        .O(\count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[13]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[13]),
        .O(\count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[14]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[14]),
        .O(\count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[15]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[15]),
        .O(\count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[16]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[16]),
        .O(\count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[17]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[17]),
        .O(\count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[18]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[18]),
        .O(\count[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \count[18]_i_2 
       (.I0(\count[18]_i_3_n_0 ),
        .I1(\count[18]_i_4_n_0 ),
        .I2(count[16]),
        .I3(count[4]),
        .I4(count[2]),
        .O(\count[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_3 
       (.I0(count[9]),
        .I1(count[15]),
        .I2(count[10]),
        .I3(count[3]),
        .I4(\count[18]_i_5_n_0 ),
        .O(\count[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[18]_i_4 
       (.I0(count[13]),
        .I1(count[14]),
        .I2(count[6]),
        .I3(count[7]),
        .I4(\count[18]_i_6_n_0 ),
        .O(\count[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \count[18]_i_5 
       (.I0(count[1]),
        .I1(count[12]),
        .I2(count[18]),
        .I3(count[5]),
        .O(\count[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \count[18]_i_6 
       (.I0(count[17]),
        .I1(count[0]),
        .I2(count[11]),
        .I3(count[8]),
        .O(\count[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[1]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[2]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[3]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[4]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[5]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[6]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[6]),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[7]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[7]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[8]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[8]),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \count[9]_i_1 
       (.I0(\count[18]_i_2_n_0 ),
        .I1(state_reg_1),
        .I2(up_deb),
        .I3(data0[9]),
        .O(\count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[10]_i_1_n_0 ),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[11]_i_1_n_0 ),
        .Q(count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[12]_i_1_n_0 ),
        .Q(count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[13]_i_1_n_0 ),
        .Q(count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[14]_i_1_n_0 ),
        .Q(count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[15]_i_1_n_0 ),
        .Q(count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[16]_i_1_n_0 ),
        .Q(count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[17]_i_1_n_0 ),
        .Q(count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[18]_i_1_n_0 ),
        .Q(count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[3]_i_1_n_0 ),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[4]_i_1_n_0 ),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[5]_i_1_n_0 ),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[6]_i_1_n_0 ),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[7]_i_1_n_0 ),
        .Q(count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[8]_i_1_n_0 ),
        .Q(count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\count[9]_i_1_n_0 ),
        .Q(count[9]));
  LUT6 #(
    .INIT(64'h400404040A0E0EA4)) 
    \digits[0][2]_i_1 
       (.I0(state_reg_0),
        .I1(\digits_reg[3][2] ),
        .I2(\digits_reg[3][2]_0 ),
        .I3(\digits_reg[3][2]_1 ),
        .I4(\digits_reg[3][2]_2 ),
        .I5(\digits_reg[3][2]_3 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA44444444000000A)) 
    \digits[0][3]_i_2 
       (.I0(state_reg_0),
        .I1(\digits_reg[3][2] ),
        .I2(\digits_reg[3][2]_0 ),
        .I3(\digits_reg[3][2]_1 ),
        .I4(\digits_reg[3][2]_2 ),
        .I5(\digits_reg[3][2]_3 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h5757FF57)) 
    \digits[0][3]_i_4 
       (.I0(up_deb_prev_reg),
        .I1(\digits_reg[0][0] ),
        .I2(\digits_reg[0][0]_0 ),
        .I3(slide_deb),
        .I4(slide_deb_prev),
        .O(\FSM_onehot_mode_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \digits[0][3]_i_5 
       (.I0(up_deb),
        .I1(up_deb_prev),
        .O(state_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \set_password[15]_i_2 
       (.I0(up_deb_prev),
        .I1(up_deb),
        .I2(down_deb_prev),
        .I3(down_deb),
        .O(up_deb_prev_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    state_i_1
       (.I0(up_deb),
        .I1(state_reg_1),
        .I2(\count[18]_i_2_n_0 ),
        .O(state_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_i_1_n_0),
        .Q(up_deb));
endmodule

module dec2ssd_top
   (seg_en_reg_0,
    seg_en_reg_1,
    rst_IBUF,
    Q,
    \ssd_OBUF[6]_inst_i_1 ,
    \ssd_OBUF[6]_inst_i_1_0 ,
    clk_out1);
  output seg_en_reg_0;
  output seg_en_reg_1;
  input rst_IBUF;
  input [0:0]Q;
  input \ssd_OBUF[6]_inst_i_1 ;
  input [0:0]\ssd_OBUF[6]_inst_i_1_0 ;
  input clk_out1;

  wire [0:0]Q;
  wire \clk_div_counter[0]_i_2_n_0 ;
  wire \clk_div_counter_reg[0]_i_1_n_0 ;
  wire \clk_div_counter_reg[0]_i_1_n_1 ;
  wire \clk_div_counter_reg[0]_i_1_n_2 ;
  wire \clk_div_counter_reg[0]_i_1_n_3 ;
  wire \clk_div_counter_reg[0]_i_1_n_4 ;
  wire \clk_div_counter_reg[0]_i_1_n_5 ;
  wire \clk_div_counter_reg[0]_i_1_n_6 ;
  wire \clk_div_counter_reg[0]_i_1_n_7 ;
  wire \clk_div_counter_reg[12]_i_1_n_1 ;
  wire \clk_div_counter_reg[12]_i_1_n_2 ;
  wire \clk_div_counter_reg[12]_i_1_n_3 ;
  wire \clk_div_counter_reg[12]_i_1_n_4 ;
  wire \clk_div_counter_reg[12]_i_1_n_5 ;
  wire \clk_div_counter_reg[12]_i_1_n_6 ;
  wire \clk_div_counter_reg[12]_i_1_n_7 ;
  wire \clk_div_counter_reg[4]_i_1_n_0 ;
  wire \clk_div_counter_reg[4]_i_1_n_1 ;
  wire \clk_div_counter_reg[4]_i_1_n_2 ;
  wire \clk_div_counter_reg[4]_i_1_n_3 ;
  wire \clk_div_counter_reg[4]_i_1_n_4 ;
  wire \clk_div_counter_reg[4]_i_1_n_5 ;
  wire \clk_div_counter_reg[4]_i_1_n_6 ;
  wire \clk_div_counter_reg[4]_i_1_n_7 ;
  wire \clk_div_counter_reg[8]_i_1_n_0 ;
  wire \clk_div_counter_reg[8]_i_1_n_1 ;
  wire \clk_div_counter_reg[8]_i_1_n_2 ;
  wire \clk_div_counter_reg[8]_i_1_n_3 ;
  wire \clk_div_counter_reg[8]_i_1_n_4 ;
  wire \clk_div_counter_reg[8]_i_1_n_5 ;
  wire \clk_div_counter_reg[8]_i_1_n_6 ;
  wire \clk_div_counter_reg[8]_i_1_n_7 ;
  wire \clk_div_counter_reg_n_0_[0] ;
  wire \clk_div_counter_reg_n_0_[10] ;
  wire \clk_div_counter_reg_n_0_[11] ;
  wire \clk_div_counter_reg_n_0_[12] ;
  wire \clk_div_counter_reg_n_0_[13] ;
  wire \clk_div_counter_reg_n_0_[14] ;
  wire \clk_div_counter_reg_n_0_[1] ;
  wire \clk_div_counter_reg_n_0_[2] ;
  wire \clk_div_counter_reg_n_0_[3] ;
  wire \clk_div_counter_reg_n_0_[4] ;
  wire \clk_div_counter_reg_n_0_[5] ;
  wire \clk_div_counter_reg_n_0_[6] ;
  wire \clk_div_counter_reg_n_0_[7] ;
  wire \clk_div_counter_reg_n_0_[8] ;
  wire \clk_div_counter_reg_n_0_[9] ;
  wire clk_out1;
  wire rst_IBUF;
  wire seg_en_i_1_n_0;
  wire seg_en_reg_0;
  wire seg_en_reg_1;
  wire slow_clk;
  wire \ssd_OBUF[6]_inst_i_1 ;
  wire [0:0]\ssd_OBUF[6]_inst_i_1_0 ;
  wire [3:3]\NLW_clk_div_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_counter[0]_i_2 
       (.I0(\clk_div_counter_reg_n_0_[0] ),
        .O(\clk_div_counter[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[0]_i_1_n_7 ),
        .Q(\clk_div_counter_reg_n_0_[0] ));
  CARRY4 \clk_div_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_div_counter_reg[0]_i_1_n_0 ,\clk_div_counter_reg[0]_i_1_n_1 ,\clk_div_counter_reg[0]_i_1_n_2 ,\clk_div_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_counter_reg[0]_i_1_n_4 ,\clk_div_counter_reg[0]_i_1_n_5 ,\clk_div_counter_reg[0]_i_1_n_6 ,\clk_div_counter_reg[0]_i_1_n_7 }),
        .S({\clk_div_counter_reg_n_0_[3] ,\clk_div_counter_reg_n_0_[2] ,\clk_div_counter_reg_n_0_[1] ,\clk_div_counter[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[8]_i_1_n_5 ),
        .Q(\clk_div_counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[8]_i_1_n_4 ),
        .Q(\clk_div_counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[12]_i_1_n_7 ),
        .Q(\clk_div_counter_reg_n_0_[12] ));
  CARRY4 \clk_div_counter_reg[12]_i_1 
       (.CI(\clk_div_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_clk_div_counter_reg[12]_i_1_CO_UNCONNECTED [3],\clk_div_counter_reg[12]_i_1_n_1 ,\clk_div_counter_reg[12]_i_1_n_2 ,\clk_div_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[12]_i_1_n_4 ,\clk_div_counter_reg[12]_i_1_n_5 ,\clk_div_counter_reg[12]_i_1_n_6 ,\clk_div_counter_reg[12]_i_1_n_7 }),
        .S({slow_clk,\clk_div_counter_reg_n_0_[14] ,\clk_div_counter_reg_n_0_[13] ,\clk_div_counter_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[12]_i_1_n_6 ),
        .Q(\clk_div_counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[12]_i_1_n_5 ),
        .Q(\clk_div_counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[12]_i_1_n_4 ),
        .Q(slow_clk));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[0]_i_1_n_6 ),
        .Q(\clk_div_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[0]_i_1_n_5 ),
        .Q(\clk_div_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[0]_i_1_n_4 ),
        .Q(\clk_div_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[4]_i_1_n_7 ),
        .Q(\clk_div_counter_reg_n_0_[4] ));
  CARRY4 \clk_div_counter_reg[4]_i_1 
       (.CI(\clk_div_counter_reg[0]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[4]_i_1_n_0 ,\clk_div_counter_reg[4]_i_1_n_1 ,\clk_div_counter_reg[4]_i_1_n_2 ,\clk_div_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[4]_i_1_n_4 ,\clk_div_counter_reg[4]_i_1_n_5 ,\clk_div_counter_reg[4]_i_1_n_6 ,\clk_div_counter_reg[4]_i_1_n_7 }),
        .S({\clk_div_counter_reg_n_0_[7] ,\clk_div_counter_reg_n_0_[6] ,\clk_div_counter_reg_n_0_[5] ,\clk_div_counter_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[4]_i_1_n_6 ),
        .Q(\clk_div_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[4]_i_1_n_5 ),
        .Q(\clk_div_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[4]_i_1_n_4 ),
        .Q(\clk_div_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[8]_i_1_n_7 ),
        .Q(\clk_div_counter_reg_n_0_[8] ));
  CARRY4 \clk_div_counter_reg[8]_i_1 
       (.CI(\clk_div_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[8]_i_1_n_0 ,\clk_div_counter_reg[8]_i_1_n_1 ,\clk_div_counter_reg[8]_i_1_n_2 ,\clk_div_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[8]_i_1_n_4 ,\clk_div_counter_reg[8]_i_1_n_5 ,\clk_div_counter_reg[8]_i_1_n_6 ,\clk_div_counter_reg[8]_i_1_n_7 }),
        .S({\clk_div_counter_reg_n_0_[11] ,\clk_div_counter_reg_n_0_[10] ,\clk_div_counter_reg_n_0_[9] ,\clk_div_counter_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div_counter_reg[8]_i_1_n_6 ),
        .Q(\clk_div_counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    seg_en_i_1
       (.I0(seg_en_reg_0),
        .O(seg_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    seg_en_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(seg_en_i_1_n_0),
        .Q(seg_en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ssd_OBUF[6]_inst_i_7 
       (.I0(seg_en_reg_0),
        .I1(Q),
        .I2(\ssd_OBUF[6]_inst_i_1 ),
        .I3(\ssd_OBUF[6]_inst_i_1_0 ),
        .O(seg_en_reg_1));
endmodule

(* NotValidForBitStream *)
module digit_safe_sys
   (clk_ref,
    rst,
    pw_set,
    up,
    down,
    slide,
    place,
    ok,
    pw_endset,
    ssd,
    seg_en,
    led,
    led6_r,
    led6_g,
    o_vs,
    o_hs,
    o_r_data,
    o_g_data,
    o_b_data);
  input clk_ref;
  input rst;
  input pw_set;
  input up;
  input down;
  input slide;
  input place;
  input ok;
  input pw_endset;
  output [6:0]ssd;
  output seg_en;
  output [3:0]led;
  output led6_r;
  output led6_g;
  output o_vs;
  output o_hs;
  output [3:0]o_r_data;
  output [3:0]o_g_data;
  output [3:0]o_b_data;

  wire clk_25_2M;
  (* IBUF_LOW_PWR *) wire clk_ref;
  wire de;
  wire down;
  wire down_IBUF;
  wire [3:3]g_data;
  wire [3:0]led;
  wire led6_g;
  wire led6_g_OBUF;
  wire led6_r;
  wire led6_r_OBUF;
  wire [3:0]led_OBUF;
  wire [3:0]o_b_data;
  wire [0:0]o_b_data_OBUF;
  wire [3:0]o_g_data;
  wire [0:0]o_g_data_OBUF;
  wire o_hs;
  wire o_hs_OBUF;
  wire [3:0]o_r_data;
  wire [0:0]o_r_data_OBUF;
  wire o_vs;
  wire o_vs_OBUF;
  wire ok;
  wire ok_IBUF;
  wire place;
  wire place_IBUF;
  wire pw_endset;
  wire pw_endset_IBUF;
  wire pw_manager_n_3;
  wire pw_set;
  wire pw_set_IBUF;
  wire [3:3]r_data;
  wire rst;
  wire rst_IBUF;
  wire seg_en;
  wire seg_en_OBUF;
  wire slide;
  wire slide_IBUF;
  wire [6:0]ssd;
  wire [6:0]ssd_OBUF;
  wire up;
  wire up_IBUF;

initial begin
 $sdf_annotate("digital_safe_sys_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF down_IBUF_inst
       (.I(down),
        .O(down_IBUF));
  OBUF led6_g_OBUF_inst
       (.I(led6_g_OBUF),
        .O(led6_g));
  OBUF led6_r_OBUF_inst
       (.I(led6_r_OBUF),
        .O(led6_r));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \o_b_data_OBUF[0]_inst 
       (.I(o_b_data_OBUF),
        .O(o_b_data[0]));
  OBUF \o_b_data_OBUF[1]_inst 
       (.I(o_b_data_OBUF),
        .O(o_b_data[1]));
  OBUF \o_b_data_OBUF[2]_inst 
       (.I(o_b_data_OBUF),
        .O(o_b_data[2]));
  OBUF \o_b_data_OBUF[3]_inst 
       (.I(o_b_data_OBUF),
        .O(o_b_data[3]));
  OBUF \o_g_data_OBUF[0]_inst 
       (.I(o_g_data_OBUF),
        .O(o_g_data[0]));
  OBUF \o_g_data_OBUF[1]_inst 
       (.I(o_g_data_OBUF),
        .O(o_g_data[1]));
  OBUF \o_g_data_OBUF[2]_inst 
       (.I(o_g_data_OBUF),
        .O(o_g_data[2]));
  OBUF \o_g_data_OBUF[3]_inst 
       (.I(o_g_data_OBUF),
        .O(o_g_data[3]));
  OBUF o_hs_OBUF_inst
       (.I(o_hs_OBUF),
        .O(o_hs));
  OBUF \o_r_data_OBUF[0]_inst 
       (.I(o_r_data_OBUF),
        .O(o_r_data[0]));
  OBUF \o_r_data_OBUF[1]_inst 
       (.I(o_r_data_OBUF),
        .O(o_r_data[1]));
  OBUF \o_r_data_OBUF[2]_inst 
       (.I(o_r_data_OBUF),
        .O(o_r_data[2]));
  OBUF \o_r_data_OBUF[3]_inst 
       (.I(o_r_data_OBUF),
        .O(o_r_data[3]));
  OBUF o_vs_OBUF_inst
       (.I(o_vs_OBUF),
        .O(o_vs));
  IBUF ok_IBUF_inst
       (.I(ok),
        .O(ok_IBUF));
  IBUF place_IBUF_inst
       (.I(place),
        .O(place_IBUF));
  IBUF pw_endset_IBUF_inst
       (.I(pw_endset),
        .O(pw_endset_IBUF));
  password_manager pw_manager
       (.Q(led_OBUF),
        .clk_out1(clk_25_2M),
        .de(de),
        .de_reg(pw_manager_n_3),
        .down_IBUF(down_IBUF),
        .g_data(g_data),
        .led6_g_OBUF(led6_g_OBUF),
        .led6_r_OBUF(led6_r_OBUF),
        .ok_IBUF(ok_IBUF),
        .place_IBUF(place_IBUF),
        .pw_endset_IBUF(pw_endset_IBUF),
        .pw_set_IBUF(pw_set_IBUF),
        .r_data(r_data),
        .rst_IBUF(rst_IBUF),
        .seg_en_OBUF(seg_en_OBUF),
        .slide_IBUF(slide_IBUF),
        .ssd_OBUF(ssd_OBUF),
        .up_IBUF(up_IBUF));
  IBUF pw_set_IBUF_inst
       (.I(pw_set),
        .O(pw_set_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF seg_en_OBUF_inst
       (.I(seg_en_OBUF),
        .O(seg_en));
  IBUF slide_IBUF_inst
       (.I(slide),
        .O(slide_IBUF));
  OBUF \ssd_OBUF[0]_inst 
       (.I(ssd_OBUF[0]),
        .O(ssd[0]));
  OBUF \ssd_OBUF[1]_inst 
       (.I(ssd_OBUF[1]),
        .O(ssd[1]));
  OBUF \ssd_OBUF[2]_inst 
       (.I(ssd_OBUF[2]),
        .O(ssd[2]));
  OBUF \ssd_OBUF[3]_inst 
       (.I(ssd_OBUF[3]),
        .O(ssd[3]));
  OBUF \ssd_OBUF[4]_inst 
       (.I(ssd_OBUF[4]),
        .O(ssd[4]));
  OBUF \ssd_OBUF[5]_inst 
       (.I(ssd_OBUF[5]),
        .O(ssd[5]));
  OBUF \ssd_OBUF[6]_inst 
       (.I(ssd_OBUF[6]),
        .O(ssd[6]));
  clk_gen_25M u0
       (.clk_out1(clk_25_2M),
        .clk_ref(clk_ref),
        .rst_IBUF(rst_IBUF));
  IBUF up_IBUF_inst
       (.I(up),
        .O(up_IBUF));
  pattern_gen vga_inst
       (.\b_data_reg[3]_0 (pw_manager_n_3),
        .clk_out1(clk_25_2M),
        .de(de),
        .g_data(g_data),
        .o_b_data_OBUF(o_b_data_OBUF),
        .o_g_data_OBUF(o_g_data_OBUF),
        .o_hs_OBUF(o_hs_OBUF),
        .o_r_data_OBUF(o_r_data_OBUF),
        .o_vs_OBUF(o_vs_OBUF),
        .r_data(r_data),
        .rst_IBUF(rst_IBUF));
endmodule

module password_manager
   (seg_en_OBUF,
    led6_r_OBUF,
    led6_g_OBUF,
    de_reg,
    Q,
    r_data,
    g_data,
    ssd_OBUF,
    up_IBUF,
    clk_out1,
    down_IBUF,
    slide_IBUF,
    pw_endset_IBUF,
    place_IBUF,
    rst_IBUF,
    ok_IBUF,
    pw_set_IBUF,
    de);
  output seg_en_OBUF;
  output led6_r_OBUF;
  output led6_g_OBUF;
  output de_reg;
  output [3:0]Q;
  output [0:0]r_data;
  output [0:0]g_data;
  output [6:0]ssd_OBUF;
  input up_IBUF;
  input clk_out1;
  input down_IBUF;
  input slide_IBUF;
  input pw_endset_IBUF;
  input place_IBUF;
  input rst_IBUF;
  input ok_IBUF;
  input pw_set_IBUF;
  input de;

  wire \FSM_onehot_mode_reg_n_0_[0] ;
  wire \FSM_onehot_mode_reg_n_0_[1] ;
  wire \FSM_onehot_mode_reg_n_0_[2] ;
  wire [3:0]Q;
  wire clk_out1;
  wire [1:0]current_digit;
  wire \current_digit[0]_i_1_n_0 ;
  wire \current_digit[1]_i_1_n_0 ;
  wire current_digit_0;
  wire db_down_n_2;
  wire db_down_n_3;
  wire db_down_n_4;
  wire db_slide_n_1;
  wire db_slide_n_10;
  wire db_slide_n_11;
  wire db_slide_n_2;
  wire db_slide_n_4;
  wire db_slide_n_5;
  wire db_slide_n_6;
  wire db_slide_n_7;
  wire db_slide_n_8;
  wire db_slide_n_9;
  wire db_up_n_1;
  wire db_up_n_2;
  wire db_up_n_3;
  wire db_up_n_4;
  wire db_up_n_5;
  wire de;
  wire de_reg;
  wire digits;
  wire \digits[0][0]_i_2_n_0 ;
  wire \digits[0][3]_i_10_n_0 ;
  wire \digits[0][3]_i_7_n_0 ;
  wire \digits[0][3]_i_8_n_0 ;
  wire \digits[0][3]_i_9_n_0 ;
  wire [3:0]\digits_reg[0] ;
  wire [3:0]\digits_reg[1] ;
  wire [3:0]\digits_reg[2] ;
  wire [3:0]\digits_reg[3] ;
  wire display_digits_n_1;
  wire down_IBUF;
  wire down_deb;
  wire down_deb_prev;
  wire [0:0]g_data;
  wire led6_g_OBUF;
  wire led6_r_OBUF;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire mode0_carry__0_i_1_n_0;
  wire mode0_carry__0_i_2_n_0;
  wire mode0_carry__0_n_2;
  wire mode0_carry__0_n_3;
  wire mode0_carry_i_1_n_0;
  wire mode0_carry_i_2_n_0;
  wire mode0_carry_i_3_n_0;
  wire mode0_carry_i_4_n_0;
  wire mode0_carry_n_0;
  wire mode0_carry_n_1;
  wire mode0_carry_n_2;
  wire mode0_carry_n_3;
  wire ok_IBUF;
  wire ok_prev;
  wire ok_prev_state;
  wire ok_sync;
  wire place_IBUF;
  wire pw_endset_IBUF;
  wire pw_endset_deb;
  wire pw_endset_deb_prev;
  wire pw_set_IBUF;
  wire pw_set_prev;
  wire pw_set_sync;
  wire [0:0]r_data;
  wire rst_IBUF;
  wire seg_en_OBUF;
  wire [15:0]set_password;
  wire slide_IBUF;
  wire slide_deb;
  wire slide_deb_prev;
  wire [6:0]ssd_OBUF;
  wire sync_down_n_0;
  wire sync_ok_n_1;
  wire sync_place_n_0;
  wire sync_place_n_1;
  wire sync_pw_endset_n_0;
  wire sync_slide_n_0;
  wire sync_up_n_0;
  wire up_IBUF;
  wire up_deb;
  wire up_deb_prev;
  wire [1:0]vga_status;
  wire \vga_status[0]_i_1_n_0 ;
  wire \vga_status[1]_i_1_n_0 ;
  wire [3:0]NLW_mode0_carry_O_UNCONNECTED;
  wire [3:2]NLW_mode0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_mode0_carry__0_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_mode_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(db_slide_n_9),
        .PRE(rst_IBUF),
        .Q(\FSM_onehot_mode_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mode_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(db_slide_n_8),
        .Q(\FSM_onehot_mode_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mode_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(db_slide_n_7),
        .Q(\FSM_onehot_mode_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \b_data[3]_i_1 
       (.I0(de),
        .I1(vga_status[1]),
        .I2(vga_status[0]),
        .O(de_reg));
  LUT6 #(
    .INIT(64'h0000FFFF00E00000)) 
    \current_digit[0]_i_1 
       (.I0(\FSM_onehot_mode_reg_n_0_[1] ),
        .I1(\FSM_onehot_mode_reg_n_0_[2] ),
        .I2(slide_deb),
        .I3(slide_deb_prev),
        .I4(current_digit_0),
        .I5(current_digit[0]),
        .O(\current_digit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E0FFFFE0000000)) 
    \current_digit[1]_i_1 
       (.I0(\FSM_onehot_mode_reg_n_0_[1] ),
        .I1(\FSM_onehot_mode_reg_n_0_[2] ),
        .I2(db_slide_n_11),
        .I3(current_digit[0]),
        .I4(current_digit_0),
        .I5(current_digit[1]),
        .O(\current_digit[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_digit_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\current_digit[0]_i_1_n_0 ),
        .Q(current_digit[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_digit_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\current_digit[1]_i_1_n_0 ),
        .Q(current_digit[1]));
  debouncer db_down
       (.D({db_down_n_2,db_down_n_3}),
        .clk_out1(clk_out1),
        .\current_digit[1]_i_3_0 (\FSM_onehot_mode_reg_n_0_[1] ),
        .\current_digit[1]_i_3_1 (\FSM_onehot_mode_reg_n_0_[2] ),
        .current_digit_0(current_digit_0),
        .\current_digit_reg[0] (\FSM_onehot_mode_reg_n_0_[0] ),
        .\current_digit_reg[0]_0 (db_slide_n_10),
        .\digits_reg[3][0] (\digits[0][3]_i_9_n_0 ),
        .\digits_reg[3][0]_0 (\digits[0][0]_i_2_n_0 ),
        .\digits_reg[3][1] (db_up_n_3),
        .\digits_reg[3][1]_0 (\digits[0][3]_i_8_n_0 ),
        .\digits_reg[3][1]_1 (\digits[0][3]_i_10_n_0 ),
        .\digits_reg[3][1]_2 (\digits[0][3]_i_7_n_0 ),
        .down_deb(down_deb),
        .down_deb_prev(down_deb_prev),
        .ok_prev(ok_prev),
        .ok_sync(ok_sync),
        .pw_endset_deb(pw_endset_deb),
        .pw_endset_deb_prev(pw_endset_deb_prev),
        .pw_set_prev(pw_set_prev),
        .pw_set_sync(pw_set_sync),
        .rst_IBUF(rst_IBUF),
        .state_reg_0(db_down_n_4),
        .state_reg_1(sync_down_n_0),
        .up_deb(up_deb),
        .up_deb_prev(up_deb_prev));
  debouncer_0 db_pw_endset
       (.clk_out1(clk_out1),
        .pw_endset_deb(pw_endset_deb),
        .rst_IBUF(rst_IBUF),
        .state_reg_0(sync_pw_endset_n_0));
  debouncer_1 db_slide
       (.CO(mode0_carry__0_n_2),
        .E(digits),
        .\FSM_onehot_mode_reg[0] (db_slide_n_8),
        .\FSM_onehot_mode_reg[1] (db_slide_n_7),
        .\FSM_onehot_mode_reg[1]_0 (\FSM_onehot_mode_reg_n_0_[0] ),
        .\FSM_onehot_mode_reg[2] (db_slide_n_9),
        .\FSM_onehot_mode_reg[2]_0 (\FSM_onehot_mode_reg_n_0_[1] ),
        .\FSM_onehot_mode_reg[2]_1 (\FSM_onehot_mode_reg_n_0_[2] ),
        .clk_out1(clk_out1),
        .current_digit(current_digit),
        .\current_digit_reg[0] (db_slide_n_5),
        .\current_digit_reg[1] (db_slide_n_4),
        .\current_digit_reg[1]_0 (db_slide_n_6),
        .\digits_reg[0][0] (db_up_n_4),
        .ok_prev(ok_prev),
        .ok_sync(ok_sync),
        .pw_endset_deb(pw_endset_deb),
        .pw_endset_deb_prev(pw_endset_deb_prev),
        .pw_set_prev(pw_set_prev),
        .pw_set_sync(pw_set_sync),
        .rst_IBUF(rst_IBUF),
        .\set_password_reg[15] (db_up_n_5),
        .slide_deb(slide_deb),
        .slide_deb_prev(slide_deb_prev),
        .slide_deb_prev_reg(db_slide_n_1),
        .slide_deb_prev_reg_0(db_slide_n_2),
        .slide_deb_prev_reg_1(db_slide_n_10),
        .state_reg_0(db_slide_n_11),
        .state_reg_1(sync_slide_n_0));
  debouncer_2 db_up
       (.D({db_up_n_1,db_up_n_2}),
        .\FSM_onehot_mode_reg[1] (db_up_n_4),
        .clk_out1(clk_out1),
        .\digits_reg[0][0] (\FSM_onehot_mode_reg_n_0_[1] ),
        .\digits_reg[0][0]_0 (\FSM_onehot_mode_reg_n_0_[2] ),
        .\digits_reg[3][2] (db_down_n_4),
        .\digits_reg[3][2]_0 (\digits[0][3]_i_7_n_0 ),
        .\digits_reg[3][2]_1 (\digits[0][3]_i_8_n_0 ),
        .\digits_reg[3][2]_2 (\digits[0][3]_i_9_n_0 ),
        .\digits_reg[3][2]_3 (\digits[0][3]_i_10_n_0 ),
        .down_deb(down_deb),
        .down_deb_prev(down_deb_prev),
        .rst_IBUF(rst_IBUF),
        .slide_deb(slide_deb),
        .slide_deb_prev(slide_deb_prev),
        .state_reg_0(db_up_n_3),
        .state_reg_1(sync_up_n_0),
        .up_deb(up_deb),
        .up_deb_prev(up_deb_prev),
        .up_deb_prev_reg(db_up_n_5));
  LUT4 #(
    .INIT(16'h70F0)) 
    \digits[0][0]_i_2 
       (.I0(\digits[0][3]_i_9_n_0 ),
        .I1(\digits[0][3]_i_8_n_0 ),
        .I2(\digits[0][3]_i_10_n_0 ),
        .I3(\digits[0][3]_i_7_n_0 ),
        .O(\digits[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \digits[0][3]_i_10 
       (.I0(\digits_reg[2] [3]),
        .I1(\digits_reg[0] [3]),
        .I2(\digits_reg[1] [3]),
        .I3(current_digit[0]),
        .I4(current_digit[1]),
        .I5(\digits_reg[3] [3]),
        .O(\digits[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0033550FFF3355)) 
    \digits[0][3]_i_7 
       (.I0(\digits_reg[0] [2]),
        .I1(\digits_reg[1] [2]),
        .I2(\digits_reg[3] [2]),
        .I3(current_digit[0]),
        .I4(current_digit[1]),
        .I5(\digits_reg[2] [2]),
        .O(\digits[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3355000F3355FF0F)) 
    \digits[0][3]_i_8 
       (.I0(\digits_reg[2] [1]),
        .I1(\digits_reg[3] [1]),
        .I2(\digits_reg[0] [1]),
        .I3(current_digit[0]),
        .I4(current_digit[1]),
        .I5(\digits_reg[1] [1]),
        .O(\digits[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \digits[0][3]_i_9 
       (.I0(\digits_reg[0] [0]),
        .I1(\digits_reg[1] [0]),
        .I2(\digits_reg[2] [0]),
        .I3(current_digit[1]),
        .I4(current_digit[0]),
        .I5(\digits_reg[3] [0]),
        .O(\digits[0][3]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[0][0] 
       (.C(clk_out1),
        .CE(digits),
        .CLR(rst_IBUF),
        .D(db_down_n_3),
        .Q(\digits_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[0][1] 
       (.C(clk_out1),
        .CE(digits),
        .CLR(rst_IBUF),
        .D(db_down_n_2),
        .Q(\digits_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[0][2] 
       (.C(clk_out1),
        .CE(digits),
        .CLR(rst_IBUF),
        .D(db_up_n_2),
        .Q(\digits_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[0][3] 
       (.C(clk_out1),
        .CE(digits),
        .CLR(rst_IBUF),
        .D(db_up_n_1),
        .Q(\digits_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[1][0] 
       (.C(clk_out1),
        .CE(db_slide_n_4),
        .CLR(rst_IBUF),
        .D(db_down_n_3),
        .Q(\digits_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[1][1] 
       (.C(clk_out1),
        .CE(db_slide_n_4),
        .CLR(rst_IBUF),
        .D(db_down_n_2),
        .Q(\digits_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[1][2] 
       (.C(clk_out1),
        .CE(db_slide_n_4),
        .CLR(rst_IBUF),
        .D(db_up_n_2),
        .Q(\digits_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[1][3] 
       (.C(clk_out1),
        .CE(db_slide_n_4),
        .CLR(rst_IBUF),
        .D(db_up_n_1),
        .Q(\digits_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[2][0] 
       (.C(clk_out1),
        .CE(db_slide_n_5),
        .CLR(rst_IBUF),
        .D(db_down_n_3),
        .Q(\digits_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[2][1] 
       (.C(clk_out1),
        .CE(db_slide_n_5),
        .CLR(rst_IBUF),
        .D(db_down_n_2),
        .Q(\digits_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[2][2] 
       (.C(clk_out1),
        .CE(db_slide_n_5),
        .CLR(rst_IBUF),
        .D(db_up_n_2),
        .Q(\digits_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[2][3] 
       (.C(clk_out1),
        .CE(db_slide_n_5),
        .CLR(rst_IBUF),
        .D(db_up_n_1),
        .Q(\digits_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[3][0] 
       (.C(clk_out1),
        .CE(db_slide_n_6),
        .CLR(rst_IBUF),
        .D(db_down_n_3),
        .Q(\digits_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[3][1] 
       (.C(clk_out1),
        .CE(db_slide_n_6),
        .CLR(rst_IBUF),
        .D(db_down_n_2),
        .Q(\digits_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[3][2] 
       (.C(clk_out1),
        .CE(db_slide_n_6),
        .CLR(rst_IBUF),
        .D(db_up_n_2),
        .Q(\digits_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \digits_reg[3][3] 
       (.C(clk_out1),
        .CE(db_slide_n_6),
        .CLR(rst_IBUF),
        .D(db_up_n_1),
        .Q(\digits_reg[3] [3]));
  dec2ssd_top display_digits
       (.Q(\digits_reg[0] [3]),
        .clk_out1(clk_out1),
        .rst_IBUF(rst_IBUF),
        .seg_en_reg_0(seg_en_OBUF),
        .seg_en_reg_1(display_digits_n_1),
        .\ssd_OBUF[6]_inst_i_1 (sync_place_n_0),
        .\ssd_OBUF[6]_inst_i_1_0 (\digits_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    down_deb_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(down_deb),
        .Q(down_deb_prev));
  LUT3 #(
    .INIT(8'hA2)) 
    \g_data[3]_i_1 
       (.I0(de),
        .I1(vga_status[1]),
        .I2(vga_status[0]),
        .O(g_data));
  FDCE #(
    .INIT(1'b0)) 
    led6_g_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(sync_place_n_0),
        .Q(led6_g_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    led6_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(sync_place_n_1),
        .Q(led6_r_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \led[0]_i_1 
       (.I0(current_digit[0]),
        .I1(current_digit[1]),
        .O(\led[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led[1]_i_1 
       (.I0(current_digit[0]),
        .I1(current_digit[1]),
        .O(\led[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led[2]_i_1 
       (.I0(current_digit[1]),
        .I1(current_digit[0]),
        .O(\led[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[3]_i_1 
       (.I0(current_digit[0]),
        .I1(current_digit[1]),
        .O(\led[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\led[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\led[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\led[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\led[3]_i_1_n_0 ),
        .Q(Q[3]));
  CARRY4 mode0_carry
       (.CI(1'b0),
        .CO({mode0_carry_n_0,mode0_carry_n_1,mode0_carry_n_2,mode0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mode0_carry_O_UNCONNECTED[3:0]),
        .S({mode0_carry_i_1_n_0,mode0_carry_i_2_n_0,mode0_carry_i_3_n_0,mode0_carry_i_4_n_0}));
  CARRY4 mode0_carry__0
       (.CI(mode0_carry_n_0),
        .CO({NLW_mode0_carry__0_CO_UNCONNECTED[3:2],mode0_carry__0_n_2,mode0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mode0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,mode0_carry__0_i_1_n_0,mode0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mode0_carry__0_i_1
       (.I0(set_password[15]),
        .I1(\digits_reg[3] [3]),
        .O(mode0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mode0_carry__0_i_2
       (.I0(set_password[13]),
        .I1(\digits_reg[3] [1]),
        .I2(set_password[14]),
        .I3(\digits_reg[3] [2]),
        .I4(\digits_reg[3] [0]),
        .I5(set_password[12]),
        .O(mode0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mode0_carry_i_1
       (.I0(set_password[10]),
        .I1(\digits_reg[2] [2]),
        .I2(set_password[11]),
        .I3(\digits_reg[2] [3]),
        .I4(\digits_reg[2] [1]),
        .I5(set_password[9]),
        .O(mode0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mode0_carry_i_2
       (.I0(\digits_reg[1] [2]),
        .I1(set_password[6]),
        .I2(set_password[7]),
        .I3(\digits_reg[1] [3]),
        .I4(set_password[8]),
        .I5(\digits_reg[2] [0]),
        .O(mode0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mode0_carry_i_3
       (.I0(set_password[4]),
        .I1(\digits_reg[1] [0]),
        .I2(set_password[5]),
        .I3(\digits_reg[1] [1]),
        .I4(\digits_reg[0] [3]),
        .I5(set_password[3]),
        .O(mode0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mode0_carry_i_4
       (.I0(set_password[2]),
        .I1(\digits_reg[0] [2]),
        .I2(set_password[0]),
        .I3(\digits_reg[0] [0]),
        .I4(set_password[1]),
        .I5(\digits_reg[0] [1]),
        .O(mode0_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ok_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ok_sync),
        .Q(ok_prev));
  FDCE #(
    .INIT(1'b0)) 
    ok_prev_state_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ok_sync),
        .Q(ok_prev_state));
  FDCE #(
    .INIT(1'b0)) 
    pw_endset_deb_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(pw_endset_deb),
        .Q(pw_endset_deb_prev));
  FDCE #(
    .INIT(1'b0)) 
    pw_set_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(pw_set_sync),
        .Q(pw_set_prev));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \r_data[3]_i_1 
       (.I0(de),
        .I1(vga_status[0]),
        .I2(vga_status[1]),
        .O(r_data));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[0] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[0] [0]),
        .Q(set_password[0]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[10] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[2] [2]),
        .Q(set_password[10]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[11] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[2] [3]),
        .Q(set_password[11]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[12] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[3] [0]),
        .Q(set_password[12]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[13] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[3] [1]),
        .Q(set_password[13]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[14] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[3] [2]),
        .Q(set_password[14]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[15] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[3] [3]),
        .Q(set_password[15]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[1] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[0] [1]),
        .Q(set_password[1]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[2] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[0] [2]),
        .Q(set_password[2]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[3] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[0] [3]),
        .Q(set_password[3]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[4] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[1] [0]),
        .Q(set_password[4]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[5] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[1] [1]),
        .Q(set_password[5]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[6] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[1] [2]),
        .Q(set_password[6]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[7] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[1] [3]),
        .Q(set_password[7]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[8] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[2] [0]),
        .Q(set_password[8]));
  FDCE #(
    .INIT(1'b0)) 
    \set_password_reg[9] 
       (.C(clk_out1),
        .CE(db_slide_n_1),
        .CLR(rst_IBUF),
        .D(\digits_reg[2] [1]),
        .Q(set_password[9]));
  FDCE #(
    .INIT(1'b0)) 
    slide_deb_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(slide_deb),
        .Q(slide_deb_prev));
  synchronizer sync_down
       (.clk_out1(clk_out1),
        .down_IBUF(down_IBUF),
        .sync_out_reg_0(sync_down_n_0));
  synchronizer_3 sync_ok
       (.\FSM_onehot_mode_reg[2] (sync_ok_n_1),
        .clk_out1(clk_out1),
        .ok_IBUF(ok_IBUF),
        .ok_prev_state(ok_prev_state),
        .ok_sync(ok_sync),
        .\vga_status_reg[0] (\FSM_onehot_mode_reg_n_0_[2] ),
        .\vga_status_reg[0]_0 (\FSM_onehot_mode_reg_n_0_[1] ),
        .\vga_status_reg[0]_1 (\FSM_onehot_mode_reg_n_0_[0] ),
        .\vga_status_reg[0]_2 (db_slide_n_2));
  synchronizer_4 sync_place
       (.Q(\digits_reg[1] ),
        .clk_out1(clk_out1),
        .place_IBUF(place_IBUF),
        .\ssd[2] (display_digits_n_1),
        .\ssd[4] (seg_en_OBUF),
        .ssd_OBUF(ssd_OBUF),
        .\ssd_OBUF[2]_inst_i_1_0 (\digits_reg[3] ),
        .\ssd_OBUF[4]_inst_i_1_0 (\digits_reg[2] ),
        .\ssd_OBUF[4]_inst_i_1_1 (\digits_reg[0] ),
        .sync_out_reg_0(sync_place_n_0),
        .sync_out_reg_1(sync_place_n_1));
  synchronizer_5 sync_pw_endset
       (.clk_out1(clk_out1),
        .pw_endset_IBUF(pw_endset_IBUF),
        .sync_out_reg_0(sync_pw_endset_n_0));
  synchronizer_6 sync_pw_set
       (.clk_out1(clk_out1),
        .pw_set_IBUF(pw_set_IBUF),
        .pw_set_sync(pw_set_sync));
  synchronizer_7 sync_slide
       (.clk_out1(clk_out1),
        .slide_IBUF(slide_IBUF),
        .sync_out_reg_0(sync_slide_n_0));
  synchronizer_8 sync_up
       (.clk_out1(clk_out1),
        .sync_out_reg_0(sync_up_n_0),
        .up_IBUF(up_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    up_deb_prev_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(up_deb),
        .Q(up_deb_prev));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \vga_status[0]_i_1 
       (.I0(mode0_carry__0_n_2),
        .I1(db_slide_n_2),
        .I2(sync_ok_n_1),
        .I3(vga_status[0]),
        .O(\vga_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \vga_status[1]_i_1 
       (.I0(db_slide_n_2),
        .I1(mode0_carry__0_n_2),
        .I2(sync_ok_n_1),
        .I3(vga_status[1]),
        .O(\vga_status[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \vga_status_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\vga_status[0]_i_1_n_0 ),
        .Q(vga_status[0]));
  FDCE #(
    .INIT(1'b0)) 
    \vga_status_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\vga_status[1]_i_1_n_0 ),
        .Q(vga_status[1]));
endmodule

module pattern_gen
   (de,
    o_vs_OBUF,
    o_hs_OBUF,
    o_r_data_OBUF,
    o_g_data_OBUF,
    o_b_data_OBUF,
    clk_out1,
    rst_IBUF,
    r_data,
    g_data,
    \b_data_reg[3]_0 );
  output de;
  output o_vs_OBUF;
  output o_hs_OBUF;
  output [0:0]o_r_data_OBUF;
  output [0:0]o_g_data_OBUF;
  output [0:0]o_b_data_OBUF;
  input clk_out1;
  input rst_IBUF;
  input [0:0]r_data;
  input [0:0]g_data;
  input \b_data_reg[3]_0 ;

  wire \b_data_reg[3]_0 ;
  wire clk_out1;
  wire de;
  wire de_i_10_n_0;
  wire de_i_11_n_0;
  wire de_i_12_n_0;
  wire de_i_13_n_0;
  wire de_i_14_n_0;
  wire de_i_15_n_0;
  wire de_i_16_n_0;
  wire de_i_17_n_0;
  wire de_i_1_n_0;
  wire de_i_2_n_0;
  wire de_i_3_n_0;
  wire de_i_4_n_0;
  wire de_i_5_n_0;
  wire de_i_6_n_0;
  wire de_i_7_n_0;
  wire de_i_8_n_0;
  wire de_i_9_n_0;
  wire [0:0]g_data;
  wire [31:0]h_cnt;
  wire \h_cnt[31]_i_2_n_0 ;
  wire \h_cnt[31]_i_4_n_0 ;
  wire \h_cnt_reg[12]_i_2_n_0 ;
  wire \h_cnt_reg[12]_i_2_n_1 ;
  wire \h_cnt_reg[12]_i_2_n_2 ;
  wire \h_cnt_reg[12]_i_2_n_3 ;
  wire \h_cnt_reg[12]_i_2_n_4 ;
  wire \h_cnt_reg[12]_i_2_n_5 ;
  wire \h_cnt_reg[12]_i_2_n_6 ;
  wire \h_cnt_reg[12]_i_2_n_7 ;
  wire \h_cnt_reg[16]_i_2_n_0 ;
  wire \h_cnt_reg[16]_i_2_n_1 ;
  wire \h_cnt_reg[16]_i_2_n_2 ;
  wire \h_cnt_reg[16]_i_2_n_3 ;
  wire \h_cnt_reg[16]_i_2_n_4 ;
  wire \h_cnt_reg[16]_i_2_n_5 ;
  wire \h_cnt_reg[16]_i_2_n_6 ;
  wire \h_cnt_reg[16]_i_2_n_7 ;
  wire \h_cnt_reg[20]_i_2_n_0 ;
  wire \h_cnt_reg[20]_i_2_n_1 ;
  wire \h_cnt_reg[20]_i_2_n_2 ;
  wire \h_cnt_reg[20]_i_2_n_3 ;
  wire \h_cnt_reg[20]_i_2_n_4 ;
  wire \h_cnt_reg[20]_i_2_n_5 ;
  wire \h_cnt_reg[20]_i_2_n_6 ;
  wire \h_cnt_reg[20]_i_2_n_7 ;
  wire \h_cnt_reg[24]_i_2_n_0 ;
  wire \h_cnt_reg[24]_i_2_n_1 ;
  wire \h_cnt_reg[24]_i_2_n_2 ;
  wire \h_cnt_reg[24]_i_2_n_3 ;
  wire \h_cnt_reg[24]_i_2_n_4 ;
  wire \h_cnt_reg[24]_i_2_n_5 ;
  wire \h_cnt_reg[24]_i_2_n_6 ;
  wire \h_cnt_reg[24]_i_2_n_7 ;
  wire \h_cnt_reg[28]_i_2_n_0 ;
  wire \h_cnt_reg[28]_i_2_n_1 ;
  wire \h_cnt_reg[28]_i_2_n_2 ;
  wire \h_cnt_reg[28]_i_2_n_3 ;
  wire \h_cnt_reg[28]_i_2_n_4 ;
  wire \h_cnt_reg[28]_i_2_n_5 ;
  wire \h_cnt_reg[28]_i_2_n_6 ;
  wire \h_cnt_reg[28]_i_2_n_7 ;
  wire \h_cnt_reg[31]_i_3_n_2 ;
  wire \h_cnt_reg[31]_i_3_n_3 ;
  wire \h_cnt_reg[31]_i_3_n_5 ;
  wire \h_cnt_reg[31]_i_3_n_6 ;
  wire \h_cnt_reg[31]_i_3_n_7 ;
  wire \h_cnt_reg[4]_i_2_n_0 ;
  wire \h_cnt_reg[4]_i_2_n_1 ;
  wire \h_cnt_reg[4]_i_2_n_2 ;
  wire \h_cnt_reg[4]_i_2_n_3 ;
  wire \h_cnt_reg[4]_i_2_n_4 ;
  wire \h_cnt_reg[4]_i_2_n_5 ;
  wire \h_cnt_reg[4]_i_2_n_6 ;
  wire \h_cnt_reg[4]_i_2_n_7 ;
  wire \h_cnt_reg[8]_i_2_n_0 ;
  wire \h_cnt_reg[8]_i_2_n_1 ;
  wire \h_cnt_reg[8]_i_2_n_2 ;
  wire \h_cnt_reg[8]_i_2_n_3 ;
  wire \h_cnt_reg[8]_i_2_n_4 ;
  wire \h_cnt_reg[8]_i_2_n_5 ;
  wire \h_cnt_reg[8]_i_2_n_6 ;
  wire \h_cnt_reg[8]_i_2_n_7 ;
  wire \h_cnt_reg_n_0_[0] ;
  wire \h_cnt_reg_n_0_[10] ;
  wire \h_cnt_reg_n_0_[11] ;
  wire \h_cnt_reg_n_0_[12] ;
  wire \h_cnt_reg_n_0_[13] ;
  wire \h_cnt_reg_n_0_[14] ;
  wire \h_cnt_reg_n_0_[15] ;
  wire \h_cnt_reg_n_0_[16] ;
  wire \h_cnt_reg_n_0_[17] ;
  wire \h_cnt_reg_n_0_[18] ;
  wire \h_cnt_reg_n_0_[19] ;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[20] ;
  wire \h_cnt_reg_n_0_[21] ;
  wire \h_cnt_reg_n_0_[22] ;
  wire \h_cnt_reg_n_0_[23] ;
  wire \h_cnt_reg_n_0_[24] ;
  wire \h_cnt_reg_n_0_[25] ;
  wire \h_cnt_reg_n_0_[26] ;
  wire \h_cnt_reg_n_0_[27] ;
  wire \h_cnt_reg_n_0_[28] ;
  wire \h_cnt_reg_n_0_[29] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[30] ;
  wire \h_cnt_reg_n_0_[31] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire \h_cnt_reg_n_0_[4] ;
  wire \h_cnt_reg_n_0_[5] ;
  wire \h_cnt_reg_n_0_[6] ;
  wire \h_cnt_reg_n_0_[7] ;
  wire \h_cnt_reg_n_0_[8] ;
  wire \h_cnt_reg_n_0_[9] ;
  wire hs_i_1_n_0;
  wire [0:0]o_b_data_OBUF;
  wire [0:0]o_g_data_OBUF;
  wire o_hs_OBUF;
  wire [0:0]o_r_data_OBUF;
  wire o_vs_OBUF;
  wire [0:0]r_data;
  wire rst_IBUF;
  wire v_cnt;
  wire v_cnt0_carry__0_n_0;
  wire v_cnt0_carry__0_n_1;
  wire v_cnt0_carry__0_n_2;
  wire v_cnt0_carry__0_n_3;
  wire v_cnt0_carry__0_n_4;
  wire v_cnt0_carry__0_n_5;
  wire v_cnt0_carry__0_n_6;
  wire v_cnt0_carry__0_n_7;
  wire v_cnt0_carry__1_n_0;
  wire v_cnt0_carry__1_n_1;
  wire v_cnt0_carry__1_n_2;
  wire v_cnt0_carry__1_n_3;
  wire v_cnt0_carry__1_n_4;
  wire v_cnt0_carry__1_n_5;
  wire v_cnt0_carry__1_n_6;
  wire v_cnt0_carry__1_n_7;
  wire v_cnt0_carry__2_n_0;
  wire v_cnt0_carry__2_n_1;
  wire v_cnt0_carry__2_n_2;
  wire v_cnt0_carry__2_n_3;
  wire v_cnt0_carry__2_n_4;
  wire v_cnt0_carry__2_n_5;
  wire v_cnt0_carry__2_n_6;
  wire v_cnt0_carry__2_n_7;
  wire v_cnt0_carry__3_n_0;
  wire v_cnt0_carry__3_n_1;
  wire v_cnt0_carry__3_n_2;
  wire v_cnt0_carry__3_n_3;
  wire v_cnt0_carry__3_n_4;
  wire v_cnt0_carry__3_n_5;
  wire v_cnt0_carry__3_n_6;
  wire v_cnt0_carry__3_n_7;
  wire v_cnt0_carry__4_n_0;
  wire v_cnt0_carry__4_n_1;
  wire v_cnt0_carry__4_n_2;
  wire v_cnt0_carry__4_n_3;
  wire v_cnt0_carry__4_n_4;
  wire v_cnt0_carry__4_n_5;
  wire v_cnt0_carry__4_n_6;
  wire v_cnt0_carry__4_n_7;
  wire v_cnt0_carry__5_n_0;
  wire v_cnt0_carry__5_n_1;
  wire v_cnt0_carry__5_n_2;
  wire v_cnt0_carry__5_n_3;
  wire v_cnt0_carry__5_n_4;
  wire v_cnt0_carry__5_n_5;
  wire v_cnt0_carry__5_n_6;
  wire v_cnt0_carry__5_n_7;
  wire v_cnt0_carry__6_n_2;
  wire v_cnt0_carry__6_n_3;
  wire v_cnt0_carry__6_n_5;
  wire v_cnt0_carry__6_n_6;
  wire v_cnt0_carry__6_n_7;
  wire v_cnt0_carry_n_0;
  wire v_cnt0_carry_n_1;
  wire v_cnt0_carry_n_2;
  wire v_cnt0_carry_n_3;
  wire v_cnt0_carry_n_4;
  wire v_cnt0_carry_n_5;
  wire v_cnt0_carry_n_6;
  wire v_cnt0_carry_n_7;
  wire \v_cnt[0]_i_1_n_0 ;
  wire \v_cnt[10]_i_1_n_0 ;
  wire \v_cnt[11]_i_1_n_0 ;
  wire \v_cnt[12]_i_1_n_0 ;
  wire \v_cnt[13]_i_1_n_0 ;
  wire \v_cnt[14]_i_1_n_0 ;
  wire \v_cnt[15]_i_1_n_0 ;
  wire \v_cnt[16]_i_1_n_0 ;
  wire \v_cnt[17]_i_1_n_0 ;
  wire \v_cnt[18]_i_1_n_0 ;
  wire \v_cnt[19]_i_1_n_0 ;
  wire \v_cnt[1]_i_1_n_0 ;
  wire \v_cnt[20]_i_1_n_0 ;
  wire \v_cnt[21]_i_1_n_0 ;
  wire \v_cnt[22]_i_1_n_0 ;
  wire \v_cnt[23]_i_1_n_0 ;
  wire \v_cnt[24]_i_1_n_0 ;
  wire \v_cnt[25]_i_1_n_0 ;
  wire \v_cnt[26]_i_1_n_0 ;
  wire \v_cnt[27]_i_1_n_0 ;
  wire \v_cnt[28]_i_1_n_0 ;
  wire \v_cnt[29]_i_1_n_0 ;
  wire \v_cnt[2]_i_1_n_0 ;
  wire \v_cnt[30]_i_1_n_0 ;
  wire \v_cnt[31]_i_2_n_0 ;
  wire \v_cnt[31]_i_3_n_0 ;
  wire \v_cnt[3]_i_1_n_0 ;
  wire \v_cnt[4]_i_1_n_0 ;
  wire \v_cnt[5]_i_1_n_0 ;
  wire \v_cnt[6]_i_1_n_0 ;
  wire \v_cnt[7]_i_1_n_0 ;
  wire \v_cnt[8]_i_1_n_0 ;
  wire \v_cnt[9]_i_1_n_0 ;
  wire \v_cnt_reg_n_0_[0] ;
  wire \v_cnt_reg_n_0_[10] ;
  wire \v_cnt_reg_n_0_[11] ;
  wire \v_cnt_reg_n_0_[12] ;
  wire \v_cnt_reg_n_0_[13] ;
  wire \v_cnt_reg_n_0_[14] ;
  wire \v_cnt_reg_n_0_[15] ;
  wire \v_cnt_reg_n_0_[16] ;
  wire \v_cnt_reg_n_0_[17] ;
  wire \v_cnt_reg_n_0_[18] ;
  wire \v_cnt_reg_n_0_[19] ;
  wire \v_cnt_reg_n_0_[1] ;
  wire \v_cnt_reg_n_0_[20] ;
  wire \v_cnt_reg_n_0_[21] ;
  wire \v_cnt_reg_n_0_[22] ;
  wire \v_cnt_reg_n_0_[23] ;
  wire \v_cnt_reg_n_0_[24] ;
  wire \v_cnt_reg_n_0_[25] ;
  wire \v_cnt_reg_n_0_[26] ;
  wire \v_cnt_reg_n_0_[27] ;
  wire \v_cnt_reg_n_0_[28] ;
  wire \v_cnt_reg_n_0_[29] ;
  wire \v_cnt_reg_n_0_[2] ;
  wire \v_cnt_reg_n_0_[30] ;
  wire \v_cnt_reg_n_0_[31] ;
  wire \v_cnt_reg_n_0_[3] ;
  wire \v_cnt_reg_n_0_[4] ;
  wire \v_cnt_reg_n_0_[5] ;
  wire \v_cnt_reg_n_0_[6] ;
  wire \v_cnt_reg_n_0_[7] ;
  wire \v_cnt_reg_n_0_[8] ;
  wire \v_cnt_reg_n_0_[9] ;
  wire vs_i_1_n_0;
  wire vs_i_2_n_0;
  wire vs_i_3_n_0;
  wire [3:2]\NLW_h_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_v_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_v_cnt0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \b_data_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\b_data_reg[3]_0 ),
        .Q(o_b_data_OBUF));
  LUT6 #(
    .INIT(64'h000000002020FF20)) 
    de_i_1
       (.I0(de_i_2_n_0),
        .I1(de_i_3_n_0),
        .I2(de_i_4_n_0),
        .I3(de_i_5_n_0),
        .I4(de_i_6_n_0),
        .I5(de_i_7_n_0),
        .O(de_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_10
       (.I0(\v_cnt_reg_n_0_[21] ),
        .I1(\v_cnt_reg_n_0_[20] ),
        .I2(\v_cnt_reg_n_0_[23] ),
        .I3(\v_cnt_reg_n_0_[22] ),
        .O(de_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_11
       (.I0(\v_cnt_reg_n_0_[25] ),
        .I1(\v_cnt_reg_n_0_[24] ),
        .I2(\v_cnt_reg_n_0_[27] ),
        .I3(\v_cnt_reg_n_0_[26] ),
        .O(de_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_12
       (.I0(\v_cnt_reg_n_0_[17] ),
        .I1(\v_cnt_reg_n_0_[16] ),
        .I2(\v_cnt_reg_n_0_[19] ),
        .I3(\v_cnt_reg_n_0_[18] ),
        .O(de_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_13
       (.I0(\v_cnt_reg_n_0_[13] ),
        .I1(\v_cnt_reg_n_0_[12] ),
        .I2(\v_cnt_reg_n_0_[15] ),
        .I3(\v_cnt_reg_n_0_[14] ),
        .O(de_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    de_i_14
       (.I0(de_i_16_n_0),
        .I1(\h_cnt_reg_n_0_[21] ),
        .I2(\h_cnt_reg_n_0_[20] ),
        .I3(\h_cnt_reg_n_0_[23] ),
        .I4(\h_cnt_reg_n_0_[22] ),
        .I5(de_i_17_n_0),
        .O(de_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_15
       (.I0(\h_cnt_reg_n_0_[17] ),
        .I1(\h_cnt_reg_n_0_[16] ),
        .I2(\h_cnt_reg_n_0_[19] ),
        .I3(\h_cnt_reg_n_0_[18] ),
        .O(de_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    de_i_16
       (.I0(\h_cnt_reg_n_0_[25] ),
        .I1(\h_cnt_reg_n_0_[24] ),
        .I2(\h_cnt_reg_n_0_[27] ),
        .I3(\h_cnt_reg_n_0_[26] ),
        .O(de_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    de_i_17
       (.I0(\h_cnt_reg_n_0_[30] ),
        .I1(\h_cnt_reg_n_0_[31] ),
        .I2(\h_cnt_reg_n_0_[28] ),
        .I3(\h_cnt_reg_n_0_[29] ),
        .I4(\h_cnt_reg_n_0_[11] ),
        .I5(\h_cnt_reg_n_0_[10] ),
        .O(de_i_17_n_0));
  LUT4 #(
    .INIT(16'h0700)) 
    de_i_2
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[1] ),
        .I2(vs_i_2_n_0),
        .I3(\v_cnt_reg_n_0_[9] ),
        .O(de_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    de_i_3
       (.I0(\v_cnt_reg_n_0_[2] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .O(de_i_3_n_0));
  LUT6 #(
    .INIT(64'h55555557EEEEEEEA)) 
    de_i_4
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[6] ),
        .I3(\h_cnt_reg_n_0_[5] ),
        .I4(\h_cnt_reg_n_0_[4] ),
        .I5(\h_cnt_reg_n_0_[9] ),
        .O(de_i_4_n_0));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    de_i_5
       (.I0(\v_cnt_reg_n_0_[9] ),
        .I1(de_i_4_n_0),
        .I2(\v_cnt_reg_n_0_[8] ),
        .I3(\v_cnt_reg_n_0_[7] ),
        .I4(\v_cnt_reg_n_0_[6] ),
        .I5(de_i_8_n_0),
        .O(de_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    de_i_6
       (.I0(de_i_9_n_0),
        .I1(de_i_10_n_0),
        .I2(de_i_11_n_0),
        .I3(de_i_12_n_0),
        .I4(de_i_13_n_0),
        .O(de_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    de_i_7
       (.I0(de_i_14_n_0),
        .I1(de_i_15_n_0),
        .I2(\h_cnt_reg_n_0_[13] ),
        .I3(\h_cnt_reg_n_0_[12] ),
        .I4(\h_cnt_reg_n_0_[15] ),
        .I5(\h_cnt_reg_n_0_[14] ),
        .O(de_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    de_i_8
       (.I0(\v_cnt_reg_n_0_[2] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[0] ),
        .I4(\v_cnt_reg_n_0_[4] ),
        .I5(\v_cnt_reg_n_0_[5] ),
        .O(de_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    de_i_9
       (.I0(\v_cnt_reg_n_0_[30] ),
        .I1(\v_cnt_reg_n_0_[31] ),
        .I2(\v_cnt_reg_n_0_[28] ),
        .I3(\v_cnt_reg_n_0_[29] ),
        .I4(\v_cnt_reg_n_0_[11] ),
        .I5(\v_cnt_reg_n_0_[10] ),
        .O(de_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    de_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(de_i_1_n_0),
        .Q(de));
  FDCE #(
    .INIT(1'b0)) 
    \g_data_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(g_data),
        .Q(o_g_data_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .O(h_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[10]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[12]_i_2_n_6 ),
        .O(h_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[11]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[12]_i_2_n_5 ),
        .O(h_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[12]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[12]_i_2_n_4 ),
        .O(h_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[13]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[16]_i_2_n_7 ),
        .O(h_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[14]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[16]_i_2_n_6 ),
        .O(h_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[15]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[16]_i_2_n_5 ),
        .O(h_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[16]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[16]_i_2_n_4 ),
        .O(h_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[17]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[20]_i_2_n_7 ),
        .O(h_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[18]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[20]_i_2_n_6 ),
        .O(h_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[19]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[20]_i_2_n_5 ),
        .O(h_cnt[19]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[1]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[4]_i_2_n_7 ),
        .O(h_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[20]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[20]_i_2_n_4 ),
        .O(h_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[21]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[24]_i_2_n_7 ),
        .O(h_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[22]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[24]_i_2_n_6 ),
        .O(h_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[23]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[24]_i_2_n_5 ),
        .O(h_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[24]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[24]_i_2_n_4 ),
        .O(h_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[25]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[28]_i_2_n_7 ),
        .O(h_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[26]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[28]_i_2_n_6 ),
        .O(h_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[27]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[28]_i_2_n_5 ),
        .O(h_cnt[27]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[28]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[28]_i_2_n_4 ),
        .O(h_cnt[28]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[29]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[31]_i_3_n_7 ),
        .O(h_cnt[29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[2]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[4]_i_2_n_6 ),
        .O(h_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[30]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[31]_i_3_n_6 ),
        .O(h_cnt[30]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[31]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[31]_i_3_n_5 ),
        .O(h_cnt[31]));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \h_cnt[31]_i_2 
       (.I0(\h_cnt[31]_i_4_n_0 ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\h_cnt_reg_n_0_[9] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .I4(\h_cnt_reg_n_0_[4] ),
        .O(\h_cnt[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \h_cnt[31]_i_4 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\h_cnt_reg_n_0_[6] ),
        .I3(\h_cnt_reg_n_0_[2] ),
        .I4(\h_cnt_reg_n_0_[1] ),
        .O(\h_cnt[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[3]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[4]_i_2_n_5 ),
        .O(h_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[4]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[4]_i_2_n_4 ),
        .O(h_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[5]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[8]_i_2_n_7 ),
        .O(h_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[6]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[8]_i_2_n_6 ),
        .O(h_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[7]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[8]_i_2_n_5 ),
        .O(h_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[8]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[8]_i_2_n_4 ),
        .O(h_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \h_cnt[9]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .I3(\h_cnt_reg[12]_i_2_n_7 ),
        .O(h_cnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[0]),
        .Q(\h_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[10]),
        .Q(\h_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[11]),
        .Q(\h_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[12]),
        .Q(\h_cnt_reg_n_0_[12] ));
  CARRY4 \h_cnt_reg[12]_i_2 
       (.CI(\h_cnt_reg[8]_i_2_n_0 ),
        .CO({\h_cnt_reg[12]_i_2_n_0 ,\h_cnt_reg[12]_i_2_n_1 ,\h_cnt_reg[12]_i_2_n_2 ,\h_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[12]_i_2_n_4 ,\h_cnt_reg[12]_i_2_n_5 ,\h_cnt_reg[12]_i_2_n_6 ,\h_cnt_reg[12]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[12] ,\h_cnt_reg_n_0_[11] ,\h_cnt_reg_n_0_[10] ,\h_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[13]),
        .Q(\h_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[14]),
        .Q(\h_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[15]),
        .Q(\h_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[16]),
        .Q(\h_cnt_reg_n_0_[16] ));
  CARRY4 \h_cnt_reg[16]_i_2 
       (.CI(\h_cnt_reg[12]_i_2_n_0 ),
        .CO({\h_cnt_reg[16]_i_2_n_0 ,\h_cnt_reg[16]_i_2_n_1 ,\h_cnt_reg[16]_i_2_n_2 ,\h_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[16]_i_2_n_4 ,\h_cnt_reg[16]_i_2_n_5 ,\h_cnt_reg[16]_i_2_n_6 ,\h_cnt_reg[16]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[16] ,\h_cnt_reg_n_0_[15] ,\h_cnt_reg_n_0_[14] ,\h_cnt_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[17]),
        .Q(\h_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[18]),
        .Q(\h_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[19]),
        .Q(\h_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[1]),
        .Q(\h_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[20]),
        .Q(\h_cnt_reg_n_0_[20] ));
  CARRY4 \h_cnt_reg[20]_i_2 
       (.CI(\h_cnt_reg[16]_i_2_n_0 ),
        .CO({\h_cnt_reg[20]_i_2_n_0 ,\h_cnt_reg[20]_i_2_n_1 ,\h_cnt_reg[20]_i_2_n_2 ,\h_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[20]_i_2_n_4 ,\h_cnt_reg[20]_i_2_n_5 ,\h_cnt_reg[20]_i_2_n_6 ,\h_cnt_reg[20]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[20] ,\h_cnt_reg_n_0_[19] ,\h_cnt_reg_n_0_[18] ,\h_cnt_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[21]),
        .Q(\h_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[22]),
        .Q(\h_cnt_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[23]),
        .Q(\h_cnt_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[24]),
        .Q(\h_cnt_reg_n_0_[24] ));
  CARRY4 \h_cnt_reg[24]_i_2 
       (.CI(\h_cnt_reg[20]_i_2_n_0 ),
        .CO({\h_cnt_reg[24]_i_2_n_0 ,\h_cnt_reg[24]_i_2_n_1 ,\h_cnt_reg[24]_i_2_n_2 ,\h_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[24]_i_2_n_4 ,\h_cnt_reg[24]_i_2_n_5 ,\h_cnt_reg[24]_i_2_n_6 ,\h_cnt_reg[24]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[24] ,\h_cnt_reg_n_0_[23] ,\h_cnt_reg_n_0_[22] ,\h_cnt_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[25]),
        .Q(\h_cnt_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[26]),
        .Q(\h_cnt_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[27]),
        .Q(\h_cnt_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[28]),
        .Q(\h_cnt_reg_n_0_[28] ));
  CARRY4 \h_cnt_reg[28]_i_2 
       (.CI(\h_cnt_reg[24]_i_2_n_0 ),
        .CO({\h_cnt_reg[28]_i_2_n_0 ,\h_cnt_reg[28]_i_2_n_1 ,\h_cnt_reg[28]_i_2_n_2 ,\h_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[28]_i_2_n_4 ,\h_cnt_reg[28]_i_2_n_5 ,\h_cnt_reg[28]_i_2_n_6 ,\h_cnt_reg[28]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[28] ,\h_cnt_reg_n_0_[27] ,\h_cnt_reg_n_0_[26] ,\h_cnt_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[29]),
        .Q(\h_cnt_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[2]),
        .Q(\h_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[30]),
        .Q(\h_cnt_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[31]),
        .Q(\h_cnt_reg_n_0_[31] ));
  CARRY4 \h_cnt_reg[31]_i_3 
       (.CI(\h_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_h_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\h_cnt_reg[31]_i_3_n_2 ,\h_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_cnt_reg[31]_i_3_O_UNCONNECTED [3],\h_cnt_reg[31]_i_3_n_5 ,\h_cnt_reg[31]_i_3_n_6 ,\h_cnt_reg[31]_i_3_n_7 }),
        .S({1'b0,\h_cnt_reg_n_0_[31] ,\h_cnt_reg_n_0_[30] ,\h_cnt_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[3]),
        .Q(\h_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[4]),
        .Q(\h_cnt_reg_n_0_[4] ));
  CARRY4 \h_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\h_cnt_reg[4]_i_2_n_0 ,\h_cnt_reg[4]_i_2_n_1 ,\h_cnt_reg[4]_i_2_n_2 ,\h_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\h_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[4]_i_2_n_4 ,\h_cnt_reg[4]_i_2_n_5 ,\h_cnt_reg[4]_i_2_n_6 ,\h_cnt_reg[4]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[4] ,\h_cnt_reg_n_0_[3] ,\h_cnt_reg_n_0_[2] ,\h_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[5]),
        .Q(\h_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[6]),
        .Q(\h_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[7]),
        .Q(\h_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[8]),
        .Q(\h_cnt_reg_n_0_[8] ));
  CARRY4 \h_cnt_reg[8]_i_2 
       (.CI(\h_cnt_reg[4]_i_2_n_0 ),
        .CO({\h_cnt_reg[8]_i_2_n_0 ,\h_cnt_reg[8]_i_2_n_1 ,\h_cnt_reg[8]_i_2_n_2 ,\h_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cnt_reg[8]_i_2_n_4 ,\h_cnt_reg[8]_i_2_n_5 ,\h_cnt_reg[8]_i_2_n_6 ,\h_cnt_reg[8]_i_2_n_7 }),
        .S({\h_cnt_reg_n_0_[8] ,\h_cnt_reg_n_0_[7] ,\h_cnt_reg_n_0_[6] ,\h_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(h_cnt[9]),
        .Q(\h_cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    hs_i_1
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[5] ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .I4(\h_cnt_reg_n_0_[9] ),
        .I5(\h_cnt_reg_n_0_[8] ),
        .O(hs_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    hs_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(hs_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(o_hs_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(r_data),
        .Q(o_r_data_OBUF));
  CARRY4 v_cnt0_carry
       (.CI(1'b0),
        .CO({v_cnt0_carry_n_0,v_cnt0_carry_n_1,v_cnt0_carry_n_2,v_cnt0_carry_n_3}),
        .CYINIT(\v_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry_n_4,v_cnt0_carry_n_5,v_cnt0_carry_n_6,v_cnt0_carry_n_7}),
        .S({\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] }));
  CARRY4 v_cnt0_carry__0
       (.CI(v_cnt0_carry_n_0),
        .CO({v_cnt0_carry__0_n_0,v_cnt0_carry__0_n_1,v_cnt0_carry__0_n_2,v_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__0_n_4,v_cnt0_carry__0_n_5,v_cnt0_carry__0_n_6,v_cnt0_carry__0_n_7}),
        .S({\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] }));
  CARRY4 v_cnt0_carry__1
       (.CI(v_cnt0_carry__0_n_0),
        .CO({v_cnt0_carry__1_n_0,v_cnt0_carry__1_n_1,v_cnt0_carry__1_n_2,v_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__1_n_4,v_cnt0_carry__1_n_5,v_cnt0_carry__1_n_6,v_cnt0_carry__1_n_7}),
        .S({\v_cnt_reg_n_0_[12] ,\v_cnt_reg_n_0_[11] ,\v_cnt_reg_n_0_[10] ,\v_cnt_reg_n_0_[9] }));
  CARRY4 v_cnt0_carry__2
       (.CI(v_cnt0_carry__1_n_0),
        .CO({v_cnt0_carry__2_n_0,v_cnt0_carry__2_n_1,v_cnt0_carry__2_n_2,v_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__2_n_4,v_cnt0_carry__2_n_5,v_cnt0_carry__2_n_6,v_cnt0_carry__2_n_7}),
        .S({\v_cnt_reg_n_0_[16] ,\v_cnt_reg_n_0_[15] ,\v_cnt_reg_n_0_[14] ,\v_cnt_reg_n_0_[13] }));
  CARRY4 v_cnt0_carry__3
       (.CI(v_cnt0_carry__2_n_0),
        .CO({v_cnt0_carry__3_n_0,v_cnt0_carry__3_n_1,v_cnt0_carry__3_n_2,v_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__3_n_4,v_cnt0_carry__3_n_5,v_cnt0_carry__3_n_6,v_cnt0_carry__3_n_7}),
        .S({\v_cnt_reg_n_0_[20] ,\v_cnt_reg_n_0_[19] ,\v_cnt_reg_n_0_[18] ,\v_cnt_reg_n_0_[17] }));
  CARRY4 v_cnt0_carry__4
       (.CI(v_cnt0_carry__3_n_0),
        .CO({v_cnt0_carry__4_n_0,v_cnt0_carry__4_n_1,v_cnt0_carry__4_n_2,v_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__4_n_4,v_cnt0_carry__4_n_5,v_cnt0_carry__4_n_6,v_cnt0_carry__4_n_7}),
        .S({\v_cnt_reg_n_0_[24] ,\v_cnt_reg_n_0_[23] ,\v_cnt_reg_n_0_[22] ,\v_cnt_reg_n_0_[21] }));
  CARRY4 v_cnt0_carry__5
       (.CI(v_cnt0_carry__4_n_0),
        .CO({v_cnt0_carry__5_n_0,v_cnt0_carry__5_n_1,v_cnt0_carry__5_n_2,v_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__5_n_4,v_cnt0_carry__5_n_5,v_cnt0_carry__5_n_6,v_cnt0_carry__5_n_7}),
        .S({\v_cnt_reg_n_0_[28] ,\v_cnt_reg_n_0_[27] ,\v_cnt_reg_n_0_[26] ,\v_cnt_reg_n_0_[25] }));
  CARRY4 v_cnt0_carry__6
       (.CI(v_cnt0_carry__5_n_0),
        .CO({NLW_v_cnt0_carry__6_CO_UNCONNECTED[3:2],v_cnt0_carry__6_n_2,v_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v_cnt0_carry__6_O_UNCONNECTED[3],v_cnt0_carry__6_n_5,v_cnt0_carry__6_n_6,v_cnt0_carry__6_n_7}),
        .S({1'b0,\v_cnt_reg_n_0_[31] ,\v_cnt_reg_n_0_[30] ,\v_cnt_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt[31]_i_3_n_0 ),
        .I1(\v_cnt_reg_n_0_[2] ),
        .I2(\v_cnt_reg_n_0_[3] ),
        .I3(\v_cnt_reg_n_0_[0] ),
        .O(\v_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[10]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__1_n_6),
        .O(\v_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[11]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__1_n_5),
        .O(\v_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[12]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__1_n_4),
        .O(\v_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[13]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__2_n_7),
        .O(\v_cnt[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[14]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__2_n_6),
        .O(\v_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[15]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__2_n_5),
        .O(\v_cnt[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[16]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__2_n_4),
        .O(\v_cnt[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[17]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__3_n_7),
        .O(\v_cnt[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[18]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__3_n_6),
        .O(\v_cnt[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[19]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__3_n_5),
        .O(\v_cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry_n_7),
        .O(\v_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[20]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__3_n_4),
        .O(\v_cnt[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[21]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__4_n_7),
        .O(\v_cnt[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[22]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__4_n_6),
        .O(\v_cnt[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[23]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__4_n_5),
        .O(\v_cnt[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[24]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__4_n_4),
        .O(\v_cnt[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[25]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__5_n_7),
        .O(\v_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[26]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__5_n_6),
        .O(\v_cnt[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[27]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__5_n_5),
        .O(\v_cnt[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[28]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__5_n_4),
        .O(\v_cnt[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[29]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__6_n_7),
        .O(\v_cnt[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[2]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry_n_6),
        .O(\v_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[30]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__6_n_6),
        .O(\v_cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \v_cnt[31]_i_1 
       (.I0(de_i_7_n_0),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt[31]_i_2_n_0 ),
        .O(v_cnt));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[31]_i_2 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__6_n_5),
        .O(\v_cnt[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \v_cnt[31]_i_3 
       (.I0(\v_cnt_reg_n_0_[9] ),
        .I1(vs_i_2_n_0),
        .I2(\v_cnt_reg_n_0_[1] ),
        .O(\v_cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[3]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry_n_5),
        .O(\v_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[4]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry_n_4),
        .O(\v_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[5]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__0_n_7),
        .O(\v_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[6]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__0_n_6),
        .O(\v_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[7]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__0_n_5),
        .O(\v_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[8]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__0_n_4),
        .O(\v_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \v_cnt[9]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[31]_i_3_n_0 ),
        .I4(v_cnt0_carry__1_n_7),
        .O(\v_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[0]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[10] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[10]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[11] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[11]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[12] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[12]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[13] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[13]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[14] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[14]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[15] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[15]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[16] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[16]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[17] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[17]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[18] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[18]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[19] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[19]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[1]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[20] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[20]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[21] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[21]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[22] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[22]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[23] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[23]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[24] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[24]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[25] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[25]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[26] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[26]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[27] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[27]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[28] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[28]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[29] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[29]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[2]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[30] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[30]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[31] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[31]_i_2_n_0 ),
        .Q(\v_cnt_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[3]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[4]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[5]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[6]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[7]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[8]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(clk_out1),
        .CE(v_cnt),
        .CLR(rst_IBUF),
        .D(\v_cnt[9]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vs_i_1
       (.I0(\v_cnt_reg_n_0_[2] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(vs_i_2_n_0),
        .I4(\v_cnt_reg_n_0_[9] ),
        .O(vs_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vs_i_2
       (.I0(vs_i_3_n_0),
        .I1(de_i_13_n_0),
        .I2(de_i_12_n_0),
        .I3(de_i_11_n_0),
        .I4(de_i_10_n_0),
        .I5(de_i_9_n_0),
        .O(vs_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vs_i_3
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[6] ),
        .I3(\v_cnt_reg_n_0_[7] ),
        .I4(\v_cnt_reg_n_0_[8] ),
        .O(vs_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    vs_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(vs_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(o_vs_OBUF));
endmodule

module synchronizer
   (sync_out_reg_0,
    down_IBUF,
    clk_out1);
  output sync_out_reg_0;
  input down_IBUF;
  input clk_out1;

  wire clk_out1;
  wire down_IBUF;
  wire sync_out_reg_0;
  wire tmp_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(sync_out_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(down_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_3
   (ok_sync,
    \FSM_onehot_mode_reg[2] ,
    ok_IBUF,
    clk_out1,
    \vga_status_reg[0] ,
    \vga_status_reg[0]_0 ,
    \vga_status_reg[0]_1 ,
    ok_prev_state,
    \vga_status_reg[0]_2 );
  output ok_sync;
  output \FSM_onehot_mode_reg[2] ;
  input ok_IBUF;
  input clk_out1;
  input \vga_status_reg[0] ;
  input \vga_status_reg[0]_0 ;
  input \vga_status_reg[0]_1 ;
  input ok_prev_state;
  input \vga_status_reg[0]_2 ;

  wire \FSM_onehot_mode_reg[2] ;
  wire clk_out1;
  wire ok_IBUF;
  wire ok_prev_state;
  wire ok_sync;
  wire tmp_reg_n_0;
  wire \vga_status_reg[0] ;
  wire \vga_status_reg[0]_0 ;
  wire \vga_status_reg[0]_1 ;
  wire \vga_status_reg[0]_2 ;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(ok_sync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(ok_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FE00)) 
    \vga_status[1]_i_2 
       (.I0(\vga_status_reg[0] ),
        .I1(\vga_status_reg[0]_0 ),
        .I2(\vga_status_reg[0]_1 ),
        .I3(ok_prev_state),
        .I4(ok_sync),
        .I5(\vga_status_reg[0]_2 ),
        .O(\FSM_onehot_mode_reg[2] ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_4
   (sync_out_reg_0,
    sync_out_reg_1,
    ssd_OBUF,
    place_IBUF,
    clk_out1,
    Q,
    \ssd_OBUF[2]_inst_i_1_0 ,
    \ssd[4] ,
    \ssd[2] ,
    \ssd_OBUF[4]_inst_i_1_0 ,
    \ssd_OBUF[4]_inst_i_1_1 );
  output sync_out_reg_0;
  output sync_out_reg_1;
  output [6:0]ssd_OBUF;
  input place_IBUF;
  input clk_out1;
  input [3:0]Q;
  input [3:0]\ssd_OBUF[2]_inst_i_1_0 ;
  input \ssd[4] ;
  input \ssd[2] ;
  input [3:0]\ssd_OBUF[4]_inst_i_1_0 ;
  input [3:0]\ssd_OBUF[4]_inst_i_1_1 ;

  wire [3:0]Q;
  wire clk_out1;
  wire place_IBUF;
  wire \ssd[2] ;
  wire \ssd[4] ;
  wire [6:0]ssd_OBUF;
  wire \ssd_OBUF[0]_inst_i_2_n_0 ;
  wire \ssd_OBUF[0]_inst_i_3_n_0 ;
  wire [3:0]\ssd_OBUF[2]_inst_i_1_0 ;
  wire \ssd_OBUF[2]_inst_i_2_n_0 ;
  wire \ssd_OBUF[2]_inst_i_3_n_0 ;
  wire \ssd_OBUF[2]_inst_i_4_n_0 ;
  wire \ssd_OBUF[2]_inst_i_5_n_0 ;
  wire \ssd_OBUF[3]_inst_i_2_n_0 ;
  wire [3:0]\ssd_OBUF[4]_inst_i_1_0 ;
  wire [3:0]\ssd_OBUF[4]_inst_i_1_1 ;
  wire \ssd_OBUF[4]_inst_i_2_n_0 ;
  wire \ssd_OBUF[4]_inst_i_3_n_0 ;
  wire \ssd_OBUF[4]_inst_i_4_n_0 ;
  wire \ssd_OBUF[5]_inst_i_2_n_0 ;
  wire \ssd_OBUF[6]_inst_i_2_n_0 ;
  wire \ssd_OBUF[6]_inst_i_3_n_0 ;
  wire \ssd_OBUF[6]_inst_i_4_n_0 ;
  wire \ssd_OBUF[6]_inst_i_5_n_0 ;
  wire \ssd_OBUF[6]_inst_i_6_n_0 ;
  wire \ssd_OBUF[6]_inst_i_8_n_0 ;
  wire sync_out_reg_0;
  wire sync_out_reg_1;
  wire tmp_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT1 #(
    .INIT(2'h1)) 
    led6_r_i_1
       (.I0(sync_out_reg_0),
        .O(sync_out_reg_1));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEE00E)) 
    \ssd_OBUF[0]_inst_i_1 
       (.I0(\ssd_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[0]_inst_i_3_n_0 ),
        .I2(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .I3(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I4(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I5(\ssd[2] ),
        .O(ssd_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCAACCAAC0AAC000)) 
    \ssd_OBUF[0]_inst_i_2 
       (.I0(Q[2]),
        .I1(\ssd_OBUF[2]_inst_i_1_0 [2]),
        .I2(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I3(sync_out_reg_0),
        .I4(Q[0]),
        .I5(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .O(\ssd_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCEFEEEFFF)) 
    \ssd_OBUF[0]_inst_i_3 
       (.I0(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[2]_inst_i_4_n_0 ),
        .I2(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I3(sync_out_reg_0),
        .I4(Q[0]),
        .I5(\ssd_OBUF[6]_inst_i_8_n_0 ),
        .O(\ssd_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0E0EEEEEEEEEE)) 
    \ssd_OBUF[1]_inst_i_1 
       (.I0(\ssd_OBUF[5]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_2_n_0 ),
        .I2(\ssd[2] ),
        .I3(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I4(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I5(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .O(ssd_OBUF[1]));
  LUT6 #(
    .INIT(64'hF7F7F7F7F7F7F700)) 
    \ssd_OBUF[2]_inst_i_1 
       (.I0(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[2]_inst_i_3_n_0 ),
        .I2(\ssd_OBUF[2]_inst_i_4_n_0 ),
        .I3(\ssd[2] ),
        .I4(\ssd_OBUF[2]_inst_i_5_n_0 ),
        .I5(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .O(ssd_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[2]_inst_i_2 
       (.I0(\ssd_OBUF[2]_inst_i_1_0 [1]),
        .I1(sync_out_reg_0),
        .I2(Q[1]),
        .O(\ssd_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \ssd_OBUF[2]_inst_i_3 
       (.I0(Q[2]),
        .I1(\ssd_OBUF[2]_inst_i_1_0 [2]),
        .I2(Q[0]),
        .I3(sync_out_reg_0),
        .I4(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .O(\ssd_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \ssd_OBUF[2]_inst_i_4 
       (.I0(Q[3]),
        .I1(sync_out_reg_0),
        .I2(\ssd_OBUF[2]_inst_i_1_0 [3]),
        .I3(\ssd[4] ),
        .O(\ssd_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \ssd_OBUF[2]_inst_i_5 
       (.I0(\ssd_OBUF[4]_inst_i_1_1 [2]),
        .I1(\ssd_OBUF[4]_inst_i_1_0 [2]),
        .I2(\ssd_OBUF[4]_inst_i_1_1 [1]),
        .I3(sync_out_reg_0),
        .I4(\ssd_OBUF[4]_inst_i_1_0 [1]),
        .O(\ssd_OBUF[2]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA288A)) 
    \ssd_OBUF[3]_inst_i_1 
       (.I0(\ssd_OBUF[3]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I2(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I3(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .I4(\ssd[2] ),
        .O(ssd_OBUF[3]));
  LUT6 #(
    .INIT(64'hBFBBBFFFEBEEEBBB)) 
    \ssd_OBUF[3]_inst_i_2 
       (.I0(\ssd_OBUF[2]_inst_i_4_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_8_n_0 ),
        .I2(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I3(sync_out_reg_0),
        .I4(Q[0]),
        .I5(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .O(\ssd_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \ssd_OBUF[4]_inst_i_1 
       (.I0(\ssd_OBUF[4]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[4]_inst_i_3_n_0 ),
        .O(ssd_OBUF[4]),
        .S(\ssd[4] ));
  LUT6 #(
    .INIT(64'hFD51FDFDFD515151)) 
    \ssd_OBUF[4]_inst_i_2 
       (.I0(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .I2(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I3(\ssd_OBUF[4]_inst_i_1_0 [3]),
        .I4(sync_out_reg_0),
        .I5(\ssd_OBUF[4]_inst_i_1_1 [3]),
        .O(\ssd_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD51FDFDFD515151)) 
    \ssd_OBUF[4]_inst_i_3 
       (.I0(\ssd_OBUF[4]_inst_i_4_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_8_n_0 ),
        .I2(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .I3(\ssd_OBUF[2]_inst_i_1_0 [3]),
        .I4(sync_out_reg_0),
        .I5(Q[3]),
        .O(\ssd_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[4]_inst_i_4 
       (.I0(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I1(sync_out_reg_0),
        .I2(Q[0]),
        .O(\ssd_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAB0000BFABBFAB)) 
    \ssd_OBUF[5]_inst_i_1 
       (.I0(\ssd[2] ),
        .I1(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I2(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I3(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .I4(\ssd_OBUF[5]_inst_i_2_n_0 ),
        .I5(\ssd_OBUF[6]_inst_i_2_n_0 ),
        .O(ssd_OBUF[5]));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \ssd_OBUF[5]_inst_i_2 
       (.I0(\ssd_OBUF[2]_inst_i_4_n_0 ),
        .I1(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I2(sync_out_reg_0),
        .I3(Q[0]),
        .I4(\ssd_OBUF[2]_inst_i_1_0 [1]),
        .I5(Q[1]),
        .O(\ssd_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD0DDDD0D0)) 
    \ssd_OBUF[6]_inst_i_1 
       (.I0(\ssd_OBUF[6]_inst_i_2_n_0 ),
        .I1(\ssd_OBUF[6]_inst_i_3_n_0 ),
        .I2(\ssd_OBUF[6]_inst_i_4_n_0 ),
        .I3(\ssd_OBUF[6]_inst_i_5_n_0 ),
        .I4(\ssd_OBUF[6]_inst_i_6_n_0 ),
        .I5(\ssd[2] ),
        .O(ssd_OBUF[6]));
  LUT6 #(
    .INIT(64'hF3FFF35533553355)) 
    \ssd_OBUF[6]_inst_i_2 
       (.I0(Q[2]),
        .I1(\ssd_OBUF[2]_inst_i_1_0 [2]),
        .I2(\ssd_OBUF[2]_inst_i_1_0 [0]),
        .I3(sync_out_reg_0),
        .I4(Q[0]),
        .I5(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .O(\ssd_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5FFFFDFD5DFD5)) 
    \ssd_OBUF[6]_inst_i_3 
       (.I0(\ssd[4] ),
        .I1(\ssd_OBUF[2]_inst_i_1_0 [3]),
        .I2(sync_out_reg_0),
        .I3(Q[3]),
        .I4(\ssd_OBUF[6]_inst_i_8_n_0 ),
        .I5(\ssd_OBUF[2]_inst_i_2_n_0 ),
        .O(\ssd_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[6]_inst_i_4 
       (.I0(\ssd_OBUF[4]_inst_i_1_0 [2]),
        .I1(sync_out_reg_0),
        .I2(\ssd_OBUF[4]_inst_i_1_1 [2]),
        .O(\ssd_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[6]_inst_i_5 
       (.I0(\ssd_OBUF[4]_inst_i_1_0 [0]),
        .I1(sync_out_reg_0),
        .I2(\ssd_OBUF[4]_inst_i_1_1 [0]),
        .O(\ssd_OBUF[6]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[6]_inst_i_6 
       (.I0(\ssd_OBUF[4]_inst_i_1_0 [1]),
        .I1(sync_out_reg_0),
        .I2(\ssd_OBUF[4]_inst_i_1_1 [1]),
        .O(\ssd_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ssd_OBUF[6]_inst_i_8 
       (.I0(\ssd_OBUF[2]_inst_i_1_0 [2]),
        .I1(sync_out_reg_0),
        .I2(Q[2]),
        .O(\ssd_OBUF[6]_inst_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(sync_out_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(place_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_5
   (sync_out_reg_0,
    pw_endset_IBUF,
    clk_out1);
  output sync_out_reg_0;
  input pw_endset_IBUF;
  input clk_out1;

  wire clk_out1;
  wire pw_endset_IBUF;
  wire sync_out_reg_0;
  wire tmp_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(sync_out_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(pw_endset_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_6
   (pw_set_sync,
    pw_set_IBUF,
    clk_out1);
  output pw_set_sync;
  input pw_set_IBUF;
  input clk_out1;

  wire clk_out1;
  wire pw_set_IBUF;
  wire pw_set_sync;
  wire tmp_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(pw_set_sync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(pw_set_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_7
   (sync_out_reg_0,
    slide_IBUF,
    clk_out1);
  output sync_out_reg_0;
  input slide_IBUF;
  input clk_out1;

  wire clk_out1;
  wire slide_IBUF;
  wire sync_out_reg_0;
  wire tmp_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(sync_out_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(slide_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_8
   (sync_out_reg_0,
    up_IBUF,
    clk_out1);
  output sync_out_reg_0;
  input up_IBUF;
  input clk_out1;

  wire clk_out1;
  wire sync_out_reg_0;
  wire tmp;
  wire up_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tmp),
        .Q(sync_out_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(up_IBUF),
        .Q(tmp),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
