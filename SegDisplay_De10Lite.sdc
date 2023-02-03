## Generated SDC file "SegDisplay_De10Lite.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Wed Feb 01 19:33:47 2023"

##
## DEVICE  "10M50DAF484C7G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {input_clk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {input_clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {input_clk}] -rise_to [get_clocks {input_clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {input_clk}] -fall_to [get_clocks {input_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {input_clk}] -rise_to [get_clocks {input_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {input_clk}] -fall_to [get_clocks {input_clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[0]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[0]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[1]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[1]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[2]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[2]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[3]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[3]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[4]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[4]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[5]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[5]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[6]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[6]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[7]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[7]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[8]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[8]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_nr[9]}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_nr[9]}]
set_input_delay -add_delay -max -clock [get_clocks {input_clk}]  3.000 [get_ports {input_rst}]
set_input_delay -add_delay -min -clock [get_clocks {input_clk}]  2.000 [get_ports {input_rst}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd0[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd0[7]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd1[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd1[7]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd2[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd2[7]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd3[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd3[7]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd4[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd4[7]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[0]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[0]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[1]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[1]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[2]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[2]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[3]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[3]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[4]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[4]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[5]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[5]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[6]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[6]}]
set_output_delay -add_delay -max -clock [get_clocks {input_clk}]  2.000 [get_ports {out_bcd5[7]}]
set_output_delay -add_delay -min -clock [get_clocks {input_clk}]  1.000 [get_ports {out_bcd5[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

