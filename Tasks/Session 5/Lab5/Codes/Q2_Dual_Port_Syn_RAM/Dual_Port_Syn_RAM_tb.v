module Dual_Port_Syn_RAM_tb ();
parameter MEM_WIDTH=16; 
parameter MEM_DEPTH=1024;
parameter ADDR_SIZE=10;
reg clk,rst,blk_select,wr_en,rd_en;
reg [ADDR_SIZE-1:0] addr_wr,addr_rd;
reg [MEM_WIDTH-1:0] din;
wire [MEM_WIDTH-1:0] dout;

/*module Dual_Port_Syn_RAM #(parameter MEM_WIDTH=16, parameter MEM_DEPTH=1024, parameter ADDR_SIZE=10)
(input clk,rst,blk_select,wr_en,rd_en,input [ADDR_SIZE-1:0] addr_wr,addr_rd, input [MEM_WIDTH-1:0] din,
output reg [MEM_WIDTH-1:0] dout);*/
Dual_Port_Syn_RAM #(MEM_WIDTH, MEM_DEPTH, ADDR_SIZE) DUT(clk,rst,blk_select,wr_en,rd_en,addr_wr,addr_rd,din,dout);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    $readmemh("mem.dat",DUT.mem);
    rst=1; blk_select=$random; wr_en=$random; rd_en=$random; addr_wr=$random; addr_rd=$random; din=$random;
    @(negedge clk);
    if (dout) begin
        $display("Error in Reset");
        $stop;
    end
    rst=0;
    repeat (30) begin
        blk_select=$random; wr_en=$random; rd_en=$random; addr_wr=$random; addr_rd=$random; din=$random;
        @(negedge clk);
    end    
    $stop;
end
endmodule