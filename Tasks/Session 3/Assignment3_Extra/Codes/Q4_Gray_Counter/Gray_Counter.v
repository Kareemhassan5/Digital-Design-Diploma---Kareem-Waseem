module Gray_Counter (input clk,rst, output reg [1:0] gray_out);
reg [1:0] binary_out;

always @(posedge clk or posedge rst) begin
    if (rst)       {binary_out,gray_out} <= {2{2'b00}};
    else begin          
        binary_out <= binary_out + 1;
        gray_out   <= {binary_out[1] , ^binary_out};
    end
end
endmodule