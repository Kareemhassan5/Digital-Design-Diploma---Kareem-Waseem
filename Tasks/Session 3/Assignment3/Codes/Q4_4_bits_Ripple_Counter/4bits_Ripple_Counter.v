module Ripple_Counter_4bits (input rstn,clk, output [3:0] out);
wire q1,q2,q3,q4;

//module D_FF_low_arst (input d,rstn,clk, output reg q,qbar);
D_FF_low_arst ff1(out[0],rstn,clk,q1,out[0]);
D_FF_low_arst ff2(out[1],rstn,q1, q2,out[1]);
D_FF_low_arst ff3(out[2],rstn,q2, q3,out[2]);
D_FF_low_arst ff4(out[3],rstn,q3, q4,out[3]);

endmodule

