module Shift_L_R_Register (input SI,C,rst,LEFT_RIGHT, output reg [7:0] PO);

always @(posedge C or posedge rst) begin
    if (rst) PO<=0;
    else if (LEFT_RIGHT) begin            //Right
      PO <= {SI,PO[7:1]};
    end
    else if (!LEFT_RIGHT) begin            //Left
      PO <= {PO[6:0],SI};
    end
end
endmodule