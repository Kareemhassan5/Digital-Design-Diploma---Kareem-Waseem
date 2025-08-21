module Sequence_Detector_111_tb ();
reg clk,rst,Din;
wire ERR;

//module Sequence_Detector_111 (input clk,rst,Din, output reg ERR);
Sequence_Detector_111 DUT(clk,rst,Din,ERR);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; Din=$random;
    @(negedge clk);
    if (DUT.cs != DUT.START || ERR) begin
        $display("Eroor in Reset!!");
        $stop;
    end
    rst=0;
    repeat (30) begin
        Din=$random;
        @(negedge clk);
    end
    $stop;
end
endmodule