module SPI_Wrapper_tb();
reg clk,rst_n,ss_n,MOSI;
wire MISO;

//module SPI_Wrapper (input clk,rst_n,ss_n,MOSI, output MISO);
SPI_Wrapper DUT(clk,rst_n,ss_n,MOSI, MISO);

initial begin
    clk = 0;
    forever #5 clk=~clk;
end

integer i;
initial begin
    $readmemh ("mem.dat", DUT.DUT_RAM.mem);
    rst_n=0; ss_n=1; MOSI=1;
    @(negedge clk);
    rst_n=1; 
    
    //WRITE in address(1) (13 clock cycles)
    ss_n=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    for(i=0;i<9;i=i+1) begin
        MOSI=0;
        @(negedge clk);
    end
    MOSI=1;
    @(negedge clk);
    @(negedge clk);

    //WRITE data(11110001) (13 clock cycles)
    ss_n=0;
    @(negedge clk);      
    MOSI=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    for(i=0;i<4;i=i+1) begin
        MOSI=1;
        @(negedge clk); 
    end 
    for(i=0;i<3;i=i+1) begin
        MOSI=0;
        @(negedge clk); 
    end
    MOSI=1;
    @(negedge clk);
    @(negedge clk);

    //read address(1) (13 clock cycles)
    ss_n=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    for(i=0;i<8;i=i+1) begin
        MOSI=0;
        @(negedge clk);
    end
    MOSI=1;
    @(negedge clk);
    @(negedge clk);

    //read data (22 clock cycles)
    ss_n=0;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk);
    MOSI=1;
    @(negedge clk); 
    for(i=0;i<8;i=i+1) begin
        MOSI=$random;
        @(negedge clk); 
    end
    @(negedge clk);
   
    repeat (9) @(negedge clk);
    #10 $stop;
end
endmodule