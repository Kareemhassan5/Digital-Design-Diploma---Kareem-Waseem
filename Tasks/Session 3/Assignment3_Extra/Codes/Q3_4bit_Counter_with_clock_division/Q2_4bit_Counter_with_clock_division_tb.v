module Counter_4_bits_with_out_clk_tb ();
reg clk, set;
wire [3:0] out;
wire div_2,div_4;

//module Counter_4_bits_with_out_clk (input clk, set, output reg [3:0] out, output div_2,div_4);
Counter_4_bits_with_out_clk DUT(clk,set,out,div_2,div_4);


initial begin
    clk=0;
    forever #5 clk = ~clk;
end

integer clk_count=0;
integer div_2_count=0;
integer div_4_count=0;
always @(posedge clk)    clk_count = clk_count + 1;
always @(posedge div_2)  div_2_count = div_2_count + 1;
always @(posedge div_4)  div_4_count = div_4_count + 1;

initial begin
    set = 0;
    @(negedge clk);
    set = 1;
    repeat(100) @(negedge clk);
    if (!((div_2_count >= (clk_count/2 - 1)) && (div_2_count <= (clk_count/2 + 1)))) begin
    $display("Test failed: Clock division by 2 is incorrect.");
    $stop;
    end
    if (!((div_4_count >= (clk_count/4 - 1)) && (div_4_count <= (clk_count/4 + 1)))) begin
    $display("Test failed: Clock division by 4 is incorrect.");
    $stop;
    end
    $stop;
end
endmodule
