module D_FF_high_E_low_Pre_tb ();
reg D,E,PRE,CLK; 
wire Q;

//module D_FF_high_E_low_Pre (input D,E,PRE,CLK, output reg Q);
D_FF_high_E_low_Pre DUT(D,E,PRE,CLK,Q);

initial begin             //clock generation block
    CLK=0;
    forever #5 CLK=~CLK;
end

initial begin
    PRE=0; D=0; E=1;
    #2;
    if (Q!=1) begin 
        $display("Error in Preset!!");
        $stop;
    end    
    PRE=1;
    repeat (10) begin
        @(negedge CLK);
         if (E==1 && Q!=D) begin 
            $display("Error!!");
            $stop;
        end    
        D=$random; E=$random;
    end
    $stop;
end    
endmodule

