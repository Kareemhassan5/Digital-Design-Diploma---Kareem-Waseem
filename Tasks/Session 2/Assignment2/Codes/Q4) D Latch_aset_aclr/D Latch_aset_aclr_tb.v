module D_Latch_aset_aclr_tb ();
parameter LAT_WIDTH = 4;
reg [LAT_WIDTH-1:0] Data;
reg aset,aclr,gate;
wire [LAT_WIDTH-1:0] q;

/*module D_Latch_aset_aclr #(parameter LAT_WIDTH = 4)
(input [LAT_WIDTH-1:0] Data, input aset,aclr,gate, output reg [LAT_WIDTH-1:0] q);*/
D_Latch_aset_aclr #(LAT_WIDTH) DUT(Data,aset,aclr,gate,q);

initial begin
    repeat (20) begin
        Data = $random; aset = $random; aclr = $random; gate = $random;
        #5; // Wait for 5 time units
    end
    $stop;   
end
endmodule