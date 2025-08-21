module Vending_Machine (input clk,rst,D_in,Q_in, output reg Dispense, Change);
parameter WAIT=0; 
parameter Q_25=1; 
parameter Q_50=2;
(* fsm_encoding="gray" *)
reg [1:0] CS,NS;

always @(posedge clk or posedge rst) begin
    if (rst)   CS <= WAIT;
    else       CS <= NS;
end

always @(*) begin
    case (CS)
        WAIT: begin
            if (D_in)      {NS, Dispense, Change} = {WAIT, 1'b1, 1'b1};
            else if (Q_in) {NS, Dispense, Change} = {Q_25, 1'b0, 1'b0};
            else           {NS, Dispense, Change} = {CS, 1'b0, 1'b0};
        end
        Q_25: begin
            if (Q_in)      {NS, Dispense, Change} = {Q_50, 1'b0, 1'b0};
            else           {NS, Dispense, Change} = {CS, 1'b0, 1'b0};
        end
        Q_50: begin
            if (Q_in)      {NS, Dispense, Change} = {WAIT, 1'b1, 1'b0};
            else           {NS, Dispense, Change} = {CS, 1'b0, 1'b0};
        end
        default:           {NS, Dispense, Change} = {WAIT, 1'b0, 1'b0};   
    endcase   
end
endmodule