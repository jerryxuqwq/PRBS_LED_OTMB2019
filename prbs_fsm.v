module prbs_fsm (
    input  wire        clk,
    input  wire        pll_lock,
    input  wire        reset,

    input  wire        alldone,
    input  wire        rx_prbs_err,

    output reg  [2:0]  rx_prbs_mode,
    output reg  [2:0]  tx_prbs_mode,
    
    input  wire        prbscntreset_ext,
    input  wire        error_inject_ext,
    input  wire        checker_status,

    output reg         prbscntreset,
    output reg         error_inject,
    output wire        prbs_test_pass
);

  // ------------------------------------------------------------
  // State Encoding
  // ------------------------------------------------------------
  localparam DEFAULT        = 5'd0,
             START          = 5'd1,
             START_PRBS_TX  = 5'd2,
             START_PRBS_RX  = 5'd3,
             CLEAR_PRBS     = 5'd4,
             PRBS_INJECT    = 5'd5,
             CLEAR_PRBS_2   = 5'd6,
             ACTIVE         = 5'd7,
             DELAY          = 5'd8;

  reg [4:0] current_state, next_state;

  // ------------------------------------------------------------
  // Boot Counter
  // ------------------------------------------------------------
  reg         counter_boot_rst;
  wire [30:0] counter_boot;

  counter mycounter (
      .clk (clk),
      .rst (counter_boot_rst),
      .out (counter_boot)
  );

  reg temp_error;

  // ------------------------------------------------------------
  // CLEAR_PRBS_2 dwell counter
  // ------------------------------------------------------------
  parameter integer CLEAR_PRBS_2_HOLD_CYCLES = 512;

  reg [$clog2(CLEAR_PRBS_2_HOLD_CYCLES+1)-1:0] clear2_cnt;

  always @(posedge clk or posedge pll_lock or posedge reset) begin
    if (pll_lock | reset) begin
      clear2_cnt <= 'd0;
    end else begin
      if (current_state == CLEAR_PRBS_2 && (checker_status == 0) && !rx_prbs_err) begin
        if (clear2_cnt < CLEAR_PRBS_2_HOLD_CYCLES)
          clear2_cnt <= clear2_cnt + 1'b1;
      end else begin
        clear2_cnt <= 'd0;
      end
    end
  end

  // ------------------------------------------------------------
  // State Register
  // ------------------------------------------------------------
  always @(posedge clk or posedge pll_lock or posedge reset) begin
    if (pll_lock | reset)
      current_state <= DEFAULT;
    else
      current_state <= next_state;
  end

  // ------------------------------------------------------------
  // Next-State / Output Logic
  // ------------------------------------------------------------
  always @(*) begin
    // Defaults
    rx_prbs_mode     = 3'b000;
    tx_prbs_mode     = 3'b000;
    prbscntreset     = 1'b0;
    error_inject     = 1'b0;
    counter_boot_rst = 1'b1;
    next_state       = current_state;

    case (current_state)

      DEFAULT: begin
        next_state = START;
      end

      START: begin
        if (alldone)
          next_state = START_PRBS_TX;
      end

      START_PRBS_TX: begin
        tx_prbs_mode = 3'b001;
        next_state   = START_PRBS_RX;
      end

      START_PRBS_RX: begin
        tx_prbs_mode = 3'b001;
        next_state   = CLEAR_PRBS;
      end

      CLEAR_PRBS: begin
        rx_prbs_mode = 3'b001;
        tx_prbs_mode = 3'b001;
        prbscntreset = 1'b0;
        temp_error = 1'b0;
        next_state   = PRBS_INJECT;
      end

      PRBS_INJECT: begin
        rx_prbs_mode     = 3'b001;
        tx_prbs_mode     = 3'b001;
        counter_boot_rst = 1'b0;
        error_inject     = 1'b1;

        if (rx_prbs_err)
          temp_error = 1'b1;
 
        if (counter_boot >= 31'd1000_000_000)
          next_state = DELAY;
      end
      
      DELAY: begin
      rx_prbs_mode = 3'b001;
      tx_prbs_mode = 3'b001;
      prbscntreset = 1'b0;
      error_inject = 1'b0;
        if (!rx_prbs_err)
            next_state = CLEAR_PRBS_2;
      end

      CLEAR_PRBS_2: begin
        rx_prbs_mode = 3'b001;
        tx_prbs_mode = 3'b001;
        prbscntreset = 1'b1;

        // stay here until dwell time expires
        
          if (!rx_prbs_err)
            if(checker_status == 0)
              if (clear2_cnt >= CLEAR_PRBS_2_HOLD_CYCLES)
            next_state = ACTIVE;
        else
        next_state = CLEAR_PRBS_2;
      end

      ACTIVE: begin
        rx_prbs_mode = 3'b001;
        tx_prbs_mode = 3'b001;
        prbscntreset = prbscntreset_ext;
        error_inject = error_inject_ext;
        next_state   = ACTIVE;
      end

      default: begin
        next_state = DEFAULT;
      end

    endcase
  end
    hold_high_once hold_high
     (clk,
      reset,
      temp_error,
      prbs_test_pass);
endmodule

module hold_high_once (
    input  wire clk,
    input  wire rst,     // synchronous reset
    input  wire in,      // pulse or level input
    output reg  out      // stays high once set
);

always @(posedge clk) begin
    if (rst)
        out <= 1'b0;
    else if (in)
        out <= 1'b1;
    else
        out <= out; // implicit hold
end

endmodule
