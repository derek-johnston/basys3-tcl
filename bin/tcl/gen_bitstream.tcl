###############################################################################
#   gen_bitstream.tcl
#   Written By: Derek Johnston
#   Last Modified: 11/14/2017
#
#   Generate both .bit and .bin bitstream files for the FPGA
#
###############################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]

file mkdir bitstreams
write_bitstream -force -bin_file ./bitstreams/bitstream.bit