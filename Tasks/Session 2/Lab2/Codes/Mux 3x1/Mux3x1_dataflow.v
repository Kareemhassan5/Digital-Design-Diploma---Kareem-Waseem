module Mux3x1_dataflow (input D0,D1,D2,S0,S1, output Y);
assign Y = ({S0,S1}==2'b00)? D0: ({S0,S1}==2'b10)? D1: ({S0,S1}==2'b01)? D2: ({S0,S1}==2'b11)? D2: 1'b0;
endmodule