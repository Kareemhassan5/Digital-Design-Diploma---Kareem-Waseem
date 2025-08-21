module Decimal_to_BCD_Encoder (input D0,D1,D2,D3,D4,D5,D6,D7,D8,D9, output reg Y0,Y1,Y2,Y3);
    always @(*) begin
        case ({D9,D8,D7,D6,D5,D4,D3,D2,D1,D0})
            10'b0000000001:   {Y3,Y2,Y1,Y0}= 4'b0000; 
            10'b0000000010:   {Y3,Y2,Y1,Y0}= 4'b0001; 
            10'b0000000100:   {Y3,Y2,Y1,Y0}= 4'b0010; 
            10'b0000001000:   {Y3,Y2,Y1,Y0}= 4'b0011; 
            10'b0000010000:   {Y3,Y2,Y1,Y0}= 4'b0100; 
            10'b0000100000:   {Y3,Y2,Y1,Y0}= 4'b0101; 
            10'b0001000000:   {Y3,Y2,Y1,Y0}= 4'b0110; 
            10'b0010000000:   {Y3,Y2,Y1,Y0}= 4'b0111; 
            10'b0100000000:   {Y3,Y2,Y1,Y0}= 4'b1000; 
            10'b1000000000:   {Y3,Y2,Y1,Y0}= 4'b1001;
            default:          {Y3,Y2,Y1,Y0}= 4'b0000; 
        endcase
    end
endmodule