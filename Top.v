`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    00:02:35 02/26/2025
// Design Name:
// Module Name:    Top
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
`define DLY #1
module Top#(
    parameter EXAMPLE_SIM_GTXRESET_SPEEDUP              =   0    // simulation setting for GTX SecureIP model)
  )(
    input wire tmb_clock0,
    input wire reset_btn,

    input wire  Q3_CLK0_MGTREFCLK_PAD_N_IN,
    input wire  Q3_CLK0_MGTREFCLK_PAD_P_IN,
    input wire [3:0]   RXN_IN,
    input wire [3:0]   RXP_IN,
    output wire [7:0] led_fp,
    output wire [3:0]   TXN_OUT,
    output wire [3:0]   TXP_OUT
  );
  wire reset;

  // chipscope wire
  wire [35:0] CONTROL0;
  wire [35:0] CONTROL1;
  wire [15:0] ila_i;
  reg [7:0] v_led;
  wire [7:0] v_button;
  wire [7:0] v_button_sync;
  reg        blink;
  reg        gtx_0_checker_status;
  reg        gtx_1_checker_status;
  reg        gtx_2_checker_status;
  reg        gtx_3_checker_status;
  reg gtx_0_error;
  reg gtx_1_error;
  reg gtx_2_error;
  reg gtx_3_error;
  assign reset = reset_btn | v_button[7];
  //************************** Register Declarations ****************************

  reg             gtx0_txresetdone_r;
  reg             gtx0_txresetdone_r2;
  // * max_fanout = 1 *
  reg             gtx0_rxresetdone_i_r;
  reg             gtx0_rxresetdone_r;
  reg             gtx0_rxresetdone_r2;
  reg             gtx0_rxresetdone_r3;
  reg             gtx1_txresetdone_r;
  reg             gtx1_txresetdone_r2;
  // * max_fanout = 1 *
  reg             gtx1_rxresetdone_i_r;
  reg             gtx1_rxresetdone_r;
  reg             gtx1_rxresetdone_r2;
  reg             gtx1_rxresetdone_r3;
  reg             gtx2_txresetdone_r;
  reg             gtx2_txresetdone_r2;
  // * max_fanout = 1 *
  reg             gtx2_rxresetdone_i_r;
  reg             gtx2_rxresetdone_r;
  reg             gtx2_rxresetdone_r2;
  reg             gtx2_rxresetdone_r3;
  reg             gtx3_txresetdone_r;
  reg             gtx3_txresetdone_r2;
  // * max_fanout = 1 *
  reg             gtx3_rxresetdone_i_r;
  reg             gtx3_rxresetdone_r;
  reg             gtx3_rxresetdone_r2;
  reg             gtx3_rxresetdone_r3;
  //------------------------ MGT Wrapper Wires ------------------------------
  //________________________________________________________________________
  //________________________________________________________________________
  //GTX0   (X0Y12)

  //---------------------- Loopback and Powerdown Ports ----------------------
  wire    [2:0]   gtx0_loopback_i;
  //--------------------- Receive Ports - PRBS Detection ---------------------
  wire            gtx0_prbscntreset_i;
  wire    [2:0]   gtx0_rxenprbstst_i;
  wire            gtx0_rxprbserr_i;
  //----------------- Receive Ports - RX Data Path interface -----------------
  wire    [19:0]  gtx0_rxdata_i;
  //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
  wire    [2:0]   gtx0_rxeqmix_i;
  //---------------------- Receive Ports - RX PLL Ports ----------------------
  wire            gtx0_gtxrxreset_i;
  wire            gtx0_pllrxreset_i;
  wire            gtx0_rxplllkdet_i;
  wire            gtx0_rxresetdone_i;
  //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
  wire    [7:0]   gtx0_daddr_i;
  wire            gtx0_dclk_i;
  wire            gtx0_den_i;
  wire    [15:0]  gtx0_di_i;
  wire            gtx0_drdy_i;
  wire    [15:0]  gtx0_drpdo_i;
  wire            gtx0_dwe_i;
  //---------------- Transmit Ports - TX Data Path interface -----------------
  wire    [19:0]  gtx0_txdata_i;
  wire            gtx0_txoutclk_i;
  //-------------- Transmit Ports - TX Driver and OOB signaling --------------
  wire    [3:0]   gtx0_txdiffctrl_i;
  wire    [4:0]   gtx0_txpostemphasis_i;
  //------------- Transmit Ports - TX Driver and OOB signalling --------------
  wire    [3:0]   gtx0_txpreemphasis_i;
  //--------------------- Transmit Ports - TX PLL Ports ----------------------
  wire            gtx0_gtxtxreset_i;
  wire            gtx0_plltxreset_i;
  wire            gtx0_txplllkdet_i;
  wire            gtx0_txresetdone_i;
  //------------------- Transmit Ports - TX PRBS Generator -------------------
  wire    [2:0]   gtx0_txenprbstst_i;
  wire            gtx0_txprbsforceerr_i;


  //________________________________________________________________________
  //________________________________________________________________________
  //GTX1   (X0Y15)

  //---------------------- Loopback and Powerdown Ports ----------------------
  wire    [2:0]   gtx1_loopback_i;
  //--------------------- Receive Ports - PRBS Detection ---------------------
  wire            gtx1_prbscntreset_i;
  wire    [2:0]   gtx1_rxenprbstst_i;
  wire            gtx1_rxprbserr_i;
  //----------------- Receive Ports - RX Data Path interface -----------------
  wire    [19:0]  gtx1_rxdata_i;
  //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
  wire    [2:0]   gtx1_rxeqmix_i;
  //---------------------- Receive Ports - RX PLL Ports ----------------------
  wire            gtx1_gtxrxreset_i;
  wire            gtx1_pllrxreset_i;
  wire            gtx1_rxplllkdet_i;
  wire            gtx1_rxresetdone_i;
  //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
  wire    [7:0]   gtx1_daddr_i;
  wire            gtx1_dclk_i;
  wire            gtx1_den_i;
  wire    [15:0]  gtx1_di_i;
  wire            gtx1_drdy_i;
  wire    [15:0]  gtx1_drpdo_i;
  wire            gtx1_dwe_i;
  //---------------- Transmit Ports - TX Data Path interface -----------------
  wire    [19:0]  gtx1_txdata_i;
  wire            gtx1_txoutclk_i;
  //-------------- Transmit Ports - TX Driver and OOB signaling --------------
  wire    [3:0]   gtx1_txdiffctrl_i;
  wire    [4:0]   gtx1_txpostemphasis_i;
  //------------- Transmit Ports - TX Driver and OOB signalling --------------
  wire    [3:0]   gtx1_txpreemphasis_i;
  //--------------------- Transmit Ports - TX PLL Ports ----------------------
  wire            gtx1_gtxtxreset_i;
  wire            gtx1_plltxreset_i;
  wire            gtx1_txplllkdet_i;
  wire            gtx1_txresetdone_i;
  //------------------- Transmit Ports - TX PRBS Generator -------------------
  wire    [2:0]   gtx1_txenprbstst_i;
  wire            gtx1_txprbsforceerr_i;


  //________________________________________________________________________
  //________________________________________________________________________
  //GTX2   (X0Y17)

  //---------------------- Loopback and Powerdown Ports ----------------------
  wire    [2:0]   gtx2_loopback_i;
  //--------------------- Receive Ports - PRBS Detection ---------------------
  wire            gtx2_prbscntreset_i;
  wire    [2:0]   gtx2_rxenprbstst_i;
  wire            gtx2_rxprbserr_i;
  //----------------- Receive Ports - RX Data Path interface -----------------
  wire    [19:0]  gtx2_rxdata_i;
  //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
  wire    [2:0]   gtx2_rxeqmix_i;
  //---------------------- Receive Ports - RX PLL Ports ----------------------
  wire            gtx2_gtxrxreset_i;
  wire            gtx2_pllrxreset_i;
  wire            gtx2_rxplllkdet_i;
  wire            gtx2_rxresetdone_i;
  //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
  wire    [7:0]   gtx2_daddr_i;
  wire            gtx2_dclk_i;
  wire            gtx2_den_i;
  wire    [15:0]  gtx2_di_i;
  wire            gtx2_drdy_i;
  wire    [15:0]  gtx2_drpdo_i;
  wire            gtx2_dwe_i;
  //---------------- Transmit Ports - TX Data Path interface -----------------
  wire    [19:0]  gtx2_txdata_i;
  wire            gtx2_txoutclk_i;
  //-------------- Transmit Ports - TX Driver and OOB signaling --------------
  wire    [3:0]   gtx2_txdiffctrl_i;
  wire    [4:0]   gtx2_txpostemphasis_i;
  //------------- Transmit Ports - TX Driver and OOB signalling --------------
  wire    [3:0]   gtx2_txpreemphasis_i;
  //--------------------- Transmit Ports - TX PLL Ports ----------------------
  wire            gtx2_gtxtxreset_i;
  wire            gtx2_plltxreset_i;
  wire            gtx2_txplllkdet_i;
  wire            gtx2_txresetdone_i;
  //------------------- Transmit Ports - TX PRBS Generator -------------------
  wire    [2:0]   gtx2_txenprbstst_i;
  wire            gtx2_txprbsforceerr_i;


  //________________________________________________________________________
  //________________________________________________________________________
  //GTX3   (X0Y19)

  //---------------------- Loopback and Powerdown Ports ----------------------
  wire    [2:0]   gtx3_loopback_i;
  //--------------------- Receive Ports - PRBS Detection ---------------------
  wire            gtx3_prbscntreset_i;
  wire    [2:0]   gtx3_rxenprbstst_i;
  wire            gtx3_rxprbserr_i;
  //----------------- Receive Ports - RX Data Path interface -----------------
  wire    [19:0]  gtx3_rxdata_i;
  //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
  wire    [2:0]   gtx3_rxeqmix_i;
  //---------------------- Receive Ports - RX PLL Ports ----------------------
  wire            gtx3_gtxrxreset_i;
  wire            gtx3_pllrxreset_i;
  wire            gtx3_rxplllkdet_i;
  wire            gtx3_rxresetdone_i;
  //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
  wire    [7:0]   gtx3_daddr_i;
  wire            gtx3_dclk_i;
  wire            gtx3_den_i;
  wire    [15:0]  gtx3_di_i;
  wire            gtx3_drdy_i;
  wire    [15:0]  gtx3_drpdo_i;
  wire            gtx3_dwe_i;
  //---------------- Transmit Ports - TX Data Path interface -----------------
  wire    [19:0]  gtx3_txdata_i;
  wire            gtx3_txoutclk_i;
  //-------------- Transmit Ports - TX Driver and OOB signaling --------------
  wire    [3:0]   gtx3_txdiffctrl_i;
  wire    [4:0]   gtx3_txpostemphasis_i;
  //------------- Transmit Ports - TX Driver and OOB signalling --------------
  wire    [3:0]   gtx3_txpreemphasis_i;
  //--------------------- Transmit Ports - TX PLL Ports ----------------------
  wire            gtx3_gtxtxreset_i;
  wire            gtx3_plltxreset_i;
  wire            gtx3_txplllkdet_i;
  wire            gtx3_txresetdone_i;
  //------------------- Transmit Ports - TX PRBS Generator -------------------
  wire    [2:0]   gtx3_txenprbstst_i;
  wire            gtx3_txprbsforceerr_i;




  //----------------------------- Global Signals -----------------------------
  wire            gtx0_tx_system_reset_c;
  wire            gtx0_rx_system_reset_c;
  wire            gtx1_tx_system_reset_c;
  wire            gtx1_rx_system_reset_c;
  wire            gtx2_tx_system_reset_c;
  wire            gtx2_rx_system_reset_c;
  wire            gtx3_tx_system_reset_c;
  wire            gtx3_rx_system_reset_c;
  wire            tied_to_ground_i;
  wire    [63:0]  tied_to_ground_vec_i;
  wire            tied_to_vcc_i;
  wire    [7:0]   tied_to_vcc_vec_i;
  wire            drp_clk_in_i;

  //--------------------------- User Clocks ---------------------------------
  wire            gtx0_txusrclk2_i;


  //--------------------------- Reference Clocks ----------------------------

  wire            q3_clk0_refclk_i;
  wire            q3_clk0_refclk_i_bufg;
  //--------------------- Frame check/gen Module Signals --------------------
  wire            gtx0_matchn_i;

  wire    [1:0]   gtx0_txcharisk_float_i;

  wire    [19:0]  gtx0_txdata_float_i;


  wire            gtx0_block_sync_i;
  wire            gtx0_track_data_i;
  wire    [7:0]   gtx0_error_count_i;
  wire            gtx0_frame_check_reset_i;
  wire            gtx0_inc_in_i;
  wire            gtx0_inc_out_i;
  wire    [19:0]  gtx0_unscrambled_data_i;

  wire            gtx1_matchn_i;

  wire    [1:0]   gtx1_txcharisk_float_i;

  wire    [19:0]  gtx1_txdata_float_i;


  wire            gtx1_block_sync_i;
  wire            gtx1_track_data_i;
  wire    [7:0]   gtx1_error_count_i;
  wire            gtx1_frame_check_reset_i;
  wire            gtx1_inc_in_i;
  wire            gtx1_inc_out_i;
  wire    [19:0]  gtx1_unscrambled_data_i;

  wire            gtx2_matchn_i;

  wire    [1:0]   gtx2_txcharisk_float_i;

  wire    [19:0]  gtx2_txdata_float_i;


  wire            gtx2_block_sync_i;
  wire            gtx2_track_data_i;
  wire    [7:0]   gtx2_error_count_i;
  wire            gtx2_frame_check_reset_i;
  wire            gtx2_inc_in_i;
  wire            gtx2_inc_out_i;
  wire    [19:0]  gtx2_unscrambled_data_i;

  wire            gtx3_matchn_i;

  wire    [1:0]   gtx3_txcharisk_float_i;

  wire    [19:0]  gtx3_txdata_float_i;


  wire            gtx3_block_sync_i;
  wire            gtx3_track_data_i;
  wire    [7:0]   gtx3_error_count_i;
  wire            gtx3_frame_check_reset_i;
  wire            gtx3_inc_in_i;
  wire            gtx3_inc_out_i;
  wire    [19:0]  gtx3_unscrambled_data_i;

  wire            reset_on_data_error_i;
  wire            track_data_out_i;


  //--------------------- Chipscope Signals ---------------------------------

  wire    [35:0]  tx_data_vio_control_i;
  wire    [35:0]  rx_data_vio_control_i;
  wire    [35:0]  shared_vio_control_i;
  wire    [35:0]  ila_control_i;
  wire    [31:0]  tx_data_vio_async_in_i;
  wire    [31:0]  tx_data_vio_sync_in_i;
  wire    [31:0]  tx_data_vio_async_out_i;
  wire    [31:0]  tx_data_vio_sync_out_i;
  wire    [31:0]  rx_data_vio_async_in_i;
  wire    [31:0]  rx_data_vio_sync_in_i;
  wire    [31:0]  rx_data_vio_async_out_i;
  wire    [31:0]  rx_data_vio_sync_out_i;
  wire    [31:0]  shared_vio_in_i;
  wire    [31:0]  shared_vio_out_i;
  wire    [84:0]  ila_in_i;

  wire    [31:0]  gtx0_tx_data_vio_async_in_i;
  wire    [31:0]  gtx0_tx_data_vio_sync_in_i;
  wire    [31:0]  gtx0_tx_data_vio_async_out_i;
  wire    [31:0]  gtx0_tx_data_vio_sync_out_i;
  wire    [31:0]  gtx0_rx_data_vio_async_in_i;
  wire    [31:0]  gtx0_rx_data_vio_sync_in_i;
  wire    [31:0]  gtx0_rx_data_vio_async_out_i;
  wire    [31:0]  gtx0_rx_data_vio_sync_out_i;
  wire    [84:0]  gtx0_ila_in_i;

  wire    [31:0]  gtx1_tx_data_vio_async_in_i;
  wire    [31:0]  gtx1_tx_data_vio_sync_in_i;
  wire    [31:0]  gtx1_tx_data_vio_async_out_i;
  wire    [31:0]  gtx1_tx_data_vio_sync_out_i;
  wire    [31:0]  gtx1_rx_data_vio_async_in_i;
  wire    [31:0]  gtx1_rx_data_vio_sync_in_i;
  wire    [31:0]  gtx1_rx_data_vio_async_out_i;
  wire    [31:0]  gtx1_rx_data_vio_sync_out_i;
  wire    [84:0]  gtx1_ila_in_i;

  wire    [31:0]  gtx2_tx_data_vio_async_in_i;
  wire    [31:0]  gtx2_tx_data_vio_sync_in_i;
  wire    [31:0]  gtx2_tx_data_vio_async_out_i;
  wire    [31:0]  gtx2_tx_data_vio_sync_out_i;
  wire    [31:0]  gtx2_rx_data_vio_async_in_i;
  wire    [31:0]  gtx2_rx_data_vio_sync_in_i;
  wire    [31:0]  gtx2_rx_data_vio_async_out_i;
  wire    [31:0]  gtx2_rx_data_vio_sync_out_i;
  wire    [84:0]  gtx2_ila_in_i;

  wire    [31:0]  gtx3_tx_data_vio_async_in_i;
  wire    [31:0]  gtx3_tx_data_vio_sync_in_i;
  wire    [31:0]  gtx3_tx_data_vio_async_out_i;
  wire    [31:0]  gtx3_tx_data_vio_sync_out_i;
  wire    [31:0]  gtx3_rx_data_vio_async_in_i;
  wire    [31:0]  gtx3_rx_data_vio_sync_in_i;
  wire    [31:0]  gtx3_rx_data_vio_async_out_i;
  wire    [31:0]  gtx3_rx_data_vio_sync_out_i;
  wire    [84:0]  gtx3_ila_in_i;


  wire            gtxtxreset_i;
  wire            gtxrxreset_i;
  wire    [1:0]   mux_sel_i;

  wire            user_tx_reset_i;
  wire            user_rx_reset_i;
  wire            tx_vio_clk_i;
  wire            tx_vio_clk_mux_out_i;
  wire            rx_vio_ila_clk_i;
  wire            rx_vio_ila_clk_mux_out_i;

  //  Static signal Assigments
  assign tied_to_ground_i             = 1'b0;
  assign tied_to_ground_vec_i         = 64'h0000000000000000;
  assign tied_to_vcc_i                = 1'b1;
  assign tied_to_vcc_vec_i            = 8'hff;


  // Project related singal
  reg   [2:0] rx_prbs_mode;
  reg   [2:0] tx_prbs_mode;

  assign  gtx0_gtxrxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx0_gtxtxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx1_gtxrxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx1_gtxtxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx2_gtxrxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx2_gtxtxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx3_gtxrxreset_i = gtxrxreset_i || gtxtxreset_i;
  assign  gtx3_gtxtxreset_i = gtxrxreset_i || gtxtxreset_i;


  // assign resets for frame_gen modules
  assign  gtx0_tx_system_reset_c = !gtx0_txresetdone_r2;
  assign  gtx1_tx_system_reset_c = !gtx1_txresetdone_r2;
  assign  gtx2_tx_system_reset_c = !gtx2_txresetdone_r2;
  assign  gtx3_tx_system_reset_c = !gtx3_txresetdone_r2;

  // assign resets for frame_check modules
  assign  gtx0_rx_system_reset_c = !gtx0_rxresetdone_r3;
  assign  gtx1_rx_system_reset_c = !gtx1_rxresetdone_r3;
  assign  gtx2_rx_system_reset_c = !gtx2_rxresetdone_r3;
  assign  gtx3_rx_system_reset_c = !gtx3_rxresetdone_r3;

  reg prbscntreset;

  assign  user_tx_reset_i                      =  tied_to_ground_i;
  assign  user_rx_reset_i                      =  tied_to_ground_i;
  assign  mux_sel_i                            =  tied_to_ground_vec_i[1:0];
  assign  gtx0_plltxreset_i                    =  tied_to_ground_i;
  assign  gtx0_loopback_i                      =  tied_to_ground_vec_i[2:0];
  assign  gtx0_txdiffctrl_i                    =  4'b1010;
  assign  gtx0_txpreemphasis_i                 =  tied_to_ground_vec_i[3:0];
  assign  gtx0_txpostemphasis_i                =  tied_to_ground_vec_i[4:0];
  assign  gtx0_txenprbstst_i                   =  tx_prbs_mode;
  assign  gtx0_pllrxreset_i                    =  tied_to_ground_i;
  assign  gtx0_rxeqmix_i                       =  tied_to_ground_vec_i[2:0];
  assign  gtx0_prbscntreset_i                  =  prbscntreset;
  assign  gtx0_rxenprbstst_i                   =  rx_prbs_mode;
  assign  gtx1_plltxreset_i                    =  tied_to_ground_i;
  assign  gtx1_loopback_i                      =  tied_to_ground_vec_i[2:0];
  assign  gtx1_txdiffctrl_i                    =  4'b1010;
  assign  gtx1_txpreemphasis_i                 =  tied_to_ground_vec_i[3:0];
  assign  gtx1_txpostemphasis_i                =  tied_to_ground_vec_i[4:0];
  assign  gtx1_txenprbstst_i                   =  tx_prbs_mode;
  assign  gtx1_pllrxreset_i                    =  tied_to_ground_i;
  assign  gtx1_rxeqmix_i                       =  tied_to_ground_vec_i[2:0];
  assign  gtx1_prbscntreset_i                  =  prbscntreset;
  assign  gtx1_rxenprbstst_i                   =  rx_prbs_mode;
  assign  gtx2_plltxreset_i                    =  tied_to_ground_i;
  assign  gtx2_loopback_i                      =  tied_to_ground_vec_i[2:0];
  assign  gtx2_txdiffctrl_i                    =  4'b1010;
  assign  gtx2_txpreemphasis_i                 =  tied_to_ground_vec_i[3:0];
  assign  gtx2_txpostemphasis_i                =  tied_to_ground_vec_i[4:0];
  assign  gtx2_txenprbstst_i                   =  tx_prbs_mode;
  assign  gtx2_pllrxreset_i                    =  tied_to_ground_i;
  assign  gtx2_rxeqmix_i                       =  tied_to_ground_vec_i[2:0];
  assign  gtx2_prbscntreset_i                  =  prbscntreset;
  assign  gtx2_rxenprbstst_i                   =  rx_prbs_mode;
  assign  gtx3_plltxreset_i                    =  tied_to_ground_i;
  assign  gtx3_loopback_i                      =  tied_to_ground_vec_i[2:0];
  assign  gtx3_txdiffctrl_i                    =  4'b1010;
  assign  gtx3_txpreemphasis_i                 =  tied_to_ground_vec_i[3:0];
  assign  gtx3_txpostemphasis_i                =  tied_to_ground_vec_i[4:0];
  assign  gtx3_txenprbstst_i                   =  tx_prbs_mode;
  assign  gtx3_pllrxreset_i                    =  tied_to_ground_i;
  assign  gtx3_rxeqmix_i                       =  tied_to_ground_vec_i[2:0];
  assign  gtx3_prbscntreset_i                  =  prbscntreset;
  assign  gtx3_rxenprbstst_i                   =  rx_prbs_mode;

  //---------------------------- DRP Clock ----------------------------------
  // The DRP interface requires an independent clock which can run up to about ___ MHz.
  // This design uses a 50 MHz DCLK from external pins. In your own design, the

  BUFG drp_clk_in_bufg_i
       (
         .I      (tmb_clock0),
         .O      (drp_clk_in_i)
       );

  // Clock buffers
  IBUFDS_GTXE1 q3_clk0_refclk_ibufds_i
               (
                 .O                              (q3_clk0_refclk_i),
                 .ODIV2                          (),
                 .CEB                            (tied_to_ground_i),
                 .I                              (Q3_CLK0_MGTREFCLK_PAD_P_IN),
                 .IB                             (Q3_CLK0_MGTREFCLK_PAD_N_IN)
               );
  BUFG q3_clk0_refclk_bufg_i
       (
         .I                              (q3_clk0_refclk_i),
         .O                              (q3_clk0_refclk_i_bufg)
       );
  BUFG txoutclk_bufg0_i
       (
         .I                              (gtx0_txoutclk_i),
         .O                              (gtx0_txusrclk2_i)
       );
  bi_firefly #
    (
      .WRAPPER_SIM_GTXRESET_SPEEDUP   (0)
    )
    bi_firefly_i
    (



      //_____________________________________________________________________
      //_____________________________________________________________________
      //GTX0  (X0Y12)
      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX0_LOOPBACK_IN               (gtx0_loopback_i),
      //--------------------- Receive Ports - PRBS Detection ---------------------
      .GTX0_PRBSCNTRESET_IN           (gtx0_prbscntreset_i),
      .GTX0_RXENPRBSTST_IN            (gtx0_rxenprbstst_i),
      .GTX0_RXPRBSERR_OUT             (gtx0_rxprbserr_i),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX0_RXDATA_OUT                (gtx0_rxdata_i),
      .GTX0_RXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX0_RXEQMIX_IN                (gtx0_rxeqmix_i),
      .GTX0_RXN_IN                    (RXN_IN[0]),
      .GTX0_RXP_IN                    (RXP_IN[0]),
      //---------------------- Receive Ports - RX PLL Ports ----------------------
      .GTX0_GTXRXRESET_IN             (gtx0_gtxrxreset_i),
      .GTX0_MGTREFCLKRX_IN            (q3_clk0_refclk_i),
      .GTX0_PLLRXRESET_IN             (gtx0_pllrxreset_i),
      .GTX0_RXPLLLKDET_OUT            (gtx0_rxplllkdet_i),
      .GTX0_RXRESETDONE_OUT           (gtx0_rxresetdone_i),
      //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
      .GTX0_DADDR_IN                  (gtx0_daddr_i),
      .GTX0_DCLK_IN                   (drp_clk_in_i),
      .GTX0_DEN_IN                    (gtx0_den_i),
      .GTX0_DI_IN                     (gtx0_di_i),
      .GTX0_DRDY_OUT                  (gtx0_drdy_i),
      .GTX0_DRPDO_OUT                 (gtx0_drpdo_i),
      .GTX0_DWE_IN                    (gtx0_dwe_i),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX0_TXDATA_IN                 (gtx0_txdata_i),
      .GTX0_TXOUTCLK_OUT              (gtx0_txoutclk_i),
      .GTX0_TXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //-------------- Transmit Ports - TX Driver and OOB signaling --------------
      .GTX0_TXDIFFCTRL_IN             (gtx0_txdiffctrl_i),
      .GTX0_TXN_OUT                   (TXN_OUT[0]),
      .GTX0_TXP_OUT                   (TXP_OUT[0]),
      .GTX0_TXPOSTEMPHASIS_IN         (gtx0_txpostemphasis_i),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX0_TXPREEMPHASIS_IN          (gtx0_txpreemphasis_i),
      //--------------------- Transmit Ports - TX PLL Ports ----------------------
      .GTX0_GTXTXRESET_IN             (gtx0_gtxtxreset_i),
      .GTX0_TXRESETDONE_OUT           (gtx0_txresetdone_i),
      //------------------- Transmit Ports - TX PRBS Generator -------------------
      .GTX0_TXENPRBSTST_IN            (gtx0_txenprbstst_i),
      .GTX0_TXPRBSFORCEERR_IN         (gtx0_txprbsforceerr_i),





      //_____________________________________________________________________
      //_____________________________________________________________________
      //GTX1  (X0Y15)
      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX1_LOOPBACK_IN               (gtx1_loopback_i),
      //--------------------- Receive Ports - PRBS Detection ---------------------
      .GTX1_PRBSCNTRESET_IN           (gtx1_prbscntreset_i),
      .GTX1_RXENPRBSTST_IN            (gtx1_rxenprbstst_i),
      .GTX1_RXPRBSERR_OUT             (gtx1_rxprbserr_i),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX1_RXDATA_OUT                (gtx1_rxdata_i),
      .GTX1_RXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX1_RXEQMIX_IN                (gtx1_rxeqmix_i),
      .GTX1_RXN_IN                    (RXN_IN[1]),
      .GTX1_RXP_IN                    (RXP_IN[1]),
      //---------------------- Receive Ports - RX PLL Ports ----------------------
      .GTX1_GTXRXRESET_IN             (gtx1_gtxrxreset_i),
      .GTX1_MGTREFCLKRX_IN            (q3_clk0_refclk_i),
      .GTX1_PLLRXRESET_IN             (gtx1_pllrxreset_i),
      .GTX1_RXPLLLKDET_OUT            (gtx1_rxplllkdet_i),
      .GTX1_RXRESETDONE_OUT           (gtx1_rxresetdone_i),
      //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
      .GTX1_DADDR_IN                  (gtx1_daddr_i),
      .GTX1_DCLK_IN                   (drp_clk_in_i),
      .GTX1_DEN_IN                    (gtx1_den_i),
      .GTX1_DI_IN                     (gtx1_di_i),
      .GTX1_DRDY_OUT                  (gtx1_drdy_i),
      .GTX1_DRPDO_OUT                 (gtx1_drpdo_i),
      .GTX1_DWE_IN                    (gtx1_dwe_i),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX1_TXDATA_IN                 (gtx1_txdata_i),
      .GTX1_TXOUTCLK_OUT              (gtx1_txoutclk_i),
      .GTX1_TXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //-------------- Transmit Ports - TX Driver and OOB signaling --------------
      .GTX1_TXDIFFCTRL_IN             (gtx1_txdiffctrl_i),
      .GTX1_TXN_OUT                   (TXN_OUT[1]),
      .GTX1_TXP_OUT                   (TXP_OUT[1]),
      .GTX1_TXPOSTEMPHASIS_IN         (gtx1_txpostemphasis_i),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX1_TXPREEMPHASIS_IN          (gtx1_txpreemphasis_i),
      //--------------------- Transmit Ports - TX PLL Ports ----------------------
      .GTX1_GTXTXRESET_IN             (gtx1_gtxtxreset_i),
      .GTX1_TXRESETDONE_OUT           (gtx1_txresetdone_i),
      //------------------- Transmit Ports - TX PRBS Generator -------------------
      .GTX1_TXENPRBSTST_IN            (gtx1_txenprbstst_i),
      .GTX1_TXPRBSFORCEERR_IN         (gtx1_txprbsforceerr_i),





      //_____________________________________________________________________
      //_____________________________________________________________________
      //GTX2  (X0Y17)
      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX2_LOOPBACK_IN               (gtx2_loopback_i),
      //--------------------- Receive Ports - PRBS Detection ---------------------
      .GTX2_PRBSCNTRESET_IN           (gtx2_prbscntreset_i),
      .GTX2_RXENPRBSTST_IN            (gtx2_rxenprbstst_i),
      .GTX2_RXPRBSERR_OUT             (gtx2_rxprbserr_i),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX2_RXDATA_OUT                (gtx2_rxdata_i),
      .GTX2_RXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX2_RXEQMIX_IN                (gtx2_rxeqmix_i),
      .GTX2_RXN_IN                    (RXN_IN[2]),
      .GTX2_RXP_IN                    (RXP_IN[2]),
      //---------------------- Receive Ports - RX PLL Ports ----------------------
      .GTX2_GTXRXRESET_IN             (gtx2_gtxrxreset_i),
      .GTX2_MGTREFCLKRX_IN            (q3_clk0_refclk_i),
      .GTX2_PLLRXRESET_IN             (gtx2_pllrxreset_i),
      .GTX2_RXPLLLKDET_OUT            (gtx2_rxplllkdet_i),
      .GTX2_RXRESETDONE_OUT           (gtx2_rxresetdone_i),
      //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
      .GTX2_DADDR_IN                  (gtx2_daddr_i),
      .GTX2_DCLK_IN                   (drp_clk_in_i),
      .GTX2_DEN_IN                    (gtx2_den_i),
      .GTX2_DI_IN                     (gtx2_di_i),
      .GTX2_DRDY_OUT                  (gtx2_drdy_i),
      .GTX2_DRPDO_OUT                 (gtx2_drpdo_i),
      .GTX2_DWE_IN                    (gtx2_dwe_i),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX2_TXDATA_IN                 (gtx2_txdata_i),
      .GTX2_TXOUTCLK_OUT              (gtx2_txoutclk_i),
      .GTX2_TXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //-------------- Transmit Ports - TX Driver and OOB signaling --------------
      .GTX2_TXDIFFCTRL_IN             (gtx2_txdiffctrl_i),
      .GTX2_TXN_OUT                   (TXN_OUT[2]),
      .GTX2_TXP_OUT                   (TXP_OUT[2]),
      .GTX2_TXPOSTEMPHASIS_IN         (gtx2_txpostemphasis_i),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX2_TXPREEMPHASIS_IN          (gtx2_txpreemphasis_i),
      //--------------------- Transmit Ports - TX PLL Ports ----------------------
      .GTX2_GTXTXRESET_IN             (gtx2_gtxtxreset_i),
      .GTX2_TXRESETDONE_OUT           (gtx2_txresetdone_i),
      //------------------- Transmit Ports - TX PRBS Generator -------------------
      .GTX2_TXENPRBSTST_IN            (gtx2_txenprbstst_i),
      .GTX2_TXPRBSFORCEERR_IN         (gtx2_txprbsforceerr_i),





      //_____________________________________________________________________
      //_____________________________________________________________________
      //GTX3  (X0Y19)
      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX3_LOOPBACK_IN               (gtx3_loopback_i),
      //--------------------- Receive Ports - PRBS Detection ---------------------
      .GTX3_PRBSCNTRESET_IN           (gtx3_prbscntreset_i),
      .GTX3_RXENPRBSTST_IN            (gtx3_rxenprbstst_i),
      .GTX3_RXPRBSERR_OUT             (gtx3_rxprbserr_i),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX3_RXDATA_OUT                (gtx3_rxdata_i),
      .GTX3_RXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX3_RXEQMIX_IN                (gtx3_rxeqmix_i),
      .GTX3_RXN_IN                    (RXN_IN[3]),
      .GTX3_RXP_IN                    (RXP_IN[3]),
      //---------------------- Receive Ports - RX PLL Ports ----------------------
      .GTX3_GTXRXRESET_IN             (gtx3_gtxrxreset_i),
      .GTX3_MGTREFCLKRX_IN            (q3_clk0_refclk_i),
      .GTX3_PLLRXRESET_IN             (gtx3_pllrxreset_i),
      .GTX3_RXPLLLKDET_OUT            (gtx3_rxplllkdet_i),
      .GTX3_RXRESETDONE_OUT           (gtx3_rxresetdone_i),
      //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
      .GTX3_DADDR_IN                  (gtx3_daddr_i),
      .GTX3_DCLK_IN                   (drp_clk_in_i),
      .GTX3_DEN_IN                    (gtx3_den_i),
      .GTX3_DI_IN                     (gtx3_di_i),
      .GTX3_DRDY_OUT                  (gtx3_drdy_i),
      .GTX3_DRPDO_OUT                 (gtx3_drpdo_i),
      .GTX3_DWE_IN                    (gtx3_dwe_i),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX3_TXDATA_IN                 (gtx3_txdata_i),
      .GTX3_TXOUTCLK_OUT              (gtx3_txoutclk_i),
      .GTX3_TXUSRCLK2_IN              (gtx0_txusrclk2_i),
      //-------------- Transmit Ports - TX Driver and OOB signaling --------------
      .GTX3_TXDIFFCTRL_IN             (gtx3_txdiffctrl_i),
      .GTX3_TXN_OUT                   (TXN_OUT[3]),
      .GTX3_TXP_OUT                   (TXP_OUT[3]),
      .GTX3_TXPOSTEMPHASIS_IN         (gtx3_txpostemphasis_i),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX3_TXPREEMPHASIS_IN          (gtx3_txpreemphasis_i),
      //--------------------- Transmit Ports - TX PLL Ports ----------------------
      .GTX3_GTXTXRESET_IN             (gtx3_gtxtxreset_i),
      .GTX3_TXRESETDONE_OUT           (gtx3_txresetdone_i),
      //------------------- Transmit Ports - TX PRBS Generator -------------------
      .GTX3_TXENPRBSTST_IN            (gtx3_txenprbstst_i),
      .GTX3_TXPRBSFORCEERR_IN         (gtx3_txprbsforceerr_i)


    );



  // Reset management
  always @(posedge gtx0_txusrclk2_i)
    gtx0_rxresetdone_i_r   <=   `DLY gtx0_rxresetdone_i;

  always @(posedge gtx0_txusrclk2_i or negedge gtx0_rxresetdone_i_r)

  begin
    if (!gtx0_rxresetdone_i_r)
    begin
      gtx0_rxresetdone_r      <=   `DLY 1'b0;
      gtx0_rxresetdone_r2     <=   `DLY 1'b0;
    end
    else
    begin
      gtx0_rxresetdone_r      <=   `DLY gtx0_rxresetdone_i_r;
      gtx0_rxresetdone_r2     <=   `DLY gtx0_rxresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx0_rxresetdone_r3   <=   `DLY gtx0_rxresetdone_r2;


  always @(posedge gtx0_txusrclk2_i or negedge gtx0_txresetdone_i)

  begin
    if (!gtx0_txresetdone_i)
    begin
      gtx0_txresetdone_r    <=   `DLY 1'b0;
      gtx0_txresetdone_r2   <=   `DLY 1'b0;
    end
    else
    begin
      gtx0_txresetdone_r    <=   `DLY gtx0_txresetdone_i;
      gtx0_txresetdone_r2   <=   `DLY gtx0_txresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx1_rxresetdone_i_r   <=   `DLY gtx1_rxresetdone_i;

  always @(posedge gtx0_txusrclk2_i or negedge gtx1_rxresetdone_i_r)

  begin
    if (!gtx1_rxresetdone_i_r)
    begin
      gtx1_rxresetdone_r      <=   `DLY 1'b0;
      gtx1_rxresetdone_r2     <=   `DLY 1'b0;
    end
    else
    begin
      gtx1_rxresetdone_r      <=   `DLY gtx1_rxresetdone_i_r;
      gtx1_rxresetdone_r2     <=   `DLY gtx1_rxresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx1_rxresetdone_r3   <=   `DLY gtx1_rxresetdone_r2;


  always @(posedge gtx0_txusrclk2_i or negedge gtx1_txresetdone_i)

  begin
    if (!gtx1_txresetdone_i)
    begin
      gtx1_txresetdone_r    <=   `DLY 1'b0;
      gtx1_txresetdone_r2   <=   `DLY 1'b0;
    end
    else
    begin
      gtx1_txresetdone_r    <=   `DLY gtx1_txresetdone_i;
      gtx1_txresetdone_r2   <=   `DLY gtx1_txresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx2_rxresetdone_i_r   <=   `DLY gtx2_rxresetdone_i;

  always @(posedge gtx0_txusrclk2_i or negedge gtx2_rxresetdone_i_r)

  begin
    if (!gtx2_rxresetdone_i_r)
    begin
      gtx2_rxresetdone_r      <=   `DLY 1'b0;
      gtx2_rxresetdone_r2     <=   `DLY 1'b0;
    end
    else
    begin
      gtx2_rxresetdone_r      <=   `DLY gtx2_rxresetdone_i_r;
      gtx2_rxresetdone_r2     <=   `DLY gtx2_rxresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx2_rxresetdone_r3   <=   `DLY gtx2_rxresetdone_r2;


  always @(posedge gtx0_txusrclk2_i or negedge gtx2_txresetdone_i)

  begin
    if (!gtx2_txresetdone_i)
    begin
      gtx2_txresetdone_r    <=   `DLY 1'b0;
      gtx2_txresetdone_r2   <=   `DLY 1'b0;
    end
    else
    begin
      gtx2_txresetdone_r    <=   `DLY gtx2_txresetdone_i;
      gtx2_txresetdone_r2   <=   `DLY gtx2_txresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx3_rxresetdone_i_r   <=   `DLY gtx3_rxresetdone_i;

  always @(posedge gtx0_txusrclk2_i or negedge gtx3_rxresetdone_i_r)

  begin
    if (!gtx3_rxresetdone_i_r)
    begin
      gtx3_rxresetdone_r      <=   `DLY 1'b0;
      gtx3_rxresetdone_r2     <=   `DLY 1'b0;
    end
    else
    begin
      gtx3_rxresetdone_r      <=   `DLY gtx3_rxresetdone_i_r;
      gtx3_rxresetdone_r2     <=   `DLY gtx3_rxresetdone_r;
    end
  end

  always @(posedge gtx0_txusrclk2_i)
    gtx3_rxresetdone_r3   <=   `DLY gtx3_rxresetdone_r2;


  always @(posedge gtx0_txusrclk2_i or negedge gtx3_txresetdone_i)

  begin
    if (!gtx3_txresetdone_i)
    begin
      gtx3_txresetdone_r    <=   `DLY 1'b0;
      gtx3_txresetdone_r2   <=   `DLY 1'b0;
    end
    else
    begin
      gtx3_txresetdone_r    <=   `DLY gtx3_txresetdone_i;
      gtx3_txresetdone_r2   <=   `DLY gtx3_txresetdone_r;
    end
  end

  wire alldone;
  assign alldone =  gtx0_rxresetdone_r3 &&
         gtx1_rxresetdone_r3 &&
         gtx2_rxresetdone_r3 &&
         gtx3_rxresetdone_r3 &&
         gtx0_txresetdone_r2 &&
         gtx1_txresetdone_r2 &&
         gtx2_txresetdone_r2 &&
         gtx3_txresetdone_r2;

  wire allreset;
  assign allreset =
         !(gtx_0_error ||gtx_1_error ||gtx_2_error||gtx_3_error);

  reg alldone_r; // cross clock domain sync
  reg allreset_r; // cross clock domain sync
  always @(posedge drp_clk_in_i)
  begin
    if (!alldone)
    begin
      alldone_r    <=   1'b0;
    end
    else
    begin
      alldone_r    <=   alldone;
    end
  end
  always @(posedge drp_clk_in_i)
  begin
    if (!allreset)
    begin
      allreset_r    <=   1'b0;
    end
    else
    begin
      allreset_r    <=   allreset;
    end
  end

  // State encoding
  parameter START         = 3'b000;
  parameter START_PRBS_TX = 3'b001;
  parameter START_PRBS_RX = 3'b010;
  parameter ACTIVE        = 3'b011;
  parameter DEFAULT       = 3'b100;
  parameter CLEAR_PRBS    = 3'b101;
  parameter PRBS_INJECT   = 3'b110;
  parameter CLEAR_PRBS_2  = 3'b111;

  reg [2:0] current_state, next_state;
  wire [31:0] counter_boot;
  reg counter_boot_rst;
  reg error_inject;
  counter mycounter(
  .clk(gtx0_txusrclk2_i),
  .rst(counter_boot_rst),
	.out(counter_boot)
  );

  // Sequential Block: State Register
  always @(posedge gtx0_txusrclk2_i or posedge reset)
  begin
    if (reset)
      current_state <= DEFAULT;
    else
      current_state <= next_state;
  end

  // Combinational Block: Next-State and Output Logic
  always @(*)
  begin
    case (current_state)
      DEFAULT:
      begin
        rx_prbs_mode <= 3'b000;
        tx_prbs_mode <= 3'b000;
        prbscntreset <= 1'b0;
        error_inject <= 1'b0;
        counter_boot_rst <= 1'b1;
        next_state <= START;
      end

      START:
      begin
        rx_prbs_mode <= 3'b000;
        tx_prbs_mode <= 3'b000;
        prbscntreset <= 1'b0;
        error_inject <= 1'b0;
        counter_boot_rst <= 1'b1;
        if (alldone)
          next_state <= START_PRBS_TX;
      end

      START_PRBS_TX:
      begin
        rx_prbs_mode <= 3'b000;
        tx_prbs_mode <= 3'b001;
        prbscntreset <= 1'b0;
        error_inject <= 1'b0;
        counter_boot_rst <= 1'b1;
        next_state <= START_PRBS_RX;
      end
      START_PRBS_RX:
      begin
        rx_prbs_mode <= 3'b001;
        tx_prbs_mode <= 3'b001;
        prbscntreset <= 1'b0;
        error_inject <= 1'b0;
        counter_boot_rst <= 1'b1;
        next_state <= CLEAR_PRBS;
      end
      CLEAR_PRBS:
      begin
        rx_prbs_mode <= 3'b001;
        tx_prbs_mode <= 3'b001;
        prbscntreset <= 1'b1;
        error_inject <= 1'b0;
        counter_boot_rst <= 1'b1;
        next_state <= PRBS_INJECT;
      end
      PRBS_INJECT:
      begin
        rx_prbs_mode <= 3'b001;
        tx_prbs_mode <= 3'b001;
        prbscntreset <= 1'b0;
        error_inject <= 1'b1;
        counter_boot_rst <=1'b0;
        if (counter_boot>=31'd10_000)
          next_state <= CLEAR_PRBS_2;
        else
          next_state <= PRBS_INJECT;
      end
      CLEAR_PRBS_2:
      begin
        rx_prbs_mode <= 3'b001;
        tx_prbs_mode <= 3'b001;
        prbscntreset <= 1'b1;
        error_inject <= 1'b0;
        counter_boot_rst <=1'b1;
        if(!(gtx0_rxprbserr_i|gtx1_rxprbserr_i|gtx2_rxprbserr_i|gtx3_rxprbserr_i))
          next_state <= ACTIVE;
        else
          next_state <= CLEAR_PRBS_2;
      end
      ACTIVE:
      begin
        rx_prbs_mode <= 3'b001;
        tx_prbs_mode <= 3'b001;
        error_inject <= 1'b0;
        counter_boot_rst <=1'b1;
        prbscntreset <= v_button[6];
        next_state <= ACTIVE;
      end
    endcase
  end


  assign  gtxtxreset_i = reset;
  assign  gtxrxreset_i  = reset;
  assign gtx0_txprbsforceerr_i =  v_button_sync[0]|error_inject;
  assign gtx1_txprbsforceerr_i =  v_button_sync[1]|error_inject;
  assign gtx2_txprbsforceerr_i =  v_button_sync[2]|error_inject;
  assign gtx3_txprbsforceerr_i =  v_button_sync[3]|error_inject;

  assign led_fp = v_led;

  wire [15:0] gtx_0_data_out;
  wire        gtx_0_data_valid;
  wire [15:0] gtx_1_data_out;
  wire        gtx_1_data_valid;
  wire [15:0] gtx_2_data_out;
  wire        gtx_2_data_valid;
  wire [15:0] gtx_3_data_out;
  wire        gtx_3_data_valid;



  localparam integer DIVISOR = 40_000_000 / (2 * 3); // Toggle every (40M / 6) cycles
  reg [22:0] counter;

  always @(posedge tmb_clock0 or posedge reset)
  begin
    if (reset)
      counter <= 0;
    else if (counter >= DIVISOR - 1)
      counter <= 0;
    else
      counter <= counter + 1;
  end

  always @(posedge tmb_clock0 or posedge reset)
  begin
    if (reset)
      blink <= 0;
    else if (counter == 0)
      blink <= ~blink;
  end
  always @(posedge gtx0_txusrclk2_i or posedge reset)
  begin
    if (reset)
    begin
      v_led[7:0] <= 8'b0000_0000;
    end
    else
    begin
      v_led[0] <= gtx_0_checker_status;
      v_led[1] <= gtx_1_checker_status;
      v_led[2] <= gtx_2_checker_status;
      v_led[3] <= gtx_3_checker_status;
      v_led[4] <= drp_clk_in_i;
      v_led[5] <= alldone_r;
      v_led[6] <= allreset;
      v_led[7] <= prbscntreset;
    end
  end


  DRP DRP_read_0(
        .clk			(drp_clk_in_i), // DRP Clock
        .rst			(!(gtx0_rxresetdone_r3 &&gtx0_txresetdone_r2)),     // Reset signal
        .addr		    (8'h82),  		// Address of reading data
        .drp_rdy		(gtx0_drdy_i), // DRP Ready signal
        .drp_en			(gtx0_den_i),   // DRP Enable signal
        .drp_we			(gtx0_dwe_i),   // DRP Write Enable (should be 0 for read)
        .drp_addr		(gtx0_daddr_i), // DRP Address
        .drp_di			(gtx0_di_i),    // DRP Data Input (not used in read)
        .drp_do			(gtx0_drpdo_i), // DRP Data Output (data read)
        .data_out		(gtx_0_data_out),        // Output data
        .data_valid		(gtx_0_data_valid)    // Data valid flag
      );

  DRP DRP_read_1(
        .clk			(drp_clk_in_i), // DRP Clock
        .rst			(!(gtx1_rxresetdone_r3 &&gtx1_txresetdone_r2)),     // Reset signal
        .addr		    (8'h82),  		// Address of reading data
        .drp_rdy		(gtx1_drdy_i), // DRP Ready signal
        .drp_en			(gtx1_den_i),   // DRP Enable signal
        .drp_we			(gtx1_dwe_i),   // DRP Write Enable (should be 0 for read)
        .drp_addr		(gtx1_daddr_i), // DRP Address
        .drp_di			(gtx1_di_i),    // DRP Data Input (not used in read)
        .drp_do			(gtx1_drpdo_i), // DRP Data Output (data read)
        .data_out		(gtx_1_data_out),        // Output data
        .data_valid		(gtx_1_data_valid)    // Data valid flag
      );
  DRP DRP_read_2(
        .clk			(drp_clk_in_i), // DRP Clock
        .rst			(!(gtx2_rxresetdone_r3 &&gtx2_txresetdone_r2)),     // Reset signal
        .addr		    (8'h82),  		// Address of reading data
        .drp_rdy		(gtx2_drdy_i), // DRP Ready signal
        .drp_en			(gtx2_den_i),   // DRP Enable signal
        .drp_we			(gtx2_dwe_i),   // DRP Write Enable (should be 0 for read)
        .drp_addr		(gtx2_daddr_i), // DRP Address
        .drp_di			(gtx2_di_i),    // DRP Data Input (not used in read)
        .drp_do			(gtx2_drpdo_i), // DRP Data Output (data read)
        .data_out		(gtx_2_data_out),        // Output data
        .data_valid		(gtx_2_data_valid)    // Data valid flag
      );
  DRP DRP_read_3(
        .clk			(drp_clk_in_i), // DRP Clock
        .rst			(!(gtx3_rxresetdone_r3 &&gtx3_txresetdone_r2)),     // Reset signal
        .addr		    (8'h82),  		// Address of reading data
        .drp_rdy		(gtx3_drdy_i), // DRP Ready signal
        .drp_en			(gtx3_den_i),   // DRP Enable signal
        .drp_we			(gtx3_dwe_i),   // DRP Write Enable (should be 0 for read)
        .drp_addr		(gtx3_daddr_i), // DRP Address
        .drp_di			(gtx3_di_i),    // DRP Data Input (not used in read)
        .drp_do			(gtx3_drpdo_i), // DRP Data Output (data read)
        .data_out		(gtx_3_data_out),        // Output data
        .data_valid		(gtx_3_data_valid)    // Data valid flag
      );
  always @(posedge gtx_0_data_valid)
  begin
    if (gtx_0_data_out == 1) // Only exact match to 1
      gtx_0_checker_status <= 1'b1;
    else if (gtx_0_data_out >= 2) // Covers 2 and above
      gtx_0_checker_status <= blink;
    else // Covers gtx_0_data_out == 0 or negative values if signed
      gtx_0_checker_status <= 1'b0;
  end

  always @(posedge gtx_1_data_valid)
  begin
    if (gtx_1_data_out == 1)
      gtx_1_checker_status <= 1'b1;
    else if (gtx_1_data_out >= 2)
      gtx_1_checker_status <= blink;
    else
      gtx_1_checker_status <= 1'b0;
  end

  always @(posedge gtx_2_data_valid)
  begin
    if (gtx_2_data_out == 1)
      gtx_2_checker_status <= 1'b1;
    else if (gtx_2_data_out >= 2)
      gtx_2_checker_status <= blink;
    else
      gtx_2_checker_status <= 1'b0;
  end

  always @(posedge gtx_3_data_valid)
  begin
    if (gtx_3_data_out == 1)
      gtx_3_checker_status <= 1'b1;
    else if (gtx_3_data_out >= 2)
      gtx_3_checker_status <= blink;
    else
      gtx_3_checker_status <= 1'b0;
  end

  always @(posedge gtx_0_data_valid)
  begin
    if (gtx_0_data_out >= 1)
      gtx_0_error <= 1'b1;
    else
      gtx_0_error <= 1'b0;
  end

  always @(posedge gtx_1_data_valid)
  begin
    if (gtx_1_data_out >= 1)
      gtx_1_error <= 1'b1;
    else
      gtx_1_error <= 1'b0;
  end

  always @(posedge gtx_2_data_valid)
  begin
    if (gtx_2_data_out >= 1)
      gtx_2_error <= 1'b1;
    else
      gtx_2_error <= 1'b0;
  end

  always @(posedge gtx_3_data_valid)
  begin
    if (gtx_3_data_out >= 1)
      gtx_3_error <= 1'b1;
    else
      gtx_3_error <= 1'b0;
  end

  one_shot button_one_shot_0
           (gtx0_txusrclk2_i,
            reset,
            v_button[0],
            v_button_sync[0]);
  one_shot button_one_shot_1
           (gtx0_txusrclk2_i,
            reset,
            v_button[1],
            v_button_sync[1]);
  one_shot button_one_shot_2
           (gtx0_txusrclk2_i,
            reset,
            v_button[2],
            v_button_sync[2]);
  one_shot button_one_shot_3
           (gtx0_txusrclk2_i,
            reset,
            v_button[3],
            v_button_sync[3]);

  ICON_2p ICON_debug (
            .CONTROL0(CONTROL0), // INOUT BUS [35:0]
            .CONTROL1(CONTROL1) // INOUT BUS [35:0]
          );
  ILA_error ILA_error (
              .CONTROL(CONTROL0), // INOUT BUS [35:0]
              .CLK(tmb_clock0), // IN
              .TRIG0({prbscntreset,gtx1_rxprbserr_i,counter_boot[14:0]})
            );
  VIO_fp VIO_fp (
           .CONTROL(CONTROL1), // INOUT BUS [35:0]
           .ASYNC_IN(v_led), // IN BUS [7:0]
           .ASYNC_OUT(v_button) // OUT BUS [7:0]
         );

endmodule
