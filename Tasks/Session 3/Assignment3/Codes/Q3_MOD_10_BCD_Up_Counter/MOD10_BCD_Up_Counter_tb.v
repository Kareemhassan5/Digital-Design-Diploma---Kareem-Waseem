module MOD10_BCD_Up_Counter_tb ();
reg Clk,Rst;
wire Clk_div10_out;

//module MOD10_BCD_Up_Counter (input Clk,Rst, output Clk_div10_out);
MOD10_BCD_Up_Counter DUT(Clk,Rst,Clk_div10_out);

initial begin             //clock generation block
    Clk=0;
    forever #5 Clk=~Clk;
end

initial begin
    Rst=1;
    @(negedge Clk);
    Rst=0;
    repeat (100) @(negedge Clk);
    $stop;
end
endmodule


