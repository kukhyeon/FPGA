// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Oct 26 19:25:56 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week5/CLA_32bit/CLA_32bit.sim/sim_1/synth/func/xsim/CLA32_tb_func_synth.v}
// Design      : CLA32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module CLA32
   (a,
    b,
    Cin,
    sum,
    Gout,
    Pout,
    Cout);
  input [31:0]a;
  input [31:0]b;
  input Cin;
  output [31:0]sum;
  output Gout;
  output Pout;
  output Cout;

  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire Cout_OBUF_inst_i_2_n_0;
  wire Cout_OBUF_inst_i_3_n_0;
  wire Gout;
  wire Gout_OBUF;
  wire Gout_OBUF_inst_i_2_n_0;
  wire Gout_OBUF_inst_i_3_n_0;
  wire Gout_OBUF_inst_i_4_n_0;
  wire Gout_OBUF_inst_i_5_n_0;
  wire Gout_OBUF_inst_i_6_n_0;
  wire Gout_OBUF_inst_i_7_n_0;
  wire Gout_OBUF_inst_i_8_n_0;
  wire Gout_OBUF_inst_i_9_n_0;
  wire Pout;
  wire Pout_OBUF;
  wire Pout_OBUF_inst_i_2_n_0;
  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire [31:0]sum;
  wire [31:0]sum_OBUF;
  wire \sum_OBUF[10]_inst_i_2_n_0 ;
  wire \sum_OBUF[10]_inst_i_3_n_0 ;
  wire \sum_OBUF[11]_inst_i_2_n_0 ;
  wire \sum_OBUF[11]_inst_i_3_n_0 ;
  wire \sum_OBUF[11]_inst_i_4_n_0 ;
  wire \sum_OBUF[11]_inst_i_5_n_0 ;
  wire \sum_OBUF[11]_inst_i_6_n_0 ;
  wire \sum_OBUF[12]_inst_i_2_n_0 ;
  wire \sum_OBUF[12]_inst_i_3_n_0 ;
  wire \sum_OBUF[12]_inst_i_4_n_0 ;
  wire \sum_OBUF[12]_inst_i_5_n_0 ;
  wire \sum_OBUF[12]_inst_i_6_n_0 ;
  wire \sum_OBUF[15]_inst_i_2_n_0 ;
  wire \sum_OBUF[15]_inst_i_3_n_0 ;
  wire \sum_OBUF[16]_inst_i_10_n_0 ;
  wire \sum_OBUF[16]_inst_i_11_n_0 ;
  wire \sum_OBUF[16]_inst_i_12_n_0 ;
  wire \sum_OBUF[16]_inst_i_13_n_0 ;
  wire \sum_OBUF[16]_inst_i_14_n_0 ;
  wire \sum_OBUF[16]_inst_i_15_n_0 ;
  wire \sum_OBUF[16]_inst_i_16_n_0 ;
  wire \sum_OBUF[16]_inst_i_17_n_0 ;
  wire \sum_OBUF[16]_inst_i_2_n_0 ;
  wire \sum_OBUF[16]_inst_i_3_n_0 ;
  wire \sum_OBUF[16]_inst_i_4_n_0 ;
  wire \sum_OBUF[16]_inst_i_5_n_0 ;
  wire \sum_OBUF[16]_inst_i_6_n_0 ;
  wire \sum_OBUF[16]_inst_i_7_n_0 ;
  wire \sum_OBUF[16]_inst_i_8_n_0 ;
  wire \sum_OBUF[16]_inst_i_9_n_0 ;
  wire \sum_OBUF[19]_inst_i_2_n_0 ;
  wire \sum_OBUF[19]_inst_i_3_n_0 ;
  wire \sum_OBUF[22]_inst_i_2_n_0 ;
  wire \sum_OBUF[23]_inst_i_2_n_0 ;
  wire \sum_OBUF[23]_inst_i_3_n_0 ;
  wire \sum_OBUF[23]_inst_i_4_n_0 ;
  wire \sum_OBUF[25]_inst_i_2_n_0 ;
  wire \sum_OBUF[25]_inst_i_3_n_0 ;
  wire \sum_OBUF[25]_inst_i_4_n_0 ;
  wire \sum_OBUF[26]_inst_i_2_n_0 ;
  wire \sum_OBUF[27]_inst_i_2_n_0 ;
  wire \sum_OBUF[27]_inst_i_3_n_0 ;
  wire \sum_OBUF[27]_inst_i_4_n_0 ;
  wire \sum_OBUF[27]_inst_i_5_n_0 ;
  wire \sum_OBUF[29]_inst_i_2_n_0 ;
  wire \sum_OBUF[29]_inst_i_3_n_0 ;
  wire \sum_OBUF[29]_inst_i_4_n_0 ;
  wire \sum_OBUF[29]_inst_i_5_n_0 ;
  wire \sum_OBUF[29]_inst_i_6_n_0 ;
  wire \sum_OBUF[30]_inst_i_2_n_0 ;
  wire \sum_OBUF[31]_inst_i_2_n_0 ;
  wire \sum_OBUF[31]_inst_i_3_n_0 ;
  wire \sum_OBUF[31]_inst_i_4_n_0 ;
  wire \sum_OBUF[31]_inst_i_5_n_0 ;
  wire \sum_OBUF[31]_inst_i_6_n_0 ;
  wire \sum_OBUF[3]_inst_i_2_n_0 ;
  wire \sum_OBUF[3]_inst_i_3_n_0 ;
  wire \sum_OBUF[4]_inst_i_2_n_0 ;
  wire \sum_OBUF[4]_inst_i_3_n_0 ;
  wire \sum_OBUF[7]_inst_i_2_n_0 ;
  wire \sum_OBUF[7]_inst_i_3_n_0 ;

  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAABBAAFB)) 
    Cout_OBUF_inst_i_1
       (.I0(Cout_OBUF_inst_i_2_n_0),
        .I1(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I2(Cin_IBUF),
        .I3(Pout_OBUF_inst_i_2_n_0),
        .I4(\sum_OBUF[16]_inst_i_3_n_0 ),
        .O(Cout_OBUF));
  LUT5 #(
    .INIT(32'hDDCCFDCC)) 
    Cout_OBUF_inst_i_2
       (.I0(\sum_OBUF[29]_inst_i_3_n_0 ),
        .I1(Gout_OBUF_inst_i_5_n_0),
        .I2(\sum_OBUF[29]_inst_i_5_n_0 ),
        .I3(Cout_OBUF_inst_i_3_n_0),
        .I4(Gout_OBUF_inst_i_3_n_0),
        .O(Cout_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    Cout_OBUF_inst_i_3
       (.I0(Gout_OBUF_inst_i_9_n_0),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[28]),
        .O(Cout_OBUF_inst_i_3_n_0));
  OBUF Gout_OBUF_inst
       (.I(Gout_OBUF),
        .O(Gout));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2F00)) 
    Gout_OBUF_inst_i_1
       (.I0(Gout_OBUF_inst_i_2_n_0),
        .I1(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I2(Gout_OBUF_inst_i_3_n_0),
        .I3(Gout_OBUF_inst_i_4_n_0),
        .I4(Gout_OBUF_inst_i_5_n_0),
        .I5(Gout_OBUF_inst_i_6_n_0),
        .O(Gout_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    Gout_OBUF_inst_i_2
       (.I0(a_IBUF[19]),
        .I1(b_IBUF[19]),
        .I2(Gout_OBUF_inst_i_7_n_0),
        .I3(a_IBUF[16]),
        .I4(b_IBUF[16]),
        .O(Gout_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h00002AAA2AAAFFFF)) 
    Gout_OBUF_inst_i_3
       (.I0(Gout_OBUF_inst_i_8_n_0),
        .I1(b_IBUF[16]),
        .I2(a_IBUF[16]),
        .I3(Gout_OBUF_inst_i_7_n_0),
        .I4(b_IBUF[19]),
        .I5(a_IBUF[19]),
        .O(Gout_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    Gout_OBUF_inst_i_4
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .I2(Gout_OBUF_inst_i_9_n_0),
        .I3(\sum_OBUF[29]_inst_i_5_n_0 ),
        .O(Gout_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF8E8E8E8E8E8E8E)) 
    Gout_OBUF_inst_i_5
       (.I0(a_IBUF[31]),
        .I1(b_IBUF[31]),
        .I2(\sum_OBUF[31]_inst_i_5_n_0 ),
        .I3(b_IBUF[28]),
        .I4(a_IBUF[28]),
        .I5(Gout_OBUF_inst_i_9_n_0),
        .O(Gout_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    Gout_OBUF_inst_i_6
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .I2(Gout_OBUF_inst_i_9_n_0),
        .I3(\sum_OBUF[29]_inst_i_3_n_0 ),
        .O(Gout_OBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    Gout_OBUF_inst_i_7
       (.I0(a_IBUF[18]),
        .I1(b_IBUF[18]),
        .I2(a_IBUF[17]),
        .I3(b_IBUF[17]),
        .O(Gout_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    Gout_OBUF_inst_i_8
       (.I0(b_IBUF[17]),
        .I1(a_IBUF[17]),
        .I2(b_IBUF[18]),
        .I3(a_IBUF[18]),
        .O(Gout_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    Gout_OBUF_inst_i_9
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .I4(a_IBUF[31]),
        .I5(b_IBUF[31]),
        .O(Gout_OBUF_inst_i_9_n_0));
  OBUF Pout_OBUF_inst
       (.I(Pout_OBUF),
        .O(Pout));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Pout_OBUF_inst_i_1
       (.I0(Pout_OBUF_inst_i_2_n_0),
        .I1(\sum_OBUF[16]_inst_i_3_n_0 ),
        .O(Pout_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF77FFFFF)) 
    Pout_OBUF_inst_i_2
       (.I0(\sum_OBUF[29]_inst_i_5_n_0 ),
        .I1(Gout_OBUF_inst_i_9_n_0),
        .I2(a_IBUF[28]),
        .I3(b_IBUF[28]),
        .I4(Gout_OBUF_inst_i_2_n_0),
        .O(Pout_OBUF_inst_i_2_n_0));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(Cin_IBUF),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[0]),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[10]_inst 
       (.I(sum_OBUF[10]),
        .O(sum[10]));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \sum_OBUF[10]_inst_i_1 
       (.I0(\sum_OBUF[10]_inst_i_2_n_0 ),
        .I1(b_IBUF[9]),
        .I2(a_IBUF[9]),
        .I3(b_IBUF[8]),
        .I4(a_IBUF[8]),
        .I5(\sum_OBUF[10]_inst_i_3_n_0 ),
        .O(sum_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[10]_inst_i_2 
       (.I0(b_IBUF[10]),
        .I1(a_IBUF[10]),
        .O(\sum_OBUF[10]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0000FF2B)) 
    \sum_OBUF[10]_inst_i_3 
       (.I0(\sum_OBUF[4]_inst_i_2_n_0 ),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[4]),
        .I3(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I4(\sum_OBUF[11]_inst_i_6_n_0 ),
        .O(\sum_OBUF[10]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[11]_inst 
       (.I(sum_OBUF[11]),
        .O(sum[11]));
  LUT6 #(
    .INIT(64'h556A6AAA555656AA)) 
    \sum_OBUF[11]_inst_i_1 
       (.I0(\sum_OBUF[11]_inst_i_2_n_0 ),
        .I1(b_IBUF[9]),
        .I2(a_IBUF[9]),
        .I3(b_IBUF[10]),
        .I4(a_IBUF[10]),
        .I5(\sum_OBUF[11]_inst_i_3_n_0 ),
        .O(sum_OBUF[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[11]_inst_i_2 
       (.I0(b_IBUF[11]),
        .I1(a_IBUF[11]),
        .O(\sum_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000F200F2FFFF)) 
    \sum_OBUF[11]_inst_i_3 
       (.I0(\sum_OBUF[11]_inst_i_4_n_0 ),
        .I1(\sum_OBUF[11]_inst_i_5_n_0 ),
        .I2(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I3(\sum_OBUF[11]_inst_i_6_n_0 ),
        .I4(a_IBUF[8]),
        .I5(b_IBUF[8]),
        .O(\sum_OBUF[11]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sum_OBUF[11]_inst_i_4 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .O(\sum_OBUF[11]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \sum_OBUF[11]_inst_i_5 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .I2(\sum_OBUF[16]_inst_i_6_n_0 ),
        .I3(\sum_OBUF[12]_inst_i_3_n_0 ),
        .O(\sum_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \sum_OBUF[11]_inst_i_6 
       (.I0(b_IBUF[5]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[6]),
        .I3(a_IBUF[6]),
        .I4(b_IBUF[7]),
        .I5(a_IBUF[7]),
        .O(\sum_OBUF[11]_inst_i_6_n_0 ));
  OBUF \sum_OBUF[12]_inst 
       (.I(sum_OBUF[12]),
        .O(sum[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[12]_inst_i_1 
       (.I0(b_IBUF[12]),
        .I1(a_IBUF[12]),
        .I2(\sum_OBUF[12]_inst_i_2_n_0 ),
        .O(sum_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFFFCC4000000000)) 
    \sum_OBUF[12]_inst_i_2 
       (.I0(\sum_OBUF[16]_inst_i_6_n_0 ),
        .I1(\sum_OBUF[16]_inst_i_9_n_0 ),
        .I2(\sum_OBUF[12]_inst_i_3_n_0 ),
        .I3(\sum_OBUF[16]_inst_i_5_n_0 ),
        .I4(\sum_OBUF[12]_inst_i_4_n_0 ),
        .I5(\sum_OBUF[12]_inst_i_5_n_0 ),
        .O(\sum_OBUF[12]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \sum_OBUF[12]_inst_i_3 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(\sum_OBUF[4]_inst_i_3_n_0 ),
        .I3(Cin_IBUF),
        .O(\sum_OBUF[12]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \sum_OBUF[12]_inst_i_4 
       (.I0(\sum_OBUF[16]_inst_i_16_n_0 ),
        .I1(b_IBUF[8]),
        .I2(a_IBUF[8]),
        .O(\sum_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7000000F7)) 
    \sum_OBUF[12]_inst_i_5 
       (.I0(b_IBUF[8]),
        .I1(a_IBUF[8]),
        .I2(\sum_OBUF[16]_inst_i_16_n_0 ),
        .I3(a_IBUF[11]),
        .I4(b_IBUF[11]),
        .I5(\sum_OBUF[12]_inst_i_6_n_0 ),
        .O(\sum_OBUF[12]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum_OBUF[12]_inst_i_6 
       (.I0(b_IBUF[9]),
        .I1(a_IBUF[9]),
        .I2(b_IBUF[10]),
        .I3(a_IBUF[10]),
        .O(\sum_OBUF[12]_inst_i_6_n_0 ));
  OBUF \sum_OBUF[13]_inst 
       (.I(sum_OBUF[13]),
        .O(sum[13]));
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[13]_inst_i_1 
       (.I0(b_IBUF[13]),
        .I1(a_IBUF[13]),
        .I2(\sum_OBUF[15]_inst_i_3_n_0 ),
        .O(sum_OBUF[13]));
  OBUF \sum_OBUF[14]_inst 
       (.I(sum_OBUF[14]),
        .O(sum[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum_OBUF[14]_inst_i_1 
       (.I0(a_IBUF[14]),
        .I1(b_IBUF[14]),
        .I2(b_IBUF[13]),
        .I3(a_IBUF[13]),
        .I4(\sum_OBUF[15]_inst_i_3_n_0 ),
        .O(sum_OBUF[14]));
  OBUF \sum_OBUF[15]_inst 
       (.I(sum_OBUF[15]),
        .O(sum[15]));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \sum_OBUF[15]_inst_i_1 
       (.I0(\sum_OBUF[15]_inst_i_2_n_0 ),
        .I1(b_IBUF[14]),
        .I2(a_IBUF[14]),
        .I3(b_IBUF[13]),
        .I4(a_IBUF[13]),
        .I5(\sum_OBUF[15]_inst_i_3_n_0 ),
        .O(sum_OBUF[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[15]_inst_i_2 
       (.I0(b_IBUF[15]),
        .I1(a_IBUF[15]),
        .O(\sum_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \sum_OBUF[15]_inst_i_3 
       (.I0(\sum_OBUF[12]_inst_i_2_n_0 ),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[12]),
        .O(\sum_OBUF[15]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[16]_inst 
       (.I(sum_OBUF[16]),
        .O(sum[16]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h758A8A75)) 
    \sum_OBUF[16]_inst_i_1 
       (.I0(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[16]_inst_i_3_n_0 ),
        .I2(Cin_IBUF),
        .I3(a_IBUF[16]),
        .I4(b_IBUF[16]),
        .O(sum_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFFFF99FF99FFFFF)) 
    \sum_OBUF[16]_inst_i_10 
       (.I0(b_IBUF[5]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[7]),
        .I3(a_IBUF[7]),
        .I4(b_IBUF[6]),
        .I5(a_IBUF[6]),
        .O(\sum_OBUF[16]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \sum_OBUF[16]_inst_i_11 
       (.I0(\sum_OBUF[4]_inst_i_3_n_0 ),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[0]),
        .O(\sum_OBUF[16]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \sum_OBUF[16]_inst_i_12 
       (.I0(a_IBUF[15]),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[14]),
        .I3(a_IBUF[14]),
        .I4(b_IBUF[13]),
        .I5(a_IBUF[13]),
        .O(\sum_OBUF[16]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    \sum_OBUF[16]_inst_i_13 
       (.I0(b_IBUF[14]),
        .I1(a_IBUF[14]),
        .I2(b_IBUF[13]),
        .I3(a_IBUF[13]),
        .O(\sum_OBUF[16]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum_OBUF[16]_inst_i_14 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[2]),
        .I3(a_IBUF[2]),
        .O(\sum_OBUF[16]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \sum_OBUF[16]_inst_i_15 
       (.I0(b_IBUF[9]),
        .I1(a_IBUF[9]),
        .I2(b_IBUF[10]),
        .I3(a_IBUF[10]),
        .I4(b_IBUF[11]),
        .I5(a_IBUF[11]),
        .O(\sum_OBUF[16]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF99FF99FFFFF)) 
    \sum_OBUF[16]_inst_i_16 
       (.I0(b_IBUF[9]),
        .I1(a_IBUF[9]),
        .I2(b_IBUF[11]),
        .I3(a_IBUF[11]),
        .I4(b_IBUF[10]),
        .I5(a_IBUF[10]),
        .O(\sum_OBUF[16]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sum_OBUF[16]_inst_i_17 
       (.I0(b_IBUF[8]),
        .I1(a_IBUF[8]),
        .O(\sum_OBUF[16]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0045005500000055)) 
    \sum_OBUF[16]_inst_i_2 
       (.I0(\sum_OBUF[16]_inst_i_4_n_0 ),
        .I1(\sum_OBUF[16]_inst_i_5_n_0 ),
        .I2(\sum_OBUF[16]_inst_i_6_n_0 ),
        .I3(\sum_OBUF[16]_inst_i_7_n_0 ),
        .I4(\sum_OBUF[16]_inst_i_8_n_0 ),
        .I5(\sum_OBUF[16]_inst_i_9_n_0 ),
        .O(\sum_OBUF[16]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFDDF)) 
    \sum_OBUF[16]_inst_i_3 
       (.I0(\sum_OBUF[16]_inst_i_8_n_0 ),
        .I1(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I2(b_IBUF[4]),
        .I3(a_IBUF[4]),
        .I4(\sum_OBUF[16]_inst_i_11_n_0 ),
        .O(\sum_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF808080FFFFFF80)) 
    \sum_OBUF[16]_inst_i_4 
       (.I0(b_IBUF[12]),
        .I1(a_IBUF[12]),
        .I2(\sum_OBUF[16]_inst_i_12_n_0 ),
        .I3(a_IBUF[15]),
        .I4(b_IBUF[15]),
        .I5(\sum_OBUF[16]_inst_i_13_n_0 ),
        .O(\sum_OBUF[16]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \sum_OBUF[16]_inst_i_5 
       (.I0(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I1(b_IBUF[4]),
        .I2(a_IBUF[4]),
        .O(\sum_OBUF[16]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8EFF8E8E8E8E8E8E)) 
    \sum_OBUF[16]_inst_i_6 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .I2(\sum_OBUF[16]_inst_i_14_n_0 ),
        .I3(\sum_OBUF[4]_inst_i_3_n_0 ),
        .I4(b_IBUF[0]),
        .I5(a_IBUF[0]),
        .O(\sum_OBUF[16]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6000600060006060)) 
    \sum_OBUF[16]_inst_i_7 
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .I2(\sum_OBUF[16]_inst_i_12_n_0 ),
        .I3(\sum_OBUF[16]_inst_i_15_n_0 ),
        .I4(\sum_OBUF[16]_inst_i_16_n_0 ),
        .I5(\sum_OBUF[16]_inst_i_17_n_0 ),
        .O(\sum_OBUF[16]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000606000)) 
    \sum_OBUF[16]_inst_i_8 
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .I2(\sum_OBUF[16]_inst_i_12_n_0 ),
        .I3(a_IBUF[8]),
        .I4(b_IBUF[8]),
        .I5(\sum_OBUF[16]_inst_i_16_n_0 ),
        .O(\sum_OBUF[16]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \sum_OBUF[16]_inst_i_9 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .I2(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I3(\sum_OBUF[11]_inst_i_6_n_0 ),
        .O(\sum_OBUF[16]_inst_i_9_n_0 ));
  OBUF \sum_OBUF[17]_inst 
       (.I(sum_OBUF[17]),
        .O(sum[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[17]_inst_i_1 
       (.I0(b_IBUF[17]),
        .I1(a_IBUF[17]),
        .I2(\sum_OBUF[19]_inst_i_3_n_0 ),
        .O(sum_OBUF[17]));
  OBUF \sum_OBUF[18]_inst 
       (.I(sum_OBUF[18]),
        .O(sum[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum_OBUF[18]_inst_i_1 
       (.I0(a_IBUF[18]),
        .I1(b_IBUF[18]),
        .I2(b_IBUF[17]),
        .I3(a_IBUF[17]),
        .I4(\sum_OBUF[19]_inst_i_3_n_0 ),
        .O(sum_OBUF[18]));
  OBUF \sum_OBUF[19]_inst 
       (.I(sum_OBUF[19]),
        .O(sum[19]));
  LUT6 #(
    .INIT(64'hAA959555AAA9A955)) 
    \sum_OBUF[19]_inst_i_1 
       (.I0(\sum_OBUF[19]_inst_i_2_n_0 ),
        .I1(b_IBUF[17]),
        .I2(a_IBUF[17]),
        .I3(b_IBUF[18]),
        .I4(a_IBUF[18]),
        .I5(\sum_OBUF[19]_inst_i_3_n_0 ),
        .O(sum_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sum_OBUF[19]_inst_i_2 
       (.I0(a_IBUF[19]),
        .I1(b_IBUF[19]),
        .O(\sum_OBUF[19]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h008A8AFF)) 
    \sum_OBUF[19]_inst_i_3 
       (.I0(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[16]_inst_i_3_n_0 ),
        .I2(Cin_IBUF),
        .I3(b_IBUF[16]),
        .I4(a_IBUF[16]),
        .O(\sum_OBUF[19]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(Cin_IBUF),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[0]),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[20]_inst 
       (.I(sum_OBUF[20]),
        .O(sum[20]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[20]_inst_i_1 
       (.I0(a_IBUF[20]),
        .I1(b_IBUF[20]),
        .I2(\sum_OBUF[29]_inst_i_4_n_0 ),
        .O(sum_OBUF[20]));
  OBUF \sum_OBUF[21]_inst 
       (.I(sum_OBUF[21]),
        .O(sum[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99696966)) 
    \sum_OBUF[21]_inst_i_1 
       (.I0(b_IBUF[21]),
        .I1(a_IBUF[21]),
        .I2(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I3(b_IBUF[20]),
        .I4(a_IBUF[20]),
        .O(sum_OBUF[21]));
  OBUF \sum_OBUF[22]_inst 
       (.I(sum_OBUF[22]),
        .O(sum[22]));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \sum_OBUF[22]_inst_i_1 
       (.I0(\sum_OBUF[22]_inst_i_2_n_0 ),
        .I1(b_IBUF[21]),
        .I2(a_IBUF[21]),
        .I3(a_IBUF[20]),
        .I4(b_IBUF[20]),
        .I5(\sum_OBUF[29]_inst_i_4_n_0 ),
        .O(sum_OBUF[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[22]_inst_i_2 
       (.I0(b_IBUF[22]),
        .I1(a_IBUF[22]),
        .O(\sum_OBUF[22]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[23]_inst 
       (.I(sum_OBUF[23]),
        .O(sum[23]));
  LUT6 #(
    .INIT(64'h95559995AAAAAAAA)) 
    \sum_OBUF[23]_inst_i_1 
       (.I0(\sum_OBUF[23]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[23]_inst_i_3_n_0 ),
        .I2(a_IBUF[20]),
        .I3(b_IBUF[20]),
        .I4(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I5(\sum_OBUF[23]_inst_i_4_n_0 ),
        .O(sum_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sum_OBUF[23]_inst_i_2 
       (.I0(a_IBUF[23]),
        .I1(b_IBUF[23]),
        .O(\sum_OBUF[23]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \sum_OBUF[23]_inst_i_3 
       (.I0(a_IBUF[22]),
        .I1(b_IBUF[22]),
        .I2(a_IBUF[21]),
        .I3(b_IBUF[21]),
        .O(\sum_OBUF[23]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \sum_OBUF[23]_inst_i_4 
       (.I0(b_IBUF[21]),
        .I1(a_IBUF[21]),
        .I2(b_IBUF[22]),
        .I3(a_IBUF[22]),
        .O(\sum_OBUF[23]_inst_i_4_n_0 ));
  OBUF \sum_OBUF[24]_inst 
       (.I(sum_OBUF[24]),
        .O(sum[24]));
  LUT5 #(
    .INIT(32'h69996969)) 
    \sum_OBUF[24]_inst_i_1 
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .I2(\sum_OBUF[25]_inst_i_3_n_0 ),
        .I3(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I4(\sum_OBUF[25]_inst_i_4_n_0 ),
        .O(sum_OBUF[24]));
  OBUF \sum_OBUF[25]_inst 
       (.I(sum_OBUF[25]),
        .O(sum[25]));
  LUT6 #(
    .INIT(64'h555595999599AAAA)) 
    \sum_OBUF[25]_inst_i_1 
       (.I0(\sum_OBUF[25]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[25]_inst_i_3_n_0 ),
        .I2(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I3(\sum_OBUF[25]_inst_i_4_n_0 ),
        .I4(b_IBUF[24]),
        .I5(a_IBUF[24]),
        .O(sum_OBUF[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[25]_inst_i_2 
       (.I0(b_IBUF[25]),
        .I1(a_IBUF[25]),
        .O(\sum_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00002AAA2AAAFFFF)) 
    \sum_OBUF[25]_inst_i_3 
       (.I0(\sum_OBUF[23]_inst_i_4_n_0 ),
        .I1(b_IBUF[20]),
        .I2(a_IBUF[20]),
        .I3(\sum_OBUF[23]_inst_i_3_n_0 ),
        .I4(b_IBUF[23]),
        .I5(a_IBUF[23]),
        .O(\sum_OBUF[25]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    \sum_OBUF[25]_inst_i_4 
       (.I0(a_IBUF[23]),
        .I1(b_IBUF[23]),
        .I2(\sum_OBUF[23]_inst_i_3_n_0 ),
        .I3(a_IBUF[20]),
        .I4(b_IBUF[20]),
        .O(\sum_OBUF[25]_inst_i_4_n_0 ));
  OBUF \sum_OBUF[26]_inst 
       (.I(sum_OBUF[26]),
        .O(sum[26]));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \sum_OBUF[26]_inst_i_1 
       (.I0(\sum_OBUF[26]_inst_i_2_n_0 ),
        .I1(b_IBUF[25]),
        .I2(a_IBUF[25]),
        .I3(a_IBUF[24]),
        .I4(b_IBUF[24]),
        .I5(\sum_OBUF[27]_inst_i_3_n_0 ),
        .O(sum_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[26]_inst_i_2 
       (.I0(b_IBUF[26]),
        .I1(a_IBUF[26]),
        .O(\sum_OBUF[26]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[27]_inst 
       (.I(sum_OBUF[27]),
        .O(sum[27]));
  LUT6 #(
    .INIT(64'h6696666699999999)) 
    \sum_OBUF[27]_inst_i_1 
       (.I0(b_IBUF[27]),
        .I1(a_IBUF[27]),
        .I2(\sum_OBUF[27]_inst_i_2_n_0 ),
        .I3(\sum_OBUF[27]_inst_i_3_n_0 ),
        .I4(\sum_OBUF[27]_inst_i_4_n_0 ),
        .I5(\sum_OBUF[27]_inst_i_5_n_0 ),
        .O(sum_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \sum_OBUF[27]_inst_i_2 
       (.I0(a_IBUF[26]),
        .I1(b_IBUF[26]),
        .I2(a_IBUF[25]),
        .I3(b_IBUF[25]),
        .O(\sum_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \sum_OBUF[27]_inst_i_3 
       (.I0(\sum_OBUF[25]_inst_i_3_n_0 ),
        .I1(Gout_OBUF_inst_i_3_n_0),
        .I2(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I3(\sum_OBUF[31]_inst_i_6_n_0 ),
        .I4(Gout_OBUF_inst_i_2_n_0),
        .I5(\sum_OBUF[25]_inst_i_4_n_0 ),
        .O(\sum_OBUF[27]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[27]_inst_i_4 
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .O(\sum_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F077F077F0FFF)) 
    \sum_OBUF[27]_inst_i_5 
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .I2(a_IBUF[26]),
        .I3(b_IBUF[26]),
        .I4(a_IBUF[25]),
        .I5(b_IBUF[25]),
        .O(\sum_OBUF[27]_inst_i_5_n_0 ));
  OBUF \sum_OBUF[28]_inst 
       (.I(sum_OBUF[28]),
        .O(sum[28]));
  LUT5 #(
    .INIT(32'h66969999)) 
    \sum_OBUF[28]_inst_i_1 
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[28]),
        .I2(\sum_OBUF[29]_inst_i_5_n_0 ),
        .I3(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I4(\sum_OBUF[29]_inst_i_3_n_0 ),
        .O(sum_OBUF[28]));
  OBUF \sum_OBUF[29]_inst 
       (.I(sum_OBUF[29]),
        .O(sum[29]));
  LUT6 #(
    .INIT(64'h555595999599AAAA)) 
    \sum_OBUF[29]_inst_i_1 
       (.I0(\sum_OBUF[29]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[29]_inst_i_3_n_0 ),
        .I2(\sum_OBUF[29]_inst_i_4_n_0 ),
        .I3(\sum_OBUF[29]_inst_i_5_n_0 ),
        .I4(b_IBUF[28]),
        .I5(a_IBUF[28]),
        .O(sum_OBUF[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[29]_inst_i_2 
       (.I0(b_IBUF[29]),
        .I1(a_IBUF[29]),
        .O(\sum_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h71007171)) 
    \sum_OBUF[29]_inst_i_3 
       (.I0(a_IBUF[27]),
        .I1(b_IBUF[27]),
        .I2(\sum_OBUF[27]_inst_i_5_n_0 ),
        .I3(\sum_OBUF[25]_inst_i_3_n_0 ),
        .I4(\sum_OBUF[29]_inst_i_6_n_0 ),
        .O(\sum_OBUF[29]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \sum_OBUF[29]_inst_i_4 
       (.I0(Gout_OBUF_inst_i_3_n_0),
        .I1(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I2(\sum_OBUF[16]_inst_i_3_n_0 ),
        .I3(Cin_IBUF),
        .I4(Gout_OBUF_inst_i_2_n_0),
        .O(\sum_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0060600000000000)) 
    \sum_OBUF[29]_inst_i_5 
       (.I0(b_IBUF[27]),
        .I1(a_IBUF[27]),
        .I2(\sum_OBUF[27]_inst_i_2_n_0 ),
        .I3(b_IBUF[24]),
        .I4(a_IBUF[24]),
        .I5(\sum_OBUF[25]_inst_i_4_n_0 ),
        .O(\sum_OBUF[29]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    \sum_OBUF[29]_inst_i_6 
       (.I0(a_IBUF[24]),
        .I1(b_IBUF[24]),
        .I2(\sum_OBUF[27]_inst_i_2_n_0 ),
        .I3(a_IBUF[27]),
        .I4(b_IBUF[27]),
        .O(\sum_OBUF[29]_inst_i_6_n_0 ));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[1]),
        .I4(\sum_OBUF[3]_inst_i_3_n_0 ),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[30]_inst 
       (.I(sum_OBUF[30]),
        .O(sum[30]));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \sum_OBUF[30]_inst_i_1 
       (.I0(\sum_OBUF[30]_inst_i_2_n_0 ),
        .I1(b_IBUF[29]),
        .I2(a_IBUF[29]),
        .I3(a_IBUF[28]),
        .I4(b_IBUF[28]),
        .I5(\sum_OBUF[31]_inst_i_4_n_0 ),
        .O(sum_OBUF[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[30]_inst_i_2 
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .O(\sum_OBUF[30]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[31]_inst 
       (.I(sum_OBUF[31]),
        .O(sum[31]));
  LUT6 #(
    .INIT(64'h6AAA666A55555555)) 
    \sum_OBUF[31]_inst_i_1 
       (.I0(\sum_OBUF[31]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[31]_inst_i_3_n_0 ),
        .I2(a_IBUF[28]),
        .I3(b_IBUF[28]),
        .I4(\sum_OBUF[31]_inst_i_4_n_0 ),
        .I5(\sum_OBUF[31]_inst_i_5_n_0 ),
        .O(sum_OBUF[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[31]_inst_i_2 
       (.I0(b_IBUF[31]),
        .I1(a_IBUF[31]),
        .O(\sum_OBUF[31]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \sum_OBUF[31]_inst_i_3 
       (.I0(a_IBUF[29]),
        .I1(b_IBUF[29]),
        .I2(a_IBUF[30]),
        .I3(b_IBUF[30]),
        .O(\sum_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \sum_OBUF[31]_inst_i_4 
       (.I0(\sum_OBUF[29]_inst_i_3_n_0 ),
        .I1(Gout_OBUF_inst_i_3_n_0),
        .I2(\sum_OBUF[16]_inst_i_2_n_0 ),
        .I3(\sum_OBUF[31]_inst_i_6_n_0 ),
        .I4(Gout_OBUF_inst_i_2_n_0),
        .I5(\sum_OBUF[29]_inst_i_5_n_0 ),
        .O(\sum_OBUF[31]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    \sum_OBUF[31]_inst_i_5 
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .O(\sum_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000022000000000)) 
    \sum_OBUF[31]_inst_i_6 
       (.I0(Cin_IBUF),
        .I1(\sum_OBUF[16]_inst_i_11_n_0 ),
        .I2(a_IBUF[4]),
        .I3(b_IBUF[4]),
        .I4(\sum_OBUF[16]_inst_i_10_n_0 ),
        .I5(\sum_OBUF[16]_inst_i_8_n_0 ),
        .O(\sum_OBUF[31]_inst_i_6_n_0 ));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  LUT6 #(
    .INIT(64'hAA959555AAA9A955)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[2]),
        .I5(\sum_OBUF[3]_inst_i_3_n_0 ),
        .O(sum_OBUF[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .O(\sum_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \sum_OBUF[3]_inst_i_3 
       (.I0(Cin_IBUF),
        .I1(b_IBUF[0]),
        .I2(a_IBUF[0]),
        .O(\sum_OBUF[3]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[4]_inst_i_1 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .I2(\sum_OBUF[4]_inst_i_2_n_0 ),
        .O(sum_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000FDDF)) 
    \sum_OBUF[4]_inst_i_2 
       (.I0(Cin_IBUF),
        .I1(\sum_OBUF[4]_inst_i_3_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[0]),
        .I4(\sum_OBUF[16]_inst_i_6_n_0 ),
        .O(\sum_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF99FF99FFFFF)) 
    \sum_OBUF[4]_inst_i_3 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[1]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(\sum_OBUF[4]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[5]_inst_i_1 
       (.I0(b_IBUF[5]),
        .I1(a_IBUF[5]),
        .I2(\sum_OBUF[7]_inst_i_3_n_0 ),
        .O(sum_OBUF[5]));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum_OBUF[6]_inst_i_1 
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[5]),
        .I3(a_IBUF[5]),
        .I4(\sum_OBUF[7]_inst_i_3_n_0 ),
        .O(sum_OBUF[6]));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  LUT6 #(
    .INIT(64'h5555599A599AAAAA)) 
    \sum_OBUF[7]_inst_i_1 
       (.I0(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sum_OBUF[7]_inst_i_3_n_0 ),
        .I2(a_IBUF[5]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[6]),
        .I5(b_IBUF[6]),
        .O(sum_OBUF[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[7]_inst_i_2 
       (.I0(b_IBUF[7]),
        .I1(a_IBUF[7]),
        .O(\sum_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \sum_OBUF[7]_inst_i_3 
       (.I0(\sum_OBUF[4]_inst_i_2_n_0 ),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[4]),
        .O(\sum_OBUF[7]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[8]_inst 
       (.I(sum_OBUF[8]),
        .O(sum[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \sum_OBUF[8]_inst_i_1 
       (.I0(b_IBUF[8]),
        .I1(a_IBUF[8]),
        .I2(\sum_OBUF[10]_inst_i_3_n_0 ),
        .O(sum_OBUF[8]));
  OBUF \sum_OBUF[9]_inst 
       (.I(sum_OBUF[9]),
        .O(sum[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \sum_OBUF[9]_inst_i_1 
       (.I0(b_IBUF[9]),
        .I1(a_IBUF[9]),
        .I2(b_IBUF[8]),
        .I3(a_IBUF[8]),
        .I4(\sum_OBUF[10]_inst_i_3_n_0 ),
        .O(sum_OBUF[9]));
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
