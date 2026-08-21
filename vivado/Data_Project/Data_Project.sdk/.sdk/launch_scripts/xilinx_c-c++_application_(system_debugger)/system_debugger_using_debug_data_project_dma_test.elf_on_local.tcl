connect -url tcp:127.0.0.1:3121
source C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.sdk/data_project_bd_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7DFEA" && level==0} -index 1
fpga -file C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.sdk/data_project_bd_wrapper_hw_platform_0/data_project_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351BE7DFEA"} -index 0
loadhw -hw C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.sdk/data_project_bd_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351BE7DFEA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351BE7DFEA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351BE7DFEA"} -index 0
dow C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.sdk/data_project_dma_test/Debug/data_project_dma_test.elf
configparams force-mem-access 0
bpadd -addr &main
