// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Nov 10 20:31:57 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week10/hw2/hw2.sim/sim_1/synth/func/xsim/tb_clk_func_synth.v}
// Design      : clock_divider_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_wiz_0
   (clk_out1,
    clk_out2,
    clk_out3,
    clk_out4,
    reset,
    clk_in1);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire clk_out3;
  wire clk_out4;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3),
        .clk_out4(clk_out4),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    clk_out3,
    clk_out4,
    reset,
    clk_in1);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clk_out3;
  wire clk_out3_clk_wiz_0;
  wire clk_out4;
  wire clk_out4_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
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
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_out3_clk_wiz_0),
        .O(clk_out3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout4_buf
       (.I(clk_out4_clk_wiz_0),
        .O(clk_out4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(47.875000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(14.250000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(19),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(57),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(122),
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
    .DIVCLK_DIVIDE(7),
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
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_out3_clk_wiz_0),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(clk_out4_clk_wiz_0),
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

(* NotValidForBitStream *)
module clock_divider_top
   (clk_in,
    reset,
    clk_60Hz,
    clk_45Hz,
    clk_15Hz,
    clk_7Hz);
  input clk_in;
  input reset;
  output clk_60Hz;
  output clk_45Hz;
  output clk_15Hz;
  output clk_7Hz;

  wire clk_15Hz;
  wire clk_15Hz_OBUF;
  wire clk_15MHz;
  wire clk_45Hz;
  wire clk_45Hz_OBUF;
  wire clk_45MHz;
  wire clk_60Hz;
  wire clk_60Hz_OBUF;
  wire clk_60MHz;
  wire clk_7Hz;
  wire clk_7Hz_OBUF;
  wire clk_7MHz;
  wire clk_div;
  (* IBUF_LOW_PWR *) wire clk_in;
  wire div_15_1_n_0;
  wire div_15_2_n_0;
  wire div_45_1_n_0;
  wire div_45_2_n_0;
  wire div_60_2_n_0;
  wire div_7_1_n_0;
  wire div_7_2_n_0;
  wire reset;
  wire reset_IBUF;

  OBUF clk_15Hz_OBUF_inst
       (.I(clk_15Hz_OBUF),
        .O(clk_15Hz));
  OBUF clk_45Hz_OBUF_inst
       (.I(clk_45Hz_OBUF),
        .O(clk_45Hz));
  OBUF clk_60Hz_OBUF_inst
       (.I(clk_60Hz_OBUF),
        .O(clk_60Hz));
  OBUF clk_7Hz_OBUF_inst
       (.I(clk_7Hz_OBUF),
        .O(clk_7Hz));
  freq_div_100 div_15_1
       (.AR(reset_IBUF),
        .CLK(div_15_1_n_0),
        .\cnt_reg[0]_0 (clk_15MHz));
  freq_div_100_0 div_15_2
       (.AR(reset_IBUF),
        .CLK(div_15_2_n_0),
        .clk_div_reg_0(div_15_1_n_0));
  freq_div_100_1 div_15_3
       (.AR(reset_IBUF),
        .CLK(div_15_2_n_0),
        .clk_15Hz_OBUF(clk_15Hz_OBUF));
  freq_div_100_2 div_45_1
       (.AR(reset_IBUF),
        .CLK(div_45_1_n_0),
        .\cnt_reg[0]_0 (clk_45MHz));
  freq_div_100_3 div_45_2
       (.AR(reset_IBUF),
        .CLK(div_45_2_n_0),
        .clk_div_reg_0(div_45_1_n_0));
  freq_div_100_4 div_45_3
       (.AR(reset_IBUF),
        .CLK(div_45_2_n_0),
        .clk_45Hz_OBUF(clk_45Hz_OBUF));
  freq_div_100_5 div_60_1
       (.AR(reset_IBUF),
        .CLK(clk_div),
        .\cnt_reg[0]_0 (clk_60MHz));
  freq_div_100_6 div_60_2
       (.AR(reset_IBUF),
        .CLK(div_60_2_n_0),
        .\cnt_reg[0]_0 (clk_div));
  freq_div_100_7 div_60_3
       (.AR(reset_IBUF),
        .CLK(div_60_2_n_0),
        .clk_60Hz_OBUF(clk_60Hz_OBUF));
  freq_div_100_8 div_7_1
       (.AR(reset_IBUF),
        .CLK(div_7_1_n_0),
        .\cnt_reg[0]_0 (clk_7MHz));
  freq_div_100_9 div_7_2
       (.AR(reset_IBUF),
        .CLK(div_7_2_n_0),
        .clk_div_reg_0(div_7_1_n_0));
  freq_div_100_10 div_7_3
       (.AR(reset_IBUF),
        .CLK(div_7_2_n_0),
        .clk_7Hz_OBUF(clk_7Hz_OBUF));
  reference_clock ref_inst
       (.AR(reset_IBUF),
        .clk_in(clk_in),
        .clk_out1(clk_60MHz),
        .clk_out2(clk_45MHz),
        .clk_out3(clk_15MHz),
        .clk_out4(clk_7MHz));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module freq_div_100
   (CLK,
    \cnt_reg[0]_0 ,
    AR);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__5_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__5_n_0 ;
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
    clk_div_i_1__5
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__5_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__5 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__5_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__5_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_0
   (CLK,
    clk_div_reg_0,
    AR);
  output CLK;
  input clk_div_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__6_n_0;
  wire clk_div_n_0;
  wire clk_div_reg_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__6_n_0 ;
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
    clk_div_i_1__6
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__6_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__6 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__6_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__6_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_1
   (clk_15Hz_OBUF,
    CLK,
    AR);
  output clk_15Hz_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_15Hz_OBUF;
  wire clk_div_i_1__7_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__7_n_0 ;
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
    clk_div_i_1__7
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(clk_15Hz_OBUF),
        .O(clk_div_i_1__7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__7_n_0),
        .Q(clk_15Hz_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__7 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__7_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1__7_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_10
   (clk_7Hz_OBUF,
    CLK,
    AR);
  output clk_7Hz_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_7Hz_OBUF;
  wire clk_div_i_1__10_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__10_n_0 ;
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
    clk_div_i_1__10
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(clk_7Hz_OBUF),
        .O(clk_div_i_1__10_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__10_n_0),
        .Q(clk_7Hz_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__10 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__10_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1__10_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_2
   (CLK,
    \cnt_reg[0]_0 ,
    AR);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__2_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__2_n_0 ;
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
    clk_div_i_1__2
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__2_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_3
   (CLK,
    clk_div_reg_0,
    AR);
  output CLK;
  input clk_div_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__3_n_0;
  wire clk_div_n_0;
  wire clk_div_reg_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__3_n_0 ;
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
    clk_div_i_1__3
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__3_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__3_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_4
   (clk_45Hz_OBUF,
    CLK,
    AR);
  output clk_45Hz_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_45Hz_OBUF;
  wire clk_div_i_1__4_n_0;
  wire clk_div_n_0;
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
    clk_div_i_1__4
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(clk_45Hz_OBUF),
        .O(clk_div_i_1__4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__4_n_0),
        .Q(clk_45Hz_OBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1__4_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_5
   (CLK,
    \cnt_reg[0]_0 ,
    AR);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1_n_0;
  wire clk_div_n_0;
  wire [5:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
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
        .CLR(AR),
        .D(clk_div_i_1_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt_0[5]),
        .Q(cnt[5]));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_6
   (CLK,
    \cnt_reg[0]_0 ,
    AR);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__0_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
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
        .CLR(AR),
        .D(clk_div_i_1__0_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__0_n_0 ));
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
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_7
   (clk_60Hz_OBUF,
    CLK,
    AR);
  output clk_60Hz_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_60Hz_OBUF;
  wire clk_div_i_1__1_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__1_n_0 ;
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
        .I5(clk_60Hz_OBUF),
        .O(clk_div_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__1_n_0),
        .Q(clk_60Hz_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_8
   (CLK,
    \cnt_reg[0]_0 ,
    AR);
  output CLK;
  input \cnt_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__8_n_0;
  wire clk_div_n_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__8_n_0 ;
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
    clk_div_i_1__8
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__8_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__8 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__8_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__8_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(\cnt_reg[0]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

(* ORIG_REF_NAME = "freq_div_100" *) 
module freq_div_100_9
   (CLK,
    clk_div_reg_0,
    AR);
  output CLK;
  input clk_div_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_div_i_1__9_n_0;
  wire clk_div_n_0;
  wire clk_div_reg_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__9_n_0 ;
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
    clk_div_i_1__9
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(clk_div_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(CLK),
        .O(clk_div_i_1__9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__9_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__9 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__9_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .CLR(AR),
        .D(\cnt[0]_i_1__9_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_div_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
endmodule

module reference_clock
   (clk_out1,
    clk_out2,
    clk_out3,
    clk_out4,
    AR,
    clk_in);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input [0:0]AR;
  input clk_in;

  wire [0:0]AR;
  wire clk_in;
  wire clk_out1;
  wire clk_out2;
  wire clk_out3;
  wire clk_out4;

  (* IMPORTED_FROM = "c:/Users/namkukhyeon/Documents/FPGA/FPGA Lab/week10/hw2/hw2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_gen_inst
       (.clk_in1(clk_in),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3),
        .clk_out4(clk_out4),
        .reset(AR));
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
