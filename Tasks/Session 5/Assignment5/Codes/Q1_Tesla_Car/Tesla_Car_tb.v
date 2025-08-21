module Tesla_Car_tb ();
reg clk,rst;
reg [7:0] speed_limit,car_speed;
reg [6:0] leading_distance;
wire unlock_doors, accelerate_car;

/*module Tesla_Car (input clk,rst, input [7:0] speed_limit,car_speed, input [6:0] leading_distance,
output reg unlock_doors, accelerate_car);*/
Tesla_Car DUT(clk,rst,speed_limit,car_speed,leading_distance,unlock_doors, accelerate_car);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; speed_limit=$random; car_speed=$random; leading_distance=$random;
    #2;
    if (DUT.cs != DUT.STOP || !unlock_doors || accelerate_car) begin
        $display ("Error in reset!!");
        $stop;
    end

    rst=0; speed_limit=$random; car_speed=$random; leading_distance=41;
    @(negedge clk);
    if (DUT.cs != DUT.ACCELERATE || unlock_doors || !accelerate_car) begin
        $display ("Error in ACCELERATE!!");
        $stop;
    end

    speed_limit=80; car_speed=70; leading_distance=41;
    @(negedge clk);
    if (DUT.cs != DUT.ACCELERATE || unlock_doors || !accelerate_car) begin
        $display ("Error in ACCELERATE!!");
        $stop;
    end
    
    speed_limit=80; car_speed=90; leading_distance=41;
    @(negedge clk);
    if (DUT.cs != DUT.DECELERATE || unlock_doors || accelerate_car) begin
        $display ("Error in DECELERATE!!");
        $stop;
    end
    
    car_speed=0;
    @(negedge clk);
    if (DUT.cs != DUT.STOP || !unlock_doors || accelerate_car) begin
        $display ("Error in STOP!!");
        $stop;
    end
    
    repeat (10) begin
        speed_limit=$random; car_speed=$random; leading_distance=$random;
        @(negedge clk);
    end
    $stop;
end
endmodule