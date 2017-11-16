###############################################################################
#   cleanup.tcl
#   Written By: Derek Johnston
#   Last Modified: 11/14/2017
#
#   Delete some files that were automatically generated during
#   script execution.
#
###############################################################################
file delete -force usage_statistics_webtalk.html
file delete -force usage_statistics_webtalk.xml
file delete -force .Xil
file delete -force bitstreams
exit