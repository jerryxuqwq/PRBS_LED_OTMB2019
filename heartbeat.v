module heartbeat (
    input  wire tmb_clock0,   // 40 MHz
    input  wire reset,
    output reg  heart_beat
);

    // --------------------------------------------------
    // Clock divider: 40 MHz -> 10 ms tick (100 Hz)
    // --------------------------------------------------
    parameter integer TICK_DIV = 400_000; // 40e6 * 10ms
    reg [31:0] tick_cnt;
    reg        tick;

    always @(posedge tmb_clock0 or posedge reset) begin
        if (reset) begin
            tick_cnt <= 0;
            tick     <= 0;
        end else if (tick_cnt == TICK_DIV-1) begin
            tick_cnt <= 0;
            tick     <= 1;
        end else begin
            tick_cnt <= tick_cnt + 1;
            tick     <= 0;
        end
    end

    // --------------------------------------------------
    // Heartbeat FSM (Verilog style)
    // --------------------------------------------------
    reg [2:0] state;
    reg [7:0] timer;

    // state encoding
    localparam IDLE       = 3'd0,
               BLINK1_ON  = 3'd1,
               BLINK1_OFF = 3'd2,
               BLINK2_ON  = 3'd3,
               BLINK2_OFF = 3'd4,
               LONG_OFF   = 3'd5;

    // timing in ticks (10 ms per tick)
    localparam BLINK_ON_TICKS  = 10;   // 100 ms
    localparam BLINK_OFF_TICKS = 10;   // 100 ms
    localparam LONG_OFF_TICKS  = 200;  // 1 second

    always @(posedge tmb_clock0 or posedge reset) begin
        if (reset) begin
            state      <= IDLE;
            timer      <= 0;
            heart_beat <= 0;
        end else if (tick) begin
            case (state)
                IDLE: begin
                    heart_beat <= 0;
                    timer <= 0;
                    state <= BLINK1_ON;
                end

                BLINK1_ON: begin
                    heart_beat <= 1;
                    if (timer == BLINK_ON_TICKS-1) begin
                        timer <= 0;
                        state <= BLINK1_OFF;
                    end else timer <= timer + 1;
                end

                BLINK1_OFF: begin
                    heart_beat <= 0;
                    if (timer == BLINK_OFF_TICKS-1) begin
                        timer <= 0;
                        state <= BLINK2_ON;
                    end else timer <= timer + 1;
                end

                BLINK2_ON: begin
                    heart_beat <= 1;
                    if (timer == BLINK_ON_TICKS-1) begin
                        timer <= 0;
                        state <= BLINK2_OFF;
                    end else timer <= timer + 1;
                end

                BLINK2_OFF: begin
                    heart_beat <= 0;
                    if (timer == BLINK_OFF_TICKS-1) begin
                        timer <= 0;
                        state <= LONG_OFF;
                    end else timer <= timer + 1;
                end

                LONG_OFF: begin
                    heart_beat <= 0;
                    if (timer == LONG_OFF_TICKS-1) begin
                        timer <= 0;
                        state <= BLINK1_ON;
                    end else timer <= timer + 1;
                end
            endcase
        end
    end

endmodule
