################################################################################
##   ____  ____
##  /   /\/   /
## /___/  \  /    Vendor: Xilinx
## \   \   \/     Version : 1.12
##  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
##  /   /         Filename : planAhead_ise.tcl 
## /___/   /\     
## \   \  /  \
##  \___\/\___\
##
##
## planAhead_ise.tcl script 
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
##
##
################################################################################

## Environment Setup
set projDir  [file dirname [info script]]
set projName bi_firefly
set topName  bi_firefly_top
set device   xc6vlx195t-ff1156-1

## if the project directory exists, delete it and create a new clean one
if {[file exists $projDir/$projName]} {
file delete -force $projDir/$projName
}

## Create Project
create_project $projName $projDir/$projName -part $device

## Project Option
set_property design_mode RTL [get_filesets sources_1]

## Source Files
add_files -norecurse ../example_design/frame_gen.v
add_files -norecurse ../example_design/frame_check.v
add_files -norecurse ../../bi_firefly_gtx.v
add_files -norecurse ../../bi_firefly.v
add_files -norecurse ../example_design/bi_firefly_top.v

## UCF Files
import_files -fileset [get_filesets constrs_1] -force -norecurse ../example_design/bi_firefly_top.ucf
import_files -fileset [get_filesets constrs_1] -force -norecurse ../example_design/gtx_attributes.ucf

## NGC Files
import_files -fileset [get_filesets sources_1] -force -norecurse ../implement/data_vio.ngc 
import_files -fileset [get_filesets sources_1] -force -norecurse ../implement/ila.ngc 
import_files -fileset [get_filesets sources_1] -force -norecurse ../implement/icon.ngc
 
 

## Set the Top module
set_property top $topName [get_property srcset [current_run]]

## Run Synthesis
launch_runs -runs synth_1
wait_on_run synth_1

## Run Implementation
set_property strategy {ISE Defaults} [get_runs impl_1]


#config_run -run impl_1 -program par -option -ol -value high

launch_runs -runs impl_1
wait_on_run impl_1

## Run BitGen
set_property add_step Bitgen [get_runs impl_1]
launch_runs -runs impl_1
wait_on_run impl_1

exit
## End
