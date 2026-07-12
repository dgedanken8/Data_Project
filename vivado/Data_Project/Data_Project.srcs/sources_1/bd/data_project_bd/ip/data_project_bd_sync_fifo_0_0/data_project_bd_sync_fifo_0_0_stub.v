// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_sync_fifo_0_0/data_project_bd_sync_fifo_0_0_stub.v
// Design      : data_project_bd_sync_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sync_fifo,Vivado 2019.1" *)
module data_project_bd_sync_fifo_0_0(clk, rst, wr_en, rd_en, din, dout, full, empty, count, 
  overflow, underflow)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,wr_en,rd_en,din[31:0],dout[31:0],full,empty,count[4:0],overflow,underflow" */;
  input clk;
  input rst;
  input wr_en;
  input rd_en;
  input [31:0]din;
  output [31:0]dout;
  output full;
  output empty;
  output [4:0]count;
  output overflow;
  output underflow;
endmodule
