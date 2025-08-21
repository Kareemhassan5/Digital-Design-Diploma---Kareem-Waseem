module Mux3x1_behavioral (input D0,D1,D2,S0,S1, output reg Y);
always @(*) begin
casex ({S0,S1})
     2'b00:   Y=D0;
     2'b10:   Y=D1;
     2'bX1:   Y=D2;
     default: Y=1'b0;
endcase
end
endmodule