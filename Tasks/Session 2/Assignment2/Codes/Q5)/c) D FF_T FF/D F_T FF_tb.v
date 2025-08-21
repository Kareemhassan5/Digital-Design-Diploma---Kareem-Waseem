module D_FF_T_FF_tb ();
reg d,rstn,clk;
wire q,qbar;
parameter FF_TYPE = "DFF";   // Change to "TFF" for T Flip-Flop

//module D_FF_T_FF (input d,rstn,clk, output reg q,qbar);
D_FF_T_FF #(FF_TYPE) DUT(d,rstn,clk,q,qbar);

always #10 clk = ~clk;

initial begin
    clk = 0; rstn = 0; d = 0;
    #5; rstn = 1;
    repeat (10) begin
        @(negedge clk);
        d = $random;
    end
    $stop;
end
endmodule