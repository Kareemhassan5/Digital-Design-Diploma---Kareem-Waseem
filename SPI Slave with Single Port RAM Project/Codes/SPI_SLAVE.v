module SPI_SLAVE (input clk,rst_n,ss_n,MOSI,tx_valid, input[7:0] tx_data,
output reg MISO,rx_valid, output reg [9:0] rx_data);
localparam IDLE=3'b000, CHK_CMD=3'b001, WRITE=3'b010, READ_ADD=3'b011, READ_DATA=3'b100;
(*fsm_encoding = "one_hot"*)
reg [2:0] cs,ns;
reg add;                  //Register Memorize if the read address is recieved or not (READ_ADD or READ_DATA)
reg [4:0] COUNTER;        //5-bits-Counter for counting clock cycles for proper operation for each state.

/* === State Memory and Register and COUNTER Logic === */
always @(posedge clk) begin
    if (!rst_n)             {cs, COUNTER, add} <= {IDLE, 5'b0, 1'b0};
    else begin
        cs <= ns;

        // COUNTER LOGIC
/* Counter increment every clk. It counts from 0 to 9 to assign MOSI in rx_data, from 0 to 8  ns = cs, rx_valid=0.
but in the ninth count, ns = cs and rx_valid=1, as the data is complete. we need another cycle after the 10 cycles
to keep rx_valid=1 for the RAM, and to determine the ns=IDLE. */
        if (cs == WRITE || cs == READ_ADD || cs == READ_DATA)      COUNTER <= COUNTER + 1;
        else                                                       COUNTER <= 0;

        // ADDRESS TRACKING LOGIC FOR READ FLOW
/* After 10 cycles, the data is complete, then we have an address or we done using it, depending on which state
we are in. If we are in READ_ADD, then we have an address, so we set add=1.
If we are in READ_DATA, then we used the previous address, so we release it by setting add=0.  */
        if      (cs == READ_ADD && COUNTER == 9)                   add <= 1;
        else if (cs == READ_DATA && COUNTER == 9)                  add <= 0;
    end
end

/* === Next State Logic === */
always @(*) begin
    case (cs)
/* One clock cycle for starting the communication*/
        IDLE: begin
            if (!ss_n)            ns = CHK_CMD;
                else              ns = IDLE;
        end

/* One clock cycle for checking which operation we're doing*/
        CHK_CMD: begin
            if      (!ss_n && !MOSI)             ns = WRITE;
            else if (!ss_n && MOSI && !add)      ns = READ_ADD;
            else if (!ss_n && MOSI && add)       ns = READ_DATA;
            else                                 ns = IDLE;
        end

/* 10 clock cycles to recieve the data, and another One clock cycle for returning to IDLE, and rx_valid=1 to let the RAM read.
        (total clock cycles from beginning to end = 13) */
        WRITE: begin
            if (COUNTER < 10 && !ss_n)           ns = WRITE;
            else                                 ns = IDLE;
        end

/*Same as WRITE, but here we have ADD*/
        READ_ADD: begin
            if (COUNTER < 10 && !ss_n)           ns = READ_ADD;
            else                                 ns = IDLE;
        end

/* 10 clock cycles to recieve the data, and another One clock cycle for rx_valid=1 to let the RAM read. Another 8 clock cycles
to send the data to the master, and another One clock cycle for returning to IDLE.
        (total clock cycles from beginning to end = 22) */
        READ_DATA: begin
            if (COUNTER < 19 && !ss_n)           ns = READ_DATA;
            else                                 ns = IDLE;
        end

        default: ns = IDLE;
    endcase
end

/* === Output Sequential Logic for proper operation and synchronization === */
always @(posedge clk) begin
    if (!rst_n)              {rx_valid, rx_data, MISO} <= 0;
    else begin
        rx_valid <= 0;       // Default low, pulse for 1 cycle only
        case (cs)
            WRITE: begin
                 //Writing data from most significant bit (rx_data [9]) to least significant (rx_data [0]) bit for 10 clock cycles
                if (COUNTER <= 9 && !ss_n)       rx_data [9 - COUNTER] <= MOSI;
                if (COUNTER == 9)                rx_valid <= 1;      //rx_valid=1 to let the RAM read the data after receiving it
            end

            READ_ADD: begin
                if (COUNTER <= 9 && !ss_n)       rx_data [9 - COUNTER] <= MOSI;
                if (COUNTER == 9)                rx_valid <= 1;
            end

            READ_DATA: begin
                if (COUNTER <= 9 && !ss_n)     rx_data [9 - COUNTER] <= MOSI;
                if (COUNTER == 9)              rx_valid <= 1;
                //Wait for a clock cycle (COUNTER = 10) to let the RAM read the data, then send it to the master
                //Recieving data from most significant bit (tx_data [7]) to least significant (tx_data [7]) bit for 8 clock cycles.
                if (COUNTER >= 11 && COUNTER <= 18 && tx_valid)   MISO <= tx_data [18 - COUNTER]; 
                else      MISO <= 0;
            end
        endcase
    end
end
endmodule