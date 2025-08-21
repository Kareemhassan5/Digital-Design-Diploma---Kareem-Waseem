module D_FF_high_E_low_Pre (input D,E,PRE,CLK, output reg Q);
always @(posedge CLK or negedge PRE) begin
 if (!PRE) Q<=1'b1;
 else if (E) Q<=D; 
end
endmodule