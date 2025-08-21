module Pipelined_RAM_tb ();
parameter MEM_WIDTH = 16, MEM_DEPTH = 1024, ADDR_SIZE = 10,
ADDR_PIPELINE = "FALSE", DOUT_PIPELINE = "TRUE", PARITY_ENABLE = 1;
reg clk,rst,blk_select,wr_en,rd_en,addr_en,dout_en;
reg [ADDR_SIZE-1:0] addr;
reg [MEM_WIDTH-1:0] din; 
wire [MEM_WIDTH-1:0] dout;
wire parity_out;

/*module Pipelined_RAM #(parameter MEM_WIDTH = 16, MEM_DEPTH = 1024, ADDR_SIZE = 10,
ADDR_PIPELINE = "FALSE", DOUT_PIPELINE = "TRUE", PARITY_ENABLE = 1)
(input clk,rst,blk_select,wr_en,rd_en,addr_en,dout_en, input [ADDR_SIZE-1:0] addr, input [MEM_WIDTH-1:0] din, 
output [MEM_WIDTH-1:0] dout, output parity_out);*/
Pipelined_RAM #(MEM_WIDTH,MEM_DEPTH,ADDR_SIZE,ADDR_PIPELINE,DOUT_PIPELINE,PARITY_ENABLE)
DUT(clk,rst,blk_select,wr_en,rd_en,addr_en,dout_en,addr,din,dout,parity_out);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    $readmemh ("mem.dat",DUT.mem);
    rst = 1; blk_select=$random; wr_en=$random; rd_en=$random; addr_en=$random; dout_en=$random; addr=$random; din=$random;
    @(negedge clk);
    if (dout || parity_out) begin
        $display("Error in Reset");
        $stop;
    end

    rst = 0; blk_select=1; addr_en=0; dout_en=1;
    repeat (20) begin
        wr_en=$random; rd_en=$random; addr=$urandom_range(1008,1023); din=$random;
        @(negedge clk);
        @(negedge clk);
    end

    dout_en=0; wr_en=$random; rd_en=1; addr=$urandom_range(1008,1023); din=$random;
    @(negedge clk);

    blk_select=0; wr_en=1; rd_en=1; addr=$urandom_range(1008,1023); din=5;
    @(negedge clk);
    $stop;
end
endmodule