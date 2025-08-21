module Gray_One_Hot_Encoder (input [2:0] A, output reg [6:0] B);
parameter USE_GRAY= 1;   // Set to 1 for Gray encoding, 0 for One-hot encoding

generate
    if (USE_GRAY) begin  // Binary-Gray encoding logic
        always @(*) begin
            case (A)
                3'b000:  B = 7'b0000000; // 0 in Gray
                3'b001:  B = 7'b0000001; // 1 in Gray
                3'b010:  B = 7'b0000011; // 2 in Gray
                3'b011:  B = 7'b0000010; // 3 in Gray
                3'b100:  B = 7'b0000110; // 4 in Gray
                3'b101:  B = 7'b0000111; // 5 in Gray
                3'b110:  B = 7'b0000101; // 6 in Gray
                3'b111:  B = 7'b0000100; // 7 in Gray
                default: B = 7'b0000000; // Default case
            endcase
        end
    end
    else begin       // Binary one-hot encoding logic
        always @(*) begin
            case (A)
                3'b000:  B = 7'b0000000; // 0 in One-hot
                3'b001:  B = 7'b0000001; // 1 in One-hot
                3'b010:  B = 7'b0000010; // 2 in One-hot
                3'b011:  B = 7'b0000100; // 3 in One-hot
                3'b100:  B = 7'b0001000; // 4 in One-hot
                3'b101:  B = 7'b0010000; // 5 in One-hot
                3'b110:  B = 7'b0100000; // 6 in One-hot
                3'b111:  B = 7'b1000000; // 7 in One-hot
                default: B = 7'b0000000; // Default case
            endcase
        end
    end
endgenerate
endmodule