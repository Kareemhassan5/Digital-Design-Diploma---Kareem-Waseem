// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  6 05:22:32 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/Q3/Sequence_Detector_111_Gray.v}
// Design      : Sequence_Detector_111
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* D0_IS_1 = "3'b001" *) (* D0_NOT_1 = "3'b011" *) (* D1_IS_1 = "3'b010" *) 
(* D1_NOT_1 = "3'b100" *) (* START = "3'b000" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module Sequence_Detector_111
   (clk,
    rst,
    Din,
    ERR);
  input clk;
  input rst;
  input Din;
  output ERR;

  wire \<const1> ;
  wire Din;
  wire Din_IBUF;
  wire ERR;
  wire ERR_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [2:0]ns;
  wire rst;
  wire rst_IBUF;

  IBUF Din_IBUF_inst
       (.I(Din),
        .O(Din_IBUF));
  OBUF ERR_OBUF_inst
       (.I(ERR_OBUF),
        .O(ERR));
  LUT4 #(
    .INIT(16'h0800)) 
    ERR_OBUF_inst_i_1
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(Din_IBUF),
        .O(ERR_OBUF));
  LUT4 #(
    .INIT(16'h1514)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(Din_IBUF),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h1415)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(Din_IBUF),
        .O(ns[1]));
  LUT4 #(
    .INIT(16'h0026)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(Din_IBUF),
        .I3(cs[2]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "START:000,D0_NOT_1:010,D0_IS_1:001,D1_NOT_1:111,D1_IS_1:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns[0]),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "START:000,D0_NOT_1:010,D0_IS_1:001,D1_NOT_1:111,D1_IS_1:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns[1]),
        .Q(cs[1]));
  (* FSM_ENCODED_STATES = "START:000,D0_NOT_1:010,D0_IS_1:001,D1_NOT_1:111,D1_IS_1:011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns[2]),
        .Q(cs[2]));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
