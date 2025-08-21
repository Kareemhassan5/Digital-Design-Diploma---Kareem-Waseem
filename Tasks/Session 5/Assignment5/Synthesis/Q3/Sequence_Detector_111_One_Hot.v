// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  6 05:43:27 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/Q3/Sequence_Detector_111_One_Hot.v}
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
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;

  IBUF Din_IBUF_inst
       (.I(Din),
        .O(Din_IBUF));
  OBUF ERR_OBUF_inst
       (.I(ERR_OBUF),
        .O(ERR));
  LUT2 #(
    .INIT(4'h8)) 
    ERR_OBUF_inst_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(Din_IBUF),
        .O(ERR_OBUF));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(Din_IBUF),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(Din_IBUF),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(Din_IBUF),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(Din_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_cs[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "START:00001,D0_NOT_1:01000,D0_IS_1:00010,D1_NOT_1:10000,D1_IS_1:00100" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "START:00001,D0_NOT_1:01000,D0_IS_1:00010,D1_NOT_1:10000,D1_IS_1:00100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "START:00001,D0_NOT_1:01000,D0_IS_1:00010,D1_NOT_1:10000,D1_IS_1:00100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "START:00001,D0_NOT_1:01000,D0_IS_1:00010,D1_NOT_1:10000,D1_IS_1:00100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "START:00001,D0_NOT_1:01000,D0_IS_1:00010,D1_NOT_1:10000,D1_IS_1:00100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_cs[4]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ));
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
