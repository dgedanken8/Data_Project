// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_sync_fifo_0_0/data_project_bd_sync_fifo_0_0_sim_netlist.v
// Design      : data_project_bd_sync_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_project_bd_sync_fifo_0_0,sync_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "sync_fifo,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module data_project_bd_sync_fifo_0_0
   (clk,
    rst,
    wr_en,
    rd_en,
    din,
    dout,
    full,
    empty,
    count,
    overflow,
    underflow);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input wr_en;
  input rd_en;
  input [31:0]din;
  output [31:0]dout;
  output full;
  output empty;
  output [4:0]count;
  output overflow;
  output underflow;

  wire clk;
  wire [4:0]count;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire rst;
  wire underflow;
  wire wr_en;

  data_project_bd_sync_fifo_0_0_sync_fifo inst
       (.clk(clk),
        .\count_reg[0]_0 (count[0]),
        .\count_reg[1]_0 (count[1]),
        .\count_reg[2]_0 (count[2]),
        .\count_reg[3]_0 (count[3]),
        .\count_reg[4]_0 (count[4]),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_en(rd_en),
        .rst(rst),
        .underflow(underflow),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "sync_fifo" *) 
module data_project_bd_sync_fifo_0_0_sync_fifo
   (\count_reg[1]_0 ,
    \count_reg[0]_0 ,
    \count_reg[4]_0 ,
    \count_reg[2]_0 ,
    \count_reg[3]_0 ,
    dout,
    full,
    empty,
    overflow,
    underflow,
    wr_en,
    rd_en,
    rst,
    clk,
    din);
  output \count_reg[1]_0 ;
  output \count_reg[0]_0 ;
  output \count_reg[4]_0 ;
  output \count_reg[2]_0 ;
  output \count_reg[3]_0 ;
  output [31:0]dout;
  output full;
  output empty;
  output overflow;
  output underflow;
  input wr_en;
  input rd_en;
  input rst;
  input clk;
  input [31:0]din;

  wire clk;
  wire [4:2]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg[1]_0 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[3]_0 ;
  wire \count_reg[4]_0 ;
  wire [31:0]din;
  wire [31:0]dout;
  wire [31:0]dout0;
  wire \dout[31]_i_1_n_0 ;
  wire empty;
  wire full;
  wire overflow;
  wire overflow_i_1_n_0;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [3:0]p_0_in__0;
  wire rd_en;
  wire [3:0]rd_pr;
  wire \rd_pr[0]_i_1_n_0 ;
  wire \rd_pr[1]_i_1_n_0 ;
  wire \rd_pr[2]_i_1_n_0 ;
  wire \rd_pr[3]_i_1_n_0 ;
  wire rst;
  wire underflow;
  wire underflow_i_1_n_0;
  wire wr_en;
  wire [3:0]wr_pr_reg;
  wire [1:0]NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_6_11_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0096)) 
    \count[0]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(\dout[31]_i_1_n_0 ),
        .I2(p_0_in_0),
        .I3(rst),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969696969696B69)) 
    \count[1]_i_1 
       (.I0(wr_en),
        .I1(\count_reg[1]_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(\count_reg[4]_0 ),
        .I4(\count_reg[2]_0 ),
        .I5(\count_reg[3]_0 ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77778888EEEE1131)) 
    \count[2]_i_1 
       (.I0(wr_en),
        .I1(\count_reg[0]_0 ),
        .I2(\count_reg[4]_0 ),
        .I3(\count_reg[3]_0 ),
        .I4(\count_reg[2]_0 ),
        .I5(\count_reg[1]_0 ),
        .O(count[2]));
  LUT6 #(
    .INIT(64'h3FFFC000FFFC0023)) 
    \count[3]_i_1 
       (.I0(\count_reg[4]_0 ),
        .I1(\count_reg[0]_0 ),
        .I2(wr_en),
        .I3(\count_reg[1]_0 ),
        .I4(\count_reg[3]_0 ),
        .I5(\count_reg[2]_0 ),
        .O(count[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \count[4]_i_1 
       (.I0(\dout[31]_i_1_n_0 ),
        .I1(p_0_in_0),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFA0001)) 
    \count[4]_i_2 
       (.I0(\count_reg[1]_0 ),
        .I1(wr_en),
        .I2(\count_reg[0]_0 ),
        .I3(\count_reg[2]_0 ),
        .I4(\count_reg[4]_0 ),
        .I5(\count_reg[3]_0 ),
        .O(count[4]));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg[0]_0 ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg[1]_0 ),
        .R(rst));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(count[2]),
        .Q(\count_reg[2]_0 ),
        .R(rst));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(count[3]),
        .Q(\count_reg[3]_0 ),
        .R(rst));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(count[4]),
        .Q(\count_reg[4]_0 ),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \dout[31]_i_1 
       (.I0(rd_en),
        .I1(\count_reg[2]_0 ),
        .I2(\count_reg[1]_0 ),
        .I3(\count_reg[0]_0 ),
        .I4(\count_reg[4]_0 ),
        .I5(\count_reg[3]_0 ),
        .O(\dout[31]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(rst));
  FDRE \dout_reg[10] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[10]),
        .Q(dout[10]),
        .R(rst));
  FDRE \dout_reg[11] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[11]),
        .Q(dout[11]),
        .R(rst));
  FDRE \dout_reg[12] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[12]),
        .Q(dout[12]),
        .R(rst));
  FDRE \dout_reg[13] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[13]),
        .Q(dout[13]),
        .R(rst));
  FDRE \dout_reg[14] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[14]),
        .Q(dout[14]),
        .R(rst));
  FDRE \dout_reg[15] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[15]),
        .Q(dout[15]),
        .R(rst));
  FDRE \dout_reg[16] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[16]),
        .Q(dout[16]),
        .R(rst));
  FDRE \dout_reg[17] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[17]),
        .Q(dout[17]),
        .R(rst));
  FDRE \dout_reg[18] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[18]),
        .Q(dout[18]),
        .R(rst));
  FDRE \dout_reg[19] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[19]),
        .Q(dout[19]),
        .R(rst));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(rst));
  FDRE \dout_reg[20] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[20]),
        .Q(dout[20]),
        .R(rst));
  FDRE \dout_reg[21] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[21]),
        .Q(dout[21]),
        .R(rst));
  FDRE \dout_reg[22] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[22]),
        .Q(dout[22]),
        .R(rst));
  FDRE \dout_reg[23] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[23]),
        .Q(dout[23]),
        .R(rst));
  FDRE \dout_reg[24] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[24]),
        .Q(dout[24]),
        .R(rst));
  FDRE \dout_reg[25] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[25]),
        .Q(dout[25]),
        .R(rst));
  FDRE \dout_reg[26] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[26]),
        .Q(dout[26]),
        .R(rst));
  FDRE \dout_reg[27] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[27]),
        .Q(dout[27]),
        .R(rst));
  FDRE \dout_reg[28] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[28]),
        .Q(dout[28]),
        .R(rst));
  FDRE \dout_reg[29] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[29]),
        .Q(dout[29]),
        .R(rst));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(rst));
  FDRE \dout_reg[30] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[30]),
        .Q(dout[30]),
        .R(rst));
  FDRE \dout_reg[31] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[31]),
        .Q(dout[31]),
        .R(rst));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(rst));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(rst));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(rst));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(rst));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[7]),
        .Q(dout[7]),
        .R(rst));
  FDRE \dout_reg[8] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[8]),
        .Q(dout[8]),
        .R(rst));
  FDRE \dout_reg[9] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(dout0[9]),
        .Q(dout[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    empty_INST_0
       (.I0(\count_reg[3]_0 ),
        .I1(\count_reg[4]_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(\count_reg[1]_0 ),
        .I4(\count_reg[2]_0 ),
        .O(empty));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    full_INST_0
       (.I0(\count_reg[3]_0 ),
        .I1(\count_reg[2]_0 ),
        .I2(\count_reg[4]_0 ),
        .I3(\count_reg[0]_0 ),
        .I4(\count_reg[1]_0 ),
        .O(full));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_15_0_5
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[1:0]),
        .DOB(dout0[3:2]),
        .DOC(dout0[5:4]),
        .DOD(NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_0_5_i_1
       (.I0(p_0_in_0),
        .I1(rst),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M mem_reg_0_15_12_17
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[13:12]),
        .DOB(dout0[15:14]),
        .DOC(dout0[17:16]),
        .DOD(NLW_mem_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M mem_reg_0_15_18_23
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[19:18]),
        .DOB(dout0[21:20]),
        .DOC(dout0[23:22]),
        .DOD(NLW_mem_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M mem_reg_0_15_24_29
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC(din[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[25:24]),
        .DOB(dout0[27:26]),
        .DOC(dout0[29:28]),
        .DOD(NLW_mem_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M mem_reg_0_15_30_31
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout0[31:30]),
        .DOB(NLW_mem_reg_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M mem_reg_0_15_6_11
       (.ADDRA({1'b0,rd_pr}),
        .ADDRB({1'b0,rd_pr}),
        .ADDRC({1'b0,rd_pr}),
        .ADDRD({1'b0,wr_pr_reg}),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[7:6]),
        .DOB(dout0[9:8]),
        .DOC(dout0[11:10]),
        .DOD(NLW_mem_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    overflow_i_1
       (.I0(full),
        .I1(wr_en),
        .I2(rst),
        .O(overflow_i_1_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1_n_0),
        .Q(overflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pr[0]_i_1 
       (.I0(rd_pr[0]),
        .O(\rd_pr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pr[1]_i_1 
       (.I0(rd_pr[0]),
        .I1(rd_pr[1]),
        .O(\rd_pr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_pr[2]_i_1 
       (.I0(rd_pr[0]),
        .I1(rd_pr[1]),
        .I2(rd_pr[2]),
        .O(\rd_pr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_pr[3]_i_1 
       (.I0(rd_pr[1]),
        .I1(rd_pr[0]),
        .I2(rd_pr[2]),
        .I3(rd_pr[3]),
        .O(\rd_pr[3]_i_1_n_0 ));
  FDRE \rd_pr_reg[0] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\rd_pr[0]_i_1_n_0 ),
        .Q(rd_pr[0]),
        .R(rst));
  FDRE \rd_pr_reg[1] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\rd_pr[1]_i_1_n_0 ),
        .Q(rd_pr[1]),
        .R(rst));
  FDRE \rd_pr_reg[2] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\rd_pr[2]_i_1_n_0 ),
        .Q(rd_pr[2]),
        .R(rst));
  FDRE \rd_pr_reg[3] 
       (.C(clk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(\rd_pr[3]_i_1_n_0 ),
        .Q(rd_pr[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    underflow_i_1
       (.I0(empty),
        .I1(rd_en),
        .I2(rst),
        .O(underflow_i_1_n_0));
  FDRE underflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(underflow_i_1_n_0),
        .Q(underflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pr[0]_i_1 
       (.I0(wr_pr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pr[1]_i_1 
       (.I0(wr_pr_reg[0]),
        .I1(wr_pr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_pr[2]_i_1 
       (.I0(wr_pr_reg[0]),
        .I1(wr_pr_reg[1]),
        .I2(wr_pr_reg[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \wr_pr[3]_i_1 
       (.I0(wr_en),
        .I1(\count_reg[1]_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(\count_reg[4]_0 ),
        .I4(\count_reg[2]_0 ),
        .I5(\count_reg[3]_0 ),
        .O(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_pr[3]_i_2 
       (.I0(wr_pr_reg[1]),
        .I1(wr_pr_reg[0]),
        .I2(wr_pr_reg[2]),
        .I3(wr_pr_reg[3]),
        .O(p_0_in__0[3]));
  FDRE \wr_pr_reg[0] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in__0[0]),
        .Q(wr_pr_reg[0]),
        .R(rst));
  FDRE \wr_pr_reg[1] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in__0[1]),
        .Q(wr_pr_reg[1]),
        .R(rst));
  FDRE \wr_pr_reg[2] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in__0[2]),
        .Q(wr_pr_reg[2]),
        .R(rst));
  FDRE \wr_pr_reg[3] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in__0[3]),
        .Q(wr_pr_reg[3]),
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
