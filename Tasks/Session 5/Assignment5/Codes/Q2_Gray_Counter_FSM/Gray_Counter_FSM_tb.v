module Gray_Counter_FSM_tb ();
reg clk,rst;
wire [1:0] y,y_Golden;

//module Gray_Counter_FSM (input clk,rst, output reg [1:0] y);
Gray_Counter_FSM DUT(clk,rst,y);
//module Gray_Counter (input clk,rst, output reg [1:0] gray_out);
Gray_Counter DUT_GOLDEN(clk,rst,y_Golden);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #2;
    if (DUT.cs != DUT.A || y !=y_Golden) begin
        $display("Error in Reset!!");
        $stop;
    end
    rst=0;
    @(negedge clk);
    if (DUT.cs != DUT.B || y !=y_Golden) begin
        $display("Error!!");
        $stop;
    end
    @(negedge clk);
    if (DUT.cs != DUT.C || y !=y_Golden) begin
        $display("Error!!");
        $stop;
    end
    @(negedge clk);
    if (DUT.cs != DUT.D || y !=y_Golden) begin
        $display("Error!!");
        $stop;
    end
    @(negedge clk);
    if (DUT.cs != DUT.A || y !=y_Golden) begin
        $display("Error!!");
        $stop;
    end
    repeat (5) begin
        @(negedge clk);
        if (y !=y_Golden) begin
            $display("Error!!");
            $stop;
        end
    end
    $stop;
end
endmodule