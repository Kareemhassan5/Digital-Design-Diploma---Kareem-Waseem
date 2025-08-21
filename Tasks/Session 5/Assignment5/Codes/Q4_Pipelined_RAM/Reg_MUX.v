module Reg_MUX #(parameter WIDTH=18, parameter REG= "TRUE")
(input clk,rst,enable, input [WIDTH-1:0] D, output [WIDTH-1:0] out);
reg [WIDTH-1:0] D_reg;

always @(posedge clk) begin
    if (rst)            D_reg <= 0;
    else if (enable)    D_reg <= D;
end

assign out = (REG == "TRUE")? D_reg : (REG == "FALSE")? D : 0;

endmodule