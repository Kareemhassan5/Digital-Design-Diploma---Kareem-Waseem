// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  7 03:11:50 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/Q5/FIFO_Netlist.v}
// Design      : FIFO
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* FIFO_DEPTH = "512" *) (* FIFO_WIDTH = "16" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module FIFO
   (clk_a,
    clk_b,
    rst,
    wen_a,
    ren_b,
    din_a,
    dout_b,
    full,
    empty);
  input clk_a;
  input clk_b;
  input rst;
  input wen_a;
  input ren_b;
  input [15:0]din_a;
  output [15:0]dout_b;
  output full;
  output empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]addr_rd;
  wire \addr_rd[0]_i_1_n_0 ;
  wire \addr_rd[1]_i_1_n_0 ;
  wire \addr_rd[2]_i_1_n_0 ;
  wire \addr_rd[3]_i_1_n_0 ;
  wire \addr_rd[4]_i_1_n_0 ;
  wire \addr_rd[5]_i_1_n_0 ;
  wire \addr_rd[6]_i_1_n_0 ;
  wire \addr_rd[6]_i_2_n_0 ;
  wire \addr_rd[7]_i_1_n_0 ;
  wire \addr_rd[8]_i_1_n_0 ;
  wire \addr_wr[8]_i_2_n_0 ;
  wire [8:0]addr_wr_reg__0;
  wire clk_a;
  wire clk_a_IBUF;
  wire clk_a_IBUF_BUFG;
  wire clk_b;
  wire clk_b_IBUF;
  wire clk_b_IBUF_BUFG;
  wire [15:0]din_a;
  wire [15:0]din_a_IBUF;
  wire [15:0]dout_b;
  wire [15:0]dout_b_OBUF;
  wire empty;
  wire empty_OBUF;
  wire empty_OBUF_inst_i_2_n_0;
  wire full;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_2_n_0;
  wire [8:0]p_0_in;
  wire ren_b;
  wire ren_b_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [8:0]size;
  wire \size[0]_i_1_n_0 ;
  wire \size[1]__0_i_1_n_0 ;
  wire \size[1]_i_1_n_0 ;
  wire \size[2]__0_i_1_n_0 ;
  wire \size[2]_i_1_n_0 ;
  wire \size[3]__0_i_1_n_0 ;
  wire \size[3]_i_1_n_0 ;
  wire \size[4]__0_i_1_n_0 ;
  wire \size[4]_i_1_n_0 ;
  wire \size[5]__0_i_1_n_0 ;
  wire \size[5]_i_1_n_0 ;
  wire \size[6]__0_i_1_n_0 ;
  wire \size[6]__0_i_2_n_0 ;
  wire \size[6]_i_1_n_0 ;
  wire \size[7]__0_i_1_n_0 ;
  wire \size[7]_i_1_n_0 ;
  wire \size[8]__0_i_1_n_0 ;
  wire \size[8]__0_i_2_n_0 ;
  wire \size[8]_i_1_n_0 ;
  wire \size[8]_i_2_n_0 ;
  wire wen_a;
  wire wen_a_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_rd[0]_i_1 
       (.I0(addr_rd[0]),
        .O(\addr_rd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_rd[1]_i_1 
       (.I0(addr_rd[0]),
        .I1(addr_rd[1]),
        .O(\addr_rd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_rd[2]_i_1 
       (.I0(addr_rd[1]),
        .I1(addr_rd[0]),
        .I2(addr_rd[2]),
        .O(\addr_rd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_rd[3]_i_1 
       (.I0(addr_rd[2]),
        .I1(addr_rd[0]),
        .I2(addr_rd[1]),
        .I3(addr_rd[3]),
        .O(\addr_rd[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_rd[4]_i_1 
       (.I0(addr_rd[3]),
        .I1(addr_rd[1]),
        .I2(addr_rd[0]),
        .I3(addr_rd[2]),
        .I4(addr_rd[4]),
        .O(\addr_rd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_rd[5]_i_1 
       (.I0(addr_rd[4]),
        .I1(addr_rd[2]),
        .I2(addr_rd[0]),
        .I3(addr_rd[1]),
        .I4(addr_rd[3]),
        .I5(addr_rd[5]),
        .O(\addr_rd[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_rd[6]_i_1 
       (.I0(\addr_rd[6]_i_2_n_0 ),
        .I1(addr_rd[6]),
        .O(\addr_rd[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addr_rd[6]_i_2 
       (.I0(addr_rd[4]),
        .I1(addr_rd[2]),
        .I2(addr_rd[0]),
        .I3(addr_rd[1]),
        .I4(addr_rd[3]),
        .I5(addr_rd[5]),
        .O(\addr_rd[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \addr_rd[7]_i_1 
       (.I0(addr_rd[6]),
        .I1(\addr_rd[6]_i_2_n_0 ),
        .I2(addr_rd[7]),
        .O(\addr_rd[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \addr_rd[8]_i_1 
       (.I0(addr_rd[7]),
        .I1(\addr_rd[6]_i_2_n_0 ),
        .I2(addr_rd[6]),
        .I3(addr_rd[8]),
        .O(\addr_rd[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[0] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[0]_i_1_n_0 ),
        .Q(addr_rd[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[1] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[1]_i_1_n_0 ),
        .Q(addr_rd[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[2] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[2]_i_1_n_0 ),
        .Q(addr_rd[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[3] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[3]_i_1_n_0 ),
        .Q(addr_rd[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[4] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[4]_i_1_n_0 ),
        .Q(addr_rd[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[5] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[5]_i_1_n_0 ),
        .Q(addr_rd[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[6] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[6]_i_1_n_0 ),
        .Q(addr_rd[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[7] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[7]_i_1_n_0 ),
        .Q(addr_rd[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[8] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\addr_rd[8]_i_1_n_0 ),
        .Q(addr_rd[8]),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_wr[0]_i_1 
       (.I0(addr_wr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_wr[1]_i_1 
       (.I0(addr_wr_reg__0[0]),
        .I1(addr_wr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_wr[2]_i_1 
       (.I0(addr_wr_reg__0[1]),
        .I1(addr_wr_reg__0[0]),
        .I2(addr_wr_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_wr[3]_i_1 
       (.I0(addr_wr_reg__0[2]),
        .I1(addr_wr_reg__0[0]),
        .I2(addr_wr_reg__0[1]),
        .I3(addr_wr_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_wr[4]_i_1 
       (.I0(addr_wr_reg__0[3]),
        .I1(addr_wr_reg__0[1]),
        .I2(addr_wr_reg__0[0]),
        .I3(addr_wr_reg__0[2]),
        .I4(addr_wr_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_wr[5]_i_1 
       (.I0(addr_wr_reg__0[4]),
        .I1(addr_wr_reg__0[2]),
        .I2(addr_wr_reg__0[0]),
        .I3(addr_wr_reg__0[1]),
        .I4(addr_wr_reg__0[3]),
        .I5(addr_wr_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_wr[6]_i_1 
       (.I0(\addr_wr[8]_i_2_n_0 ),
        .I1(addr_wr_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \addr_wr[7]_i_1 
       (.I0(addr_wr_reg__0[6]),
        .I1(\addr_wr[8]_i_2_n_0 ),
        .I2(addr_wr_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \addr_wr[8]_i_1 
       (.I0(addr_wr_reg__0[7]),
        .I1(\addr_wr[8]_i_2_n_0 ),
        .I2(addr_wr_reg__0[6]),
        .I3(addr_wr_reg__0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addr_wr[8]_i_2 
       (.I0(addr_wr_reg__0[4]),
        .I1(addr_wr_reg__0[2]),
        .I2(addr_wr_reg__0[0]),
        .I3(addr_wr_reg__0[1]),
        .I4(addr_wr_reg__0[3]),
        .I5(addr_wr_reg__0[5]),
        .O(\addr_wr[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[0] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[0]),
        .Q(addr_wr_reg__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[1] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[1]),
        .Q(addr_wr_reg__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[2] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[2]),
        .Q(addr_wr_reg__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[3] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[3]),
        .Q(addr_wr_reg__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[4] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[4]),
        .Q(addr_wr_reg__0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[5] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[5]),
        .Q(addr_wr_reg__0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[6] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[6]),
        .Q(addr_wr_reg__0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[7] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[7]),
        .Q(addr_wr_reg__0[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[8] 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(p_0_in[8]),
        .Q(addr_wr_reg__0[8]),
        .R(rst_IBUF));
  BUFG clk_a_IBUF_BUFG_inst
       (.I(clk_a_IBUF),
        .O(clk_a_IBUF_BUFG));
  IBUF clk_a_IBUF_inst
       (.I(clk_a),
        .O(clk_a_IBUF));
  BUFG clk_b_IBUF_BUFG_inst
       (.I(clk_b_IBUF),
        .O(clk_b_IBUF_BUFG));
  IBUF clk_b_IBUF_inst
       (.I(clk_b),
        .O(clk_b_IBUF));
  IBUF \din_a_IBUF[0]_inst 
       (.I(din_a[0]),
        .O(din_a_IBUF[0]));
  IBUF \din_a_IBUF[10]_inst 
       (.I(din_a[10]),
        .O(din_a_IBUF[10]));
  IBUF \din_a_IBUF[11]_inst 
       (.I(din_a[11]),
        .O(din_a_IBUF[11]));
  IBUF \din_a_IBUF[12]_inst 
       (.I(din_a[12]),
        .O(din_a_IBUF[12]));
  IBUF \din_a_IBUF[13]_inst 
       (.I(din_a[13]),
        .O(din_a_IBUF[13]));
  IBUF \din_a_IBUF[14]_inst 
       (.I(din_a[14]),
        .O(din_a_IBUF[14]));
  IBUF \din_a_IBUF[15]_inst 
       (.I(din_a[15]),
        .O(din_a_IBUF[15]));
  IBUF \din_a_IBUF[1]_inst 
       (.I(din_a[1]),
        .O(din_a_IBUF[1]));
  IBUF \din_a_IBUF[2]_inst 
       (.I(din_a[2]),
        .O(din_a_IBUF[2]));
  IBUF \din_a_IBUF[3]_inst 
       (.I(din_a[3]),
        .O(din_a_IBUF[3]));
  IBUF \din_a_IBUF[4]_inst 
       (.I(din_a[4]),
        .O(din_a_IBUF[4]));
  IBUF \din_a_IBUF[5]_inst 
       (.I(din_a[5]),
        .O(din_a_IBUF[5]));
  IBUF \din_a_IBUF[6]_inst 
       (.I(din_a[6]),
        .O(din_a_IBUF[6]));
  IBUF \din_a_IBUF[7]_inst 
       (.I(din_a[7]),
        .O(din_a_IBUF[7]));
  IBUF \din_a_IBUF[8]_inst 
       (.I(din_a[8]),
        .O(din_a_IBUF[8]));
  IBUF \din_a_IBUF[9]_inst 
       (.I(din_a[9]),
        .O(din_a_IBUF[9]));
  OBUF \dout_b_OBUF[0]_inst 
       (.I(dout_b_OBUF[0]),
        .O(dout_b[0]));
  OBUF \dout_b_OBUF[10]_inst 
       (.I(dout_b_OBUF[10]),
        .O(dout_b[10]));
  OBUF \dout_b_OBUF[11]_inst 
       (.I(dout_b_OBUF[11]),
        .O(dout_b[11]));
  OBUF \dout_b_OBUF[12]_inst 
       (.I(dout_b_OBUF[12]),
        .O(dout_b[12]));
  OBUF \dout_b_OBUF[13]_inst 
       (.I(dout_b_OBUF[13]),
        .O(dout_b[13]));
  OBUF \dout_b_OBUF[14]_inst 
       (.I(dout_b_OBUF[14]),
        .O(dout_b[14]));
  OBUF \dout_b_OBUF[15]_inst 
       (.I(dout_b_OBUF[15]),
        .O(dout_b[15]));
  OBUF \dout_b_OBUF[1]_inst 
       (.I(dout_b_OBUF[1]),
        .O(dout_b[1]));
  OBUF \dout_b_OBUF[2]_inst 
       (.I(dout_b_OBUF[2]),
        .O(dout_b[2]));
  OBUF \dout_b_OBUF[3]_inst 
       (.I(dout_b_OBUF[3]),
        .O(dout_b[3]));
  OBUF \dout_b_OBUF[4]_inst 
       (.I(dout_b_OBUF[4]),
        .O(dout_b[4]));
  OBUF \dout_b_OBUF[5]_inst 
       (.I(dout_b_OBUF[5]),
        .O(dout_b[5]));
  OBUF \dout_b_OBUF[6]_inst 
       (.I(dout_b_OBUF[6]),
        .O(dout_b[6]));
  OBUF \dout_b_OBUF[7]_inst 
       (.I(dout_b_OBUF[7]),
        .O(dout_b[7]));
  OBUF \dout_b_OBUF[8]_inst 
       (.I(dout_b_OBUF[8]),
        .O(dout_b[8]));
  OBUF \dout_b_OBUF[9]_inst 
       (.I(dout_b_OBUF[9]),
        .O(dout_b[9]));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_OBUF_inst_i_1
       (.I0(size[8]),
        .I1(size[6]),
        .I2(empty_OBUF_inst_i_2_n_0),
        .I3(size[7]),
        .O(empty_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    empty_OBUF_inst_i_2
       (.I0(size[4]),
        .I1(size[2]),
        .I2(size[0]),
        .I3(size[1]),
        .I4(size[3]),
        .I5(size[5]),
        .O(empty_OBUF_inst_i_2_n_0));
  OBUF full_OBUF_inst
       (.I(\<const0> ),
        .O(full));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,addr_wr_reg__0,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addr_rd,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_a_IBUF_BUFG),
        .CLKBWRCLK(clk_b_IBUF_BUFG),
        .DIADI(din_a_IBUF),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(dout_b_OBUF),
        .ENARDEN(wen_a_IBUF),
        .ENBWREN(mem_reg_i_1_n_0),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_IBUF),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({mem_reg_i_2_n_0,mem_reg_i_2_n_0}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    mem_reg_i_1
       (.I0(rst_IBUF),
        .I1(ren_b_IBUF),
        .I2(size[7]),
        .I3(empty_OBUF_inst_i_2_n_0),
        .I4(size[6]),
        .I5(size[8]),
        .O(mem_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_IBUF),
        .O(mem_reg_i_2_n_0));
  IBUF ren_b_IBUF_inst
       (.I(ren_b),
        .O(ren_b_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \size[0]_i_1 
       (.I0(size[0]),
        .O(\size[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \size[1]__0_i_1 
       (.I0(size[0]),
        .I1(size[1]),
        .O(\size[1]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \size[1]_i_1 
       (.I0(size[1]),
        .I1(size[0]),
        .O(\size[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \size[2]__0_i_1 
       (.I0(size[1]),
        .I1(size[0]),
        .I2(size[2]),
        .O(\size[2]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \size[2]_i_1 
       (.I0(size[2]),
        .I1(size[0]),
        .I2(size[1]),
        .O(\size[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \size[3]__0_i_1 
       (.I0(size[2]),
        .I1(size[0]),
        .I2(size[1]),
        .I3(size[3]),
        .O(\size[3]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \size[3]_i_1 
       (.I0(size[3]),
        .I1(size[1]),
        .I2(size[0]),
        .I3(size[2]),
        .O(\size[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \size[4]__0_i_1 
       (.I0(size[3]),
        .I1(size[1]),
        .I2(size[0]),
        .I3(size[2]),
        .I4(size[4]),
        .O(\size[4]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \size[4]_i_1 
       (.I0(size[4]),
        .I1(size[2]),
        .I2(size[0]),
        .I3(size[1]),
        .I4(size[3]),
        .O(\size[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \size[5]__0_i_1 
       (.I0(size[4]),
        .I1(size[2]),
        .I2(size[0]),
        .I3(size[1]),
        .I4(size[3]),
        .I5(size[5]),
        .O(\size[5]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \size[5]_i_1 
       (.I0(size[5]),
        .I1(size[3]),
        .I2(size[1]),
        .I3(size[0]),
        .I4(size[2]),
        .I5(size[4]),
        .O(\size[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \size[6]__0_i_1 
       (.I0(size[5]),
        .I1(size[3]),
        .I2(\size[6]__0_i_2_n_0 ),
        .I3(size[2]),
        .I4(size[4]),
        .I5(size[6]),
        .O(\size[6]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \size[6]__0_i_2 
       (.I0(size[0]),
        .I1(size[1]),
        .O(\size[6]__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \size[6]_i_1 
       (.I0(size[6]),
        .I1(empty_OBUF_inst_i_2_n_0),
        .O(\size[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \size[7]__0_i_1 
       (.I0(size[6]),
        .I1(\size[8]__0_i_2_n_0 ),
        .I2(size[7]),
        .O(\size[7]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \size[7]_i_1 
       (.I0(size[7]),
        .I1(empty_OBUF_inst_i_2_n_0),
        .I2(size[6]),
        .O(\size[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \size[8]__0_i_1 
       (.I0(size[7]),
        .I1(\size[8]__0_i_2_n_0 ),
        .I2(size[6]),
        .I3(size[8]),
        .O(\size[8]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \size[8]__0_i_2 
       (.I0(size[4]),
        .I1(size[2]),
        .I2(size[0]),
        .I3(size[1]),
        .I4(size[3]),
        .I5(size[5]),
        .O(\size[8]__0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \size[8]_i_1 
       (.I0(size[8]),
        .I1(size[6]),
        .I2(empty_OBUF_inst_i_2_n_0),
        .I3(size[7]),
        .I4(ren_b_IBUF),
        .O(\size[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \size[8]_i_2 
       (.I0(size[8]),
        .I1(size[6]),
        .I2(empty_OBUF_inst_i_2_n_0),
        .I3(size[7]),
        .O(\size[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[0] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[0]_i_1_n_0 ),
        .Q(size[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[0]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[0]_i_1_n_0 ),
        .Q(size[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[1] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[1]_i_1_n_0 ),
        .Q(size[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[1]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[1]__0_i_1_n_0 ),
        .Q(size[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[2] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[2]_i_1_n_0 ),
        .Q(size[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[2]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[2]__0_i_1_n_0 ),
        .Q(size[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[3] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[3]_i_1_n_0 ),
        .Q(size[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[3]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[3]__0_i_1_n_0 ),
        .Q(size[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[4] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[4]_i_1_n_0 ),
        .Q(size[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[4]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[4]__0_i_1_n_0 ),
        .Q(size[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[5] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[5]_i_1_n_0 ),
        .Q(size[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[5]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[5]__0_i_1_n_0 ),
        .Q(size[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[6] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[6]_i_1_n_0 ),
        .Q(size[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[6]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[6]__0_i_1_n_0 ),
        .Q(size[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[7] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[7]_i_1_n_0 ),
        .Q(size[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[7]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[7]__0_i_1_n_0 ),
        .Q(size[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[8] 
       (.C(clk_b_IBUF_BUFG),
        .CE(\size[8]_i_1_n_0 ),
        .D(\size[8]_i_2_n_0 ),
        .Q(size[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \size_reg[8]__0 
       (.C(clk_a_IBUF_BUFG),
        .CE(wen_a_IBUF),
        .D(\size[8]__0_i_1_n_0 ),
        .Q(size[8]),
        .R(rst_IBUF));
  IBUF wen_a_IBUF_inst
       (.I(wen_a),
        .O(wen_a_IBUF));
endmodule
