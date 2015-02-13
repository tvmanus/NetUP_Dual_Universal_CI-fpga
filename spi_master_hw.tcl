# NetUP Universal Dual DVB-CI FPGA firmware
# http://www.netup.tv
#
# Copyright (c) 2014 NetUP Inc, AVB Labs
# License: GPLv3

# TCL File Generated by Component Editor 11.1sp2
# Sun Apr 13 16:51:47 MSD 2014
# DO NOT MODIFY


# +-----------------------------------
# | 
# | spi_master "spi_master" v1.0
# | AVB 2014.04.13.16:51:47
# | 
# | 
# | 
# |    ./spi_master.vhd syn, sim
# |    ./spi_ram_buffer.vhd syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module spi_master
# | 
set_module_property NAME spi_master
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR AVB
set_module_property DISPLAY_NAME spi_master
set_module_property TOP_LEVEL_HDL_FILE spi_master.vhd
set_module_property TOP_LEVEL_HDL_MODULE spi_master_16
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME spi_master_16
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file spi_master.vhd {SYNTHESIS SIMULATION}
add_file spi_ram_buffer.vhd {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0
# | 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressAlignment DYNAMIC
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 isMemoryDevice false
set_interface_property avalon_slave_0 isNonVolatileStorage false
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 printableDevice false
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0

set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 in_data writedata Input 16
add_interface_port avalon_slave_0 wr_en write Input 1
add_interface_port avalon_slave_0 out_data readdata Output 16
add_interface_port avalon_slave_0 wait_req waitrequest Output 1
add_interface_port avalon_slave_0 addr address Input 10
add_interface_port avalon_slave_0 byte_en byteenable Input 2
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset_sink
# | 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT

set_interface_property reset_sink ENABLED true

add_interface_port reset_sink rst reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit_end
# | 
add_interface conduit_end conduit end

set_interface_property conduit_end ENABLED true

add_interface_port conduit_end sclk export Output 1
add_interface_port conduit_end mosi export Output 1
add_interface_port conduit_end miso export Input 1
add_interface_port conduit_end cs_n export Output 1
add_interface_port conduit_end irq export Output 1
# | 
# +-----------------------------------