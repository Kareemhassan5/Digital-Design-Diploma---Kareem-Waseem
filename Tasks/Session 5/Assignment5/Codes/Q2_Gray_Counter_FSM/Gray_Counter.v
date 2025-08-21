module Gray_Counter (input clk,rst, output [1:0] gray_out);
reg [1:0] binary_out;

always @(posedge clk or posedge rst) begin
    if (rst)   binary_out <= 0;
    else       binary_out <= binary_out + 1;
end

assign gray_out = {binary_out[1] , ^binary_out};

endmodule