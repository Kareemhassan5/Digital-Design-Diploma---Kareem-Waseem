module ALU_with_Register_tb ();
parameter N=4;
parameter OPCODE= 2'b00;  // Change this to test different operations
reg [N-1:0] in0,in1; 
reg clk,rst; 
wire [N-1:0] out;

/*module ALU_with_Register #(parameter N=4, parameter OPCODE= 2'b00)
(input [N-1:0] in0,in1, input clk,rst, output reg[N-1:0] out);*/
ALU_with_Register #(N,OPCODE) DUT(in0,in1,clk,rst,out);

always #10 clk = ~clk;

initial begin
    // Initialize inputs for first clock
    in0 = 4'b0010;
    in1 = 4'b0100;
    clk = 0;
    rst = 1;
    @(negedge clk); // Wait for the second clock edge
    rst = 0; // Release reset
    repeat (10) begin
        in0= $random; in1=$random;
        @(negedge clk); // Wait for the clock edge
    end
    $stop;
end
endmodule