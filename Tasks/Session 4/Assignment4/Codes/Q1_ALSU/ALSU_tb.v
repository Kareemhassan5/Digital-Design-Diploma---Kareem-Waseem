module ALSU_tb ();
reg clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction;
reg [2:0] A,B,opcode;
wire [5:0] out;
wire [15:0] leds;
parameter INPUT_PRIORITY= "A";                  //A or B
parameter FULL_ADDER= "ON";                     //ON or OFF


/*module ALSU (input clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction, input [2:0] A,B,opcode,
output reg [5:0] out, output reg [15:0] leds);*/
ALSU #(INPUT_PRIORITY,FULL_ADDER) DUT(clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,A,B,opcode,out,leds);

integer i;
initial begin
    clk= 0;
    forever #5 clk= ~clk;
end

initial begin
    rst=1; cin=0; serial_in=0; red_op_A=0; red_op_B=0; bypass_A=0; bypass_B=0; direction=0; A=0; B=0; opcode=0;  //reset functionality
    @(negedge clk);
    if (out || leds) begin
        $display("Error in Reset!!");
        $stop;
    end

    rst=0; bypass_A=1; bypass_B=1;                                  //bypass functionality
    for (i=0; i<4; i=i+1) begin                                     
        A=$random; B=$random; opcode=$urandom_range(0,5);
        @(negedge clk);
        @(negedge clk);
        if (out != A) begin
            $display("Error in bypass!!");
            $stop;
        end
    end

    bypass_A=0; bypass_B=0; opcode=0;                              //AND operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random; red_op_A=$random; red_op_B=$randoom;
        @(negedge clk);
        @(negedge clk);
        if ((out != &A) && red_op_A) begin
            $display("Error in reduction AND A operation!!");
            $stop;
        end
        else if ((out != &B) && red_op_B) begin
            $display("Error in reduction AND B operation!!");
            $stop;
        end
        else if ((out != A&B) && !red_op_A && !red_op_B) begin
            $display("Error in AND operation!!");
            $stop;
        end
    end

    opcode=1;                                                     //XOR operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random; red_op_A=$random; red_op_B=$randoom;
        @(negedge clk);
        @(negedge clk);
        if ((out != ^A) && red_op_A) begin
            $display("Error in reduction XOR A operation!!");
            $stop;
        end
        else if ((out != ^B) && red_op_B) begin
            $display("Error in reduction XOR B operation!!");
            $stop;
        end
        else if ((out != (A^B)) && !red_op_A && !red_op_B) begin
            $display("Error in XOR operation!!");
            $stop;
        end

    end

    opcode=2; red_op_A=0; red_op_B=0;                            //Addition operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random; cin=$random;
        @(negedge clk);
        @(negedge clk);
        if (out != (A+B+cin)) begin
            $display("Error in Addition operation!!");
            $stop;
        end
    end

    opcode=3;                                                  //Multiplication operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random;
        @(negedge clk);
        @(negedge clk);
        if (out != (A*B)) begin
            $display("Error in Multiplication operation!!");
            $stop;
        end
    end

    opcode=4;                                                  //Shift operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random; direction=$random; serial_in=$random;
        @(negedge clk);
        @(negedge clk);
    end

    opcode=5;                                                  //Rotate operation
    for (i=0; i<4; i=i+1) begin                                    
        A=$random; B=$random; direction=$random; serial_in=$random;
        @(negedge clk);
        @(negedge clk);
    end
    $stop;
end
endmodule