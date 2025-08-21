module TDM (input clk,rst, input [1:0] in0,in1,in2,in3, output reg [1:0] out);
reg [1:0] counter_reg;

always @(posedge clk or posedge rst) begin                 //Sequential always block for the counter
    if (rst)      counter_reg <= 0;                        //out = in0
    else          counter_reg <= counter_reg + 1; 
end
 
always @(*) begin                                          //Combinational always block for the MUX
    case (counter_reg)      
    2'b00:    out = in0;
    2'b01:    out = in1;
    2'b10:    out = in2;
    2'b11:    out = in3;
    default:  out = 0;
    endcase
end
endmodule