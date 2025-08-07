module DSP #(parameter A0REG=0,A1REG=1,B0REG=0,B1REG=1,CREG=1,DREG=1,MREG=1,PREG=1,CARRYINREG=1,
CARRYOUTREG=1,OPMODEREG=1,     //(0 -> Direct) or (1 -> Register) 
CARRYINSEL= "OPMODE5",         //CARRYIN or OPMODE5 (for selecting carry input)
B_INPUT= "DIRECT",             //DIRECT or CASCADE (for selecting B input)
RSTTYPE= "SYNC"                //SYNC or ASYNC (for selecting register reset type)
)
(input [17:0] A,B,BCIN /*BOUT from previous stage*/, D, input [47:0] C,PCIN /*POUT from previous stage*/,
input [7:0] OPMODE, input clk,CARRYIN /*Carry in to the post adder*/,
RSTA,RSTB,RSTC,RSTD,RSTM,RSTP,RSTCARRYIN,RSTOPMODE,     //Reset Signals
CEA,CEB,CEC,CED,CEM,CEP,CECARRYIN,CEOPMODE,             //Enable Signals
output [17:0] BCOUT /*Cascade output for B for the next stage*/,
output [47:0] P /*Output P*/, PCOUT /*Cascade output for P for the next stage*/,
output [35:0] M     /*Multiplier output M*/,
output CARRYOUT,CARRYOUTF /*Carry out from the post adder (Both are the same)*/);

//Internal Signals
wire [17:0] A_MUX,A1_MUX,B_MUX,D_MUX;
reg [17:0] B_IN,BCOUT_IN;
wire [47:0] C_MUX;
reg [47:0] X,Z,OUT;
reg [35:0] M_IN;
wire [35:0] M_BUFFER;
wire [7:0] OPMODE_MUX;
reg CIN_IN,COUT_IN;
wire CIN;

//INSTANTIATION OF REGISTERS
/*module Reg_MUX #(parameter WIDTH=18, parameter REG=1, parameter RSTTYPE = "SYNC")
(input clk,rst,enable, input [WIDTH-1:0] D, output reg [WIDTH-1:0] out);*/
Reg_MUX #(8,OPMODEREG,RSTTYPE)   OPMODE_REG(clk,RSTOPMODE,CEOPMODE,OPMODE,OPMODE_MUX);
Reg_MUX #(18,DREG,RSTTYPE)       D_REG(clk,RSTD,CED,D,D_MUX);
Reg_MUX #(18,B0REG,RSTTYPE)      B0_REG(clk,RSTB,CEB,B_IN,B_MUX);
Reg_MUX #(18,B1REG,RSTTYPE)      B1_REG(clk,RSTB,CEB,BCOUT_IN,BCOUT);
Reg_MUX #(18,A0REG,RSTTYPE)      A0_REG(clk,RSTA,CEA,A,A_MUX);
Reg_MUX #(18,A1REG,RSTTYPE)      A1_REG(clk,RSTA,CEA,A_MUX,A1_MUX);
Reg_MUX #(48,CREG,RSTTYPE)       C_REG(clk,RSTC,CEC,C,C_MUX);
Reg_MUX #(36,MREG,RSTTYPE)       M_REG(clk,RSTM,CEM,M_IN,M_BUFFER);
Reg_MUX #(1,CARRYINREG,RSTTYPE)  CYI(clk,RSTCARRYIN,CECARRYIN,CIN_IN,CIN);
Reg_MUX #(1,CARRYOUTREG,RSTTYPE) CYO(clk,RSTCARRYIN,CECARRYIN,COUT_IN,CARRYOUT);
Reg_MUX #(48,PREG,RSTTYPE)       P_REG(clk,RSTP,CEP,OUT,P);

genvar i;
generate
    for (i = 0; i < 36; i = i + 1) 
        buf (M[i], M_BUFFER[i]);       //The buffer 
endgenerate

assign   CARRYOUTF = CARRYOUT;
assign   PCOUT = P;
always @(*) begin
    B_IN = (B_INPUT == "DIRECT") ? B : (B_INPUT == "CASCADE") ? BCIN : 0;
    if (OPMODE_MUX[4])          BCOUT_IN = (OPMODE_MUX[6]) ? (D_MUX-B_MUX) : (D_MUX+B_MUX);
    else                    BCOUT_IN = B_MUX;
    M_IN = A1_MUX * BCOUT;
    CIN_IN = (CARRYINSEL == "OPMODE5") ? OPMODE_MUX[5] : (CARRYINSEL == "CARRYIN") ? CARRYIN : 0;
    case (OPMODE_MUX[1:0])
        0:        X = 0;
        1:        X = {12'b0,M_BUFFER};
        2:        X = P;
        3:        X = {D_MUX[11:0],A1_MUX,BCOUT};
        default : X = 0;
    endcase
    case (OPMODE_MUX[3:2])
        0:        Z = 0;
        1:        Z = PCIN;
        2:        Z = P;
        3:        Z = C_MUX;
        default : Z = 0;
    endcase
    {COUT_IN,OUT} = OPMODE_MUX[7] ? (Z - (X + CIN)) : (Z + X + CIN);
end
endmodule