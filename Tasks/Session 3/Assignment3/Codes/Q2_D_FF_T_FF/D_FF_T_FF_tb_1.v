module D_FF_T_FF_tb_1 ();
reg d,rstn,clk;
wire q_DUT,q_GOLDEN,qbar_DUT,qbar_GOLDEN;
parameter FF_TYPE = "DFF";                 // D Flip-Flop

//module D_FF_T_FF (input d,rstn,clk, output reg q,qbar);
D_FF_T_FF #(FF_TYPE) DUT(d,rstn,clk,q_DUT,qbar_DUT);
//module D_FF_low_arst (input d,rstn,clk, output reg q,qbar);
D_FF_low_arst GOLDEN(d,rstn,clk,q_GOLDEN,qbar_GOLDEN);

initial begin
    clk=0;
    forever #10 clk = ~clk;
end

initial begin
    rstn = 0; d = 1;
    #5;
    rstn = 1;
    repeat (10) begin
        d = $random;
        @(negedge clk);
        if((qbar_DUT != qbar_GOLDEN) || (q_DUT != q_GOLDEN) ) begin
            $display("Error!!");
            $stop;
        end
    end
    $stop;
end
endmodule