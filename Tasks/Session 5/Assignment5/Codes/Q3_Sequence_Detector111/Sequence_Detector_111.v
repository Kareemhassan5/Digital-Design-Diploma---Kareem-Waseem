module Sequence_Detector_111 (input clk,rst,Din, output ERR);
localparam START = 3'b000,  D0_IS_1 = 3'b001,   D1_IS_1 = 3'b010,  D0_NOT_1 = 3'b011,  D1_NOT_1 = 3'b100;
(*fsm_encoding = "sequential"*)
reg [2:0] cs,ns;

/*--State Memory--*/
always @(posedge clk or posedge rst) begin
    if (rst)   cs <= START;
    else       cs <= ns;
end

/*--Next State Logic--*/
always @(*) begin
    case (cs)
        START: begin
            if (Din)   ns = D0_IS_1;
            else       ns = D0_NOT_1;
        end
        D0_IS_1: begin
            if (Din)   ns = D1_IS_1;
            else       ns = D1_NOT_1;
        end
        D1_IS_1:       ns = START;
        D0_NOT_1:      ns = D1_NOT_1;
        D1_NOT_1:      ns = START;
        default:       ns = START;
    endcase
end

assign ERR = (cs == D1_IS_1 && Din)? 1: 0;

endmodule