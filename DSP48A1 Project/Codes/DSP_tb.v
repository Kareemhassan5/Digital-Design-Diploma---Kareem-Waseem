module DSP_tb (); 
parameter A0REG=0,A1REG=1,B0REG=0,B1REG=1,CREG=1,DREG=1,MREG=1,PREG=1,CARRYINREG=1,
CARRYOUTREG=1,OPMODEREG=1;                  //(0 -> Direct) or (1 -> Register) 
parameter CARRYINSEL= "OPMODE5";            //CARRYIN or OPMODE5 (for selecting carry input)
parameter B_INPUT= "DIRECT";                //DIRECT or CASCADE (for selecting B input)
parameter RSTTYPE= "SYNC";                  //SYNC or ASYNC (for selecting register reset type)
reg [17:0] A,B,BCIN, D;
reg [47:0] C,PCIN;
reg [7:0] OPMODE;
reg clk,CARRYIN;
reg RSTA,RSTB,RSTC,RSTD,RSTM,RSTP,RSTCARRYIN,RSTOPMODE,    
CEA,CEB,CEC,CED,CEM,CEP,CECARRYIN,CEOPMODE;         
wire [17:0] BCOUT;
wire [47:0] P, PCOUT;
wire [35:0] M;
wire CARRYOUT,CARRYOUTF;

/*module DSP #(parameter A0REG=0,A1REG=1,B0REG=0,B1REG=1,CREG=1,DREG=1,MREG=1,PREG=1,CARRYINREG=1,
CARRYOUTREG=1,OPMODEREG=1, 
CARRYINSEL= "OPMODE5", 
B_INPUT= "DIRECT",      
RSTTYPE= "SYNC")
(input [17:0] A,B,BCIN, D, input [47:0] C,PCIN, input [7:0] OPMODE, input clk,CARRYIN,
RSTA,RSTB,RSTC,RSTD,RSTM,RSTP,RSTCARRYIN,RSTOPMODE, CEA,CEB,CEC,CED,CEM,CEP,CECARRYIN,CEOPMODE,           
output [17:0] BCOUT, output [47:0] P, PCOUT, output [35:0] M, output CARRYOUT,CARRYOUTF);*/
DSP #(A0REG,A1REG,B0REG,B1REG,CREG,DREG,MREG,PREG,CARRYINREG,
CARRYOUTREG,OPMODEREG,CARRYINSEL,B_INPUT,RSTTYPE) 
DUT(A,B,BCIN,D,C,PCIN,OPMODE,clk,CARRYIN,RSTA,RSTB,RSTC,RSTD,RSTM,RSTP,RSTCARRYIN,RSTOPMODE,
CEA,CEB,CEC,CED,CEM,CEP,CECARRYIN,CEOPMODE,BCOUT,P,PCOUT,M,CARRYOUT,CARRYOUTF);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    //Reset Functionality
    RSTA=1; RSTB=1; RSTC=1; RSTD=1; RSTM=1; RSTP=1; RSTCARRYIN=1; RSTOPMODE=1; 
    CEA=$random; CEB=$random; CEC=$random; CED=$random; CEM=$random; CEP=$random; CECARRYIN=$random; CEOPMODE=$random;
    A=$random; B=$random; BCIN=$random; D=$random; C=$random; PCIN=$random; OPMODE=$random; CARRYIN=$random; 
    @(negedge clk);
    if (P || PCOUT || M || BCOUT || CARRYOUT || CARRYOUTF) begin
        $display("Error in Reset!!");
        $stop;
    end
    RSTA=0; RSTB=0; RSTC=0; RSTD=0; RSTM=0; RSTP=0; RSTCARRYIN=0; RSTOPMODE=0; 
    CEA=1; CEB=1; CEC=1; CED=1; CEM=1; CEP=1; CECARRYIN=1; CEOPMODE=1;

    //Path 1
    A=20; B=10; D=25; C=350; OPMODE=8'b11011101; PCIN=$random; BCIN=$random; CARRYIN=$random;
    repeat (4) @(negedge clk);
    if (BCOUT != 15 || M != 300 || P != 50 || PCOUT != 50 || CARRYOUT || CARRYOUTF) begin
        $display("Error in Path 1!!");
        $stop;
    end

    //Path 2
    A=20; B=10; D=25; C=350; OPMODE=8'b00010000; PCIN=$random; BCIN=$random; CARRYIN=$random;
    repeat (3) @(negedge clk);
    if (BCOUT != 35 || M != 700 || P || PCOUT || CARRYOUT || CARRYOUTF) begin
        $display("Error in Path 2!!");
        $stop;
    end

    //Path 3
    A=20; B=10; D=25; C=350; OPMODE=8'b00001010; PCIN=$random; BCIN=$random; CARRYIN=$random;
    repeat (3) @(negedge clk);
    if (BCOUT != 10 || M != 200 || P || PCOUT || CARRYOUT || CARRYOUTF) begin
        $display("Error in Path 3!!");
        $stop;
    end

    //Path 4
    A=5; B=6; D=25; C=350; OPMODE=8'b10100111; PCIN=3000; BCIN=$random; CARRYIN=$random;
    repeat (3) @(negedge clk);
    if (BCOUT != 6 || M != 30 || P != 48'hfe6fffec0bb1 || PCOUT != 48'hfe6fffec0bb1 || !CARRYOUT || !CARRYOUTF) begin
        $display("Error in Path 4!!");
        $stop;
    end
    $stop;
end
endmodule