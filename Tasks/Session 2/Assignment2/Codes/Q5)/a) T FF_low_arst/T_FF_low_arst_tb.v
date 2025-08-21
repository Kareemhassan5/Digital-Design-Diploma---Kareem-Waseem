module T_FF_low_arst_tb ();
reg t,rstn,clk;
wire q,qbar;

//module T_FF_low_arst (input t,rstn,clk, output reg q,qbar);
T_FF_low_arst DUT(t,rstn,clk,q,qbar);

always #10 clk = ~clk;

initial begin
    clk = 0; rstn = 0; t = 0;
    #4; rstn = 1;
    repeat (10) begin
        @(negedge clk);
        t = $random;
    end
    $stop;
end
endmodule