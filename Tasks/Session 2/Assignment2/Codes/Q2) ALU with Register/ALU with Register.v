module ALU_with_Register #(parameter N=4, parameter OPCODE= 2'b00)
(input [N-1:0] in0,in1, input clk,rst, output reg[N-1:0] out);
    always @(posedge clk) begin
        if (rst)
            out <= 0;
        else begin
            case (OPCODE)
                2'b00:   out <= in0+in1; 
                2'b01:   out <= in0|in1; 
                2'b10:   out <= in0-in1;
                default: out <= in0^in1; 
            endcase
        end
    end
endmodule