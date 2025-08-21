module Gray_One_Hot_Encoder_tb_2 (); 
reg [2:0] A;
wire [6:0] B;
parameter USE_GRAY= 0; // Set to 1 for Gray encoding, 0 for One-hot encoding

//module Gray_One_Hot_Encoder (input [2:0] A, output [6:0] B);
Gray_One_Hot_Encoder #(USE_GRAY) DUT(A,B);

integer i;
initial begin
    for (i = 0; i < 8; i = i + 1) begin
        A = i;
        #10;
    end
    $stop;
end
endmodule