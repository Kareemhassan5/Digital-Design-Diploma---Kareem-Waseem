module FIFO #(parameter FIFO_WIDTH = 16, FIFO_DEPTH = 512 /* 2^9 */)
(input clk_a,clk_b,rst,wen_a,ren_b, input [FIFO_WIDTH-1:0] din_a, output reg [FIFO_WIDTH-1:0] dout_b, output full,empty);
reg [8:0] addr_wr,         //9 bit Write Counter (Pointer) (It's the address in the memory where we'll be writing) 
          addr_rd,         //9 bit Read Counter (Pointer) (It's the address in the memory where we'll be reading)
          size;            //9 bit counter to Keep track of the number of data in memory to know if it's full or empty

reg [FIFO_WIDTH-1:0] mem [FIFO_DEPTH-1:0];        

//Write Logic
always @(posedge clk_a) begin
    if (rst)                   {addr_wr, size} <= 0;
    else if (!full && wen_a) begin
        mem [addr_wr] <= din_a;
        addr_wr <=  addr_wr + 1;
        size <=  size + 1;
    end   
end

//Read Logic
always @(posedge clk_b) begin
    if (rst)                    {dout_b, addr_rd, size} <= 0;
    else if (!empty && ren_b) begin 
        dout_b <= mem [addr_rd];
        addr_rd <= addr_rd + 1; 
        size <= size - 1;
    end    
end

assign full = size == FIFO_DEPTH? 1 : 0;
assign empty = !size? 1 : 0;

endmodule