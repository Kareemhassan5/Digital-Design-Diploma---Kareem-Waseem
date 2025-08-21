module alu_tb();
reg [3:0] A, B;
reg [1:0] opcode;
reg rst,clk;
wire [7:0] out;

//module alu(input [3:0] A, B, input [1:0] opcode, input rst,clk, output reg [7:0] out);
alu DUT(A,B,opcode,rst,clk,out);

initial begin
    clk=0;
    forever #10 clk= ~clk;
end

initial begin
    rst=1; opcode=2; A=2; B=3;
    @(negedge clk); 
    @(negedge clk);
    rst=0;
    repeat (10) begin
    opcode=$random; A=$random; B=$random;
    @(negedge clk); 
    @(negedge clk);
    end
    $stop;     
end
endmodule