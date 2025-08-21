module D_Latch_High_Enable_Low_Clear_tb ();
reg D,G,CLR;
wire Q;

//module D_Latch_High_Enable_Low_Clear (input D,G,CLR,output reg Q);
D_Latch_High_Enable_Low_Clear DUT(D,G,CLR,Q);

initial begin
    repeat(10) begin
        D = $random; // Random value for D
        G = $random; // Random value for G
        CLR = $random; // Random value for CLR
        #10; // Wait for 10 time units
    end
    $stop;
end
endmodule