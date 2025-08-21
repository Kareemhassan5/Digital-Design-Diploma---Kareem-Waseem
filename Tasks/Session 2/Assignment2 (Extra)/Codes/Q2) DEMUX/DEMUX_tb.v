module DEMUX_tb ();
reg D;
reg [1:0] S;
wire [3:0] Y;

//module DEMUX (input D, input [1:0] S, output reg [3:0] Y);
DEMUX DUT(D,S,Y);

integer i,j;
initial begin
    for (i = 0; i < 2; i = i + 1) begin
        D = i;
        for (j = 0; j < 4; j = j + 1) begin
            S = j;
            #10;
        end   
    end
    $stop;
end
endmodule