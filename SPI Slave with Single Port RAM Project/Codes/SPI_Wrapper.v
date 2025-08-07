module SPI_Wrapper (input clk,rst_n,ss_n,MOSI, output MISO);
parameter MEM_DEPTH=256, ADDR_SIZE=8;
wire [ADDR_SIZE+1:0] w1;
wire [ADDR_SIZE-1:0] w3;
wire w2,w4;

/*module SPI_SLAVE (input clk,rst_n,ss_n,MOSI,tx_valid, input[7:0] tx_data,
output reg MISO,rx_valid, output reg [9:0] rx_data);*/

SPI_SLAVE DUT_SPI(.clk(clk),.rst_n(rst_n),.ss_n(ss_n),.MOSI(MOSI),.tx_valid(w4),.tx_data(w3),.MISO(MISO),.rx_valid(w2),.rx_data(w1));

/*module RAM #(parameter MEM_DEPTH=256, ADDR_SIZE=8)
(input [ADDR_SIZE+1:0] din, input clk,rst_n,rx_valid, output reg [ADDR_SIZE-1:0] dout, output reg tx_valid);*/

RAM #(.MEM_DEPTH(MEM_DEPTH),.ADDR_SIZE(ADDR_SIZE)) DUT_RAM(.din(w1),.clk(clk),.rst_n(rst_n),.rx_valid(w2), .dout(w3),.tx_valid(w4));

endmodule