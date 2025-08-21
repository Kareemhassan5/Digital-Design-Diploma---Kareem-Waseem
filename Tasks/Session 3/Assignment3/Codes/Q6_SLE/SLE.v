module SLE (input D,CLK,EN,ALn,ADn,SLn,SD,LAT, output reg Q);

    //Flip Flop
    always @(posedge CLK or negedge ALn) begin
        if(!ALn)                      Q <= !ADn;
        else if (!LAT && EN) begin
            if (!SLn)                 Q <= SD;
            else                      Q <= D;
        end
    end

    //Latch
    always @(*) begin
        if(!ALn)                      Q <= !ADn;
        else if (LAT && CLK && EN) begin
            if (!SLn)                 Q <= SD;
            else                      Q <= D;
        end
    end  
endmodule