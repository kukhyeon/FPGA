// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 17 17:05:52 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week4/comparator/comparator.sim/sim_1/synth/func/xsim/tb_comp_4c1_func_synth.v}
// Design      : comp_4c1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module comp_4c1
   (a,
    b,
    a_big,
    b_big,
    equal);
  input [3:0]a;
  input [3:0]b;
  output a_big;
  output b_big;
  output equal;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire a_big;
  wire a_big_OBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire b_big;
  wire b_big_OBUF;
  wire bit_a_big_0;
  wire bit_b_big_0;
  wire bit_eq_2;
  wire equal;
  wire equal_OBUF;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  OBUF a_big_OBUF_inst
       (.I(a_big_OBUF),
        .O(a_big));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB0FB20F2)) 
    a_big_OBUF_inst_i_1
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[3]),
        .I4(bit_a_big_0),
        .O(a_big_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    a_big_OBUF_inst_i_2
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[0]),
        .O(bit_a_big_0));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  OBUF b_big_OBUF_inst
       (.I(b_big_OBUF),
        .O(b_big));
  LUT5 #(
    .INIT(32'hDF0D4F04)) 
    b_big_OBUF_inst_i_1
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[3]),
        .I4(bit_b_big_0),
        .O(b_big_OBUF));
  LUT4 #(
    .INIT(16'h22B2)) 
    b_big_OBUF_inst_i_2
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[0]),
        .O(bit_b_big_0));
  OBUF equal_OBUF_inst
       (.I(equal_OBUF),
        .O(equal));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h90090000)) 
    equal_OBUF_inst_i_1
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[0]),
        .I4(bit_eq_2),
        .O(equal_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    equal_OBUF_inst_i_2
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[3]),
        .O(bit_eq_2));
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
