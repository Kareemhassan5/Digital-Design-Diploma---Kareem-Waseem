module Gray_Counter_FSM (input clk,rst, output reg [1:0] y);
localparam A=2'b00,  B=2'b01,  C=2'b10,  D=2'b11;
reg [1:0] cs,ns;

/*--State Memory--*/
always @(posedge clk or posedge rst) begin
    if (rst)      cs <= A;
    else          cs <= ns;
end         

/*--Next State and Output Logic--*/
always @(*) begin
    case (cs)
        A:       {ns, y} = {B, 2'b00};
        B:       {ns, y} = {C, 2'b01};
        C:       {ns, y} = {D, 2'b11};
        D:       {ns, y} = {A, 2'b10};
        default: {ns, y} = {A, 2'b00};
    endcase
end
endmodule