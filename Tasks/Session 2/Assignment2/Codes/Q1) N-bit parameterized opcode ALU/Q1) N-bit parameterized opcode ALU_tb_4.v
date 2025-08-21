module N_bit_Parameterized_Opcode_ALU_tb_4();
parameter N=4;
parameter OPCODE= 2'b11;    // Test XOR operation
reg [N-1:0] in0,in1,out_excpected;
wire [N-1:0] out;

/*module N_bit_Parameterized_Opcode_ALU #(parameter N=4, parameter OPCODE= 2'b00)
(input [N-1:0] in0,in1, output reg[N-1:0] out);*/
N_bit_Parameterized_Opcode_ALU #(N,OPCODE) DUT(in0,in1,out);

integer i; 
initial begin
 for (i = 0; i < 10; i = i + 1) begin
    in0 = $random; in1 = $random;
    out_excpected = in0 ^ in1;
    #10;
    if (out != out_excpected) begin
        $display("ERROR!!");
        $stop;
    end
 end
 $stop;
end

initial begin 
$monitor("in0: %b, in1: %b, out: %b, Expected out: %b", in0, in1, out, out_excpected);
end
endmodule