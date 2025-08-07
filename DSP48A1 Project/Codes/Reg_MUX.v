module Reg_MUX #(parameter WIDTH=18, parameter REG=1, parameter RSTTYPE = "SYNC")
(input clk,rst,enable, input [WIDTH-1:0] D, output [WIDTH-1:0] out);
reg [WIDTH-1:0] D_reg;

generate
    if (RSTTYPE == "SYNC") begin
        always @(posedge clk) begin
            if (rst)            D_reg <= 0;
            else if (enable)    D_reg <= D;
        end

        assign out = REG? D_reg : D;
    end

    else if (RSTTYPE == "ASYNC") begin
        always @(posedge clk or posedge rst) begin
            if (rst)            D_reg <= 0;
            else if (enable)    D_reg <= D;
        end

        assign out = REG? D_reg : D;
    end
endgenerate
endmodule