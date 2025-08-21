module D_Latch_High_Enable_Low_Clear (input D,G,CLR,output reg Q);
always @(*) begin
    if (!CLR)     Q <= 0;
    else if (G)   Q <= D;
end
endmodule