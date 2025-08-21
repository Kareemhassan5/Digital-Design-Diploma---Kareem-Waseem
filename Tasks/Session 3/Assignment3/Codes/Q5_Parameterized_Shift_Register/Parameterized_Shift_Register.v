module Parameterized_Shift_Register #(parameter LOAD_AVALUE=1, parameter LOAD_SVALUE=1, parameter SHIFT_WIDTH=8,
parameter SHIFT_DIRECTION= "LEFT")
(input sclr,sset,shiftin,load,clock,enable,aclr,aset, input [SHIFT_WIDTH-1:0] data,
output reg [SHIFT_WIDTH-1:0] q, output reg shiftout);

always @(posedge clock or posedge aclr or posedge aset) begin
    if (aclr)                                       {shiftout,q} <= 0;
    else if (aset)                                  {shiftout,q} <= {1'b0 , LOAD_AVALUE};
    else if (enable) begin
        if (sclr)                                   {shiftout,q} <= 0;
        else if (sset)                              {shiftout,q} <= {1'b0 , LOAD_SVALUE};
        else if (load)                              {shiftout,q} <= {1'b0 , data};
        else begin
            if (SHIFT_DIRECTION == "LEFT")          {shiftout,q} <= {q, shiftin};
            else if (SHIFT_DIRECTION == "RIGHT")    {shiftout,q} <= {q[0], shiftin, q[SHIFT_WIDTH-1:1]};
            else                                    {shiftout,q} <= 0;
    end
    end
end
endmodule