// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  6 03:22:40 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/Q2/Gray_Counter_FSM_Netlist.v}
// Design      : Gray_Counter_FSM
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* A = "2'b00" *) (* B = "2'b01" *) (* C = "2'b10" *) 
(* D = "2'b11" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module Gray_Counter_FSM
   (clk,
    rst,
    y);
  input clk;
  input rst;
  output [1:0]y;

  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [0:0]cs;
  wire [0:0]ns;
  wire rst;
  wire rst_IBUF;
  wire [1:0]y;
  (* RTL_KEEP = "yes" *) wire [1:0]y_OBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(cs),
        .O(ns));
  (* FSM_ENCODED_STATES = "A:00,B:01,C:10,D:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns),
        .Q(cs));
  (* FSM_ENCODED_STATES = "A:00,B:01,C:10,D:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(y_OBUF[0]),
        .Q(y_OBUF[1]));
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
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[0]_inst_i_1 
       (.I0(cs),
        .I1(y_OBUF[1]),
        .O(y_OBUF[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
endmodule
