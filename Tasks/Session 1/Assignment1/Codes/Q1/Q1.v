module Q1 (input A,B,C,D,E,F,sel, output out,out_bar);
wire w0,w1;
assign w0= A&B&C;
assign w1= ~(D^E^F);
assign out = (sel) ? w1 : w0;
assign out_bar = ~out;
endmodule