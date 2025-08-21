module FIFO_tb ();
parameter FIFO_WIDTH = 16, FIFO_DEPTH = 512;
reg clk_a,clk_b,rst,wen_a,ren_b;
reg [FIFO_WIDTH-1:0] din_a;
wire [FIFO_WIDTH-1:0] dout_b;
wire full,empty;

/*module FIFO #(parameter FIFO_WIDTH = 16, FIFO_DEPTH = 512)
(input clk_a,clk_b,rst,wen_a,ren_b, input [FIFO_WIDTH-1:0] din_a, output reg [FIFO_WIDTH-1:0] dout_b, output full,empty);*/
FIFO #(FIFO_WIDTH,FIFO_DEPTH) DUT(clk_a,clk_b,rst,wen_a,ren_b,din_a,dout_b,full,empty);

initial begin
    clk_a = 0;
    clk_b = 0;
    forever begin
        #5 clk_a = ~clk_a;
        #7 clk_b = ~clk_b;
    end
end

initial begin
    $readmemh ("mem.dat", DUT.mem);
    rst = 1; wen_a=$random; ren_b=$random; din_a=$random;
    @(negedge clk_b);
    if (dout_b || full || !empty) begin
        $display("Error in Reset!!");
        $stop;
    end

    rst = 0;
    repeat (30) begin
        wen_a=$random; ren_b=$random; din_a=$urandom_range(1,100);
        @(negedge clk_b);
    end
    $stop;
end
endmodule