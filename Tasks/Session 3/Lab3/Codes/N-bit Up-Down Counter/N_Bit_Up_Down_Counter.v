module N_Bit_Up_Down_Counter #(parameter WIDTH=4) (input [WIDTH-1:0] load, 
input clk,rst,en_load,up_ndown, output reg [WIDTH-1:0] cnt);

always @(posedge clk) begin
    if (rst)              cnt <= 0;
    else if (en_load)     cnt <= load;
    else begin
        if (up_ndown)  begin        //UP
            if(cnt=={WIDTH{1'b1}})
               cnt=0;
            else 
               cnt <= cnt + 1;
        end
        else begin                 //DOWN
             if(!cnt)
               cnt={WIDTH{1'b1}};
            else
               cnt <= cnt - 1;
        end
    end
end
endmodule