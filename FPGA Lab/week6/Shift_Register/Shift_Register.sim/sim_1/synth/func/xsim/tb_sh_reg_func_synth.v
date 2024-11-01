// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov  1 00:20:32 2024
// Host        : DESKTOP-135RQ3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/namkukhyeon/Documents/FPGA/FPGA
//               Lab/week6/Shift_Register/Shift_Register.sim/sim_1/synth/func/xsim/tb_sh_reg_func_synth.v}
// Design      : sh_reg
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BITS = "8" *) 
(* NotValidForBitStream *)
module sh_reg
   (clk,
    rstn,
    en,
    mode,
    data,
    out);
  input clk;
  input rstn;
  input en;
  input mode;
  input data;
  output [7:0]out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data;
  wire data_IBUF;
  wire en;
  wire en_IBUF;
  wire mode;
  wire mode_IBUF;
  wire [7:0]out;
  wire [7:0]out_OBUF;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rstn;
  wire rstn_IBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF data_IBUF_inst
       (.I(data),
        .O(data_IBUF));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  IBUF mode_IBUF_inst
       (.I(mode),
        .O(mode_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0]_i_1 
       (.I0(out_OBUF[1]),
        .I1(mode_IBUF),
        .I2(data_IBUF),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[1]_i_1 
       (.I0(out_OBUF[2]),
        .I1(mode_IBUF),
        .I2(out_OBUF[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2]_i_1 
       (.I0(out_OBUF[3]),
        .I1(mode_IBUF),
        .I2(out_OBUF[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[3]_i_1 
       (.I0(out_OBUF[4]),
        .I1(mode_IBUF),
        .I2(out_OBUF[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[4]_i_1 
       (.I0(out_OBUF[5]),
        .I1(mode_IBUF),
        .I2(out_OBUF[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[5]_i_1 
       (.I0(out_OBUF[6]),
        .I1(mode_IBUF),
        .I2(out_OBUF[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[6]_i_1 
       (.I0(out_OBUF[7]),
        .I1(mode_IBUF),
        .I2(out_OBUF[5]),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_i_1 
       (.I0(rstn_IBUF),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[7]_i_2 
       (.I0(data_IBUF),
        .I1(mode_IBUF),
        .I2(out_OBUF[6]),
        .O(p_1_in[7]));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[0]),
        .Q(out_OBUF[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[1]),
        .Q(out_OBUF[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[2]),
        .Q(out_OBUF[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[3]),
        .Q(out_OBUF[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[4]),
        .Q(out_OBUF[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[5]),
        .Q(out_OBUF[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[6]),
        .Q(out_OBUF[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(p_1_in[7]),
        .Q(out_OBUF[7]),
        .R(p_0_in));
  IBUF rstn_IBUF_inst
       (.I(rstn),
        .O(rstn_IBUF));
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
