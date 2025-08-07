module Reg_MUX_tb_0 ();           //Direct Data with ASYNC Reset
parameter WIDTH=18;
parameter REG=0;                  //(0 -> Direct "Combinational without clk") or (1 -> Register "Sequential with clk") 
parameter RSTTYPE = "ASYNC";      //ASYNC or SYNC reset
reg clk,rst,enable;
reg [WIDTH-1:0] D;
wire [WIDTH-1:0] out;

/*module Reg_MUX #(parameter WIDTH=18, parameter REG=1, parameter RSTTYPE = "SYNC")
(input clk,rst,enable, input [WIDTH-1:0] D, output reg [WIDTH-1:0] out);*/
Reg_MUX #(WIDTH, REG, RSTTYPE) DUT(clk, rst, enable, D, out);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    repeat(5) begin
        enable=$random; D=$random;
        #2;
        if (out != D) begin
            $display("Error in Data Transfer");
            $stop;
        end
    end

    rst=0;
    repeat(5) begin
        enable=$random; D=$random;
        #2;
        if (out != D) begin
            $display("Error in Data Transfer");
            $stop;
        end
    end
    $stop;
end
endmodule