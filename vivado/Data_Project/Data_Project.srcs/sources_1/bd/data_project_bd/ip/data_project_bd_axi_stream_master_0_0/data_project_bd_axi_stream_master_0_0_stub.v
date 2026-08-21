// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jul 21 23:27:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_axi_stream_master_0_0/data_project_bd_axi_stream_master_0_0_stub.v
// Design      : data_project_bd_axi_stream_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_stream_master,Vivado 2019.1" *)
module data_project_bd_axi_stream_master_0_0(clk, rst, start, fifo_dout, fifo_empty, 
  axis_tready, fifo_rd_en, axis_tdata, axis_tvalid, axis_tlast, axis_tkeep, busy, done, 
  debug_state)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,fifo_dout[31:0],fifo_empty,axis_tready,fifo_rd_en,axis_tdata[31:0],axis_tvalid,axis_tlast,axis_tkeep[3:0],busy,done,debug_state[3:0]" */;
  input clk;
  input rst;
  input start;
  input [31:0]fifo_dout;
  input fifo_empty;
  input axis_tready;
  output fifo_rd_en;
  output [31:0]axis_tdata;
  output axis_tvalid;
  output axis_tlast;
  output [3:0]axis_tkeep;
  output busy;
  output done;
  output [3:0]debug_state;
endmodule
