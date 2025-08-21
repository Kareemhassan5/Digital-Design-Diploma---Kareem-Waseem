module Simplified_DSP (input clk,rst_n, input [17:0] A,B,D, input [47:0] C, output reg [47:0] P);
parameter OPERATION = "ADD";            //Supported operations: ADD, SUBTRACT 
reg [17:0] D_reg, B_reg, A_reg;
reg [47:0] C_reg;
reg [18:0] DB_Operation_reg;
reg [17:0] A_reg_reg;
reg [36:0] ADB_Multiply_reg;

always @(posedge clk) begin
    if(!rst_n) begin
        P <= 0;
        D_reg <= 0;
        B_reg <= 0;
        A_reg <= 0;
        C_reg <= 0;
        DB_Operation_reg <= 0;
        A_reg_reg <= 0;
        ADB_Multiply_reg <=0;
    end
    else begin                                               //Registers Update for sequential behavioural
        D_reg <= D;
        B_reg <= B;
        A_reg <= A;
        C_reg <= C;
        A_reg_reg <= A_reg;
        ADB_Multiply_reg <= DB_Operation_reg * A_reg_reg;             
     if(OPERATION == "ADD") begin
            DB_Operation_reg <= D_reg + B_reg;
            P <= ADB_Multiply_reg + C_reg;                  //P=((D+B)*A)+C after 4 clock edges
        end
        else if(OPERATION == "SUBTRACT") begin
            DB_Operation_reg <= D_reg - B_reg;
            P <= ADB_Multiply_reg - C_reg;
        end
    end    
end
endmodule