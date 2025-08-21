module Vending_Machine_tb ();
reg clk,rst,D_in,Q_in;
wire Dispense, Change;

//module Vending_Machine (input clk,rst,D_in,Q_in, output reg Dispense, Change);
Vending_Machine DUT(clk,rst,D_in,Q_in,Dispense,Change);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; D_in=$random; Q_in=$random;
    @(negedge clk);
    if (Dispense || Change) begin
        $display("Error in Reset!!");
        $stop;
    end

    rst=0; D_in=1; Q_in=0;
    repeat(5) @(negedge clk);

    D_in=0; Q_in=1;
    repeat(10) @(negedge clk);

    $stop;
end
endmodule