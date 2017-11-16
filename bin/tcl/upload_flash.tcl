###############################################################################
#   upload_flash.tcl
#   Written By: Derek Johnston
#   Last Modified: 11/14/2017
#
#   Upload the .bin bitstream file to the Q-SPI Flash Memory on the Basys3. 
#
###############################################################################
open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_target]
open_hw_target
set my_mem_device [lindex [get_cfgmem_parts { s25fl032p-spi-x1_x2_x4 }] 0]
set programming_files { ./bitstreams/bitstream.bin }
set my_hw_cfgmem [create_hw_cfgmem -hw_device [lindex [get_hw_devices] 0] -mem_dev $my_mem_device]
set_property PROGRAM.ADDRESS_RANGE {use_file} $my_hw_cfgmem
set_property PROGRAM.FILES $programming_files $my_hw_cfgmem
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} $my_hw_cfgmem
program_hw_devices [lindex [get_hw_devices] 0]
set_property PROGRAM.BLANK_CHECK 0 $my_hw_cfgmem
set_property PROGRAM.ERASE 1 $my_hw_cfgmem
set_property PROGRAM.CFG_PROGRAM 1 $my_hw_cfgmem
set_property PROGRAM.VERIFY 1 $my_hw_cfgmem
program_hw_cfgmem -hw_cfgmem $my_hw_cfgmem
disconnect_hw_server
close_hw