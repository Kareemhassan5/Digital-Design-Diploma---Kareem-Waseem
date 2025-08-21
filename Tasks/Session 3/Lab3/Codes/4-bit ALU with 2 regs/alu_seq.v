module alu(input [3:0] A, B, input [1:0] opcode, input rst,clk, output reg [7:0] out);
reg [3:0] A_reg, B_reg;
reg [1:0] opcode_reg;

always @(posedge clk or posedge rst) begin     //Register
    if (rst)  {A_reg, B_reg, opcode_reg} <= 10'b0;
    else      {A_reg, B_reg, opcode_reg} <=  {A, B, opcode};
end

always @(posedge clk or posedge rst) begin     //ALU
    if (rst)  out<=0;
    else begin
    case (opcode_reg)
     2'b00:   out<=A_reg + B_reg;
     2'b01:   out<=A_reg * B_reg;
     2'b10:   out<=A_reg | B_reg;
     2'b11:   out<=A_reg & B_reg; 
     default: out<=0; 
    endcase
    end
end
endmodule