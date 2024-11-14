// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Nov 10 18:40:16 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/Lab10/Lab10/Lab10.sim/sim_1/synth/func/xsim/tb_top_module_func_synth.v}
// Design      : top_module
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_gen_100M
   (CLK,
    btn_IBUF,
    clk_ref);
  output CLK;
  input [0:0]btn_IBUF;
  input clk_ref;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clk_ref;

  (* IMPORTED_FROM = "c:/Users/namkukhyeon/Documents/FPGA/FPGA Lab/Lab10/Lab10/Lab10.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_gen
       (.clk_in1(clk_ref),
        .clk_out1(CLK),
        .reset(btn_IBUF));
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
    .CLKFBOUT_MULT_F(8.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
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
    .DIVCLK_DIVIDE(1),
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

module counter_top_debouncer
   (led,
    clk_out_OBUF,
    btn_IBUF,
    clk_ref);
  output [3:0]led;
  output clk_out_OBUF;
  input [3:0]btn_IBUF;
  input clk_ref;

  wire [3:0]btn_IBUF;
  wire clear;
  wire clk_100M;
  wire clk_div;
  wire clk_out_OBUF;
  wire clk_ref;
  wire d0_n_0;
  wire d1_n_0;
  wire d_up;
  wire [3:0]led;
  wire s1_n_0;
  wire u2_n_0;

  ud_counter_4 c0
       (.CLK(clk_out_OBUF),
        .D(d0_n_0),
        .E(d1_n_0),
        .Q(led),
        .btn_IBUF(btn_IBUF[0]),
        .d_up(d_up));
  debouncer d0
       (.CLK(clk_out_OBUF),
        .D(d0_n_0),
        .SR(clear),
        .d_up(d_up),
        .led(led[1:0]));
  debouncer_0 d1
       (.CLK(clk_out_OBUF),
        .E(d1_n_0),
        .SR(s1_n_0),
        .btn_IBUF(btn_IBUF[1]),
        .d_up(d_up));
  synchronizer s0
       (.CLK(clk_out_OBUF),
        .SR(clear),
        .btn_IBUF(btn_IBUF[2]));
  synchronizer_1 s1
       (.CLK(clk_out_OBUF),
        .SR(s1_n_0),
        .btn_IBUF(btn_IBUF[3]));
  clk_gen_100M u0
       (.CLK(clk_100M),
        .btn_IBUF(btn_IBUF[0]),
        .clk_ref(clk_ref));
  freq_div_100 u1
       (.CLK(clk_div),
        .btn_IBUF(btn_IBUF[0]),
        .\cnt_reg[0]_0 (clk_100M));
  freq_div_100_2 u2
       (.CLK(u2_n_0),
        .btn_IBUF(btn_IBUF[0]),
        .\cnt_reg[0]_0 (clk_div));
  freq_div_100_3 u3
       (.CLK(clk_out_OBUF),
        .btn_IBUF(btn_IBUF[0]),
        .clk_div_reg_0(u2_n_0));
endmodule

module debouncer
   (D,
    d_up,
    led,
    SR,
    CLK);
  output [0:0]D;
  output d_up;
  input [1:0]led;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]SR;
  wire \cnt[0]_i_1__1_n_0 ;
  wire [3:0]cnt_reg;
  wire d_up;
  wire [1:0]led;
  wire [3:1]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hA9AAAAAA56555555)) 
    \cnt[1]_i_1__1 
       (.I0(led[0]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(led[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \cnt[3]_i_3 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .O(d_up));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cnt_reg[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (E,
    btn_IBUF,
    d_up,
    SR,
    CLK);
  output [0:0]E;
  input [0:0]btn_IBUF;
  input d_up;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire [0:0]btn_IBUF;
  wire \cnt[0]_i_1__0_n_0 ;
  wire [3:0]cnt_reg;
  wire d_up;
  wire [3:1]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \cnt[3]_i_1 
       (.I0(btn_IBUF),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(d_up),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_2__0 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(cnt_reg[3]),
        .R(SR));
endmodule

module freq_div_100
   (CLK,
    \cnt_reg[0]_0 ,
    btn_IBUF);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clk_div_i_1_n_0;
  wire clk_div_n_0;
  wire [5:0]cnt;
  wire \cnt[0]_i_1__2_n_0 ;
  wire [5:1]cnt_0;
  wire \cnt_reg[0]_0 ;

  LUT2 #(
    .INIT(4'h1)) 
    clk_div
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .O(clk_div_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    clk_div_i_1
       (.I0(cnt[5]),
        .I1(cnt[0]),
        .I2(cnt[4]),
        .I3(clk_div_n_0),
        .I4(cnt[3]),
        .I5(CLK),
        .O(clk_div_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clk_div_i_1_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h55A855AA55AA55AA)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \cnt[3]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .O(cnt_0[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(cnt_0[4]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(cnt_0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt_0[5]),
        .Q(cnt[5]));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_2
   (CLK,
    \cnt_reg[0]_0 ,
    btn_IBUF);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clk_div_i_1__0_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__3_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;

  LUT2 #(
    .INIT(4'h1)) 
    clk_div
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .O(clk_div_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    clk_div_i_1__0
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clk_div_i_1__0_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__3 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h55A855AA55AA55AA)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1__3_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_3
   (CLK,
    clk_div_reg_0,
    btn_IBUF);
  output CLK;
  input clk_div_reg_0;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clk_div_i_1__1_n_0;
  wire clk_div_n_0;
  wire clk_div_reg_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__4_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;

  LUT2 #(
    .INIT(4'h1)) 
    clk_div
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .O(clk_div_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    clk_div_i_1__1
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clk_div_i_1__1_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__4 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h55A855AA55AA55AA)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1__4_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

module synchronizer
   (SR,
    btn_IBUF,
    CLK);
  output [0:0]SR;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [0:0]btn_IBUF;
  wire sync_out;
  wire tmp;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_1__0 
       (.I0(sync_out),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tmp),
        .Q(sync_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_IBUF),
        .Q(tmp),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer_1
   (SR,
    btn_IBUF,
    CLK);
  output [0:0]SR;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [0:0]btn_IBUF;
  wire sync_out_reg_n_0;
  wire tmp_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_1__1 
       (.I0(sync_out_reg_n_0),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tmp_reg_n_0),
        .Q(sync_out_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_IBUF),
        .Q(tmp_reg_n_0),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module top_module
   (clk_ref,
    btn,
    led,
    clk_out);
  input clk_ref;
  input [3:0]btn;
  output [3:0]led;
  output clk_out;

  wire [3:0]btn;
  wire [3:0]btn_IBUF;
  wire clk_out;
  wire clk_out_OBUF;
  (* IBUF_LOW_PWR *) wire clk_ref;
  wire [3:0]led;
  wire [3:0]led_OBUF;

  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  IBUF \btn_IBUF[3]_inst 
       (.I(btn[3]),
        .O(btn_IBUF[3]));
  OBUF clk_out_OBUF_inst
       (.I(clk_out_OBUF),
        .O(clk_out));
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
  counter_top_debouncer ut
       (.btn_IBUF(btn_IBUF),
        .clk_out_OBUF(clk_out_OBUF),
        .clk_ref(clk_ref),
        .led(led_OBUF));
endmodule

module ud_counter_4
   (Q,
    d_up,
    E,
    CLK,
    btn_IBUF,
    D);
  output [3:0]Q;
  input d_up;
  input [0:0]E;
  input CLK;
  input [0:0]btn_IBUF;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]btn_IBUF;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire d_up;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \cnt[2]_i_1__1 
       (.I0(Q[0]),
        .I1(d_up),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \cnt[3]_i_2__1 
       (.I0(d_up),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\cnt[3]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(btn_IBUF),
        .D(D),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(btn_IBUF),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(btn_IBUF),
        .D(\cnt[3]_i_2__1_n_0 ),
        .Q(Q[3]));
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
