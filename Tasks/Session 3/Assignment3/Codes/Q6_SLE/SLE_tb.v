module SLE_tb ();
reg D,CLK,EN,ALn,ADn,SLn,SD,LAT;
wire Q;

//module SLE (input D,CLK,EN,ALn,ADn,SLn,SD,LAT, output reg Q);
SLE DUT(D,CLK,EN,ALn,ADn,SLn,SD,LAT, Q);

initial begin
    CLK=0;
    forever #20 CLK=~CLK;
end

initial begin
    ALn=0; D=$random; EN=$random; ADn=$random; SLn=$random; SD=$random; LAT=$random; 
    @(negedge CLK);
    ALn=1;
    LAT=0;     //FF
    repeat (30) begin
        D=$random; EN=$random; ADn=$random; SLn=$random; SD=$random;
        @(negedge CLK);
    end

    LAT=1;    //Latch
    repeat (30) begin
        D=$random; EN=$random; ADn=$random; SLn=$random; SD=$random;
        #5;
    end
    D=1; EN=1; ADn=1; SLn=1; SD=0;
    #5;
    D=1; EN=1; ADn=1; SLn=0; SD=0;
    #5;       

    $stop;  
end
endmodule