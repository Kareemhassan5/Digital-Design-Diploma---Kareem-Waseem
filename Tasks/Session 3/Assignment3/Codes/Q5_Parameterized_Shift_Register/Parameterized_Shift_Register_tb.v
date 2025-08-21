module Parameterized_Shift_Register_tb ();
parameter LOAD_AVALUE=2;
parameter LOAD_SVALUE=4;
parameter SHIFT_WIDTH=8;
parameter SHIFT_DIRECTION= "LEFT";
reg sclr,sset,shiftin,load,clock,enable,aclr,aset;
reg [SHIFT_WIDTH-1:0] data;
wire [SHIFT_WIDTH-1:0] q;
wire shiftout;

/*module Parameterized_Shift_Register #(parameter LOAD_AVALUE=1, parameter LOAD_SVALUE=1, parameter SHIFT_WIDTH=8,
parameter SHIFT_DIRECTION= "LEFT")
(input sclr,sset,shiftin,load,clock,enable,aclr,aset, input [SHIFT_WIDTH-1:0] data,
output reg [SHIFT_WIDTH-1:0] q, output reg shiftout);*/
Parameterized_Shift_Register #(LOAD_AVALUE, LOAD_SVALUE, SHIFT_WIDTH, SHIFT_DIRECTION) 
DUT(sclr,sset,shiftin,load,clock,enable,aclr,aset,data,q,shiftout);

initial begin                    //clock generation
    clock = 0;
    forever #10 clock = ~clock;
end

integer i;
initial begin
    aclr=1; aset=1;
    for (i=0; i<3; i=i+1) begin
        sclr =$random; sset =$random; shiftin =$random; load =$random; enable =$random; data =$random;
        @(negedge clock);
        if (q) begin
            $display("Error!! q is NOT zero after aclr!");
            $stop;
        end
    end

    aclr=0; aset=1;
    for (i=0; i<3; i=i+1) begin
        sclr =$random; sset =$random; shiftin =$random; load =$random; enable =$random; data =$random;
        @(negedge clock);
        if (q!=LOAD_AVALUE) begin
            $display("Error in aset!!!");
            $stop;
        end
    end

    aclr=0; aset=0; sclr=1; sset=1;
    for (i=0; i<5; i=i+1) begin
        shiftin =$random; load =$random; enable =$random; data =$random;
        @(negedge clock);
        if (q && enable) begin
            $display("Error!! q is NOT zero after sclr!");
            $stop;
        end
    end

    aclr=0; aset=0; sclr=0; sset=1;
    for (i=0; i<5; i=i+1) begin
        shiftin =$random; load =$random; enable =$random; data =$random;
        @(negedge clock);
        if (q!=LOAD_SVALUE && enable) begin
            $display("Error in sset!!!");
            $stop;
        end
    end

    aclr=0; aset=0; sclr=0; sset=0; load=1;
    for (i=0; i<5; i=i+1) begin
        shiftin =$random; enable =$random; data =$random;
        @(negedge clock);
        if (q!=data && enable) begin
            $display("Error in loading parallel data!!!");
            $stop;
        end
    end
    
    aclr=0; aset=0; sclr=0; sset=0; load=0; enable =1;        //Test shift operation
    for (i=0; i<7; i=i+1) begin
        shiftin =$random;  data =$random;
        @(negedge clock);
    end
    $stop;
end
endmodule