
###############################################################################
##
## (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
## 
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.

  window new WaveWindow  -name  "Waves for Virtex-6 GTX Wizard Example Design"
  waveform  using  "Waves for Virtex-6 GTX Wizard Example Design"
  
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx0_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx0_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx1_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx1_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx2_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx2_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx3_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx3_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx4_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx4_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx5_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx5_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx6_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx6_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx7_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx7_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx8_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx8_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx9_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx9_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx10_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx10_frame_check.ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gtx11_frame_check
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.begin_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.track_data_r
  waveform  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.data_error_detected_r
  wavefrom  add  -siganls  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.start_of_packet_detected_r
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.RX_DATA
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.gtx11_frame_check.ERROR_COUNT
  waveform  add  -label GTX0_GEM_FIREFLY -comment GTX0_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx0_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX1_GEM_FIREFLY -comment GTX1_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx1_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX2_GEM_FIREFLY -comment GTX2_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx2_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX3_GEM_FIREFLY -comment GTX3_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx3_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX4_GEM_FIREFLY -comment GTX4_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx4_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX5_GEM_FIREFLY -comment GTX5_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx5_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX6_GEM_FIREFLY -comment GTX6_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx6_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX7_GEM_FIREFLY -comment GTX7_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx7_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX8_GEM_FIREFLY -comment GTX8_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx8_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX9_GEM_FIREFLY -comment GTX9_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx9_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX10_GEM_FIREFLY -comment GTX10_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx10_Gem_firefly_i.TXPRBSFORCEERR_IN

  waveform  add  -label GTX11_GEM_FIREFLY -comment GTX11_GEM_FIREFLY
  waveform  add  -label Loopback_and_Powerdown_Ports  -comment  Loopback_and_Powerdown_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.LOOPBACK_IN
  waveform  add  -label Receive_Ports_-_Comma_Detection_and_Alignment  -comment  Receive_Ports_-_Comma_Detection_and_Alignment
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXCOMMADET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXSLIDE_IN
  waveform  add  -label Receive_Ports_-_PRBS_Detection  -comment  Receive_Ports_-_PRBS_Detection
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.PRBSCNTRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXPRBSERR_OUT
  waveform  add  -label Receive_Ports_-_RX_Data_Path_interface  -comment  Receive_Ports_-_RX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXDATA_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR  -comment  Receive_Ports_-_RX_Driver,OOB_signalling,Coupling_and_Eq.,CDR
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXEQMIX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXN_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXP_IN
  waveform  add  -label Receive_Ports_-_RX_PLL_Ports  -comment  Receive_Ports_-_RX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.GTXRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.MGTREFCLKRX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.PLLRXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.RXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_Data_Path_interface  -comment  Transmit_Ports_-_TX_Data_Path_interface
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXDATA_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXOUTCLK_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXUSRCLK2_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signaling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signaling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXDIFFCTRL_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXN_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXP_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXPOSTEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_Driver_and_OOB_signalling  -comment  Transmit_Ports_-_TX_Driver_and_OOB_signalling
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXPREEMPHASIS_IN
  waveform  add  -label Transmit_Ports_-_TX_PLL_Ports  -comment  Transmit_Ports_-_TX_PLL_Ports
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.GTXTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.MGTREFCLKTX_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.PLLTXRESET_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXPLLLKDET_OUT
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXRESETDONE_OUT
  waveform  add  -label Transmit_Ports_-_TX_PRBS_Generator  -comment  Transmit_Ports_-_TX_PRBS_Generator
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXENPRBSTST_IN
  waveform  add  -signals  DEMO_TB.Gem_firefly_top_i.Gem_firefly_i.gtx11_Gem_firefly_i.TXPRBSFORCEERR_IN

  console submit -using simulator -wait no "run 61 us"

