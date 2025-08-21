module ALSU (input clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction, input [2:0] A,B,opcode,
output reg [5:0] out, output reg [15:0] leds);
reg cin_reg,serial_in_reg,red_op_A_reg,red_op_B_reg,bypass_A_reg,bypass_B_reg,direction_reg;
reg [2:0] A_reg,B_reg,opcode_reg;
parameter INPUT_PRIORITY= "A";                  //A or B
parameter FULL_ADDER= "ON";                     //ON or OFF

always @(posedge clk or posedge rst) begin
    if (rst)
        {cin_reg,serial_in_reg,red_op_A_reg,red_op_B_reg,bypass_A_reg,bypass_B_reg,direction_reg,A_reg,B_reg,opcode_reg,out,leds} <= {38'b0};
    else begin
        {cin_reg,serial_in_reg,red_op_A_reg,red_op_B_reg,bypass_A_reg,bypass_B_reg,direction_reg,A_reg,B_reg,opcode_reg} <=
        {cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,A,B,opcode};

        case ({bypass_A_reg,bypass_B_reg})
            2'b10:                               {out,leds} <= {A_reg,16'b0};
            2'b01:                               {out,leds} <= {B_reg,16'b0};
            2'b11: begin
                if (INPUT_PRIORITY == "A")       {out,leds} <= {A_reg,16'b0};
                else if (INPUT_PRIORITY == "B")  {out,leds} <= {B_reg,16'b0};
            end

            default: begin                        //Opcode Operations
                case (opcode_reg)
                    3'b000: begin                                         //AND
                        case ({red_op_A_reg,red_op_B_reg})
                            2'b10:                               {out,leds} <= {(&A_reg),16'b0};
                            2'b01:                               {out,leds} <= {&B_reg,16'b0};
                            2'b11: begin
                                if (INPUT_PRIORITY == "A")       {out,leds} <= {(&A_reg),16'b0};
                                else if (INPUT_PRIORITY == "B")  {out,leds} <= {(&B_reg),16'b0};
                            end
                            default:                             {out,leds} <= {(A_reg & B_reg) ,16'b0};
                        endcase
                    end

                   3'b001: begin                                          //XOR
                        case ({red_op_A_reg,red_op_B_reg})
                            2'b10:                               {out,leds} <= {(^A_reg),16'b0};
                            2'b01:                               {out,leds} <= {(^B_reg),16'b0};
                            2'b11: begin
                                if (INPUT_PRIORITY == "A")       {out,leds} <= {(^A_reg),16'b0};
                                else if (INPUT_PRIORITY == "B")  {out,leds} <= {(^B_reg),16'b0};
                            end
                            default:                             {out,leds} <= {(A_reg ^ B_reg) , 16'b0};
                        endcase
                    end
                    
                    3'b010: begin                                       //Addition
                        if (red_op_A_reg || red_op_B_reg)          {out,leds} <= {6'b0 , ~leds};          //Invalid 
                        else if (FULL_ADDER == "ON")  begin
                            out <= A_reg + B_reg + cin_reg;
                            leds <= 0;
                        end
                        else if (FULL_ADDER == "OFF")              {out,leds} <= {A_reg + B_reg , 16'b0}; 
                    end

                    3'b011: begin                                      //Multiplication
                        if (red_op_A_reg || red_op_B_reg)          {out,leds} <= {6'b0 , ~leds};          //Invalid 
                        else begin
                            out <= A_reg * B_reg;    
                            leds <=0; 
                        end
                    end

/*In shift and rotate operations, the output will come afer one clock cycle not two, as shifting operations are synchronous and have registers,
when a new clock edge come in, a new input serial come in, but actually the shift is done by the old serial_in input not the
new one due to sequential behavioural, so the shift is done very clock cycle, but the input needs two clock cycles to appear in the output shift*/
                    3'b100: begin                                       //Shift
                        if (red_op_A_reg || red_op_B_reg)          {out,leds} <= {6'b0 , ~leds};           //Invalid
                        else if (direction_reg) begin
                            out <= {out[4:0] , serial_in_reg};     //Shift Left
                            leds <= 0;
                        end
                        else begin
                            out <= {serial_in_reg , out[5:1]};     //Shift Right
                            leds <= 0;
                        end
                    end

                    3'b101: begin                                       //Rotate
                        if (red_op_A_reg || red_op_B_reg)         {out,leds} <= {6'b0 , ~leds};            //Invalid
                        else if (direction_reg) begin 
                            out <= {out[4:0] , out[5]};                //Rotate Left
                            leds <= 0;
                        end
                        else begin                   
                            out <= {out[0] , out[5:1]};               //Rotate Right  
                            leds <= 0;
                        end
                    end

                    default:    {out,leds} <= {6'b0 , ~leds};               //Invalid Opcode
                endcase
            end      
        endcase
    end     
end
endmodule