module Ripple_Counter_4bits_tb ();
reg rstn,clk;
wire [3:0] out;

//module Ripple_Counter_4bits (input rstn,clk, output reg [3:0] out);
Ripple_Counter_4bits DUT(rstn,clk,out);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rstn=0;
    #2;
    rstn=1;
    repeat (100)  @(negedge clk);
    $stop;
end
endmodule

