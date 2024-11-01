// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Oct 27 00:25:10 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week5/btob8/btob8.sim/sim_1/synth/func/xsim/tb_btob8_func_synth.v}
// Design      : btob8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module btob8
   (B,
    P);
  input [9:0]B;
  output [9:0]P;

  wire [9:0]B;
  wire [7:1]B_IBUF;
  wire [9:0]P;
  wire [9:0]P_OBUF;
  wire \P_OBUF[1]_inst_i_2_n_0 ;
  wire \P_OBUF[1]_inst_i_3_n_0 ;
  wire \P_OBUF[2]_inst_i_2_n_0 ;
  wire \P_OBUF[2]_inst_i_3_n_0 ;
  wire \P_OBUF[3]_inst_i_2_n_0 ;
  wire \P_OBUF[3]_inst_i_3_n_0 ;
  wire \P_OBUF[4]_inst_i_2_n_0 ;
  wire \P_OBUF[4]_inst_i_3_n_0 ;

  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(P_OBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  OBUF \P_OBUF[0]_inst 
       (.I(P_OBUF[0]),
        .O(P[0]));
  OBUF \P_OBUF[1]_inst 
       (.I(P_OBUF[1]),
        .O(P[1]));
  MUXF7 \P_OBUF[1]_inst_i_1 
       (.I0(\P_OBUF[1]_inst_i_2_n_0 ),
        .I1(\P_OBUF[1]_inst_i_3_n_0 ),
        .O(P_OBUF[1]),
        .S(B_IBUF[5]));
  LUT6 #(
    .INIT(64'h9452A5944A29524A)) 
    \P_OBUF[1]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[7]),
        .O(\P_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4A29524AA59429A5)) 
    \P_OBUF[1]_inst_i_3 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[7]),
        .O(\P_OBUF[1]_inst_i_3_n_0 ));
  OBUF \P_OBUF[2]_inst 
       (.I(P_OBUF[2]),
        .O(P[2]));
  MUXF7 \P_OBUF[2]_inst_i_1 
       (.I0(\P_OBUF[2]_inst_i_2_n_0 ),
        .I1(\P_OBUF[2]_inst_i_3_n_0 ),
        .O(P_OBUF[2]),
        .S(B_IBUF[5]));
  LUT6 #(
    .INIT(64'h188C6331C663188C)) 
    \P_OBUF[2]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[7]),
        .I4(B_IBUF[6]),
        .I5(B_IBUF[4]),
        .O(\P_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8C31C618638C31C6)) 
    \P_OBUF[2]_inst_i_3 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(\P_OBUF[2]_inst_i_3_n_0 ));
  OBUF \P_OBUF[3]_inst 
       (.I(P_OBUF[3]),
        .O(P[3]));
  MUXF7 \P_OBUF[3]_inst_i_1 
       (.I0(\P_OBUF[3]_inst_i_2_n_0 ),
        .I1(\P_OBUF[3]_inst_i_3_n_0 ),
        .O(P_OBUF[3]),
        .S(B_IBUF[5]));
  LUT6 #(
    .INIT(64'h2184104208218410)) 
    \P_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(\P_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1008844242211008)) 
    \P_OBUF[3]_inst_i_3 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[7]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[6]),
        .O(\P_OBUF[3]_inst_i_3_n_0 ));
  OBUF \P_OBUF[4]_inst 
       (.I(P_OBUF[4]),
        .O(P[4]));
  MUXF7 \P_OBUF[4]_inst_i_1 
       (.I0(\P_OBUF[4]_inst_i_2_n_0 ),
        .I1(\P_OBUF[4]_inst_i_3_n_0 ),
        .O(P_OBUF[4]),
        .S(B_IBUF[5]));
  LUT6 #(
    .INIT(64'h3EF80F3EE083F8E0)) 
    \P_OBUF[4]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[7]),
        .O(\P_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE083F8E00F3E830F)) 
    \P_OBUF[4]_inst_i_3 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[7]),
        .O(\P_OBUF[4]_inst_i_3_n_0 ));
  OBUF \P_OBUF[5]_inst 
       (.I(P_OBUF[5]),
        .O(P[5]));
  LUT6 #(
    .INIT(64'h4002A0D4AABF550A)) 
    \P_OBUF[5]_inst_i_1 
       (.I0(B_IBUF[5]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(P_OBUF[5]));
  OBUF \P_OBUF[6]_inst 
       (.I(P_OBUF[6]),
        .O(P[6]));
  LUT6 #(
    .INIT(64'hAA5700AA00EA5588)) 
    \P_OBUF[6]_inst_i_1 
       (.I0(B_IBUF[5]),
        .I1(B_IBUF[3]),
        .I2(B_IBUF[2]),
        .I3(B_IBUF[6]),
        .I4(B_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(P_OBUF[6]));
  OBUF \P_OBUF[7]_inst 
       (.I(P_OBUF[7]),
        .O(P[7]));
  LUT6 #(
    .INIT(64'h00330304C8000000)) 
    \P_OBUF[7]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[5]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[7]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[6]),
        .O(P_OBUF[7]));
  OBUF \P_OBUF[8]_inst 
       (.I(P_OBUF[8]),
        .O(P[8]));
  LUT6 #(
    .INIT(64'h0003FFFFCCC80000)) 
    \P_OBUF[8]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[5]),
        .I2(B_IBUF[3]),
        .I3(B_IBUF[4]),
        .I4(B_IBUF[6]),
        .I5(B_IBUF[7]),
        .O(P_OBUF[8]));
  OBUF \P_OBUF[9]_inst 
       (.I(P_OBUF[9]),
        .O(P[9]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \P_OBUF[9]_inst_i_1 
       (.I0(B_IBUF[5]),
        .I1(B_IBUF[3]),
        .I2(B_IBUF[4]),
        .I3(B_IBUF[7]),
        .I4(B_IBUF[6]),
        .O(P_OBUF[9]));
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
