module Dual_Port_Syn_RAM #(parameter MEM_WIDTH=16, parameter MEM_DEPTH=1024, parameter ADDR_SIZE=10)
(input clk,rst,blk_select,wr_en,rd_en,input [ADDR_SIZE-1:0] addr_wr,addr_rd, input [MEM_WIDTH-1:0] din,
output reg [MEM_WIDTH-1:0] dout);

reg [MEM_WIDTH-1:0] mem [MEM_DEPTH-1:0];

always @(posedge clk) begin
    if (rst)                    dout <=0;
    else if (blk_select) begin
        if (wr_en)              mem [addr_wr] <= din;
        if (rd_en)              dout <= mem [addr_rd];
    end
end
endmodule