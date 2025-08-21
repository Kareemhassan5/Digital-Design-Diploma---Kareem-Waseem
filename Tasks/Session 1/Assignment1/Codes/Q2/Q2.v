module Q2 (input A,B,C,sel, input [2:0] D, output reg out,out_bar);
reg w0,w1;
always @(*) begin
w0= (D[0] & D[1]) | D[2];
w1= ~(A^B^C);
out = (sel) ? w1 : w0;
out_bar = ~out;
end
endmodule