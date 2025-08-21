module Counter_4_bits_tb ();
reg clk, set;
wire [3:0] out_DUT,out_GOLDEN;

//module Counter_4_bits (input clk, set, output reg [3:0] out);
Counter_4_bits DUT(clk,set,out_DUT);
//module Ripple_Counter_4bits (input rstn,clk, output [3:0] out);
Ripple_Counter_4bits GOLDEN(set,clk,out_GOLDEN);

initial begin
    clk=0;
    forever #5 clk = ~clk;
end

initial begin
    set=0;
    @(negedge clk);
    if (out_DUT != 4'b1111 || out_DUT != out_GOLDEN) begin
        $display("Initial value is not 1111");
        $stop;
    end
    set=1;
    repeat (25) begin 
        @(negedge clk);
        if (out_DUT != out_GOLDEN) begin
        $display("Error");
        $stop;
        end
    end
    $stop;  
end
endmodule