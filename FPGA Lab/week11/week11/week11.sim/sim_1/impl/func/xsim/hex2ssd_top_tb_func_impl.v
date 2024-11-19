// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov 15 18:04:04 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week11/week11/week11.sim/sim_1/impl/func/xsim/hex2ssd_top_tb_func_impl.v}
// Design      : hex2ssd_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_gen_100
   (seg_en2_OBUF,
    ssd1_OBUF,
    ssd2_OBUF,
    AR,
    clk,
    \ssd1[5] ,
    \ssd1[5]_0 ,
    Q,
    \ssd1[5]_1 ,
    \ssd1[6] ,
    \ssd1[6]_0 ,
    \ssd1[6]_1 ,
    \ssd2[5] ,
    \ssd2[5]_0 ,
    \ssd2[4] ,
    \ssd2[2] ,
    \ssd2[6] ,
    \ssd2[6]_0 ,
    \ssd2[0] ,
    \ssd1[0] ,
    \ssd1[0]_0 ,
    \ssd1[1] ,
    \ssd1[1]_0 ,
    \ssd1[1]_1 ,
    \ssd1[2] ,
    \ssd1[2]_0 ,
    \ssd1[2]_1 ,
    \ssd1[3] ,
    \ssd1[3]_0 ,
    \ssd1[3]_1 ,
    \ssd1[4] ,
    \ssd1[4]_0 ,
    \ssd1[4]_1 ,
    \ssd2[0]_0 ,
    \ssd2[4]_0 ,
    \ssd2[1] ,
    \ssd2[1]_0 ,
    \ssd2[2]_0 ,
    \ssd2[3] ,
    \ssd2[3]_0 ,
    \ssd2[4]_1 );
  output seg_en2_OBUF;
  output [6:0]ssd1_OBUF;
  output [6:0]ssd2_OBUF;
  input [0:0]AR;
  input clk;
  input \ssd1[5] ;
  input \ssd1[5]_0 ;
  input [1:0]Q;
  input \ssd1[5]_1 ;
  input \ssd1[6] ;
  input \ssd1[6]_0 ;
  input \ssd1[6]_1 ;
  input \ssd2[5] ;
  input \ssd2[5]_0 ;
  input [0:0]\ssd2[4] ;
  input \ssd2[2] ;
  input \ssd2[6] ;
  input \ssd2[6]_0 ;
  input \ssd2[0] ;
  input \ssd1[0] ;
  input \ssd1[0]_0 ;
  input \ssd1[1] ;
  input \ssd1[1]_0 ;
  input \ssd1[1]_1 ;
  input \ssd1[2] ;
  input \ssd1[2]_0 ;
  input \ssd1[2]_1 ;
  input \ssd1[3] ;
  input \ssd1[3]_0 ;
  input \ssd1[3]_1 ;
  input \ssd1[4] ;
  input \ssd1[4]_0 ;
  input \ssd1[4]_1 ;
  input \ssd2[0]_0 ;
  input \ssd2[4]_0 ;
  input \ssd2[1] ;
  input \ssd2[1]_0 ;
  input \ssd2[2]_0 ;
  input \ssd2[3] ;
  input \ssd2[3]_0 ;
  input \ssd2[4]_1 ;

  wire [0:0]AR;
  wire [1:0]Q;
  wire clk;
  wire clk_100M;
  wire clk_div;
  wire seg_en2_OBUF;
  wire \ssd1[0] ;
  wire \ssd1[0]_0 ;
  wire \ssd1[1] ;
  wire \ssd1[1]_0 ;
  wire \ssd1[1]_1 ;
  wire \ssd1[2] ;
  wire \ssd1[2]_0 ;
  wire \ssd1[2]_1 ;
  wire \ssd1[3] ;
  wire \ssd1[3]_0 ;
  wire \ssd1[3]_1 ;
  wire \ssd1[4] ;
  wire \ssd1[4]_0 ;
  wire \ssd1[4]_1 ;
  wire \ssd1[5] ;
  wire \ssd1[5]_0 ;
  wire \ssd1[5]_1 ;
  wire \ssd1[6] ;
  wire \ssd1[6]_0 ;
  wire \ssd1[6]_1 ;
  wire [6:0]ssd1_OBUF;
  wire \ssd2[0] ;
  wire \ssd2[0]_0 ;
  wire \ssd2[1] ;
  wire \ssd2[1]_0 ;
  wire \ssd2[2] ;
  wire \ssd2[2]_0 ;
  wire \ssd2[3] ;
  wire \ssd2[3]_0 ;
  wire [0:0]\ssd2[4] ;
  wire \ssd2[4]_0 ;
  wire \ssd2[4]_1 ;
  wire \ssd2[5] ;
  wire \ssd2[5]_0 ;
  wire \ssd2[6] ;
  wire \ssd2[6]_0 ;
  wire [6:0]ssd2_OBUF;
  wire u2_n_0;

  clk_gen_100M u0
       (.AR(AR),
        .CLK(clk_100M),
        .clk(clk));
  freq_div_100 u1
       (.AR(AR),
        .CLK(clk_div),
        .\cnt_reg[0]_0 (clk_100M));
  freq_div_100_0 u2
       (.AR(AR),
        .CLK(u2_n_0),
        .\cnt_reg[0]_0 (clk_div));
  freq_div_100_1 u3
       (.AR(AR),
        .CLK(u2_n_0),
        .Q(Q),
        .clk_div_reg_0(seg_en2_OBUF),
        .\ssd1[0] (\ssd1[0] ),
        .\ssd1[0]_0 (\ssd1[0]_0 ),
        .\ssd1[1] (\ssd1[1] ),
        .\ssd1[1]_0 (\ssd1[1]_0 ),
        .\ssd1[1]_1 (\ssd1[1]_1 ),
        .\ssd1[2] (\ssd1[2] ),
        .\ssd1[2]_0 (\ssd1[2]_0 ),
        .\ssd1[2]_1 (\ssd1[2]_1 ),
        .\ssd1[3] (\ssd1[3] ),
        .\ssd1[3]_0 (\ssd1[3]_0 ),
        .\ssd1[3]_1 (\ssd1[3]_1 ),
        .\ssd1[4] (\ssd1[4] ),
        .\ssd1[4]_0 (\ssd1[4]_0 ),
        .\ssd1[4]_1 (\ssd1[4]_1 ),
        .\ssd1[5] (\ssd1[5] ),
        .\ssd1[5]_0 (\ssd1[5]_0 ),
        .\ssd1[5]_1 (\ssd1[5]_1 ),
        .\ssd1[6] (\ssd1[6] ),
        .\ssd1[6]_0 (\ssd1[6]_0 ),
        .\ssd1[6]_1 (\ssd1[6]_1 ),
        .ssd1_OBUF(ssd1_OBUF),
        .\ssd2[0] (\ssd2[0] ),
        .\ssd2[0]_0 (\ssd2[0]_0 ),
        .\ssd2[1] (\ssd2[1] ),
        .\ssd2[1]_0 (\ssd2[1]_0 ),
        .\ssd2[2] (\ssd2[2] ),
        .\ssd2[2]_0 (\ssd2[2]_0 ),
        .\ssd2[3] (\ssd2[3] ),
        .\ssd2[3]_0 (\ssd2[3]_0 ),
        .\ssd2[4] (\ssd2[4] ),
        .\ssd2[4]_0 (\ssd2[4]_0 ),
        .\ssd2[4]_1 (\ssd2[4]_1 ),
        .\ssd2[5] (\ssd2[5] ),
        .\ssd2[5]_0 (\ssd2[5]_0 ),
        .\ssd2[6] (\ssd2[6] ),
        .\ssd2[6]_0 (\ssd2[6]_0 ),
        .ssd2_OBUF(ssd2_OBUF));
endmodule

module clk_gen_100M
   (CLK,
    AR,
    clk);
  output CLK;
  input [0:0]AR;
  input clk;

  wire [0:0]AR;
  wire CLK;
  wire clk;

  (* IMPORTED_FROM = "c:/Users/namkukhyeon/Documents/FPGA/FPGA Lab/week11/week11/week11.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_gen
       (.clk_in1(clk),
        .clk_out1(CLK),
        .reset(AR));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
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
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
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
        .CLKIN1(clk_in1),
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

module freq_div_100
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
module freq_div_100_0
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
module freq_div_100_1
   (clk_div_reg_0,
    ssd1_OBUF,
    ssd2_OBUF,
    CLK,
    AR,
    \ssd1[5] ,
    \ssd1[5]_0 ,
    Q,
    \ssd1[5]_1 ,
    \ssd1[6] ,
    \ssd1[6]_0 ,
    \ssd1[6]_1 ,
    \ssd2[5] ,
    \ssd2[5]_0 ,
    \ssd2[4] ,
    \ssd2[2] ,
    \ssd2[6] ,
    \ssd2[6]_0 ,
    \ssd2[0] ,
    \ssd1[0] ,
    \ssd1[0]_0 ,
    \ssd1[1] ,
    \ssd1[1]_0 ,
    \ssd1[1]_1 ,
    \ssd1[2] ,
    \ssd1[2]_0 ,
    \ssd1[2]_1 ,
    \ssd1[3] ,
    \ssd1[3]_0 ,
    \ssd1[3]_1 ,
    \ssd1[4] ,
    \ssd1[4]_0 ,
    \ssd1[4]_1 ,
    \ssd2[0]_0 ,
    \ssd2[4]_0 ,
    \ssd2[1] ,
    \ssd2[1]_0 ,
    \ssd2[2]_0 ,
    \ssd2[3] ,
    \ssd2[3]_0 ,
    \ssd2[4]_1 );
  output clk_div_reg_0;
  output [6:0]ssd1_OBUF;
  output [6:0]ssd2_OBUF;
  input CLK;
  input [0:0]AR;
  input \ssd1[5] ;
  input \ssd1[5]_0 ;
  input [1:0]Q;
  input \ssd1[5]_1 ;
  input \ssd1[6] ;
  input \ssd1[6]_0 ;
  input \ssd1[6]_1 ;
  input \ssd2[5] ;
  input \ssd2[5]_0 ;
  input [0:0]\ssd2[4] ;
  input \ssd2[2] ;
  input \ssd2[6] ;
  input \ssd2[6]_0 ;
  input \ssd2[0] ;
  input \ssd1[0] ;
  input \ssd1[0]_0 ;
  input \ssd1[1] ;
  input \ssd1[1]_0 ;
  input \ssd1[1]_1 ;
  input \ssd1[2] ;
  input \ssd1[2]_0 ;
  input \ssd1[2]_1 ;
  input \ssd1[3] ;
  input \ssd1[3]_0 ;
  input \ssd1[3]_1 ;
  input \ssd1[4] ;
  input \ssd1[4]_0 ;
  input \ssd1[4]_1 ;
  input \ssd2[0]_0 ;
  input \ssd2[4]_0 ;
  input \ssd2[1] ;
  input \ssd2[1]_0 ;
  input \ssd2[2]_0 ;
  input \ssd2[3] ;
  input \ssd2[3]_0 ;
  input \ssd2[4]_1 ;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]Q;
  wire clk_div_i_1__1_n_0;
  wire clk_div_n_0;
  wire clk_div_reg_0;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \ssd1[0] ;
  wire \ssd1[0]_0 ;
  wire \ssd1[1] ;
  wire \ssd1[1]_0 ;
  wire \ssd1[1]_1 ;
  wire \ssd1[2] ;
  wire \ssd1[2]_0 ;
  wire \ssd1[2]_1 ;
  wire \ssd1[3] ;
  wire \ssd1[3]_0 ;
  wire \ssd1[3]_1 ;
  wire \ssd1[4] ;
  wire \ssd1[4]_0 ;
  wire \ssd1[4]_1 ;
  wire \ssd1[5] ;
  wire \ssd1[5]_0 ;
  wire \ssd1[5]_1 ;
  wire \ssd1[6] ;
  wire \ssd1[6]_0 ;
  wire \ssd1[6]_1 ;
  wire [6:0]ssd1_OBUF;
  wire \ssd2[0] ;
  wire \ssd2[0]_0 ;
  wire \ssd2[1] ;
  wire \ssd2[1]_0 ;
  wire \ssd2[2] ;
  wire \ssd2[2]_0 ;
  wire \ssd2[3] ;
  wire \ssd2[3]_0 ;
  wire [0:0]\ssd2[4] ;
  wire \ssd2[4]_0 ;
  wire \ssd2[4]_1 ;
  wire \ssd2[5] ;
  wire \ssd2[5]_0 ;
  wire \ssd2[6] ;
  wire \ssd2[6]_0 ;
  wire [6:0]ssd2_OBUF;

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
        .I5(clk_div_reg_0),
        .O(clk_div_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_div_i_1__1_n_0),
        .Q(clk_div_reg_0));
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
  MUXF7 \ssd1_OBUF[0]_inst_i_1 
       (.I0(\ssd1[0] ),
        .I1(\ssd1[0]_0 ),
        .O(ssd1_OBUF[0]),
        .S(clk_div_reg_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd1_OBUF[1]_inst_i_1 
       (.I0(\ssd1[1] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[1]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[1]_1 ),
        .O(ssd1_OBUF[1]));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8BBB888)) 
    \ssd1_OBUF[2]_inst_i_1 
       (.I0(\ssd1[2] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[2]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[2]_1 ),
        .I5(Q[0]),
        .O(ssd1_OBUF[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd1_OBUF[3]_inst_i_1 
       (.I0(\ssd1[3] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[3]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[3]_1 ),
        .O(ssd1_OBUF[3]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \ssd1_OBUF[4]_inst_i_1 
       (.I0(\ssd1[4] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[4]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[4]_1 ),
        .I5(Q[0]),
        .O(ssd1_OBUF[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd1_OBUF[5]_inst_i_1 
       (.I0(\ssd1[5] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[5]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[5]_1 ),
        .O(ssd1_OBUF[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd1_OBUF[6]_inst_i_1 
       (.I0(\ssd1[6] ),
        .I1(clk_div_reg_0),
        .I2(\ssd1[6]_0 ),
        .I3(Q[1]),
        .I4(\ssd1[6]_1 ),
        .O(ssd1_OBUF[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd2_OBUF[0]_inst_i_1 
       (.I0(\ssd2[0]_0 ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[0] ),
        .I3(\ssd2[4] ),
        .I4(\ssd2[4]_0 ),
        .O(ssd2_OBUF[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd2_OBUF[1]_inst_i_1 
       (.I0(\ssd2[1] ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[4]_0 ),
        .I3(\ssd2[4] ),
        .I4(\ssd2[1]_0 ),
        .O(ssd2_OBUF[1]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \ssd2_OBUF[2]_inst_i_1 
       (.I0(\ssd2[2]_0 ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[2] ),
        .I3(\ssd2[4] ),
        .O(ssd2_OBUF[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd2_OBUF[3]_inst_i_1 
       (.I0(\ssd2[3] ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[3]_0 ),
        .I3(\ssd2[4] ),
        .I4(\ssd2[4]_0 ),
        .O(ssd2_OBUF[3]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ssd2_OBUF[4]_inst_i_1 
       (.I0(\ssd2[4]_1 ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[4]_0 ),
        .I3(\ssd2[4] ),
        .O(ssd2_OBUF[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd2_OBUF[5]_inst_i_1 
       (.I0(\ssd2[5] ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[5]_0 ),
        .I3(\ssd2[4] ),
        .I4(\ssd2[2] ),
        .O(ssd2_OBUF[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ssd2_OBUF[6]_inst_i_1 
       (.I0(\ssd2[6] ),
        .I1(clk_div_reg_0),
        .I2(\ssd2[6]_0 ),
        .I3(\ssd2[4] ),
        .I4(\ssd2[0] ),
        .O(ssd2_OBUF[6]));
endmodule

(* ECO_CHECKSUM = "dcd72aa7" *) 
(* NotValidForBitStream *)
module hex2ssd_top
   (clk,
    start,
    stop,
    rst,
    ssd1,
    seg_en1,
    ssd2,
    seg_en2);
  input clk;
  input start;
  input stop;
  input rst;
  output [6:0]ssd1;
  output seg_en1;
  output [6:0]ssd2;
  output seg_en2;

  wire clk;
  wire clk_IBUF;
  wire integer_part;
  wire \integer_part[0]_i_2_n_0 ;
  wire \integer_part[1]_i_2_n_0 ;
  wire \integer_part[1]_i_3_n_0 ;
  wire \integer_part[2]_i_2_n_0 ;
  wire \integer_part[2]_i_3_n_0 ;
  wire \integer_part[6]_i_3_n_0 ;
  wire \integer_part[6]_i_4_n_0 ;
  wire [6:0]integer_part_reg;
  wire [6:0]p_0_in;
  wire rst;
  wire rst_IBUF;
  wire running;
  wire running_i_1_n_0;
  wire seg_en1;
  wire seg_en2;
  wire seg_en2_OBUF;
  wire [6:0]ssd1;
  wire [6:0]ssd1_OBUF;
  wire \ssd1_OBUF[0]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[0]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[0]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[1]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[1]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[1]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[2]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[2]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[2]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[3]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[3]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[3]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[4]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[4]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[4]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[5]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[5]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[5]_inst_i_4_n_0 ;
  wire \ssd1_OBUF[6]_inst_i_2_n_0 ;
  wire \ssd1_OBUF[6]_inst_i_3_n_0 ;
  wire \ssd1_OBUF[6]_inst_i_4_n_0 ;
  wire [6:0]ssd2;
  wire [6:0]ssd2_OBUF;
  wire \ssd2_OBUF[0]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[1]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[1]_inst_i_3_n_0 ;
  wire \ssd2_OBUF[2]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[3]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[3]_inst_i_3_n_0 ;
  wire \ssd2_OBUF[4]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[4]_inst_i_3_n_0 ;
  wire \ssd2_OBUF[5]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[5]_inst_i_3_n_0 ;
  wire \ssd2_OBUF[5]_inst_i_4_n_0 ;
  wire \ssd2_OBUF[6]_inst_i_2_n_0 ;
  wire \ssd2_OBUF[6]_inst_i_3_n_0 ;
  wire \ssd2_OBUF[6]_inst_i_4_n_0 ;
  wire start;
  wire start_IBUF;
  wire stop;
  wire stop_IBUF;
  wire \underpoint[0]_i_1_n_0 ;
  wire \underpoint[0]_i_2_n_0 ;
  wire \underpoint[1]_i_1_n_0 ;
  wire \underpoint[1]_i_2_n_0 ;
  wire \underpoint[1]_i_3_n_0 ;
  wire \underpoint[1]_i_4_n_0 ;
  wire \underpoint[2]_i_1_n_0 ;
  wire \underpoint[3]_i_1_n_0 ;
  wire \underpoint[4]_i_1_n_0 ;
  wire \underpoint[5]_i_1_n_0 ;
  wire \underpoint[6]_i_1_n_0 ;
  wire \underpoint[6]_i_2_n_0 ;
  wire \underpoint_reg_n_0_[0] ;
  wire \underpoint_reg_n_0_[1] ;
  wire \underpoint_reg_n_0_[2] ;
  wire \underpoint_reg_n_0_[3] ;
  wire \underpoint_reg_n_0_[4] ;
  wire \underpoint_reg_n_0_[5] ;
  wire \underpoint_reg_n_0_[6] ;

  clk_gen_100 c0
       (.AR(rst_IBUF),
        .Q({integer_part_reg[2],integer_part_reg[0]}),
        .clk(clk_IBUF),
        .seg_en2_OBUF(seg_en2_OBUF),
        .\ssd1[0] (\ssd1_OBUF[0]_inst_i_2_n_0 ),
        .\ssd1[0]_0 (\ssd1_OBUF[0]_inst_i_3_n_0 ),
        .\ssd1[1] (\ssd1_OBUF[1]_inst_i_2_n_0 ),
        .\ssd1[1]_0 (\ssd1_OBUF[1]_inst_i_3_n_0 ),
        .\ssd1[1]_1 (\ssd1_OBUF[1]_inst_i_4_n_0 ),
        .\ssd1[2] (\ssd1_OBUF[2]_inst_i_2_n_0 ),
        .\ssd1[2]_0 (\ssd1_OBUF[2]_inst_i_3_n_0 ),
        .\ssd1[2]_1 (\ssd1_OBUF[2]_inst_i_4_n_0 ),
        .\ssd1[3] (\ssd1_OBUF[3]_inst_i_2_n_0 ),
        .\ssd1[3]_0 (\ssd1_OBUF[3]_inst_i_3_n_0 ),
        .\ssd1[3]_1 (\ssd1_OBUF[3]_inst_i_4_n_0 ),
        .\ssd1[4] (\ssd1_OBUF[4]_inst_i_2_n_0 ),
        .\ssd1[4]_0 (\ssd1_OBUF[4]_inst_i_3_n_0 ),
        .\ssd1[4]_1 (\ssd1_OBUF[4]_inst_i_4_n_0 ),
        .\ssd1[5] (\ssd1_OBUF[5]_inst_i_2_n_0 ),
        .\ssd1[5]_0 (\ssd1_OBUF[5]_inst_i_3_n_0 ),
        .\ssd1[5]_1 (\ssd1_OBUF[5]_inst_i_4_n_0 ),
        .\ssd1[6] (\ssd1_OBUF[6]_inst_i_2_n_0 ),
        .\ssd1[6]_0 (\ssd1_OBUF[6]_inst_i_3_n_0 ),
        .\ssd1[6]_1 (\ssd1_OBUF[6]_inst_i_4_n_0 ),
        .ssd1_OBUF(ssd1_OBUF),
        .\ssd2[0] (\ssd2_OBUF[6]_inst_i_4_n_0 ),
        .\ssd2[0]_0 (\ssd2_OBUF[0]_inst_i_2_n_0 ),
        .\ssd2[1] (\ssd2_OBUF[1]_inst_i_2_n_0 ),
        .\ssd2[1]_0 (\ssd2_OBUF[1]_inst_i_3_n_0 ),
        .\ssd2[2] (\ssd2_OBUF[5]_inst_i_4_n_0 ),
        .\ssd2[2]_0 (\ssd2_OBUF[2]_inst_i_2_n_0 ),
        .\ssd2[3] (\ssd2_OBUF[3]_inst_i_2_n_0 ),
        .\ssd2[3]_0 (\ssd2_OBUF[3]_inst_i_3_n_0 ),
        .\ssd2[4] (\underpoint_reg_n_0_[0] ),
        .\ssd2[4]_0 (\ssd2_OBUF[4]_inst_i_3_n_0 ),
        .\ssd2[4]_1 (\ssd2_OBUF[4]_inst_i_2_n_0 ),
        .\ssd2[5] (\ssd2_OBUF[5]_inst_i_2_n_0 ),
        .\ssd2[5]_0 (\ssd2_OBUF[5]_inst_i_3_n_0 ),
        .\ssd2[6] (\ssd2_OBUF[6]_inst_i_2_n_0 ),
        .\ssd2[6]_0 (\ssd2_OBUF[6]_inst_i_3_n_0 ),
        .ssd2_OBUF(ssd2_OBUF));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT4 #(
    .INIT(16'h40FF)) 
    \integer_part[0]_i_1 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(\integer_part[0]_i_2_n_0 ),
        .I3(integer_part_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \integer_part[0]_i_2 
       (.I0(integer_part_reg[5]),
        .I1(integer_part_reg[1]),
        .I2(\integer_part[1]_i_3_n_0 ),
        .I3(\underpoint_reg_n_0_[0] ),
        .I4(integer_part_reg[3]),
        .I5(integer_part_reg[4]),
        .O(\integer_part[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FFEF00)) 
    \integer_part[1]_i_1 
       (.I0(integer_part_reg[2]),
        .I1(\integer_part[1]_i_2_n_0 ),
        .I2(integer_part_reg[6]),
        .I3(integer_part_reg[0]),
        .I4(integer_part_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \integer_part[1]_i_2 
       (.I0(integer_part_reg[4]),
        .I1(integer_part_reg[3]),
        .I2(\underpoint_reg_n_0_[0] ),
        .I3(\integer_part[1]_i_3_n_0 ),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[1]),
        .O(\integer_part[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \integer_part[1]_i_3 
       (.I0(\underpoint_reg_n_0_[6] ),
        .I1(\underpoint_reg_n_0_[5] ),
        .I2(\underpoint_reg_n_0_[1] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[4] ),
        .I5(\underpoint_reg_n_0_[2] ),
        .O(\integer_part[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7626AAAA)) 
    \integer_part[2]_i_1 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[1]),
        .I2(integer_part_reg[6]),
        .I3(\integer_part[2]_i_2_n_0 ),
        .I4(integer_part_reg[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \integer_part[2]_i_2 
       (.I0(integer_part_reg[4]),
        .I1(integer_part_reg[3]),
        .I2(\underpoint_reg_n_0_[0] ),
        .I3(\integer_part[2]_i_3_n_0 ),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[1]),
        .O(\integer_part[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \integer_part[2]_i_3 
       (.I0(\underpoint_reg_n_0_[6] ),
        .I1(\underpoint_reg_n_0_[5] ),
        .I2(\underpoint_reg_n_0_[3] ),
        .I3(\underpoint_reg_n_0_[1] ),
        .I4(\underpoint_reg_n_0_[4] ),
        .I5(\underpoint_reg_n_0_[2] ),
        .O(\integer_part[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \integer_part[3]_i_1 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[0]),
        .I2(integer_part_reg[2]),
        .I3(integer_part_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \integer_part[4]_i_1 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[3]),
        .I2(integer_part_reg[0]),
        .I3(integer_part_reg[2]),
        .I4(integer_part_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \integer_part[5]_i_1 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[3]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[0]),
        .I4(integer_part_reg[2]),
        .I5(integer_part_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \integer_part[6]_i_1 
       (.I0(\integer_part[6]_i_3_n_0 ),
        .I1(running),
        .O(integer_part));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \integer_part[6]_i_2 
       (.I0(integer_part_reg[5]),
        .I1(\integer_part[6]_i_4_n_0 ),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[0]),
        .I4(integer_part_reg[2]),
        .I5(integer_part_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \integer_part[6]_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[4] ),
        .I2(\underpoint[0]_i_2_n_0 ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[6] ),
        .I5(\underpoint_reg_n_0_[0] ),
        .O(\integer_part[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \integer_part[6]_i_4 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[3]),
        .O(\integer_part[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[0] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(integer_part_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[1] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(integer_part_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[2] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(integer_part_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[3] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(integer_part_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[4] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(integer_part_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[5] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(integer_part_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \integer_part_reg[6] 
       (.C(seg_en2_OBUF),
        .CE(integer_part),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(integer_part_reg[6]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    running_i_1
       (.I0(stop_IBUF),
        .I1(start_IBUF),
        .O(running_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    running_reg
       (.C(clk_IBUF),
        .CE(running_i_1_n_0),
        .CLR(rst_IBUF),
        .D(start_IBUF),
        .Q(running));
  OBUF seg_en1_OBUF_inst
       (.I(seg_en2_OBUF),
        .O(seg_en1));
  OBUF seg_en2_OBUF_inst
       (.I(seg_en2_OBUF),
        .O(seg_en2));
  OBUF \ssd1_OBUF[0]_inst 
       (.I(ssd1_OBUF[0]),
        .O(ssd1[0]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \ssd1_OBUF[0]_inst_i_2 
       (.I0(\ssd1_OBUF[0]_inst_i_4_n_0 ),
        .I1(integer_part_reg[2]),
        .I2(\ssd1_OBUF[4]_inst_i_3_n_0 ),
        .I3(integer_part_reg[0]),
        .I4(\ssd1_OBUF[4]_inst_i_4_n_0 ),
        .O(\ssd1_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30FC30FD37EF27EF)) 
    \ssd1_OBUF[0]_inst_i_3 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[1]),
        .I5(integer_part_reg[3]),
        .O(\ssd1_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFBE7DF7)) 
    \ssd1_OBUF[0]_inst_i_4 
       (.I0(integer_part_reg[6]),
        .I1(integer_part_reg[1]),
        .I2(integer_part_reg[3]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[4]),
        .O(\ssd1_OBUF[0]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[1]_inst 
       (.I(ssd1_OBUF[1]),
        .O(ssd1[1]));
  LUT6 #(
    .INIT(64'h0F0F0F1F3F3F7B73)) 
    \ssd1_OBUF[1]_inst_i_2 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[5]),
        .I3(integer_part_reg[1]),
        .I4(integer_part_reg[3]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB7DB7FB7EDFEDBED)) 
    \ssd1_OBUF[1]_inst_i_3 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[1]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE7FEDFEB7DB7FB7)) 
    \ssd1_OBUF[1]_inst_i_4 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[1]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[1]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[2]_inst 
       (.I(ssd1_OBUF[2]),
        .O(ssd1[2]));
  LUT6 #(
    .INIT(64'h0F0FF8F30F3FFFFF)) 
    \ssd1_OBUF[2]_inst_i_2 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[2]),
        .I2(integer_part_reg[6]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBDFBFB6F)) 
    \ssd1_OBUF[2]_inst_i_3 
       (.I0(integer_part_reg[6]),
        .I1(integer_part_reg[4]),
        .I2(integer_part_reg[3]),
        .I3(integer_part_reg[1]),
        .I4(integer_part_reg[5]),
        .O(\ssd1_OBUF[2]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7DF7BEDB)) 
    \ssd1_OBUF[2]_inst_i_4 
       (.I0(integer_part_reg[6]),
        .I1(integer_part_reg[1]),
        .I2(integer_part_reg[3]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[4]),
        .O(\ssd1_OBUF[2]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[3]_inst 
       (.I(ssd1_OBUF[3]),
        .O(ssd1[3]));
  LUT6 #(
    .INIT(64'h3030307133E723EF)) 
    \ssd1_OBUF[3]_inst_i_2 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[1]),
        .I5(integer_part_reg[3]),
        .O(\ssd1_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75966D7596D77596)) 
    \ssd1_OBUF[3]_inst_i_3 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[3]),
        .I5(integer_part_reg[1]),
        .O(\ssd1_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD75996D7596DD759)) 
    \ssd1_OBUF[3]_inst_i_4 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[1]),
        .I4(integer_part_reg[3]),
        .I5(integer_part_reg[5]),
        .O(\ssd1_OBUF[3]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[4]_inst 
       (.I(ssd1_OBUF[4]),
        .O(ssd1[4]));
  LUT6 #(
    .INIT(64'h2000200010E771EF)) 
    \ssd1_OBUF[4]_inst_i_2 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[1]),
        .I5(integer_part_reg[5]),
        .O(\ssd1_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6BF6FF6)) 
    \ssd1_OBUF[4]_inst_i_3 
       (.I0(integer_part_reg[6]),
        .I1(integer_part_reg[4]),
        .I2(integer_part_reg[5]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[1]),
        .O(\ssd1_OBUF[4]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFD6FDBFD)) 
    \ssd1_OBUF[4]_inst_i_4 
       (.I0(integer_part_reg[6]),
        .I1(integer_part_reg[4]),
        .I2(integer_part_reg[1]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .O(\ssd1_OBUF[4]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[5]_inst 
       (.I(ssd1_OBUF[5]),
        .O(ssd1[5]));
  LUT6 #(
    .INIT(64'h33C033C134C734CF)) 
    \ssd1_OBUF[5]_inst_i_2 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[1]),
        .I5(integer_part_reg[3]),
        .O(\ssd1_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45F3DF45DF4534DF)) 
    \ssd1_OBUF[5]_inst_i_3 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[1]),
        .I5(integer_part_reg[5]),
        .O(\ssd1_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h35D35F354DF4D34D)) 
    \ssd1_OBUF[5]_inst_i_4 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[1]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[5]_inst_i_4_n_0 ));
  OBUF \ssd1_OBUF[6]_inst 
       (.I(ssd1_OBUF[6]),
        .O(ssd1[6]));
  LUT6 #(
    .INIT(64'h0F0F0F3FFFFC0070)) 
    \ssd1_OBUF[6]_inst_i_2 
       (.I0(integer_part_reg[1]),
        .I1(integer_part_reg[2]),
        .I2(integer_part_reg[6]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[4]),
        .I5(integer_part_reg[5]),
        .O(\ssd1_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7CF7CF7C1FF1F71F)) 
    \ssd1_OBUF[6]_inst_i_3 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[1]),
        .I3(integer_part_reg[3]),
        .I4(integer_part_reg[5]),
        .I5(integer_part_reg[4]),
        .O(\ssd1_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF71CCFF71CFFF71C)) 
    \ssd1_OBUF[6]_inst_i_4 
       (.I0(integer_part_reg[0]),
        .I1(integer_part_reg[6]),
        .I2(integer_part_reg[4]),
        .I3(integer_part_reg[5]),
        .I4(integer_part_reg[3]),
        .I5(integer_part_reg[1]),
        .O(\ssd1_OBUF[6]_inst_i_4_n_0 ));
  OBUF \ssd2_OBUF[0]_inst 
       (.I(ssd2_OBUF[0]),
        .O(ssd2[0]));
  LUT6 #(
    .INIT(64'h30FC30FD37EF27EF)) 
    \ssd2_OBUF[0]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[1] ),
        .I5(\underpoint_reg_n_0_[3] ),
        .O(\ssd2_OBUF[0]_inst_i_2_n_0 ));
  OBUF \ssd2_OBUF[1]_inst 
       (.I(ssd2_OBUF[1]),
        .O(ssd2[1]));
  LUT6 #(
    .INIT(64'h0F0F0F1F3F3F7B73)) 
    \ssd2_OBUF[1]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[5] ),
        .I3(\underpoint_reg_n_0_[1] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[4] ),
        .O(\ssd2_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7EF7EF7E9FF9F79F)) 
    \ssd2_OBUF[1]_inst_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[1] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[5] ),
        .I5(\underpoint_reg_n_0_[4] ),
        .O(\ssd2_OBUF[1]_inst_i_3_n_0 ));
  OBUF \ssd2_OBUF[2]_inst 
       (.I(ssd2_OBUF[2]),
        .O(ssd2[2]));
  LUT6 #(
    .INIT(64'h0F0FF8F30F3FFFFF)) 
    \ssd2_OBUF[2]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[2] ),
        .I2(\underpoint_reg_n_0_[6] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[5] ),
        .I5(\underpoint_reg_n_0_[4] ),
        .O(\ssd2_OBUF[2]_inst_i_2_n_0 ));
  OBUF \ssd2_OBUF[3]_inst 
       (.I(ssd2_OBUF[3]),
        .O(ssd2[3]));
  LUT6 #(
    .INIT(64'h3030307133E723EF)) 
    \ssd2_OBUF[3]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[1] ),
        .I5(\underpoint_reg_n_0_[3] ),
        .O(\ssd2_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6186869669616186)) 
    \ssd2_OBUF[3]_inst_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[1] ),
        .I5(\underpoint_reg_n_0_[3] ),
        .O(\ssd2_OBUF[3]_inst_i_3_n_0 ));
  OBUF \ssd2_OBUF[4]_inst 
       (.I(ssd2_OBUF[4]),
        .O(ssd2[4]));
  LUT6 #(
    .INIT(64'h2000200010E771EF)) 
    \ssd2_OBUF[4]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[1] ),
        .I5(\underpoint_reg_n_0_[5] ),
        .O(\ssd2_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF799EFF79EFFF79)) 
    \ssd2_OBUF[4]_inst_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[1] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[5] ),
        .O(\ssd2_OBUF[4]_inst_i_3_n_0 ));
  OBUF \ssd2_OBUF[5]_inst 
       (.I(ssd2_OBUF[5]),
        .O(ssd2[5]));
  LUT6 #(
    .INIT(64'h33C033C134C734CF)) 
    \ssd2_OBUF[5]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[1] ),
        .I5(\underpoint_reg_n_0_[3] ),
        .O(\ssd2_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h108EE7108E71108E)) 
    \ssd2_OBUF[5]_inst_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[1] ),
        .O(\ssd2_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9FF9F79FEF7EF9EF)) 
    \ssd2_OBUF[5]_inst_i_4 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[1] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[5] ),
        .I5(\underpoint_reg_n_0_[4] ),
        .O(\ssd2_OBUF[5]_inst_i_4_n_0 ));
  OBUF \ssd2_OBUF[6]_inst 
       (.I(ssd2_OBUF[6]),
        .O(ssd2[6]));
  LUT6 #(
    .INIT(64'h0F0F0F3FFFFC0070)) 
    \ssd2_OBUF[6]_inst_i_2 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[2] ),
        .I2(\underpoint_reg_n_0_[6] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .I4(\underpoint_reg_n_0_[4] ),
        .I5(\underpoint_reg_n_0_[5] ),
        .O(\ssd2_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h718EEF718EF7718E)) 
    \ssd2_OBUF[6]_inst_i_3 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[1] ),
        .O(\ssd2_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF79EEFF79EFFF79E)) 
    \ssd2_OBUF[6]_inst_i_4 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[1] ),
        .O(\ssd2_OBUF[6]_inst_i_4_n_0 ));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  IBUF stop_IBUF_inst
       (.I(stop),
        .O(stop_IBUF));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \underpoint[0]_i_1 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[4] ),
        .I2(\underpoint[0]_i_2_n_0 ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[6] ),
        .I5(\underpoint_reg_n_0_[0] ),
        .O(\underpoint[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \underpoint[0]_i_2 
       (.I0(\underpoint_reg_n_0_[3] ),
        .I1(\underpoint_reg_n_0_[1] ),
        .O(\underpoint[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF10000000)) 
    \underpoint[1]_i_1 
       (.I0(integer_part_reg[2]),
        .I1(integer_part_reg[4]),
        .I2(\underpoint[1]_i_2_n_0 ),
        .I3(integer_part_reg[6]),
        .I4(integer_part_reg[0]),
        .I5(\underpoint[1]_i_3_n_0 ),
        .O(\underpoint[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFBF00FF4000)) 
    \underpoint[1]_i_2 
       (.I0(integer_part_reg[3]),
        .I1(integer_part_reg[1]),
        .I2(integer_part_reg[5]),
        .I3(\underpoint_reg_n_0_[1] ),
        .I4(\underpoint_reg_n_0_[0] ),
        .I5(\underpoint[1]_i_4_n_0 ),
        .O(\underpoint[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \underpoint[1]_i_3 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[0] ),
        .I2(\underpoint[1]_i_4_n_0 ),
        .O(\underpoint[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \underpoint[1]_i_4 
       (.I0(\underpoint_reg_n_0_[2] ),
        .I1(\underpoint_reg_n_0_[6] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[5] ),
        .I4(\underpoint_reg_n_0_[3] ),
        .I5(\underpoint_reg_n_0_[1] ),
        .O(\underpoint[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \underpoint[2]_i_1 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[0] ),
        .I2(\underpoint_reg_n_0_[2] ),
        .O(\underpoint[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \underpoint[3]_i_1 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[2] ),
        .I2(\underpoint_reg_n_0_[0] ),
        .I3(\underpoint_reg_n_0_[3] ),
        .O(\underpoint[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \underpoint[4]_i_1 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[3] ),
        .I2(\underpoint_reg_n_0_[2] ),
        .I3(\underpoint_reg_n_0_[0] ),
        .I4(\underpoint_reg_n_0_[4] ),
        .O(\underpoint[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \underpoint[5]_i_1 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[3] ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[2] ),
        .I4(\underpoint_reg_n_0_[0] ),
        .I5(\underpoint_reg_n_0_[5] ),
        .O(\underpoint[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \underpoint[6]_i_1 
       (.I0(\underpoint_reg_n_0_[5] ),
        .I1(\underpoint[6]_i_2_n_0 ),
        .I2(\underpoint_reg_n_0_[4] ),
        .I3(\underpoint_reg_n_0_[2] ),
        .I4(\underpoint_reg_n_0_[0] ),
        .I5(\underpoint_reg_n_0_[6] ),
        .O(\underpoint[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \underpoint[6]_i_2 
       (.I0(\underpoint_reg_n_0_[1] ),
        .I1(\underpoint_reg_n_0_[3] ),
        .O(\underpoint[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[0] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[0]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[1] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[1]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[2] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[2]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[3] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[3]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[4] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[4]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[5] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[5]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \underpoint_reg[6] 
       (.C(seg_en2_OBUF),
        .CE(running),
        .CLR(rst_IBUF),
        .D(\underpoint[6]_i_1_n_0 ),
        .Q(\underpoint_reg_n_0_[6] ));
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
