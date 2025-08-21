module Gray_Counter_tb ();
reg clk,rst;
wire [1:0] gray_out;

//module Gray_Counter (input clk,rst, output reg [1:0] gray_out);
Gray_Counter DUT(clk,rst,gray_out);

initial begin
    clk=0;
    forever #10 clk = ~clk;
end

initial begin
    rst = 1;
    @(negedge clk);
    rst = 0;
    repeat (10) @(negedge clk);
    $stop;
end
endmodule