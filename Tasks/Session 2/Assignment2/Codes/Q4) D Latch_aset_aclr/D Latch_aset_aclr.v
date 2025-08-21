module D_Latch_aset_aclr #(parameter LAT_WIDTH = 4)
(input [LAT_WIDTH-1:0] Data, input aset,aclr,gate, output reg [LAT_WIDTH-1:0] q);

always @(*) begin
    if (aclr)          q = 0;
    else if (aset)     q = {LAT_WIDTH{1'b1}};
    else if (gate)     q = Data;
end
endmodule