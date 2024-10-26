// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 17 18:30:02 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week4/mux_16to1/mux_16to1.sim/sim_1/synth/func/xsim/mux_16to1v1_tb_func_synth.v}
// Design      : mux_16to1v1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module mux_16to1v1
   (A,
    B,
    C,
    D,
    sel,
    Y);
  input [3:0]A;
  input [3:0]B;
  input [3:0]C;
  input [3:0]D;
  input [3:0]sel;
  output Y;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire [3:0]C;
  wire [3:0]C_IBUF;
  wire [3:0]D;
  wire [3:0]D_IBUF;
  wire Y;
  wire Y_OBUF;
  wire Y_OBUF_inst_i_2_n_0;
  wire Y_OBUF_inst_i_3_n_0;
  wire Y_OBUF_inst_i_4_n_0;
  wire Y_OBUF_inst_i_5_n_0;
  wire Y_OBUF_inst_i_6_n_0;
  wire Y_OBUF_inst_i_7_n_0;
  wire [3:0]sel;
  wire [3:0]sel_IBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \C_IBUF[0]_inst 
       (.I(C[0]),
        .O(C_IBUF[0]));
  IBUF \C_IBUF[1]_inst 
       (.I(C[1]),
        .O(C_IBUF[1]));
  IBUF \C_IBUF[2]_inst 
       (.I(C[2]),
        .O(C_IBUF[2]));
  IBUF \C_IBUF[3]_inst 
       (.I(C[3]),
        .O(C_IBUF[3]));
  IBUF \D_IBUF[0]_inst 
       (.I(D[0]),
        .O(D_IBUF[0]));
  IBUF \D_IBUF[1]_inst 
       (.I(D[1]),
        .O(D_IBUF[1]));
  IBUF \D_IBUF[2]_inst 
       (.I(D[2]),
        .O(D_IBUF[2]));
  IBUF \D_IBUF[3]_inst 
       (.I(D[3]),
        .O(D_IBUF[3]));
  OBUF Y_OBUF_inst
       (.I(Y_OBUF),
        .O(Y));
  MUXF8 Y_OBUF_inst_i_1
       (.I0(Y_OBUF_inst_i_2_n_0),
        .I1(Y_OBUF_inst_i_3_n_0),
        .O(Y_OBUF),
        .S(sel_IBUF[3]));
  MUXF7 Y_OBUF_inst_i_2
       (.I0(Y_OBUF_inst_i_4_n_0),
        .I1(Y_OBUF_inst_i_5_n_0),
        .O(Y_OBUF_inst_i_2_n_0),
        .S(sel_IBUF[2]));
  MUXF7 Y_OBUF_inst_i_3
       (.I0(Y_OBUF_inst_i_6_n_0),
        .I1(Y_OBUF_inst_i_7_n_0),
        .O(Y_OBUF_inst_i_3_n_0),
        .S(sel_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_4
       (.I0(A_IBUF[3]),
        .I1(A_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(A_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(A_IBUF[0]),
        .O(Y_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_5
       (.I0(B_IBUF[3]),
        .I1(B_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(B_IBUF[0]),
        .O(Y_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_6
       (.I0(C_IBUF[3]),
        .I1(C_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(C_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(C_IBUF[0]),
        .O(Y_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_7
       (.I0(D_IBUF[3]),
        .I1(D_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(D_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(D_IBUF[0]),
        .O(Y_OBUF_inst_i_7_n_0));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
  IBUF \sel_IBUF[2]_inst 
       (.I(sel[2]),
        .O(sel_IBUF[2]));
  IBUF \sel_IBUF[3]_inst 
       (.I(sel[3]),
        .O(sel_IBUF[3]));
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
