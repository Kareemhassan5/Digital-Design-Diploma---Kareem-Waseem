module Reg_MUX_tb_1 ();          //Registerd Data with SYNC Reset
parameter WIDTH=18;
parameter REG=1;                 //(0 -> Direct "Combinational without clk") or (1 -> Register "Sequential with clk") 
parameter RSTTYPE = "SYNC";      //ASYNC or SYNC reset
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
    rst=1; enable=1; D=1;
    @(negedge clk);
    if (out) begin
        $display("Error in Reset");
        $stop;
    end

    rst=0;
    repeat(10) begin
        enable=$random; D=$random;
        @(negedge clk);
        if (enable && out != D) begin
            $display("Error in Data Transfer");
            $stop;
        end
    end
    $stop;
end
endmodule