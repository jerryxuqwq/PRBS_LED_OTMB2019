#!/bin/sh
################################################################################
##   ____  ____ 
##  /   /\/   / 
## /___/  \  /    Vendor: Xilinx 
## \   \   \/     Version : 1.12
##  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
##  /   /         Filename : simulate_ncsim.sh
## /___/   /\      
## \   \  /  \ 
##  \___\/\___\ 
##
##
## Script SIMULATE_NCSIM.SH
## Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
##
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

##***************************** Beginning of Script ***************************
        
#Ensure the follwoing
#The library paths for UNISIMS_VER, SIMPRIMS_VER, XILINXCORELIB_VER,
#UNISIM, SIMPRIM, XILINXCORELIB are set correctly in the cds.lib and hdl.var files.
#Variables LMC_HOME and XILINX are set 
#Define the mapping for the work library in cds.lib file. DEFINE work ./work

mkdir work
##MGT Wrapper
ncvlog -work work   ../../../gem_firefly_gtx.v;
ncvlog -work work   ../../../gem_firefly.v;



##Example Design modules
ncvlog -work work  ../../example_design/frame_gen.v;
ncvlog -work work  ../../example_design/frame_check.v;
ncvlog -work work  ../../example_design/gem_firefly_top.v;

ncvlog -work work  ../demo_tb.v;

##Other modules
ncvlog -work work $XILINX/verilog/src/glbl.v;

##Elaborate Design
ncelab -TIMESCALE 1ns/1ps -ACCESS +rw work.DEMO_TB work.glbl

##Run simulation
ncsim work.DEMO_TB -input @"simvision -input wave_ncsim.sv"

