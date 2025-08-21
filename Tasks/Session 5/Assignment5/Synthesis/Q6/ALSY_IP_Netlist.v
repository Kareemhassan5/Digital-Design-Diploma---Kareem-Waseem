// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  7 04:24:24 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/Q6/ALSY_IP_Netlist.v}
// Design      : ALSU_IP
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* FULL_ADDER = "ON" *) (* INPUT_PRIORITY = "A" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module ALSU_IP
   (clk,
    rst,
    cin,
    serial_in,
    red_op_A,
    red_op_B,
    bypass_A,
    bypass_B,
    direction,
    A,
    B,
    opcode,
    out,
    leds);
  input clk;
  input rst;
  input cin;
  input serial_in;
  input red_op_A;
  input red_op_B;
  input bypass_A;
  input bypass_B;
  input direction;
  input [2:0]A;
  input [2:0]B;
  input [2:0]opcode;
  output [5:0]out;
  output [15:0]leds;

  wire \<const1> ;
  wire [2:0]A;
  wire [2:0]A_IBUF;
  wire [2:0]B;
  wire [2:0]B_IBUF;
  wire [2:0]B_reg;
  wire [3:0]adder_out;
  wire bypass_A;
  wire bypass_A_IBUF;
  wire bypass_B;
  wire bypass_B_IBUF;
  wire cin;
  wire cin_IBUF;
  wire cin_reg;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire direction;
  wire direction_IBUF;
  wire direction_reg;
  wire [15:0]leds;
  wire \leds[0]_i_1_n_0 ;
  wire \leds[10]_i_1_n_0 ;
  wire \leds[11]_i_1_n_0 ;
  wire \leds[12]_i_1_n_0 ;
  wire \leds[13]_i_1_n_0 ;
  wire \leds[14]_i_1_n_0 ;
  wire \leds[15]_i_1_n_0 ;
  wire \leds[15]_i_2_n_0 ;
  wire \leds[1]_i_1_n_0 ;
  wire \leds[2]_i_1_n_0 ;
  wire \leds[3]_i_1_n_0 ;
  wire \leds[4]_i_1_n_0 ;
  wire \leds[5]_i_1_n_0 ;
  wire \leds[6]_i_1_n_0 ;
  wire \leds[7]_i_1_n_0 ;
  wire \leds[8]_i_1_n_0 ;
  wire \leds[9]_i_1_n_0 ;
  wire [15:0]leds_OBUF;
  wire [5:0]multiply_out;
  wire [2:0]opcode;
  wire [2:0]opcode_IBUF;
  wire [2:0]opcode_reg;
  wire [5:0]out;
  wire \out[0]_i_10_n_0 ;
  wire \out[0]_i_11_n_0 ;
  wire \out[0]_i_1_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_5_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[0]_i_7_n_0 ;
  wire \out[0]_i_8_n_0 ;
  wire \out[0]_i_9_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[1]_i_4_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[2]_i_5_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_3_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[5]_i_4_n_0 ;
  wire [5:0]out_OBUF;
  wire [1:0]p_0_in;
  wire [2:0]p_1_in;
  wire red_op_A;
  wire red_op_A_IBUF;
  wire red_op_A_reg;
  wire red_op_B;
  wire red_op_B_IBUF;
  wire red_op_B_reg;
  wire rst;
  wire rst_IBUF;
  wire serial_in;
  wire serial_in_IBUF;
  wire serial_in_reg;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(A_IBUF[0]),
        .Q(p_1_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(A_IBUF[1]),
        .Q(p_1_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(A_IBUF[2]),
        .Q(p_1_in[2]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(B_IBUF[0]),
        .Q(B_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(B_IBUF[1]),
        .Q(B_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(B_IBUF[2]),
        .Q(B_reg[2]));
  (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
  c_addsub_1 IP_Full_Adder
       (.A(p_1_in),
        .B(B_reg),
        .C_IN(cin_reg),
        .S(adder_out));
  (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
  mult_gen_0 IP_multiplier
       (.A(p_1_in),
        .B(B_reg),
        .P(multiply_out));
  VCC VCC
       (.P(\<const1> ));
  IBUF bypass_A_IBUF_inst
       (.I(bypass_A),
        .O(bypass_A_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    bypass_A_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(bypass_A_IBUF),
        .Q(p_0_in[1]));
  IBUF bypass_B_IBUF_inst
       (.I(bypass_B),
        .O(bypass_B_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    bypass_B_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(bypass_B_IBUF),
        .Q(p_0_in[0]));
  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    cin_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(cin_IBUF),
        .Q(cin_reg));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF direction_IBUF_inst
       (.I(direction),
        .O(direction_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    direction_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(direction_IBUF),
        .Q(direction_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[0]_i_1 
       (.I0(leds_OBUF[0]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[10]_i_1 
       (.I0(leds_OBUF[10]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[11]_i_1 
       (.I0(leds_OBUF[11]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[12]_i_1 
       (.I0(leds_OBUF[12]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[13]_i_1 
       (.I0(leds_OBUF[13]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[14]_i_1 
       (.I0(leds_OBUF[14]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[15]_i_1 
       (.I0(leds_OBUF[15]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF1FFF1FFFF)) 
    \leds[15]_i_2 
       (.I0(red_op_B_reg),
        .I1(red_op_A_reg),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(opcode_reg[2]),
        .I5(opcode_reg[1]),
        .O(\leds[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[1]_i_1 
       (.I0(leds_OBUF[1]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[2]_i_1 
       (.I0(leds_OBUF[2]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[3]_i_1 
       (.I0(leds_OBUF[3]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[4]_i_1 
       (.I0(leds_OBUF[4]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[5]_i_1 
       (.I0(leds_OBUF[5]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[6]_i_1 
       (.I0(leds_OBUF[6]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[7]_i_1 
       (.I0(leds_OBUF[7]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[8]_i_1 
       (.I0(leds_OBUF[8]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[9]_i_1 
       (.I0(leds_OBUF[9]),
        .I1(\leds[15]_i_2_n_0 ),
        .O(\leds[9]_i_1_n_0 ));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(leds_OBUF[11]),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF \leds_OBUF[8]_inst 
       (.I(leds_OBUF[8]),
        .O(leds[8]));
  OBUF \leds_OBUF[9]_inst 
       (.I(leds_OBUF[9]),
        .O(leds[9]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[0]_i_1_n_0 ),
        .Q(leds_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[10]_i_1_n_0 ),
        .Q(leds_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[11]_i_1_n_0 ),
        .Q(leds_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[12]_i_1_n_0 ),
        .Q(leds_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[13]_i_1_n_0 ),
        .Q(leds_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[14]_i_1_n_0 ),
        .Q(leds_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[15]_i_1_n_0 ),
        .Q(leds_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[1]_i_1_n_0 ),
        .Q(leds_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[2]_i_1_n_0 ),
        .Q(leds_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[3]_i_1_n_0 ),
        .Q(leds_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[4]_i_1_n_0 ),
        .Q(leds_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[5]_i_1_n_0 ),
        .Q(leds_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[6]_i_1_n_0 ),
        .Q(leds_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[7]_i_1_n_0 ),
        .Q(leds_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[8]_i_1_n_0 ),
        .Q(leds_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\leds[9]_i_1_n_0 ),
        .Q(leds_OBUF[9]));
  IBUF \opcode_IBUF[0]_inst 
       (.I(opcode[0]),
        .O(opcode_IBUF[0]));
  IBUF \opcode_IBUF[1]_inst 
       (.I(opcode[1]),
        .O(opcode_IBUF[1]));
  IBUF \opcode_IBUF[2]_inst 
       (.I(opcode[2]),
        .O(opcode_IBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(opcode_IBUF[0]),
        .Q(opcode_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(opcode_IBUF[1]),
        .Q(opcode_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(opcode_IBUF[2]),
        .Q(opcode_reg[2]));
  LUT6 #(
    .INIT(64'hDDD0DDD0DDD0DDDD)) 
    \out[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_1_in[0]),
        .I2(\out[0]_i_2_n_0 ),
        .I3(\out[0]_i_3_n_0 ),
        .I4(\out[0]_i_4_n_0 ),
        .I5(\out[0]_i_5_n_0 ),
        .O(\out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \out[0]_i_10 
       (.I0(p_1_in[2]),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .O(\out[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h7F0F7FFF)) 
    \out[0]_i_11 
       (.I0(B_reg[1]),
        .I1(B_reg[2]),
        .I2(B_reg[0]),
        .I3(red_op_B_reg),
        .I4(p_1_in[0]),
        .O(\out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00008880AAAAAAAA)) 
    \out[0]_i_2 
       (.I0(\out[2]_i_2_n_0 ),
        .I1(\out[0]_i_6_n_0 ),
        .I2(direction_reg),
        .I3(out_OBUF[1]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[0]_i_7_n_0 ),
        .O(\out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \out[0]_i_3 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(B_reg[0]),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out[0]_i_4 
       (.I0(\out[0]_i_8_n_0 ),
        .I1(\out[0]_i_9_n_0 ),
        .I2(opcode_reg[0]),
        .I3(\out[0]_i_10_n_0 ),
        .I4(red_op_A_reg),
        .I5(\out[0]_i_11_n_0 ),
        .O(\out[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[0]_i_5 
       (.I0(p_0_in[0]),
        .I1(opcode_reg[1]),
        .I2(opcode_reg[2]),
        .O(\out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8088FFFFFFFF)) 
    \out[0]_i_6 
       (.I0(serial_in_reg),
        .I1(opcode_reg[2]),
        .I2(opcode_reg[1]),
        .I3(opcode_reg[0]),
        .I4(out_OBUF[5]),
        .I5(direction_reg),
        .O(\out[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF53FFFF)) 
    \out[0]_i_7 
       (.I0(multiply_out[0]),
        .I1(adder_out[0]),
        .I2(opcode_reg[0]),
        .I3(opcode_reg[2]),
        .I4(opcode_reg[1]),
        .O(\out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0541504150410541)) 
    \out[0]_i_8 
       (.I0(red_op_A_reg),
        .I1(p_1_in[0]),
        .I2(B_reg[0]),
        .I3(red_op_B_reg),
        .I4(B_reg[1]),
        .I5(B_reg[2]),
        .O(\out[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2882)) 
    \out[0]_i_9 
       (.I0(red_op_A_reg),
        .I1(p_1_in[0]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .O(\out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888BBBBB888)) 
    \out[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(B_reg[1]),
        .I4(\out[2]_i_2_n_0 ),
        .I5(\out[1]_i_2_n_0 ),
        .O(\out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A88A8AAA)) 
    \out[1]_i_2 
       (.I0(\out[1]_i_3_n_0 ),
        .I1(\out[1]_i_4_n_0 ),
        .I2(opcode_reg[0]),
        .I3(p_1_in[1]),
        .I4(B_reg[1]),
        .I5(opcode_reg[1]),
        .O(\out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF1DFFFF)) 
    \out[1]_i_3 
       (.I0(out_OBUF[2]),
        .I1(direction_reg),
        .I2(out_OBUF[0]),
        .I3(opcode_reg[1]),
        .I4(opcode_reg[2]),
        .O(\out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAEAABFAA)) 
    \out[1]_i_4 
       (.I0(opcode_reg[2]),
        .I1(opcode_reg[0]),
        .I2(multiply_out[1]),
        .I3(opcode_reg[1]),
        .I4(adder_out[1]),
        .O(\out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888BBBBB888)) 
    \out[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(B_reg[2]),
        .I4(\out[2]_i_2_n_0 ),
        .I5(\out[2]_i_3_n_0 ),
        .O(\out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \out[2]_i_2 
       (.I0(red_op_A_reg),
        .I1(red_op_B_reg),
        .I2(p_0_in[0]),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A88A8AAA)) 
    \out[2]_i_3 
       (.I0(\out[2]_i_4_n_0 ),
        .I1(\out[2]_i_5_n_0 ),
        .I2(opcode_reg[0]),
        .I3(p_1_in[2]),
        .I4(B_reg[2]),
        .I5(opcode_reg[1]),
        .O(\out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF1DFFFF)) 
    \out[2]_i_4 
       (.I0(out_OBUF[3]),
        .I1(direction_reg),
        .I2(out_OBUF[1]),
        .I3(opcode_reg[1]),
        .I4(opcode_reg[2]),
        .O(\out[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAEAABFAA)) 
    \out[2]_i_5 
       (.I0(opcode_reg[2]),
        .I1(opcode_reg[0]),
        .I2(multiply_out[2]),
        .I3(opcode_reg[1]),
        .I4(adder_out[2]),
        .O(\out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00008A80AAAAAAAA)) 
    \out[3]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(out_OBUF[2]),
        .I2(direction_reg),
        .I3(out_OBUF[4]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[3]_i_3_n_0 ),
        .O(\out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out[3]_i_2 
       (.I0(opcode_reg[1]),
        .I1(opcode_reg[2]),
        .O(\out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF53FFFF)) 
    \out[3]_i_3 
       (.I0(multiply_out[3]),
        .I1(adder_out[3]),
        .I2(opcode_reg[0]),
        .I3(opcode_reg[2]),
        .I4(opcode_reg[1]),
        .O(\out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88A8888888888888)) 
    \out[4]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[4]_i_2_n_0 ),
        .I2(opcode_reg[0]),
        .I3(opcode_reg[2]),
        .I4(opcode_reg[1]),
        .I5(multiply_out[4]),
        .O(\out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \out[4]_i_2 
       (.I0(out_OBUF[3]),
        .I1(direction_reg),
        .I2(out_OBUF[5]),
        .I3(opcode_reg[1]),
        .I4(opcode_reg[2]),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88A8888888888888)) 
    \out[5]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[5]_i_3_n_0 ),
        .I2(opcode_reg[0]),
        .I3(opcode_reg[2]),
        .I4(opcode_reg[1]),
        .I5(multiply_out[5]),
        .O(\out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[5]_i_2 
       (.I0(p_0_in[0]),
        .I1(red_op_B_reg),
        .I2(red_op_A_reg),
        .I3(p_0_in[1]),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \out[5]_i_3 
       (.I0(out_OBUF[0]),
        .I1(\out[5]_i_4_n_0 ),
        .I2(serial_in_reg),
        .I3(direction_reg),
        .I4(out_OBUF[4]),
        .I5(\out[3]_i_2_n_0 ),
        .O(\out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \out[5]_i_4 
       (.I0(opcode_reg[0]),
        .I1(opcode_reg[1]),
        .I2(opcode_reg[2]),
        .O(\out[5]_i_4_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[0]_i_1_n_0 ),
        .Q(out_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[1]_i_1_n_0 ),
        .Q(out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[2]_i_1_n_0 ),
        .Q(out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[3]_i_1_n_0 ),
        .Q(out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[4]_i_1_n_0 ),
        .Q(out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\out[5]_i_1_n_0 ),
        .Q(out_OBUF[5]));
  IBUF red_op_A_IBUF_inst
       (.I(red_op_A),
        .O(red_op_A_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    red_op_A_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(red_op_A_IBUF),
        .Q(red_op_A_reg));
  IBUF red_op_B_IBUF_inst
       (.I(red_op_B),
        .O(red_op_B_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    red_op_B_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(red_op_B_IBUF),
        .Q(red_op_B_reg));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF serial_in_IBUF_inst
       (.I(serial_in),
        .O(serial_in_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    serial_in_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(serial_in_IBUF),
        .Q(serial_in_reg));
endmodule

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_12,{}" *) (* core_generation_info = "c_addsub_1,c_addsub_v12_0_12,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_addsub,x_ipVersion=12.0,x_ipCoreRevision=12,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_XDEVICEFAMILY=artix7,C_IMPLEMENTATION=0,C_A_WIDTH=3,C_B_WIDTH=3,C_OUT_WIDTH=4,C_CE_OVERRIDES_SCLR=0,C_A_TYPE=1,C_B_TYPE=1,C_LATENCY=0,C_ADD_MODE=0,C_B_CONSTANT=0,C_B_VALUE=000,C_AINIT_VAL=0,C_SINIT_VAL=0,C_CE_OVERRIDES_BYPASS=1,C_BYPASS_LOW=0,C_SCLR_OVERRIDES_SSET=1,C_HAS_C_IN=1,C_HAS_C_OUT=0,C_BORROW_LOW=1,C_HAS_CE=0,C_HAS_BYPASS=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
module c_addsub_1
   (A,
    B,
    C_IN,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [2:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [2:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_in_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef" *) input C_IN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [3:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]A;
  wire [2:0]B;
  wire C_IN;
  wire [3:0]S;

  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "4" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(\<const1> ),
        .B(B),
        .BYPASS(\<const0> ),
        .CE(\<const1> ),
        .CLK(\<const0> ),
        .C_IN(C_IN),
        .S(S),
        .SCLR(\<const0> ),
        .SINIT(\<const0> ),
        .SSET(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* core_generation_info = "mult_gen_0,mult_gen_v12_0_14,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mult_gen,x_ipVersion=12.0,x_ipCoreRevision=14,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_OPTIMIZE_GOAL=1,C_XDEVICEFAMILY=artix7,C_HAS_CE=0,C_HAS_SCLR=0,C_LATENCY=0,C_A_WIDTH=3,C_A_TYPE=1,C_B_WIDTH=3,C_B_TYPE=1,C_OUT_HIGH=5,C_OUT_LOW=0,C_MULT_TYPE=1,C_CE_OVERRIDES_SCLR=0,C_CCM_IMP=0,C_B_VALUE=10000001,C_HAS_ZERO_DETECT=0,C_ROUND_OUTPUT=0,C_ROUND_PT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
module mult_gen_0
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [2:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [2:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [5:0]P;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]A;
  wire [2:0]B;
  wire [5:0]P;

  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "5" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(\<const1> ),
        .CLK(\<const1> ),
        .P(P),
        .SCLR(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "3" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000" *) 
(* C_B_WIDTH = "3" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "1" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "4" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_1_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    .C_OUT(\<const0> ),
    S);
  input [2:0]A;
  input [2:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [3:0]S;
  output \<const0> ;

  wire \<const0> ;
  wire [2:0]A;
  wire [2:0]B;
  wire C_IN;
  wire [3:0]S;

  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "4" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(\<const0> ),
        .B(B),
        .BYPASS(\<const0> ),
        .CE(\<const0> ),
        .CLK(\<const0> ),
        .C_IN(C_IN),
        .S(S),
        .SCLR(\<const0> ),
        .SINIT(\<const0> ),
        .SSET(\<const0> ));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "3" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "3" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "5" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [2:0]A;
  input [2:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [5:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [2:0]A;
  wire [2:0]B;
  wire [5:0]P;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "5" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(\<const0> ),
        .CLK(\<const0> ),
        .P(P),
        .SCLR(\<const0> ));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l82QpxGJI5wvmVTXWMEJObLCF8enijYRVhzxHyyO0gs9c+e1R+NKsT8SX/fIYrrIvf46HuzAMsky
nsFwsKYsczKOkonKX9NVL0suvmkR9dCJZqFMop5dBRY4hTgQGb30wVWtim1oTGNiRYRutZ3ZLrRG
FtTSN9NZdLYe5RPuiOM4Yjbux+mLc209LlRs4pGo3uFAD70YnI+sysolknB3yOdkq2ubJ+0oiT0/
4HQJ74EFH5p/OKQMg1egi0AAEx2BXImvKXdqTsmHb9Xo2efjXJ+/V6LbLPmgdpiaMQp4JqQs7URu
AvV7ITA57E8CKQS5vXtP9zRpP3+5ZekSwc5tvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zA/UMvnBFDctpjdGvA+vZM9zbBiFfUH6JK8stJwDIzKRyCW549gDkInPTWHbQD32u5kheIqLyB6b
jZ8MRQ9TqBRa/jeLigxZGZzfWxW7oiZRg9gbjX7Sj3HJYgkCvXe9QbULvHhPzjHXVOvmX6z1jAE4
RbxLHtYvl+WrzULk1zdY3GyJKXuoFoKot+Ser6j+15gh73iIsI2TEU1qSPSR235jE3TfuI2EsChP
0jGJQyTgwHQWbmg9i3qhoU8mO2XBIuSBdh4UU6GxwXBHsOl4vMrRf2SQ7kBR6i6xS1HLIHv0PNBX
nyCUfpuNdAKlPKE2Azqu6HODprmF4c86Ej1oog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10768)
`pragma protect data_block
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
`pragma protect end_protected
