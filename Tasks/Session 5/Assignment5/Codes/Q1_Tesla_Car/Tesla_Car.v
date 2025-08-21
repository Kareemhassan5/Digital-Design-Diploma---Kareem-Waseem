module Tesla_Car (input clk,rst, input [7:0] speed_limit,car_speed, input [6:0] leading_distance,
output reg unlock_doors, accelerate_car);

parameter MIN_DISTANCE = 7'd40;
localparam STOP = 2'b00,  ACCELERATE = 2'b01,  DECELERATE = 2'b10;
(*fsm_encoding = "sequential"*)
reg [1:0] cs,ns;

/*--State Memory--*/
always @(posedge clk or posedge rst) begin
    if (rst)         cs <= STOP;
    else             cs <= ns;
end

/*--Next State and Output Logic--*/
always @(*) begin
    case (cs)
        STOP: begin
            {unlock_doors,accelerate_car} = {1'b1,1'b0};
            if (leading_distance >= MIN_DISTANCE)   ns = ACCELERATE;
            else                                    ns = STOP; 
        end

        ACCELERATE: begin
            {unlock_doors,accelerate_car} = {1'b0,1'b1};
            if (leading_distance >= MIN_DISTANCE && car_speed < speed_limit)   ns = ACCELERATE;
            else                                                               ns = DECELERATE;       
        end

        DECELERATE: begin
            {unlock_doors,accelerate_car} = {1'b0,1'b0};
            if (!car_speed)                                                          ns = STOP;
            else if (leading_distance >= MIN_DISTANCE && car_speed < speed_limit)    ns = ACCELERATE;
            else                                                                     ns = DECELERATE;        
        end

        default: {unlock_doors,accelerate_car, ns} = {1'b1,1'b0, STOP};
    endcase
end
endmodule