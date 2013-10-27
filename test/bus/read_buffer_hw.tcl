# TCL File Generated by Component Editor 13.0sp1
# Sun Oct 27 14:13:47 EDT 2013
# DO NOT MODIFY


# 
# read_buffer "read_buffer" v1.0
#  2013.10.27.14:13:47
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module read_buffer
# 
set_module_property DESCRIPTION ""
set_module_property NAME read_buffer
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME read_buffer
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mem_read_buffer_avalon_interface
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file mem_read_buffer.v VERILOG PATH mem_read_buffer.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter DATAWIDTH INTEGER 32
set_parameter_property DATAWIDTH DEFAULT_VALUE 32
set_parameter_property DATAWIDTH DISPLAY_NAME DATAWIDTH
set_parameter_property DATAWIDTH TYPE INTEGER
set_parameter_property DATAWIDTH UNITS None
set_parameter_property DATAWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATAWIDTH HDL_PARAMETER true
add_parameter BYTEENABLEWIDTH INTEGER 4
set_parameter_property BYTEENABLEWIDTH DEFAULT_VALUE 4
set_parameter_property BYTEENABLEWIDTH DISPLAY_NAME BYTEENABLEWIDTH
set_parameter_property BYTEENABLEWIDTH TYPE INTEGER
set_parameter_property BYTEENABLEWIDTH UNITS None
set_parameter_property BYTEENABLEWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BYTEENABLEWIDTH HDL_PARAMETER true
add_parameter ADDRESSWIDTH INTEGER 30
set_parameter_property ADDRESSWIDTH DEFAULT_VALUE 30
set_parameter_property ADDRESSWIDTH DISPLAY_NAME ADDRESSWIDTH
set_parameter_property ADDRESSWIDTH TYPE INTEGER
set_parameter_property ADDRESSWIDTH UNITS None
set_parameter_property ADDRESSWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ADDRESSWIDTH HDL_PARAMETER true
add_parameter FIFODEPTH INTEGER 32
set_parameter_property FIFODEPTH DEFAULT_VALUE 32
set_parameter_property FIFODEPTH DISPLAY_NAME FIFODEPTH
set_parameter_property FIFODEPTH TYPE INTEGER
set_parameter_property FIFODEPTH UNITS None
set_parameter_property FIFODEPTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FIFODEPTH HDL_PARAMETER true
add_parameter FIFODEPTH_LOG2 INTEGER 5
set_parameter_property FIFODEPTH_LOG2 DEFAULT_VALUE 5
set_parameter_property FIFODEPTH_LOG2 DISPLAY_NAME FIFODEPTH_LOG2
set_parameter_property FIFODEPTH_LOG2 TYPE INTEGER
set_parameter_property FIFODEPTH_LOG2 UNITS None
set_parameter_property FIFODEPTH_LOG2 ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FIFODEPTH_LOG2 HDL_PARAMETER true
add_parameter FIFOUSEMEMORY INTEGER 1
set_parameter_property FIFOUSEMEMORY DEFAULT_VALUE 1
set_parameter_property FIFOUSEMEMORY DISPLAY_NAME FIFOUSEMEMORY
set_parameter_property FIFOUSEMEMORY TYPE INTEGER
set_parameter_property FIFOUSEMEMORY UNITS None
set_parameter_property FIFOUSEMEMORY ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FIFOUSEMEMORY HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset reset Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_sink
set_interface_property conduit_end associatedReset reset_sink
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end control_read_base export Input 30
add_interface_port conduit_end control_read_length export Input 30
add_interface_port conduit_end control_go export Input 1
add_interface_port conduit_end control_done export Output 1
add_interface_port conduit_end control_early_done export Output 1
add_interface_port conduit_end user_read_buffer export Input 1
add_interface_port conduit_end user_buffer_data export Input 32
add_interface_port conduit_end user_data_available export Output 1


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock clock_sink
set_interface_property avalon_master associatedReset reset_sink
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master master_address address Output 30
add_interface_port avalon_master master_read read Output 1
add_interface_port avalon_master master_byteenable byteenable Output 4
add_interface_port avalon_master master_readdata readdata Input 32
add_interface_port avalon_master master_readdatavalid readdatavalid Input 1
add_interface_port avalon_master master_waitrequest waitrequest Input 1

