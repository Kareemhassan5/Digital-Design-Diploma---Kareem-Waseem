module RAM #(parameter MEM_DEPTH=256,    //Memory Depth
ADDR_SIZE=8  //address Bus Size and Memory Width
)
(input [ADDR_SIZE+1:0] din, input clk,rst_n,rx_valid, output reg [ADDR_SIZE-1:0] dout, output reg tx_valid);

reg [ADDR_SIZE-1:0] mem [MEM_DEPTH-1:0];
reg [ADDR_SIZE-1:0] WRITE_address, READ_address;        //Internal address Lines

always @(posedge clk) begin
    if(!rst_n)              {dout,tx_valid,WRITE_address,READ_address} <= 0;
    else if (rx_valid) begin
        case( din [ADDR_SIZE+1 : ADDR_SIZE] )
            2'b00:          WRITE_address <= din[ADDR_SIZE-1:0];
            2'b01:          mem [WRITE_address] <= din[ADDR_SIZE-1:0];
            2'b10:          READ_address <= din[ADDR_SIZE-1:0];
            2'b11:          {dout,tx_valid} <= {mem [READ_address], 1'b1}; 
        endcase
    end
end
endmodule