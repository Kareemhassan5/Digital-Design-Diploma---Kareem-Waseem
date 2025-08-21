module ALU(A, B, opcode, clk, rst, out);
    input clk, rst;
    input [3:0] A, B;
    input [1:0] opcode;
    output reg [7:0] out;

    reg [3:0] A_reg, B_reg;
    reg [1:0] opcode_reg;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            A_reg <= 0;
            B_reg <= 0;
            opcode_reg <= 0;
        end else begin
            A_reg <= A;
            B_reg <= B;
            opcode_reg <= opcode;
        end
    end

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            out <= 0;
        end else begin
            case (opcode_reg)
                0: out <= A_reg + B_reg;
                1: out <= A_reg * B_reg;
                2: out <= A_reg | B_reg;
                3: out <= A_reg & B_reg;
            endcase
        end
    end
endmodule
