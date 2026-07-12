//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sun Jul 12 17:51:51 2026
//Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
//Command     : generate_target data_project_bd.bd
//Design      : data_project_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "data_project_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=data_project_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "data_project_bd.hwdef" *) 
module data_project_bd
   (clk,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    rst,
    start);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, CLK_DOMAIN data_project_bd_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN data_project_bd_clk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;
  input start;

  wire [31:0]axi_stream_master_0_axis_TDATA;
  wire [3:0]axi_stream_master_0_axis_TKEEP;
  wire axi_stream_master_0_axis_TLAST;
  wire axi_stream_master_0_axis_TREADY;
  wire axi_stream_master_0_axis_TVALID;
  wire axi_stream_master_0_fifo_rd_en;
  wire clk_0_1;
  wire [31:0]data_generator_0_data_out;
  wire data_generator_0_data_valid;
  wire packet_builder_FSM_0_data_ready;
  wire packet_builder_FSM_0_packet_done;
  wire packet_builder_FSM_0_packet_valid;
  wire [31:0]packet_builder_FSM_0_packet_word_out;
  wire rst_0_1;
  wire start_0_1;
  wire [31:0]sync_fifo_0_dout;
  wire sync_fifo_0_empty;

  assign axi_stream_master_0_axis_TREADY = m_axis_tready;
  assign clk_0_1 = clk;
  assign m_axis_tdata[31:0] = axi_stream_master_0_axis_TDATA;
  assign m_axis_tkeep[3:0] = axi_stream_master_0_axis_TKEEP;
  assign m_axis_tlast = axi_stream_master_0_axis_TLAST;
  assign m_axis_tvalid = axi_stream_master_0_axis_TVALID;
  assign rst_0_1 = rst;
  assign start_0_1 = start;
  data_project_bd_axi_stream_master_0_0 axi_stream_master_0
       (.axis_tdata(axi_stream_master_0_axis_TDATA),
        .axis_tkeep(axi_stream_master_0_axis_TKEEP),
        .axis_tlast(axi_stream_master_0_axis_TLAST),
        .axis_tready(axi_stream_master_0_axis_TREADY),
        .axis_tvalid(axi_stream_master_0_axis_TVALID),
        .clk(clk_0_1),
        .fifo_dout(sync_fifo_0_dout),
        .fifo_empty(sync_fifo_0_empty),
        .fifo_rd_en(axi_stream_master_0_fifo_rd_en),
        .rst(rst_0_1),
        .start(packet_builder_FSM_0_packet_done));
  data_project_bd_data_generator_0_0 data_generator_0
       (.clk(clk_0_1),
        .data_out(data_generator_0_data_out),
        .data_ready(packet_builder_FSM_0_data_ready),
        .data_valid(data_generator_0_data_valid),
        .rst(rst_0_1),
        .start(start_0_1));
  data_project_bd_packet_builder_FSM_0_0 packet_builder_FSM_0
       (.clk(clk_0_1),
        .data_in(data_generator_0_data_out),
        .data_ready(packet_builder_FSM_0_data_ready),
        .data_valid(data_generator_0_data_valid),
        .packet_done(packet_builder_FSM_0_packet_done),
        .packet_valid(packet_builder_FSM_0_packet_valid),
        .packet_word_out(packet_builder_FSM_0_packet_word_out),
        .rst(rst_0_1),
        .start(start_0_1));
  data_project_bd_sync_fifo_0_0 sync_fifo_0
       (.clk(clk_0_1),
        .din(packet_builder_FSM_0_packet_word_out),
        .dout(sync_fifo_0_dout),
        .empty(sync_fifo_0_empty),
        .rd_en(axi_stream_master_0_fifo_rd_en),
        .rst(rst_0_1),
        .wr_en(packet_builder_FSM_0_packet_valid));
endmodule
