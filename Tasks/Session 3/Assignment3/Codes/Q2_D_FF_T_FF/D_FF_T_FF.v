module D_FF_T_FF (input d,rstn,clk, output reg q,qbar);
parameter FF_TYPE = "DFF";
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        q <= 1'b0;
        qbar <= 1'b1;
    end 
    else begin
        case (FF_TYPE)
            "DFF": begin
                q <= d;
                qbar <= ~d;
            end
            "TFF": begin
                if (d) begin
                    q <= ~q;
                    qbar <= ~qbar;
                end
            end
            default: begin
                q <= 1'b0;
                qbar <= 1'b1;
            end
        endcase
    end
end   
endmodule