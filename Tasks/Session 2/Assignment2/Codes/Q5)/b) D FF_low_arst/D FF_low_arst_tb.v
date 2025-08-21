module D_FF_low_arst_tb ();
reg d,rstn,clk;
wire q,qbar;

//module D_FF_low_arst (input d,rstn,clk, output reg q,qbar);
D_FF_low_arst DUT(d,rstn,clk,q,qbar);

always #10 clk = ~clk;

initial begin
    clk = 0; rstn = 0; d = 0;
    #4; rstn = 1;
    repeat (10) begin
        @(negedge clk);
        d = $random;
    end
    $stop;
end
endmodule