// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_axi_stream_master_0_0/data_project_bd_axi_stream_master_0_0_sim_netlist.v
// Design      : data_project_bd_axi_stream_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_project_bd_axi_stream_master_0_0,axi_stream_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_stream_master,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module data_project_bd_axi_stream_master_0_0
   (clk,
    rst,
    start,
    fifo_dout,
    fifo_empty,
    axis_tready,
    fifo_rd_en,
    axis_tdata,
    axis_tvalid,
    axis_tlast,
    axis_tkeep,
    busy,
    done,
    debug_state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [31:0]fifo_dout;
  input fifo_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TREADY" *) input axis_tready;
  output fifo_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TDATA" *) output [31:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TVALID" *) output axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TLAST" *) output axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]axis_tkeep;
  output busy;
  output done;
  output [3:0]debug_state;

  wire \<const0> ;
  wire [31:0]axis_tdata;
  wire [2:2]\^axis_tkeep ;
  wire axis_tlast;
  wire axis_tready;
  wire axis_tvalid;
  wire busy;
  wire clk;
  wire [1:0]\^debug_state ;
  wire done;
  wire [31:0]fifo_dout;
  wire fifo_empty;
  wire fifo_rd_en;
  wire rst;
  wire start;

  assign axis_tkeep[3] = \^axis_tkeep [2];
  assign axis_tkeep[2] = \^axis_tkeep [2];
  assign axis_tkeep[1] = \^axis_tkeep [2];
  assign axis_tkeep[0] = \^axis_tkeep [2];
  assign debug_state[3] = \<const0> ;
  assign debug_state[2] = \<const0> ;
  assign debug_state[1:0] = \^debug_state [1:0];
  GND GND
       (.G(\<const0> ));
  data_project_bd_axi_stream_master_0_0_axi_stream_master inst
       (.axis_tdata(axis_tdata),
        .axis_tkeep(\^axis_tkeep ),
        .axis_tlast(axis_tlast),
        .axis_tready(axis_tready),
        .axis_tvalid(axis_tvalid),
        .busy(busy),
        .clk(clk),
        .debug_state(\^debug_state ),
        .done(done),
        .fifo_dout(fifo_dout),
        .fifo_empty(fifo_empty),
        .fifo_rd_en(fifo_rd_en),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "axi_stream_master" *) 
module data_project_bd_axi_stream_master_0_0_axi_stream_master
   (axis_tvalid,
    fifo_rd_en,
    axis_tdata,
    axis_tlast,
    axis_tkeep,
    busy,
    done,
    debug_state,
    rst,
    clk,
    axis_tready,
    fifo_dout,
    fifo_empty,
    start);
  output axis_tvalid;
  output fifo_rd_en;
  output [31:0]axis_tdata;
  output axis_tlast;
  output [0:0]axis_tkeep;
  output busy;
  output done;
  output [1:0]debug_state;
  input rst;
  input clk;
  input axis_tready;
  input [31:0]fifo_dout;
  input fifo_empty;
  input start;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [31:0]axis_tdata;
  wire \axis_tdata[31]_i_1_n_0 ;
  wire [31:0]axis_tdata_1;
  wire [0:0]axis_tkeep;
  wire axis_tlast;
  wire axis_tlast_i_1_n_0;
  wire axis_tlast_i_2_n_0;
  wire axis_tready;
  wire axis_tvalid;
  wire axis_tvalid_i_1_n_0;
  wire busy;
  wire busy_i_1_n_0;
  wire clk;
  wire [31:0]data_reg;
  wire data_reg_0;
  wire [1:0]debug_state;
  wire done;
  wire [31:0]fifo_dout;
  wire fifo_empty;
  wire fifo_rd_en;
  wire fifo_rd_en_i_1_n_0;
  wire fifo_rd_en_i_2_n_0;
  wire [1:0]next_state;
  wire rst;
  wire start;
  wire [1:0]state;
  wire word_count;
  wire \word_count[0]_i_1_n_0 ;
  wire \word_count[1]_i_1_n_0 ;
  wire \word_count[2]_i_1_n_0 ;
  wire \word_count[3]_i_2_n_0 ;
  wire \word_count_reg_n_0_[0] ;
  wire \word_count_reg_n_0_[1] ;
  wire \word_count_reg_n_0_[2] ;
  wire \word_count_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'hFFB0)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(fifo_empty),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(axis_tvalid),
        .I1(axis_tready),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(axis_tvalid),
        .I1(axis_tlast_i_2_n_0),
        .I2(axis_tready),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rd_en_i_1_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[0]_i_1 
       (.I0(fifo_dout[0]),
        .I1(axis_tvalid),
        .I2(data_reg[0]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[10]_i_1 
       (.I0(fifo_dout[10]),
        .I1(axis_tvalid),
        .I2(data_reg[10]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[10]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[11]_i_1 
       (.I0(fifo_dout[11]),
        .I1(axis_tvalid),
        .I2(data_reg[11]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[11]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[12]_i_1 
       (.I0(fifo_dout[12]),
        .I1(axis_tvalid),
        .I2(data_reg[12]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[12]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[13]_i_1 
       (.I0(fifo_dout[13]),
        .I1(axis_tvalid),
        .I2(data_reg[13]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[13]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[14]_i_1 
       (.I0(fifo_dout[14]),
        .I1(axis_tvalid),
        .I2(data_reg[14]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[14]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[15]_i_1 
       (.I0(fifo_dout[15]),
        .I1(axis_tvalid),
        .I2(data_reg[15]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[15]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[16]_i_1 
       (.I0(fifo_dout[16]),
        .I1(axis_tvalid),
        .I2(data_reg[16]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[16]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[17]_i_1 
       (.I0(fifo_dout[17]),
        .I1(axis_tvalid),
        .I2(data_reg[17]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[17]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[18]_i_1 
       (.I0(fifo_dout[18]),
        .I1(axis_tvalid),
        .I2(data_reg[18]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[18]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[19]_i_1 
       (.I0(fifo_dout[19]),
        .I1(axis_tvalid),
        .I2(data_reg[19]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[19]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[1]_i_1 
       (.I0(fifo_dout[1]),
        .I1(axis_tvalid),
        .I2(data_reg[1]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[20]_i_1 
       (.I0(fifo_dout[20]),
        .I1(axis_tvalid),
        .I2(data_reg[20]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[20]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[21]_i_1 
       (.I0(fifo_dout[21]),
        .I1(axis_tvalid),
        .I2(data_reg[21]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[21]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[22]_i_1 
       (.I0(fifo_dout[22]),
        .I1(axis_tvalid),
        .I2(data_reg[22]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[22]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[23]_i_1 
       (.I0(fifo_dout[23]),
        .I1(axis_tvalid),
        .I2(data_reg[23]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[23]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[24]_i_1 
       (.I0(fifo_dout[24]),
        .I1(axis_tvalid),
        .I2(data_reg[24]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[24]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[25]_i_1 
       (.I0(fifo_dout[25]),
        .I1(axis_tvalid),
        .I2(data_reg[25]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[25]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[26]_i_1 
       (.I0(fifo_dout[26]),
        .I1(axis_tvalid),
        .I2(data_reg[26]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[26]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[27]_i_1 
       (.I0(fifo_dout[27]),
        .I1(axis_tvalid),
        .I2(data_reg[27]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[27]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[28]_i_1 
       (.I0(fifo_dout[28]),
        .I1(axis_tvalid),
        .I2(data_reg[28]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[28]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[29]_i_1 
       (.I0(fifo_dout[29]),
        .I1(axis_tvalid),
        .I2(data_reg[29]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[29]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[2]_i_1 
       (.I0(fifo_dout[2]),
        .I1(axis_tvalid),
        .I2(data_reg[2]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[30]_i_1 
       (.I0(fifo_dout[30]),
        .I1(axis_tvalid),
        .I2(data_reg[30]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[30]));
  LUT3 #(
    .INIT(8'hFE)) 
    \axis_tdata[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[31]_i_2 
       (.I0(fifo_dout[31]),
        .I1(axis_tvalid),
        .I2(data_reg[31]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[31]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[3]_i_1 
       (.I0(fifo_dout[3]),
        .I1(axis_tvalid),
        .I2(data_reg[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[3]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[4]_i_1 
       (.I0(fifo_dout[4]),
        .I1(axis_tvalid),
        .I2(data_reg[4]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[4]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[5]_i_1 
       (.I0(fifo_dout[5]),
        .I1(axis_tvalid),
        .I2(data_reg[5]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[5]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[6]_i_1 
       (.I0(fifo_dout[6]),
        .I1(axis_tvalid),
        .I2(data_reg[6]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[7]_i_1 
       (.I0(fifo_dout[7]),
        .I1(axis_tvalid),
        .I2(data_reg[7]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[7]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[8]_i_1 
       (.I0(fifo_dout[8]),
        .I1(axis_tvalid),
        .I2(data_reg[8]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[8]));
  LUT4 #(
    .INIT(16'hE200)) 
    \axis_tdata[9]_i_1 
       (.I0(fifo_dout[9]),
        .I1(axis_tvalid),
        .I2(data_reg[9]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tdata_1[9]));
  FDRE \axis_tdata_reg[0] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[0]),
        .Q(axis_tdata[0]),
        .R(rst));
  FDRE \axis_tdata_reg[10] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[10]),
        .Q(axis_tdata[10]),
        .R(rst));
  FDRE \axis_tdata_reg[11] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[11]),
        .Q(axis_tdata[11]),
        .R(rst));
  FDRE \axis_tdata_reg[12] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[12]),
        .Q(axis_tdata[12]),
        .R(rst));
  FDRE \axis_tdata_reg[13] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[13]),
        .Q(axis_tdata[13]),
        .R(rst));
  FDRE \axis_tdata_reg[14] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[14]),
        .Q(axis_tdata[14]),
        .R(rst));
  FDRE \axis_tdata_reg[15] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[15]),
        .Q(axis_tdata[15]),
        .R(rst));
  FDRE \axis_tdata_reg[16] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[16]),
        .Q(axis_tdata[16]),
        .R(rst));
  FDRE \axis_tdata_reg[17] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[17]),
        .Q(axis_tdata[17]),
        .R(rst));
  FDRE \axis_tdata_reg[18] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[18]),
        .Q(axis_tdata[18]),
        .R(rst));
  FDRE \axis_tdata_reg[19] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[19]),
        .Q(axis_tdata[19]),
        .R(rst));
  FDRE \axis_tdata_reg[1] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[1]),
        .Q(axis_tdata[1]),
        .R(rst));
  FDRE \axis_tdata_reg[20] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[20]),
        .Q(axis_tdata[20]),
        .R(rst));
  FDRE \axis_tdata_reg[21] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[21]),
        .Q(axis_tdata[21]),
        .R(rst));
  FDRE \axis_tdata_reg[22] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[22]),
        .Q(axis_tdata[22]),
        .R(rst));
  FDRE \axis_tdata_reg[23] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[23]),
        .Q(axis_tdata[23]),
        .R(rst));
  FDRE \axis_tdata_reg[24] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[24]),
        .Q(axis_tdata[24]),
        .R(rst));
  FDRE \axis_tdata_reg[25] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[25]),
        .Q(axis_tdata[25]),
        .R(rst));
  FDRE \axis_tdata_reg[26] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[26]),
        .Q(axis_tdata[26]),
        .R(rst));
  FDRE \axis_tdata_reg[27] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[27]),
        .Q(axis_tdata[27]),
        .R(rst));
  FDRE \axis_tdata_reg[28] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[28]),
        .Q(axis_tdata[28]),
        .R(rst));
  FDRE \axis_tdata_reg[29] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[29]),
        .Q(axis_tdata[29]),
        .R(rst));
  FDRE \axis_tdata_reg[2] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[2]),
        .Q(axis_tdata[2]),
        .R(rst));
  FDRE \axis_tdata_reg[30] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[30]),
        .Q(axis_tdata[30]),
        .R(rst));
  FDRE \axis_tdata_reg[31] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[31]),
        .Q(axis_tdata[31]),
        .R(rst));
  FDRE \axis_tdata_reg[3] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[3]),
        .Q(axis_tdata[3]),
        .R(rst));
  FDRE \axis_tdata_reg[4] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[4]),
        .Q(axis_tdata[4]),
        .R(rst));
  FDRE \axis_tdata_reg[5] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[5]),
        .Q(axis_tdata[5]),
        .R(rst));
  FDRE \axis_tdata_reg[6] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[6]),
        .Q(axis_tdata[6]),
        .R(rst));
  FDRE \axis_tdata_reg[7] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[7]),
        .Q(axis_tdata[7]),
        .R(rst));
  FDRE \axis_tdata_reg[8] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[8]),
        .Q(axis_tdata[8]),
        .R(rst));
  FDRE \axis_tdata_reg[9] 
       (.C(clk),
        .CE(\axis_tdata[31]_i_1_n_0 ),
        .D(axis_tdata_1[9]),
        .Q(axis_tdata[9]),
        .R(rst));
  FDRE \axis_tkeep_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(axis_tkeep),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    axis_tlast_i_1
       (.I0(axis_tlast_i_2_n_0),
        .I1(axis_tvalid),
        .I2(axis_tready),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    axis_tlast_i_2
       (.I0(\word_count_reg_n_0_[2] ),
        .I1(\word_count_reg_n_0_[1] ),
        .I2(\word_count_reg_n_0_[0] ),
        .I3(\word_count_reg_n_0_[3] ),
        .O(axis_tlast_i_2_n_0));
  FDRE axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_tlast_i_1_n_0),
        .Q(axis_tlast),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    axis_tvalid_i_1
       (.I0(axis_tvalid),
        .I1(axis_tready),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(axis_tvalid_i_1_n_0));
  FDRE axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_tvalid_i_1_n_0),
        .Q(axis_tvalid),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFDCCC)) 
    busy_i_1
       (.I0(fifo_empty),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(start),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(busy_i_1_n_0));
  FDRE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(data_reg_0));
  FDRE \data_reg_reg[0] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[0]),
        .Q(data_reg[0]),
        .R(rst));
  FDRE \data_reg_reg[10] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[10]),
        .Q(data_reg[10]),
        .R(rst));
  FDRE \data_reg_reg[11] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[11]),
        .Q(data_reg[11]),
        .R(rst));
  FDRE \data_reg_reg[12] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[12]),
        .Q(data_reg[12]),
        .R(rst));
  FDRE \data_reg_reg[13] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[13]),
        .Q(data_reg[13]),
        .R(rst));
  FDRE \data_reg_reg[14] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[14]),
        .Q(data_reg[14]),
        .R(rst));
  FDRE \data_reg_reg[15] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[15]),
        .Q(data_reg[15]),
        .R(rst));
  FDRE \data_reg_reg[16] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[16]),
        .Q(data_reg[16]),
        .R(rst));
  FDRE \data_reg_reg[17] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[17]),
        .Q(data_reg[17]),
        .R(rst));
  FDRE \data_reg_reg[18] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[18]),
        .Q(data_reg[18]),
        .R(rst));
  FDRE \data_reg_reg[19] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[19]),
        .Q(data_reg[19]),
        .R(rst));
  FDRE \data_reg_reg[1] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[1]),
        .Q(data_reg[1]),
        .R(rst));
  FDRE \data_reg_reg[20] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[20]),
        .Q(data_reg[20]),
        .R(rst));
  FDRE \data_reg_reg[21] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[21]),
        .Q(data_reg[21]),
        .R(rst));
  FDRE \data_reg_reg[22] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[22]),
        .Q(data_reg[22]),
        .R(rst));
  FDRE \data_reg_reg[23] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[23]),
        .Q(data_reg[23]),
        .R(rst));
  FDRE \data_reg_reg[24] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[24]),
        .Q(data_reg[24]),
        .R(rst));
  FDRE \data_reg_reg[25] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[25]),
        .Q(data_reg[25]),
        .R(rst));
  FDRE \data_reg_reg[26] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[26]),
        .Q(data_reg[26]),
        .R(rst));
  FDRE \data_reg_reg[27] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[27]),
        .Q(data_reg[27]),
        .R(rst));
  FDRE \data_reg_reg[28] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[28]),
        .Q(data_reg[28]),
        .R(rst));
  FDRE \data_reg_reg[29] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[29]),
        .Q(data_reg[29]),
        .R(rst));
  FDRE \data_reg_reg[2] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[2]),
        .Q(data_reg[2]),
        .R(rst));
  FDRE \data_reg_reg[30] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[30]),
        .Q(data_reg[30]),
        .R(rst));
  FDRE \data_reg_reg[31] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[31]),
        .Q(data_reg[31]),
        .R(rst));
  FDRE \data_reg_reg[3] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[3]),
        .Q(data_reg[3]),
        .R(rst));
  FDRE \data_reg_reg[4] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[4]),
        .Q(data_reg[4]),
        .R(rst));
  FDRE \data_reg_reg[5] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[5]),
        .Q(data_reg[5]),
        .R(rst));
  FDRE \data_reg_reg[6] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[6]),
        .Q(data_reg[6]),
        .R(rst));
  FDRE \data_reg_reg[7] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[7]),
        .Q(data_reg[7]),
        .R(rst));
  FDRE \data_reg_reg[8] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[8]),
        .Q(data_reg[8]),
        .R(rst));
  FDRE \data_reg_reg[9] 
       (.C(clk),
        .CE(data_reg_0),
        .D(axis_tdata_1[9]),
        .Q(data_reg[9]),
        .R(rst));
  FDRE \debug_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state[0]),
        .Q(debug_state[0]),
        .R(rst));
  FDRE \debug_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(state[1]),
        .Q(debug_state[1]),
        .R(rst));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(done),
        .R(rst));
  LUT5 #(
    .INIT(32'hD5C0C0C0)) 
    fifo_rd_en_i_1
       (.I0(fifo_empty),
        .I1(fifo_rd_en_i_2_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(start),
        .O(fifo_rd_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA00000000)) 
    fifo_rd_en_i_2
       (.I0(axis_tready),
        .I1(\word_count_reg_n_0_[2] ),
        .I2(\word_count_reg_n_0_[0] ),
        .I3(\word_count_reg_n_0_[1] ),
        .I4(\word_count_reg_n_0_[3] ),
        .I5(axis_tvalid),
        .O(fifo_rd_en_i_2_n_0));
  FDRE fifo_rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rd_en_i_1_n_0),
        .Q(fifo_rd_en),
        .R(rst));
  LUT6 #(
    .INIT(64'h00000000D111C000)) 
    \state[0]_i_1 
       (.I0(fifo_empty),
        .I1(state[1]),
        .I2(axis_tvalid),
        .I3(axis_tready),
        .I4(start),
        .I5(state[0]),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h5155AAAA)) 
    \state[1]_i_1 
       (.I0(state[0]),
        .I1(axis_tvalid),
        .I2(axis_tlast_i_2_n_0),
        .I3(axis_tready),
        .I4(state[1]),
        .O(next_state[1]));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \word_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\word_count_reg_n_0_[0] ),
        .O(\word_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \word_count[1]_i_1 
       (.I0(\word_count_reg_n_0_[0] ),
        .I1(\word_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\word_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \word_count[2]_i_1 
       (.I0(\word_count_reg_n_0_[0] ),
        .I1(\word_count_reg_n_0_[1] ),
        .I2(\word_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\word_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \word_count[3]_i_1 
       (.I0(fifo_rd_en_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(word_count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \word_count[3]_i_2 
       (.I0(\word_count_reg_n_0_[2] ),
        .I1(\word_count_reg_n_0_[0] ),
        .I2(\word_count_reg_n_0_[1] ),
        .I3(\word_count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\word_count[3]_i_2_n_0 ));
  FDRE \word_count_reg[0] 
       (.C(clk),
        .CE(word_count),
        .D(\word_count[0]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[0] ),
        .R(rst));
  FDRE \word_count_reg[1] 
       (.C(clk),
        .CE(word_count),
        .D(\word_count[1]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[1] ),
        .R(rst));
  FDRE \word_count_reg[2] 
       (.C(clk),
        .CE(word_count),
        .D(\word_count[2]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[2] ),
        .R(rst));
  FDRE \word_count_reg[3] 
       (.C(clk),
        .CE(word_count),
        .D(\word_count[3]_i_2_n_0 ),
        .Q(\word_count_reg_n_0_[3] ),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
