////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 1.12
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard  
//  /   /         Filename : gem_firefly.v
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Instantiation Template
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
// 
// 
// (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


// Use the templates in this file to add the components generated by the wizard to your
// design. 

   

    //--------------------------- The GTX Wrapper -----------------------------


    Gem_firefly #
    (
        .WRAPPER_SIM_GTXRESET_SPEEDUP   (0)      // Set this to 1 for simulation
    )
    Gem_firefly_i
    (
        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX0  (X0Y0)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX0_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX0_RXCOMMADET_OUT            (),
        .GTX0_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX0_PRBSCNTRESET_IN           (),
        .GTX0_RXENPRBSTST_IN            (),
        .GTX0_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX0_RXDATA_OUT                (),
        .GTX0_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX0_RXEQMIX_IN                (),
        .GTX0_RXN_IN                    (),
        .GTX0_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX0_GTXRXRESET_IN             (),
        .GTX0_MGTREFCLKRX_IN            (),
        .GTX0_PLLRXRESET_IN             (),
        .GTX0_RXPLLLKDET_OUT            (),
        .GTX0_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX0_TXDATA_IN                 (),
        .GTX0_TXOUTCLK_OUT              (),
        .GTX0_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX0_TXDIFFCTRL_IN             (),
        .GTX0_TXN_OUT                   (),
        .GTX0_TXP_OUT                   (),
        .GTX0_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX0_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX0_GTXTXRESET_IN             (),
        .GTX0_MGTREFCLKTX_IN            (),
        .GTX0_PLLTXRESET_IN             (),
        .GTX0_TXPLLLKDET_OUT            (),
        .GTX0_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX0_TXENPRBSTST_IN            (),
        .GTX0_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX1  (X0Y1)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX1_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX1_RXCOMMADET_OUT            (),
        .GTX1_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX1_PRBSCNTRESET_IN           (),
        .GTX1_RXENPRBSTST_IN            (),
        .GTX1_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX1_RXDATA_OUT                (),
        .GTX1_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX1_RXEQMIX_IN                (),
        .GTX1_RXN_IN                    (),
        .GTX1_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX1_GTXRXRESET_IN             (),
        .GTX1_MGTREFCLKRX_IN            (),
        .GTX1_PLLRXRESET_IN             (),
        .GTX1_RXPLLLKDET_OUT            (),
        .GTX1_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX1_TXDATA_IN                 (),
        .GTX1_TXOUTCLK_OUT              (),
        .GTX1_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX1_TXDIFFCTRL_IN             (),
        .GTX1_TXN_OUT                   (),
        .GTX1_TXP_OUT                   (),
        .GTX1_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX1_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX1_GTXTXRESET_IN             (),
        .GTX1_MGTREFCLKTX_IN            (),
        .GTX1_PLLTXRESET_IN             (),
        .GTX1_TXPLLLKDET_OUT            (),
        .GTX1_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX1_TXENPRBSTST_IN            (),
        .GTX1_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX2  (X0Y2)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX2_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX2_RXCOMMADET_OUT            (),
        .GTX2_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX2_PRBSCNTRESET_IN           (),
        .GTX2_RXENPRBSTST_IN            (),
        .GTX2_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX2_RXDATA_OUT                (),
        .GTX2_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX2_RXEQMIX_IN                (),
        .GTX2_RXN_IN                    (),
        .GTX2_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX2_GTXRXRESET_IN             (),
        .GTX2_MGTREFCLKRX_IN            (),
        .GTX2_PLLRXRESET_IN             (),
        .GTX2_RXPLLLKDET_OUT            (),
        .GTX2_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX2_TXDATA_IN                 (),
        .GTX2_TXOUTCLK_OUT              (),
        .GTX2_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX2_TXDIFFCTRL_IN             (),
        .GTX2_TXN_OUT                   (),
        .GTX2_TXP_OUT                   (),
        .GTX2_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX2_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX2_GTXTXRESET_IN             (),
        .GTX2_MGTREFCLKTX_IN            (),
        .GTX2_PLLTXRESET_IN             (),
        .GTX2_TXPLLLKDET_OUT            (),
        .GTX2_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX2_TXENPRBSTST_IN            (),
        .GTX2_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX3  (X0Y3)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX3_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX3_RXCOMMADET_OUT            (),
        .GTX3_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX3_PRBSCNTRESET_IN           (),
        .GTX3_RXENPRBSTST_IN            (),
        .GTX3_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX3_RXDATA_OUT                (),
        .GTX3_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX3_RXEQMIX_IN                (),
        .GTX3_RXN_IN                    (),
        .GTX3_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX3_GTXRXRESET_IN             (),
        .GTX3_MGTREFCLKRX_IN            (),
        .GTX3_PLLRXRESET_IN             (),
        .GTX3_RXPLLLKDET_OUT            (),
        .GTX3_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX3_TXDATA_IN                 (),
        .GTX3_TXOUTCLK_OUT              (),
        .GTX3_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX3_TXDIFFCTRL_IN             (),
        .GTX3_TXN_OUT                   (),
        .GTX3_TXP_OUT                   (),
        .GTX3_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX3_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX3_GTXTXRESET_IN             (),
        .GTX3_MGTREFCLKTX_IN            (),
        .GTX3_PLLTXRESET_IN             (),
        .GTX3_TXPLLLKDET_OUT            (),
        .GTX3_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX3_TXENPRBSTST_IN            (),
        .GTX3_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX4  (X0Y4)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX4_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX4_RXCOMMADET_OUT            (),
        .GTX4_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX4_PRBSCNTRESET_IN           (),
        .GTX4_RXENPRBSTST_IN            (),
        .GTX4_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX4_RXDATA_OUT                (),
        .GTX4_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX4_RXEQMIX_IN                (),
        .GTX4_RXN_IN                    (),
        .GTX4_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX4_GTXRXRESET_IN             (),
        .GTX4_MGTREFCLKRX_IN            (),
        .GTX4_PLLRXRESET_IN             (),
        .GTX4_RXPLLLKDET_OUT            (),
        .GTX4_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX4_TXDATA_IN                 (),
        .GTX4_TXOUTCLK_OUT              (),
        .GTX4_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX4_TXDIFFCTRL_IN             (),
        .GTX4_TXN_OUT                   (),
        .GTX4_TXP_OUT                   (),
        .GTX4_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX4_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX4_GTXTXRESET_IN             (),
        .GTX4_MGTREFCLKTX_IN            (),
        .GTX4_PLLTXRESET_IN             (),
        .GTX4_TXPLLLKDET_OUT            (),
        .GTX4_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX4_TXENPRBSTST_IN            (),
        .GTX4_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX5  (X0Y5)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX5_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX5_RXCOMMADET_OUT            (),
        .GTX5_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX5_PRBSCNTRESET_IN           (),
        .GTX5_RXENPRBSTST_IN            (),
        .GTX5_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX5_RXDATA_OUT                (),
        .GTX5_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX5_RXEQMIX_IN                (),
        .GTX5_RXN_IN                    (),
        .GTX5_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX5_GTXRXRESET_IN             (),
        .GTX5_MGTREFCLKRX_IN            (),
        .GTX5_PLLRXRESET_IN             (),
        .GTX5_RXPLLLKDET_OUT            (),
        .GTX5_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX5_TXDATA_IN                 (),
        .GTX5_TXOUTCLK_OUT              (),
        .GTX5_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX5_TXDIFFCTRL_IN             (),
        .GTX5_TXN_OUT                   (),
        .GTX5_TXP_OUT                   (),
        .GTX5_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX5_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX5_GTXTXRESET_IN             (),
        .GTX5_MGTREFCLKTX_IN            (),
        .GTX5_PLLTXRESET_IN             (),
        .GTX5_TXPLLLKDET_OUT            (),
        .GTX5_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX5_TXENPRBSTST_IN            (),
        .GTX5_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX6  (X0Y6)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX6_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX6_RXCOMMADET_OUT            (),
        .GTX6_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX6_PRBSCNTRESET_IN           (),
        .GTX6_RXENPRBSTST_IN            (),
        .GTX6_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX6_RXDATA_OUT                (),
        .GTX6_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX6_RXEQMIX_IN                (),
        .GTX6_RXN_IN                    (),
        .GTX6_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX6_GTXRXRESET_IN             (),
        .GTX6_MGTREFCLKRX_IN            (),
        .GTX6_PLLRXRESET_IN             (),
        .GTX6_RXPLLLKDET_OUT            (),
        .GTX6_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX6_TXDATA_IN                 (),
        .GTX6_TXOUTCLK_OUT              (),
        .GTX6_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX6_TXDIFFCTRL_IN             (),
        .GTX6_TXN_OUT                   (),
        .GTX6_TXP_OUT                   (),
        .GTX6_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX6_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX6_GTXTXRESET_IN             (),
        .GTX6_MGTREFCLKTX_IN            (),
        .GTX6_PLLTXRESET_IN             (),
        .GTX6_TXPLLLKDET_OUT            (),
        .GTX6_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX6_TXENPRBSTST_IN            (),
        .GTX6_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX7  (X0Y7)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX7_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX7_RXCOMMADET_OUT            (),
        .GTX7_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX7_PRBSCNTRESET_IN           (),
        .GTX7_RXENPRBSTST_IN            (),
        .GTX7_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX7_RXDATA_OUT                (),
        .GTX7_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX7_RXEQMIX_IN                (),
        .GTX7_RXN_IN                    (),
        .GTX7_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX7_GTXRXRESET_IN             (),
        .GTX7_MGTREFCLKRX_IN            (),
        .GTX7_PLLRXRESET_IN             (),
        .GTX7_RXPLLLKDET_OUT            (),
        .GTX7_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX7_TXDATA_IN                 (),
        .GTX7_TXOUTCLK_OUT              (),
        .GTX7_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX7_TXDIFFCTRL_IN             (),
        .GTX7_TXN_OUT                   (),
        .GTX7_TXP_OUT                   (),
        .GTX7_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX7_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX7_GTXTXRESET_IN             (),
        .GTX7_MGTREFCLKTX_IN            (),
        .GTX7_PLLTXRESET_IN             (),
        .GTX7_TXPLLLKDET_OUT            (),
        .GTX7_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX7_TXENPRBSTST_IN            (),
        .GTX7_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX8  (X0Y8)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX8_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX8_RXCOMMADET_OUT            (),
        .GTX8_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX8_PRBSCNTRESET_IN           (),
        .GTX8_RXENPRBSTST_IN            (),
        .GTX8_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX8_RXDATA_OUT                (),
        .GTX8_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX8_RXEQMIX_IN                (),
        .GTX8_RXN_IN                    (),
        .GTX8_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX8_GTXRXRESET_IN             (),
        .GTX8_MGTREFCLKRX_IN            (),
        .GTX8_PLLRXRESET_IN             (),
        .GTX8_RXPLLLKDET_OUT            (),
        .GTX8_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX8_TXDATA_IN                 (),
        .GTX8_TXOUTCLK_OUT              (),
        .GTX8_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX8_TXDIFFCTRL_IN             (),
        .GTX8_TXN_OUT                   (),
        .GTX8_TXP_OUT                   (),
        .GTX8_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX8_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX8_GTXTXRESET_IN             (),
        .GTX8_MGTREFCLKTX_IN            (),
        .GTX8_PLLTXRESET_IN             (),
        .GTX8_TXPLLLKDET_OUT            (),
        .GTX8_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX8_TXENPRBSTST_IN            (),
        .GTX8_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX9  (X0Y9)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX9_LOOPBACK_IN               (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX9_RXCOMMADET_OUT            (),
        .GTX9_RXSLIDE_IN                (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX9_PRBSCNTRESET_IN           (),
        .GTX9_RXENPRBSTST_IN            (),
        .GTX9_RXPRBSERR_OUT             (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX9_RXDATA_OUT                (),
        .GTX9_RXUSRCLK2_IN              (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX9_RXEQMIX_IN                (),
        .GTX9_RXN_IN                    (),
        .GTX9_RXP_IN                    (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX9_GTXRXRESET_IN             (),
        .GTX9_MGTREFCLKRX_IN            (),
        .GTX9_PLLRXRESET_IN             (),
        .GTX9_RXPLLLKDET_OUT            (),
        .GTX9_RXRESETDONE_OUT           (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX9_TXDATA_IN                 (),
        .GTX9_TXOUTCLK_OUT              (),
        .GTX9_TXUSRCLK2_IN              (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX9_TXDIFFCTRL_IN             (),
        .GTX9_TXN_OUT                   (),
        .GTX9_TXP_OUT                   (),
        .GTX9_TXPOSTEMPHASIS_IN         (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX9_TXPREEMPHASIS_IN          (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX9_GTXTXRESET_IN             (),
        .GTX9_MGTREFCLKTX_IN            (),
        .GTX9_PLLTXRESET_IN             (),
        .GTX9_TXPLLLKDET_OUT            (),
        .GTX9_TXRESETDONE_OUT           (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX9_TXENPRBSTST_IN            (),
        .GTX9_TXPRBSFORCEERR_IN         (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX10  (X0Y10)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX10_LOOPBACK_IN              (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX10_RXCOMMADET_OUT           (),
        .GTX10_RXSLIDE_IN               (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX10_PRBSCNTRESET_IN          (),
        .GTX10_RXENPRBSTST_IN           (),
        .GTX10_RXPRBSERR_OUT            (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX10_RXDATA_OUT               (),
        .GTX10_RXUSRCLK2_IN             (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX10_RXEQMIX_IN               (),
        .GTX10_RXN_IN                   (),
        .GTX10_RXP_IN                   (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX10_GTXRXRESET_IN            (),
        .GTX10_MGTREFCLKRX_IN           (),
        .GTX10_PLLRXRESET_IN            (),
        .GTX10_RXPLLLKDET_OUT           (),
        .GTX10_RXRESETDONE_OUT          (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX10_TXDATA_IN                (),
        .GTX10_TXOUTCLK_OUT             (),
        .GTX10_TXUSRCLK2_IN             (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX10_TXDIFFCTRL_IN            (),
        .GTX10_TXN_OUT                  (),
        .GTX10_TXP_OUT                  (),
        .GTX10_TXPOSTEMPHASIS_IN        (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX10_TXPREEMPHASIS_IN         (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX10_GTXTXRESET_IN            (),
        .GTX10_MGTREFCLKTX_IN           (),
        .GTX10_PLLTXRESET_IN            (),
        .GTX10_TXPLLLKDET_OUT           (),
        .GTX10_TXRESETDONE_OUT          (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX10_TXENPRBSTST_IN           (),
        .GTX10_TXPRBSFORCEERR_IN        (),


        //_____________________________________________________________________
        //_____________________________________________________________________
        //GTX11  (X0Y11)

        //---------------------- Loopback and Powerdown Ports ----------------------
        .GTX11_LOOPBACK_IN              (),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .GTX11_RXCOMMADET_OUT           (),
        .GTX11_RXSLIDE_IN               (),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .GTX11_PRBSCNTRESET_IN          (),
        .GTX11_RXENPRBSTST_IN           (),
        .GTX11_RXPRBSERR_OUT            (),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTX11_RXDATA_OUT               (),
        .GTX11_RXUSRCLK2_IN             (),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .GTX11_RXEQMIX_IN               (),
        .GTX11_RXN_IN                   (),
        .GTX11_RXP_IN                   (),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GTX11_GTXRXRESET_IN            (),
        .GTX11_MGTREFCLKRX_IN           (),
        .GTX11_PLLRXRESET_IN            (),
        .GTX11_RXPLLLKDET_OUT           (),
        .GTX11_RXRESETDONE_OUT          (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTX11_TXDATA_IN                (),
        .GTX11_TXOUTCLK_OUT             (),
        .GTX11_TXUSRCLK2_IN             (),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTX11_TXDIFFCTRL_IN            (),
        .GTX11_TXN_OUT                  (),
        .GTX11_TXP_OUT                  (),
        .GTX11_TXPOSTEMPHASIS_IN        (),
        //------------- Transmit Ports - TX Driver and OOB signalling --------------
        .GTX11_TXPREEMPHASIS_IN         (),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTX11_GTXTXRESET_IN            (),
        .GTX11_MGTREFCLKTX_IN           (),
        .GTX11_PLLTXRESET_IN            (),
        .GTX11_TXPLLLKDET_OUT           (),
        .GTX11_TXRESETDONE_OUT          (),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .GTX11_TXENPRBSTST_IN           (),
        .GTX11_TXPRBSFORCEERR_IN        ()


    );
    



    //---------------------Dedicated GTX Reference Clock Inputs ---------------
    // Each dedicated refclk you are using in your design will need its own IBUFDS_GTXE1 instance
    
    IBUFDS_GTXE1 q1_clk1_refclk_ibufds_i
    (
        .O                              (),
        .ODIV2                          (),
        .CEB                            (),
        .I                              (),  // Connect to package pin AB6
        .IB                             ()  // Connect to package pin AB5
    );






