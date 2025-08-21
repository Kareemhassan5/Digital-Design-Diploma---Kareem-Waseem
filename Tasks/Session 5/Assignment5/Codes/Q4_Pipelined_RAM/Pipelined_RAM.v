module Pipelined_RAM #(parameter MEM_WIDTH = 16, MEM_DEPTH = 1024, ADDR_SIZE = 10,
ADDR_PIPELINE = "FALSE", DOUT_PIPELINE = "TRUE", PARITY_ENABLE = 1)
(input clk,rst,blk_select,wr_en,rd_en,addr_en,dout_en, input [ADDR_SIZE-1:0] addr, input [MEM_WIDTH-1:0] din, 
output [MEM_WIDTH-1:0] dout, output parity_out);

reg [MEM_WIDTH-1:0] dout_mux;
wire [ADDR_SIZE-1:0] addr_mux;
reg [MEM_WIDTH-1:0] mem [MEM_DEPTH-1:0];

/*module Reg_MUX #(parameter WIDTH=18, parameter REG= "TRUE")
(input clk,rst,enable, input [WIDTH-1:0] D, output [WIDTH-1:0] out);*/
Reg_MUX #(ADDR_SIZE,ADDR_PIPELINE) addr_REG(clk,rst,addr_en,addr, addr_mux);
Reg_MUX #(MEM_WIDTH,DOUT_PIPELINE) dout_REG(clk,rst,dout_en,dout_mux, dout);

always @(posedge clk) begin
    if (rst)                    dout_mux <= 0;
    else if (blk_select) begin
        if (wr_en)              mem [addr_mux] <= din;
        if (rd_en)              dout_mux <= mem [addr_mux];
    end    
end

assign parity_out = PARITY_ENABLE? ^dout : 0;

endmodule