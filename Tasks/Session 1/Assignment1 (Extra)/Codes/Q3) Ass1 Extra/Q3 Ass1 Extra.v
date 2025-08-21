module Q3_Ass1_Extra (input A,B,C, output F);
assign F = (A ^ B) & (B ~^ C) & C ;
//for F=1: A=0, B=1, C=1
endmodule