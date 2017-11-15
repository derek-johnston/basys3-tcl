###############################################################################
#   program-flash.tcl
#   Written By: Derek Johnston
#   Last Modified: 11/14/2017
#
#   Generate a bitstream from the design source files and upload them 
#   to the Q-SPI Flash Memory on the Basys3 Development Board. 
#
###############################################################################

source ./.tcl/init.tcl
source ./.tcl/read_source_files.tcl
source ./.tcl/synth_design.tcl
source ./.tcl/optimize_design.tcl
source ./.tcl/place_design.tcl
source ./.tcl/route_design.tcl
source ./.tcl/gen_bitstream.tcl
source ./.tcl/upload_flash.tcl
source ./.tcl/cleanup.tcl
