module Even_Parity (input [7:0] A, output [8:0] out_with_parity);
assign out_with_parity = {A,^A};
endmodule