###############################################################################
#   read_source_files.tcl
#   Written By: Derek Johnston
#   Last Modified: 11/14/2017
#
#   Import the Verilog and XDC files for the project.
#
###############################################################################
read_verilog    -verbose [ glob D:/vivado/basys3-tcl/source/verilog/*.v ]
read_xdc        -verbose [ glob D:/vivado/basys3-tcl/source/constraints/*.xdc ]