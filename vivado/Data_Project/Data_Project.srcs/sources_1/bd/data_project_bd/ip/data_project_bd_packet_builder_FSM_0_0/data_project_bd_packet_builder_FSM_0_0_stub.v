// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_packet_builder_FSM_0_0/data_project_bd_packet_builder_FSM_0_0_stub.v
// Design      : data_project_bd_packet_builder_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "packet_builder_FSM,Vivado 2019.1" *)
module data_project_bd_packet_builder_FSM_0_0(clk, rst, start, data_valid, data_in, 
  packet_word_out, packet_valid, packet_done, data_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,data_valid,data_in[31:0],packet_word_out[31:0],packet_valid,packet_done,data_ready" */;
  input clk;
  input rst;
  input start;
  input data_valid;
  input [31:0]data_in;
  output [31:0]packet_word_out;
  output packet_valid;
  output packet_done;
  output data_ready;
endmodule
