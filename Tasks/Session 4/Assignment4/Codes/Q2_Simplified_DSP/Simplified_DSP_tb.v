module Simplified_DSP_tb ();
reg clk,rst_n;
reg [17:0] A,B,D;
reg [47:0] C, P_expected;
wire [47:0] P;
parameter OPERATION = "ADD";            //Supported operations: ADD, SUBTRACT 

//module Simplified_DSP (input clk,rst_n, input [17:0] A,B,D, input [47:0] C, output reg [47:0] P);
Simplified_DSP #(OPERATION) DUT(clk,rst_n,A,B,D,C,P);

initial begin
    clk=0;
    forever #10 clk=~clk;
end

initial begin
    rst_n=0; A=10; B=15; C=20; D=259; P_expected=0;
    @(negedge clk);
    if (P != P_expected) begin
        $display("Error in reset!!");
        $stop;
    end

    rst_n=1; D=30; B=5; A=10; C=50; P_expected=400;      //P=((D+B)*A)+C
    repeat (4) @(negedge clk);
    if (P != P_expected) begin
        $display("Error!!");
        $stop;
    end

    D=100; B=50; A=2; C=500; P_expected=800;
    repeat (4) @(negedge clk);
    if (P != P_expected) begin
        $display("Error!!");
        $stop;
    end

    D=300; B=700; A=3; C=500; P_expected=3500;  
    repeat (4) @(negedge clk);
    if (P != P_expected) begin
        $display("Error!!");
        $stop;
    end
    $stop;
end
endmodule