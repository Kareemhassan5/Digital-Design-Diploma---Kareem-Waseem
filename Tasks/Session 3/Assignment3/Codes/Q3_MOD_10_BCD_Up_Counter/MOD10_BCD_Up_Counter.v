module MOD10_BCD_Up_Counter (input Clk,Rst, output Clk_div10_out);  //input clk, output clk/10
reg [3:0] count;       //the 4 bits of the counter
always @(posedge Clk or posedge Rst) begin
    if(Rst || count == 9)    count <= 0;
    else                     count <= count + 1;    
end

assign Clk_div10_out = count[3];
endmodule