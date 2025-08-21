module ALU_Ass1_Extra(input A, B, Ainvert, Binvert, CarryIn, input [1:0] Operation,
output CarryOut, Result);

wire a,b;

assign a= (Ainvert)? ~A : A;
assign b= (Binvert)? ~B : B;
assign {CarryOut, Result} = (Operation==2'b00)? {1'b0,(a & b)}:
                            (Operation==2'b01)? {1'b0,(a | b)}:
                            (Operation==2'b10)? a + b + CarryIn: {2'b0};
endmodule