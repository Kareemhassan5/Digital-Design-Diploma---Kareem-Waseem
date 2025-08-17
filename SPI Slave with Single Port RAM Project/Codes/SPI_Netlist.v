// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug  3 01:44:51 2025
// Host        : DESKTOP-DTNSAHB running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/College Projects/Digital_Course_Waseem/Vv/SPI.v}
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (SR,
    w4,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    Q,
    WEA,
    \rx_data_reg[8]_0 ,
    \COUNTER_reg[1] ,
    E,
    rx_valid_reg);
  output [0:0]SR;
  output w4;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input [1:0]\COUNTER_reg[1] ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [1:0]\COUNTER_reg[1] ;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [7:0]Q;
  wire [7:0]READ_address;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [7:0]WRITE_address;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [0:0]rx_valid_reg;
  wire [7:0]w3;
  wire w4;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    MISO_i_3
       (.I0(w3[1]),
        .I1(w3[0]),
        .I2(\COUNTER_reg[1] [1]),
        .I3(\COUNTER_reg[1] [0]),
        .I4(w3[3]),
        .I5(w3[2]),
        .O(MISO_reg_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    MISO_i_5
       (.I0(w3[5]),
        .I1(w3[4]),
        .I2(\COUNTER_reg[1] [1]),
        .I3(\COUNTER_reg[1] [0]),
        .I4(w3[7]),
        .I5(w3[6]),
        .O(MISO_reg));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(READ_address[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(READ_address[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(READ_address[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(READ_address[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(READ_address[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(READ_address[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(READ_address[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \READ_address_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(READ_address[7]),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(WRITE_address[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(WRITE_address[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(WRITE_address[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(WRITE_address[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(WRITE_address[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(WRITE_address[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(WRITE_address[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_address_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(WRITE_address[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "DUT_RAM/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
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
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,WRITE_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,READ_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(w3),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(w4),
        .R(SR));
endmodule

module SPI_SLAVE
   (MISO_OBUF,
    Q,
    mem_reg,
    \READ_address_reg[7] ,
    tx_valid_reg,
    WEA,
    E,
    \READ_address_reg[7]_0 ,
    SR,
    CLK,
    ss_n_IBUF,
    MOSI_IBUF,
    w4,
    mem_reg_0,
    mem_reg_1,
    rst_n_IBUF);
  output MISO_OBUF;
  output [1:0]Q;
  output mem_reg;
  output [7:0]\READ_address_reg[7] ;
  output tx_valid_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\READ_address_reg[7]_0 ;
  input [0:0]SR;
  input CLK;
  input ss_n_IBUF;
  input MOSI_IBUF;
  input w4;
  input mem_reg_0;
  input mem_reg_1;
  input rst_n_IBUF;

  wire \<const1> ;
  wire CLK;
  wire \COUNTER[0]_i_1_n_0 ;
  wire \COUNTER[4]_i_1_n_0 ;
  wire [4:2]COUNTER_reg__0;
  wire [0:0]E;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[0]_i_2_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_2_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_2_n_0 ;
  wire \FSM_onehot_cs[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_6_n_0;
  wire MOSI_IBUF;
  wire [1:0]Q;
  wire [7:0]\READ_address_reg[7] ;
  wire [0:0]\READ_address_reg[7]_0 ;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire add;
  wire add_i_1_n_0;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [4:1]p_0_in;
  (* RTL_KEEP = "yes" *) wire p_0_in_0;
  (* RTL_KEEP = "yes" *) wire p_2_in;
  wire rst_n_IBUF;
  wire [9:0]rx_data;
  wire \rx_data[9]_i_2_n_0 ;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire ss_n_IBUF;
  wire tx_valid_reg;
  wire [9:8]w1;
  wire w2;
  wire w4;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \COUNTER[0]_i_1 
       (.I0(Q[0]),
        .O(\COUNTER[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNTER[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \COUNTER[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(COUNTER_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \COUNTER[3]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(COUNTER_reg__0[2]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \COUNTER[4]_i_1 
       (.I0(p_0_in_0),
        .I1(p_2_in),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(rst_n_IBUF),
        .O(\COUNTER[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \COUNTER[4]_i_2 
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(COUNTER_reg__0[3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNTER_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\COUNTER[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\COUNTER[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNTER_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\COUNTER[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNTER_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(COUNTER_reg__0[2]),
        .R(\COUNTER[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNTER_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(COUNTER_reg__0[3]),
        .R(\COUNTER[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNTER_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(COUNTER_reg__0[4]),
        .R(\COUNTER[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs[1]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(\FSM_onehot_cs[0]_i_2_n_0 ),
        .I3(\FSM_onehot_cs[3]_i_2_n_0 ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00011111)) 
    \FSM_onehot_cs[0]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(\FSM_onehot_cs_reg_n_0_[0] ),
        .I4(ss_n_IBUF),
        .O(\FSM_onehot_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs[1]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(ss_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(MOSI_IBUF),
        .I5(add),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001555555555)) 
    \FSM_onehot_cs[1]_i_2 
       (.I0(ss_n_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(COUNTER_reg__0[2]),
        .I4(COUNTER_reg__0[3]),
        .I5(COUNTER_reg__0[4]),
        .O(\FSM_onehot_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F444444)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(\FSM_onehot_cs[3]_i_2_n_0 ),
        .I1(p_0_in_0),
        .I2(ss_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(MOSI_IBUF),
        .I5(add),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(\FSM_onehot_cs[3]_i_2_n_0 ),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(MOSI_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(ss_n_IBUF),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFFAA)) 
    \FSM_onehot_cs[3]_i_2 
       (.I0(ss_n_IBUF),
        .I1(COUNTER_reg__0[2]),
        .I2(Q[1]),
        .I3(COUNTER_reg__0[4]),
        .I4(COUNTER_reg__0[3]),
        .O(\FSM_onehot_cs[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[4]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(ss_n_IBUF),
        .O(\FSM_onehot_cs[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:10000,WRITE:01000,READ_ADD:00100,IDLE:00001,READ_DATA:00010" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:10000,WRITE:01000,READ_ADD:00100,IDLE:00001,READ_DATA:00010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(p_2_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:10000,WRITE:01000,READ_ADD:00100,IDLE:00001,READ_DATA:00010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:10000,WRITE:01000,READ_ADD:00100,IDLE:00001,READ_DATA:00010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:10000,WRITE:01000,READ_ADD:00100,IDLE:00001,READ_DATA:00010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[4]_i_2_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h4044400000000000)) 
    MISO_i_1
       (.I0(MISO_i_2_n_0),
        .I1(w4),
        .I2(mem_reg_0),
        .I3(MISO_i_4_n_0),
        .I4(mem_reg_1),
        .I5(MISO_i_6_n_0),
        .O(MISO_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    MISO_i_2
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[3]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(MISO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h95)) 
    MISO_i_4
       (.I0(COUNTER_reg__0[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(MISO_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    MISO_i_6
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(COUNTER_reg__0[3]),
        .O(MISO_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(p_2_in),
        .D(MISO_i_1_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    \READ_address[7]_i_1 
       (.I0(w2),
        .I1(w1[8]),
        .I2(w1[9]),
        .O(\READ_address_reg[7]_0 ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \WRITE_address[7]_i_1 
       (.I0(w2),
        .I1(w1[9]),
        .I2(w1[8]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFBFFF40400000)) 
    add_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rx_valid_i_2_n_0),
        .I3(p_2_in),
        .I4(p_0_in_0),
        .I5(add),
        .O(add_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    add_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(add_i_1_n_0),
        .Q(add),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(w1[8]),
        .I1(w1[9]),
        .I2(w2),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(w2),
        .I1(w1[9]),
        .I2(w1[8]),
        .O(WEA));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rx_data[0]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rx_data[0]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rx_data[1]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rx_data[9]_i_2_n_0 ),
        .O(rx_data[1]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \rx_data[2]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rx_data[9]_i_2_n_0 ),
        .O(rx_data[2]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rx_data[3]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(rx_data[3]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rx_data[4]_i_1 
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[3]),
        .I2(COUNTER_reg__0[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rx_data[4]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rx_data[5]_i_1 
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[3]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rx_data[9]_i_2_n_0 ),
        .O(rx_data[5]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \rx_data[6]_i_1 
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[3]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rx_data[9]_i_2_n_0 ),
        .O(rx_data[6]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rx_data[7]_i_1 
       (.I0(COUNTER_reg__0[4]),
        .I1(COUNTER_reg__0[3]),
        .I2(COUNTER_reg__0[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(rx_data[7]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rx_data[8]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rx_data[8]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_data[9]_i_1 
       (.I0(COUNTER_reg__0[3]),
        .I1(COUNTER_reg__0[4]),
        .I2(COUNTER_reg__0[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rx_data[9]_i_2_n_0 ),
        .O(rx_data[9]));
  LUT4 #(
    .INIT(16'hFF01)) 
    \rx_data[9]_i_2 
       (.I0(p_0_in_0),
        .I1(p_2_in),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs[3]_i_2_n_0 ),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(rx_data[0]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(rx_data[1]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(rx_data[2]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(rx_data[3]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(rx_data[4]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(rx_data[5]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(rx_data[6]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(rx_data[7]),
        .D(MOSI_IBUF),
        .Q(\READ_address_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(rx_data[8]),
        .D(MOSI_IBUF),
        .Q(w1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(rx_data[9]),
        .D(MOSI_IBUF),
        .Q(w1[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    rx_valid_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rx_valid_i_2_n_0),
        .I3(p_0_in_0),
        .I4(p_2_in),
        .I5(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0108)) 
    rx_valid_i_2
       (.I0(COUNTER_reg__0[2]),
        .I1(Q[1]),
        .I2(COUNTER_reg__0[4]),
        .I3(COUNTER_reg__0[3]),
        .O(rx_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(w2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    tx_valid_i_1
       (.I0(w1[8]),
        .I1(w1[9]),
        .I2(w2),
        .I3(w4),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (clk,
    rst_n,
    ss_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input ss_n;
  input MOSI;
  output MISO;

  wire [1:0]COUNTER_reg__0;
  wire DUT_RAM_n_0;
  wire DUT_RAM_n_2;
  wire DUT_RAM_n_3;
  wire DUT_SPI_n_12;
  wire DUT_SPI_n_14;
  wire DUT_SPI_n_15;
  wire DUT_SPI_n_3;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire ss_n;
  wire ss_n_IBUF;
  wire [7:0]w1;
  wire w4;

  RAM DUT_RAM
       (.CLK(clk_IBUF_BUFG),
        .\COUNTER_reg[1] (COUNTER_reg__0),
        .E(DUT_SPI_n_14),
        .MISO_reg(DUT_RAM_n_2),
        .MISO_reg_0(DUT_RAM_n_3),
        .Q(w1),
        .SR(DUT_RAM_n_0),
        .WEA(mem),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (DUT_SPI_n_3),
        .\rx_data_reg[8]_0 (DUT_SPI_n_12),
        .rx_valid_reg(DUT_SPI_n_15),
        .w4(w4));
  SPI_SLAVE DUT_SPI
       (.CLK(clk_IBUF_BUFG),
        .E(DUT_SPI_n_14),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(COUNTER_reg__0),
        .\READ_address_reg[7] (w1),
        .\READ_address_reg[7]_0 (DUT_SPI_n_15),
        .SR(DUT_RAM_n_0),
        .WEA(mem),
        .mem_reg(DUT_SPI_n_3),
        .mem_reg_0(DUT_RAM_n_3),
        .mem_reg_1(DUT_RAM_n_2),
        .rst_n_IBUF(rst_n_IBUF),
        .ss_n_IBUF(ss_n_IBUF),
        .tx_valid_reg(DUT_SPI_n_12),
        .w4(w4));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF ss_n_IBUF_inst
       (.I(ss_n),
        .O(ss_n_IBUF));
endmodule
