module TDM_tb ();
reg clk,rst;
reg [1:0] in0,in1,in2,in3;
wire [1:0] out;

//module TDM (input clk,rst, input [1:0] in0,in1,in2,in3, output reg [1:0] out);
TDM DUT(clk,rst,in0,in1,in2,in3,out);

initial begin
    clk=0;
    forever #10 clk=~clk;
end

initial begin
    rst=1; in0=0; in1=1; in2=2; in3=3;
    @(negedge clk);
    if (out != in0) begin
        $display("Error in Reset!!");
        $stop;
    end

    rst=0;
    @(negedge clk);
    if (out != in1) begin
        $display("Error!!");
        $stop;
    end
    
    @(negedge clk);
    if (out != in2) begin
        $display("Error!!");
        $stop;
    end

    @(negedge clk);
    if (out != in3) begin
        $display("Error!!");
        $stop;
    end

    @(negedge clk);
    if (out != in0) begin
        $display("Error!!");
        $stop;
    end

    @(negedge clk);
    if (out != in1) begin
        $display("Error!!");
        $stop;
    end

    @(negedge clk);
    if (out != in2) begin
        $display("Error!!");
        $stop;
    end

    @(negedge clk);
    if (out != in3) begin
        $display("Error!!");
        $stop;
    end
    $stop;
end
endmodule