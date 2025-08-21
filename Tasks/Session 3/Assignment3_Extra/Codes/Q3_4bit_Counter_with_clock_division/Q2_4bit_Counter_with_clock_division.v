module Counter_4_bits_with_out_clk (input clk, set, output reg [3:0] out, output div_2,div_4);

always @(posedge clk or negedge set) begin
    if (!set)          out <= 4'b1111;
    else               out <= out + 1;
end    

assign div_2 = out[0];
assign div_4 = out[1];
endmodule