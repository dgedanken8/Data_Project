// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:23 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_packet_builder_FSM_0_0/data_project_bd_packet_builder_FSM_0_0_sim_netlist.v
// Design      : data_project_bd_packet_builder_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_project_bd_packet_builder_FSM_0_0,packet_builder_FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "packet_builder_FSM,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module data_project_bd_packet_builder_FSM_0_0
   (clk,
    rst,
    start,
    data_valid,
    data_in,
    packet_word_out,
    packet_valid,
    packet_done,
    data_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input data_valid;
  input [31:0]data_in;
  output [31:0]packet_word_out;
  output packet_valid;
  output packet_done;
  output data_ready;

  wire clk;
  wire [31:0]data_in;
  wire data_ready;
  wire data_valid;
  wire packet_done;
  wire packet_valid;
  wire [31:0]packet_word_out;
  wire rst;
  wire start;

  data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM inst
       (.clk(clk),
        .data_in(data_in),
        .data_ready(data_ready),
        .data_valid(data_valid),
        .packet_done(packet_done),
        .packet_valid(packet_valid),
        .packet_word_out(packet_word_out),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "packet_builder_FSM" *) 
module data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM
   (data_ready,
    packet_word_out,
    packet_valid,
    packet_done,
    rst,
    clk,
    data_valid,
    start,
    data_in);
  output data_ready;
  output [31:0]packet_word_out;
  output packet_valid;
  output packet_done;
  input rst;
  input clk;
  input data_valid;
  input start;
  input [31:0]data_in;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \__0/i__n_0 ;
  wire \__1/i__n_0 ;
  wire [31:0]checksum;
  wire checksum0_carry__0_n_0;
  wire checksum0_carry__0_n_1;
  wire checksum0_carry__0_n_2;
  wire checksum0_carry__0_n_3;
  wire checksum0_carry__1_n_0;
  wire checksum0_carry__1_n_1;
  wire checksum0_carry__1_n_2;
  wire checksum0_carry__1_n_3;
  wire checksum0_carry__2_n_0;
  wire checksum0_carry__2_n_1;
  wire checksum0_carry__2_n_2;
  wire checksum0_carry__2_n_3;
  wire checksum0_carry__3_n_0;
  wire checksum0_carry__3_n_1;
  wire checksum0_carry__3_n_2;
  wire checksum0_carry__3_n_3;
  wire checksum0_carry__4_n_0;
  wire checksum0_carry__4_n_1;
  wire checksum0_carry__4_n_2;
  wire checksum0_carry__4_n_3;
  wire checksum0_carry__5_n_0;
  wire checksum0_carry__5_n_1;
  wire checksum0_carry__5_n_2;
  wire checksum0_carry__5_n_3;
  wire checksum0_carry__6_n_1;
  wire checksum0_carry__6_n_2;
  wire checksum0_carry__6_n_3;
  wire checksum0_carry_i_1__0_n_0;
  wire checksum0_carry_i_1__1_n_0;
  wire checksum0_carry_i_1__2_n_0;
  wire checksum0_carry_i_1__3_n_0;
  wire checksum0_carry_i_1__4_n_0;
  wire checksum0_carry_i_1__5_n_0;
  wire checksum0_carry_i_1__6_n_0;
  wire checksum0_carry_i_1_n_0;
  wire checksum0_carry_i_2__0_n_0;
  wire checksum0_carry_i_2__1_n_0;
  wire checksum0_carry_i_2__2_n_0;
  wire checksum0_carry_i_2__3_n_0;
  wire checksum0_carry_i_2__4_n_0;
  wire checksum0_carry_i_2__5_n_0;
  wire checksum0_carry_i_2__6_n_0;
  wire checksum0_carry_i_2_n_0;
  wire checksum0_carry_i_3__0_n_0;
  wire checksum0_carry_i_3__1_n_0;
  wire checksum0_carry_i_3__2_n_0;
  wire checksum0_carry_i_3__3_n_0;
  wire checksum0_carry_i_3__4_n_0;
  wire checksum0_carry_i_3__5_n_0;
  wire checksum0_carry_i_3__6_n_0;
  wire checksum0_carry_i_3_n_0;
  wire checksum0_carry_i_4__0_n_0;
  wire checksum0_carry_i_4__1_n_0;
  wire checksum0_carry_i_4__2_n_0;
  wire checksum0_carry_i_4__3_n_0;
  wire checksum0_carry_i_4__4_n_0;
  wire checksum0_carry_i_4__5_n_0;
  wire checksum0_carry_i_4__6_n_0;
  wire checksum0_carry_i_4_n_0;
  wire checksum0_carry_n_0;
  wire checksum0_carry_n_1;
  wire checksum0_carry_n_2;
  wire checksum0_carry_n_3;
  wire \checksum[0]_i_1_n_0 ;
  wire \checksum[10]_i_1_n_0 ;
  wire \checksum[11]_i_1_n_0 ;
  wire \checksum[12]_i_1_n_0 ;
  wire \checksum[13]_i_1_n_0 ;
  wire \checksum[14]_i_1_n_0 ;
  wire \checksum[15]_i_1_n_0 ;
  wire \checksum[16]_i_1_n_0 ;
  wire \checksum[17]_i_1_n_0 ;
  wire \checksum[18]_i_1_n_0 ;
  wire \checksum[19]_i_1_n_0 ;
  wire \checksum[1]_i_1_n_0 ;
  wire \checksum[20]_i_1_n_0 ;
  wire \checksum[21]_i_1_n_0 ;
  wire \checksum[22]_i_1_n_0 ;
  wire \checksum[23]_i_1_n_0 ;
  wire \checksum[24]_i_1_n_0 ;
  wire \checksum[25]_i_1_n_0 ;
  wire \checksum[26]_i_1_n_0 ;
  wire \checksum[27]_i_1_n_0 ;
  wire \checksum[28]_i_1_n_0 ;
  wire \checksum[29]_i_1_n_0 ;
  wire \checksum[2]_i_1_n_0 ;
  wire \checksum[30]_i_1_n_0 ;
  wire \checksum[31]_i_1_n_0 ;
  wire \checksum[3]_i_1_n_0 ;
  wire \checksum[4]_i_1_n_0 ;
  wire \checksum[5]_i_1_n_0 ;
  wire \checksum[6]_i_1_n_0 ;
  wire \checksum[7]_i_1_n_0 ;
  wire \checksum[8]_i_1_n_0 ;
  wire \checksum[9]_i_1_n_0 ;
  wire clk;
  wire [31:0]data_in;
  wire [2:1]data_index;
  wire \data_index[0]_i_1_n_0 ;
  wire \data_index[2]_i_1_n_0 ;
  wire \data_index_reg_n_0_[0] ;
  wire \data_index_reg_n_0_[1] ;
  wire \data_index_reg_n_0_[2] ;
  wire data_ready;
  wire data_valid;
  wire [31:0]in5;
  wire packet_done;
  wire packet_done_i_1_n_0;
  wire packet_valid;
  wire [31:0]packet_word_out;
  wire \packet_word_out[0]_i_1_n_0 ;
  wire \packet_word_out[10]_i_1_n_0 ;
  wire \packet_word_out[11]_i_1_n_0 ;
  wire \packet_word_out[12]_i_1_n_0 ;
  wire \packet_word_out[13]_i_1_n_0 ;
  wire \packet_word_out[14]_i_1_n_0 ;
  wire \packet_word_out[15]_i_1_n_0 ;
  wire \packet_word_out[16]_i_1_n_0 ;
  wire \packet_word_out[17]_i_1_n_0 ;
  wire \packet_word_out[18]_i_1_n_0 ;
  wire \packet_word_out[19]_i_1_n_0 ;
  wire \packet_word_out[1]_i_1_n_0 ;
  wire \packet_word_out[20]_i_1_n_0 ;
  wire \packet_word_out[21]_i_1_n_0 ;
  wire \packet_word_out[22]_i_1_n_0 ;
  wire \packet_word_out[23]_i_1_n_0 ;
  wire \packet_word_out[24]_i_1_n_0 ;
  wire \packet_word_out[25]_i_1_n_0 ;
  wire \packet_word_out[26]_i_1_n_0 ;
  wire \packet_word_out[27]_i_1_n_0 ;
  wire \packet_word_out[28]_i_1_n_0 ;
  wire \packet_word_out[29]_i_1_n_0 ;
  wire \packet_word_out[2]_i_1_n_0 ;
  wire \packet_word_out[30]_i_1_n_0 ;
  wire \packet_word_out[31]_i_1_n_0 ;
  wire \packet_word_out[3]_i_1_n_0 ;
  wire \packet_word_out[4]_i_1_n_0 ;
  wire \packet_word_out[5]_i_1_n_0 ;
  wire \packet_word_out[6]_i_1_n_0 ;
  wire \packet_word_out[7]_i_1_n_0 ;
  wire \packet_word_out[8]_i_1_n_0 ;
  wire \packet_word_out[9]_i_1_n_0 ;
  wire rst;
  wire start;
  wire [3:3]NLW_checksum0_carry__6_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFAAAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\data_index_reg_n_0_[0] ),
        .I2(\data_index_reg_n_0_[2] ),
        .I3(\data_index_reg_n_0_[1] ),
        .I4(data_valid),
        .I5(data_ready),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(data_ready),
        .I1(\data_index_reg_n_0_[1] ),
        .I2(\data_index_reg_n_0_[0] ),
        .I3(\data_index_reg_n_0_[2] ),
        .I4(data_valid),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(data_ready),
        .R(rst));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \__0/i_ 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_ready),
        .I3(data_valid),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\__0/i__n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \__1/i_ 
       (.I0(data_ready),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\__1/i__n_0 ));
  CARRY4 checksum0_carry
       (.CI(1'b0),
        .CO({checksum0_carry_n_0,checksum0_carry_n_1,checksum0_carry_n_2,checksum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[3:0]),
        .O(in5[3:0]),
        .S({checksum0_carry_i_1_n_0,checksum0_carry_i_2_n_0,checksum0_carry_i_3_n_0,checksum0_carry_i_4_n_0}));
  CARRY4 checksum0_carry__0
       (.CI(checksum0_carry_n_0),
        .CO({checksum0_carry__0_n_0,checksum0_carry__0_n_1,checksum0_carry__0_n_2,checksum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[7:4]),
        .O(in5[7:4]),
        .S({checksum0_carry_i_1__0_n_0,checksum0_carry_i_2__0_n_0,checksum0_carry_i_3__0_n_0,checksum0_carry_i_4__0_n_0}));
  CARRY4 checksum0_carry__1
       (.CI(checksum0_carry__0_n_0),
        .CO({checksum0_carry__1_n_0,checksum0_carry__1_n_1,checksum0_carry__1_n_2,checksum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[11:8]),
        .O(in5[11:8]),
        .S({checksum0_carry_i_1__1_n_0,checksum0_carry_i_2__1_n_0,checksum0_carry_i_3__1_n_0,checksum0_carry_i_4__1_n_0}));
  CARRY4 checksum0_carry__2
       (.CI(checksum0_carry__1_n_0),
        .CO({checksum0_carry__2_n_0,checksum0_carry__2_n_1,checksum0_carry__2_n_2,checksum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[15:12]),
        .O(in5[15:12]),
        .S({checksum0_carry_i_1__2_n_0,checksum0_carry_i_2__2_n_0,checksum0_carry_i_3__2_n_0,checksum0_carry_i_4__2_n_0}));
  CARRY4 checksum0_carry__3
       (.CI(checksum0_carry__2_n_0),
        .CO({checksum0_carry__3_n_0,checksum0_carry__3_n_1,checksum0_carry__3_n_2,checksum0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[19:16]),
        .O(in5[19:16]),
        .S({checksum0_carry_i_1__3_n_0,checksum0_carry_i_2__3_n_0,checksum0_carry_i_3__3_n_0,checksum0_carry_i_4__3_n_0}));
  CARRY4 checksum0_carry__4
       (.CI(checksum0_carry__3_n_0),
        .CO({checksum0_carry__4_n_0,checksum0_carry__4_n_1,checksum0_carry__4_n_2,checksum0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[23:20]),
        .O(in5[23:20]),
        .S({checksum0_carry_i_1__4_n_0,checksum0_carry_i_2__4_n_0,checksum0_carry_i_3__4_n_0,checksum0_carry_i_4__4_n_0}));
  CARRY4 checksum0_carry__5
       (.CI(checksum0_carry__4_n_0),
        .CO({checksum0_carry__5_n_0,checksum0_carry__5_n_1,checksum0_carry__5_n_2,checksum0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(checksum[27:24]),
        .O(in5[27:24]),
        .S({checksum0_carry_i_1__5_n_0,checksum0_carry_i_2__5_n_0,checksum0_carry_i_3__5_n_0,checksum0_carry_i_4__5_n_0}));
  CARRY4 checksum0_carry__6
       (.CI(checksum0_carry__5_n_0),
        .CO({NLW_checksum0_carry__6_CO_UNCONNECTED[3],checksum0_carry__6_n_1,checksum0_carry__6_n_2,checksum0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,checksum[30:28]}),
        .O(in5[31:28]),
        .S({checksum0_carry_i_1__6_n_0,checksum0_carry_i_2__6_n_0,checksum0_carry_i_3__6_n_0,checksum0_carry_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1
       (.I0(checksum[3]),
        .I1(data_in[3]),
        .O(checksum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__0
       (.I0(checksum[7]),
        .I1(data_in[7]),
        .O(checksum0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__1
       (.I0(checksum[11]),
        .I1(data_in[11]),
        .O(checksum0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__2
       (.I0(checksum[15]),
        .I1(data_in[15]),
        .O(checksum0_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__3
       (.I0(checksum[19]),
        .I1(data_in[19]),
        .O(checksum0_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__4
       (.I0(checksum[23]),
        .I1(data_in[23]),
        .O(checksum0_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__5
       (.I0(checksum[27]),
        .I1(data_in[27]),
        .O(checksum0_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_1__6
       (.I0(checksum[31]),
        .I1(data_in[31]),
        .O(checksum0_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2
       (.I0(checksum[2]),
        .I1(data_in[2]),
        .O(checksum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__0
       (.I0(checksum[6]),
        .I1(data_in[6]),
        .O(checksum0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__1
       (.I0(checksum[10]),
        .I1(data_in[10]),
        .O(checksum0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__2
       (.I0(checksum[14]),
        .I1(data_in[14]),
        .O(checksum0_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__3
       (.I0(checksum[18]),
        .I1(data_in[18]),
        .O(checksum0_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__4
       (.I0(checksum[22]),
        .I1(data_in[22]),
        .O(checksum0_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__5
       (.I0(checksum[26]),
        .I1(data_in[26]),
        .O(checksum0_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_2__6
       (.I0(checksum[30]),
        .I1(data_in[30]),
        .O(checksum0_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3
       (.I0(checksum[1]),
        .I1(data_in[1]),
        .O(checksum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__0
       (.I0(checksum[5]),
        .I1(data_in[5]),
        .O(checksum0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__1
       (.I0(checksum[9]),
        .I1(data_in[9]),
        .O(checksum0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__2
       (.I0(checksum[13]),
        .I1(data_in[13]),
        .O(checksum0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__3
       (.I0(checksum[17]),
        .I1(data_in[17]),
        .O(checksum0_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__4
       (.I0(checksum[21]),
        .I1(data_in[21]),
        .O(checksum0_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__5
       (.I0(checksum[25]),
        .I1(data_in[25]),
        .O(checksum0_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_3__6
       (.I0(checksum[29]),
        .I1(data_in[29]),
        .O(checksum0_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4
       (.I0(checksum[0]),
        .I1(data_in[0]),
        .O(checksum0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__0
       (.I0(checksum[4]),
        .I1(data_in[4]),
        .O(checksum0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__1
       (.I0(checksum[8]),
        .I1(data_in[8]),
        .O(checksum0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__2
       (.I0(checksum[12]),
        .I1(data_in[12]),
        .O(checksum0_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__3
       (.I0(checksum[16]),
        .I1(data_in[16]),
        .O(checksum0_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__4
       (.I0(checksum[20]),
        .I1(data_in[20]),
        .O(checksum0_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__5
       (.I0(checksum[24]),
        .I1(data_in[24]),
        .O(checksum0_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    checksum0_carry_i_4__6
       (.I0(checksum[28]),
        .I1(data_in[28]),
        .O(checksum0_carry_i_4__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[0]_i_1 
       (.I0(data_ready),
        .I1(in5[0]),
        .O(\checksum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[10]_i_1 
       (.I0(data_ready),
        .I1(in5[10]),
        .O(\checksum[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[11]_i_1 
       (.I0(data_ready),
        .I1(in5[11]),
        .O(\checksum[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[12]_i_1 
       (.I0(data_ready),
        .I1(in5[12]),
        .O(\checksum[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[13]_i_1 
       (.I0(data_ready),
        .I1(in5[13]),
        .O(\checksum[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[14]_i_1 
       (.I0(data_ready),
        .I1(in5[14]),
        .O(\checksum[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[15]_i_1 
       (.I0(data_ready),
        .I1(in5[15]),
        .O(\checksum[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[16]_i_1 
       (.I0(data_ready),
        .I1(in5[16]),
        .O(\checksum[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[17]_i_1 
       (.I0(data_ready),
        .I1(in5[17]),
        .O(\checksum[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[18]_i_1 
       (.I0(data_ready),
        .I1(in5[18]),
        .O(\checksum[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[19]_i_1 
       (.I0(data_ready),
        .I1(in5[19]),
        .O(\checksum[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[1]_i_1 
       (.I0(data_ready),
        .I1(in5[1]),
        .O(\checksum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[20]_i_1 
       (.I0(data_ready),
        .I1(in5[20]),
        .O(\checksum[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[21]_i_1 
       (.I0(data_ready),
        .I1(in5[21]),
        .O(\checksum[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[22]_i_1 
       (.I0(data_ready),
        .I1(in5[22]),
        .O(\checksum[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[23]_i_1 
       (.I0(data_ready),
        .I1(in5[23]),
        .O(\checksum[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[24]_i_1 
       (.I0(data_ready),
        .I1(in5[24]),
        .O(\checksum[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[25]_i_1 
       (.I0(data_ready),
        .I1(in5[25]),
        .O(\checksum[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[26]_i_1 
       (.I0(data_ready),
        .I1(in5[26]),
        .O(\checksum[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[27]_i_1 
       (.I0(data_ready),
        .I1(in5[27]),
        .O(\checksum[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[28]_i_1 
       (.I0(data_ready),
        .I1(in5[28]),
        .O(\checksum[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[29]_i_1 
       (.I0(data_ready),
        .I1(in5[29]),
        .O(\checksum[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[2]_i_1 
       (.I0(data_ready),
        .I1(in5[2]),
        .O(\checksum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[30]_i_1 
       (.I0(data_ready),
        .I1(in5[30]),
        .O(\checksum[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[31]_i_1 
       (.I0(data_ready),
        .I1(in5[31]),
        .O(\checksum[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[3]_i_1 
       (.I0(data_ready),
        .I1(in5[3]),
        .O(\checksum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[4]_i_1 
       (.I0(data_ready),
        .I1(in5[4]),
        .O(\checksum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[5]_i_1 
       (.I0(data_ready),
        .I1(in5[5]),
        .O(\checksum[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[6]_i_1 
       (.I0(data_ready),
        .I1(in5[6]),
        .O(\checksum[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[7]_i_1 
       (.I0(data_ready),
        .I1(in5[7]),
        .O(\checksum[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[8]_i_1 
       (.I0(data_ready),
        .I1(in5[8]),
        .O(\checksum[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum[9]_i_1 
       (.I0(data_ready),
        .I1(in5[9]),
        .O(\checksum[9]_i_1_n_0 ));
  FDRE \checksum_reg[0] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[0]_i_1_n_0 ),
        .Q(checksum[0]),
        .R(rst));
  FDRE \checksum_reg[10] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[10]_i_1_n_0 ),
        .Q(checksum[10]),
        .R(rst));
  FDRE \checksum_reg[11] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[11]_i_1_n_0 ),
        .Q(checksum[11]),
        .R(rst));
  FDRE \checksum_reg[12] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[12]_i_1_n_0 ),
        .Q(checksum[12]),
        .R(rst));
  FDRE \checksum_reg[13] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[13]_i_1_n_0 ),
        .Q(checksum[13]),
        .R(rst));
  FDRE \checksum_reg[14] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[14]_i_1_n_0 ),
        .Q(checksum[14]),
        .R(rst));
  FDRE \checksum_reg[15] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[15]_i_1_n_0 ),
        .Q(checksum[15]),
        .R(rst));
  FDRE \checksum_reg[16] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[16]_i_1_n_0 ),
        .Q(checksum[16]),
        .R(rst));
  FDRE \checksum_reg[17] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[17]_i_1_n_0 ),
        .Q(checksum[17]),
        .R(rst));
  FDRE \checksum_reg[18] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[18]_i_1_n_0 ),
        .Q(checksum[18]),
        .R(rst));
  FDRE \checksum_reg[19] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[19]_i_1_n_0 ),
        .Q(checksum[19]),
        .R(rst));
  FDRE \checksum_reg[1] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[1]_i_1_n_0 ),
        .Q(checksum[1]),
        .R(rst));
  FDRE \checksum_reg[20] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[20]_i_1_n_0 ),
        .Q(checksum[20]),
        .R(rst));
  FDRE \checksum_reg[21] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[21]_i_1_n_0 ),
        .Q(checksum[21]),
        .R(rst));
  FDRE \checksum_reg[22] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[22]_i_1_n_0 ),
        .Q(checksum[22]),
        .R(rst));
  FDRE \checksum_reg[23] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[23]_i_1_n_0 ),
        .Q(checksum[23]),
        .R(rst));
  FDRE \checksum_reg[24] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[24]_i_1_n_0 ),
        .Q(checksum[24]),
        .R(rst));
  FDRE \checksum_reg[25] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[25]_i_1_n_0 ),
        .Q(checksum[25]),
        .R(rst));
  FDRE \checksum_reg[26] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[26]_i_1_n_0 ),
        .Q(checksum[26]),
        .R(rst));
  FDRE \checksum_reg[27] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[27]_i_1_n_0 ),
        .Q(checksum[27]),
        .R(rst));
  FDRE \checksum_reg[28] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[28]_i_1_n_0 ),
        .Q(checksum[28]),
        .R(rst));
  FDRE \checksum_reg[29] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[29]_i_1_n_0 ),
        .Q(checksum[29]),
        .R(rst));
  FDRE \checksum_reg[2] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[2]_i_1_n_0 ),
        .Q(checksum[2]),
        .R(rst));
  FDRE \checksum_reg[30] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[30]_i_1_n_0 ),
        .Q(checksum[30]),
        .R(rst));
  FDRE \checksum_reg[31] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[31]_i_1_n_0 ),
        .Q(checksum[31]),
        .R(rst));
  FDRE \checksum_reg[3] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[3]_i_1_n_0 ),
        .Q(checksum[3]),
        .R(rst));
  FDRE \checksum_reg[4] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[4]_i_1_n_0 ),
        .Q(checksum[4]),
        .R(rst));
  FDRE \checksum_reg[5] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[5]_i_1_n_0 ),
        .Q(checksum[5]),
        .R(rst));
  FDRE \checksum_reg[6] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[6]_i_1_n_0 ),
        .Q(checksum[6]),
        .R(rst));
  FDRE \checksum_reg[7] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[7]_i_1_n_0 ),
        .Q(checksum[7]),
        .R(rst));
  FDRE \checksum_reg[8] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[8]_i_1_n_0 ),
        .Q(checksum[8]),
        .R(rst));
  FDRE \checksum_reg[9] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\checksum[9]_i_1_n_0 ),
        .Q(checksum[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_index[0]_i_1 
       (.I0(data_ready),
        .I1(\data_index_reg_n_0_[0] ),
        .O(\data_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_index[1]_i_1 
       (.I0(data_ready),
        .I1(\data_index_reg_n_0_[1] ),
        .I2(\data_index_reg_n_0_[0] ),
        .O(data_index[1]));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_index[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_valid),
        .I2(data_ready),
        .O(\data_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \data_index[2]_i_2 
       (.I0(data_ready),
        .I1(\data_index_reg_n_0_[2] ),
        .I2(\data_index_reg_n_0_[1] ),
        .I3(\data_index_reg_n_0_[0] ),
        .O(data_index[2]));
  FDRE \data_index_reg[0] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(\data_index[0]_i_1_n_0 ),
        .Q(\data_index_reg_n_0_[0] ),
        .R(rst));
  FDRE \data_index_reg[1] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(data_index[1]),
        .Q(\data_index_reg_n_0_[1] ),
        .R(rst));
  FDRE \data_index_reg[2] 
       (.C(clk),
        .CE(\data_index[2]_i_1_n_0 ),
        .D(data_index[2]),
        .Q(\data_index_reg_n_0_[2] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hFF51FF00)) 
    packet_done_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_ready),
        .I2(data_valid),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(packet_done),
        .O(packet_done_i_1_n_0));
  FDRE packet_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(packet_done_i_1_n_0),
        .Q(packet_done),
        .R(rst));
  FDRE packet_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\__0/i__n_0 ),
        .Q(packet_valid),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[0]),
        .I3(data_ready),
        .I4(data_in[0]),
        .I5(data_valid),
        .O(\packet_word_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[10]_i_1 
       (.I0(data_valid),
        .I1(data_in[10]),
        .I2(data_ready),
        .I3(checksum[10]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[11]_i_1 
       (.I0(data_valid),
        .I1(data_in[11]),
        .I2(data_ready),
        .I3(checksum[11]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[12]_i_1 
       (.I0(data_valid),
        .I1(data_in[12]),
        .I2(data_ready),
        .I3(checksum[12]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[13]_i_1 
       (.I0(data_valid),
        .I1(data_in[13]),
        .I2(data_ready),
        .I3(checksum[13]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[14]_i_1 
       (.I0(data_valid),
        .I1(data_in[14]),
        .I2(data_ready),
        .I3(checksum[14]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[15]_i_1 
       (.I0(data_valid),
        .I1(data_in[15]),
        .I2(data_ready),
        .I3(checksum[15]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[16]),
        .I3(data_ready),
        .I4(data_in[16]),
        .I5(data_valid),
        .O(\packet_word_out[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[17]_i_1 
       (.I0(data_valid),
        .I1(data_in[17]),
        .I2(data_ready),
        .I3(checksum[17]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[18]),
        .I3(data_ready),
        .I4(data_in[18]),
        .I5(data_valid),
        .O(\packet_word_out[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[19]_i_1 
       (.I0(data_valid),
        .I1(data_in[19]),
        .I2(data_ready),
        .I3(checksum[19]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[1]),
        .I3(data_ready),
        .I4(data_in[1]),
        .I5(data_valid),
        .O(\packet_word_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[20]_i_1 
       (.I0(data_valid),
        .I1(data_in[20]),
        .I2(data_ready),
        .I3(checksum[20]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[21]),
        .I3(data_ready),
        .I4(data_in[21]),
        .I5(data_valid),
        .O(\packet_word_out[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[22]_i_1 
       (.I0(data_valid),
        .I1(data_in[22]),
        .I2(data_ready),
        .I3(checksum[22]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[23]),
        .I3(data_ready),
        .I4(data_in[23]),
        .I5(data_valid),
        .O(\packet_word_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[24]),
        .I3(data_ready),
        .I4(data_in[24]),
        .I5(data_valid),
        .O(\packet_word_out[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[25]_i_1 
       (.I0(data_valid),
        .I1(data_in[25]),
        .I2(data_ready),
        .I3(checksum[25]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[26]),
        .I3(data_ready),
        .I4(data_in[26]),
        .I5(data_valid),
        .O(\packet_word_out[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[27]_i_1 
       (.I0(data_valid),
        .I1(data_in[27]),
        .I2(data_ready),
        .I3(checksum[27]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[28]_i_1 
       (.I0(data_valid),
        .I1(data_in[28]),
        .I2(data_ready),
        .I3(checksum[28]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[29]),
        .I3(data_ready),
        .I4(data_in[29]),
        .I5(data_valid),
        .O(\packet_word_out[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[2]),
        .I3(data_ready),
        .I4(data_in[2]),
        .I5(data_valid),
        .O(\packet_word_out[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[30]_i_1 
       (.I0(data_valid),
        .I1(data_in[30]),
        .I2(data_ready),
        .I3(checksum[30]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \packet_word_out[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(checksum[31]),
        .I3(data_ready),
        .I4(data_in[31]),
        .I5(data_valid),
        .O(\packet_word_out[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[3]_i_1 
       (.I0(data_valid),
        .I1(data_in[3]),
        .I2(data_ready),
        .I3(checksum[3]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[4]_i_1 
       (.I0(data_valid),
        .I1(data_in[4]),
        .I2(data_ready),
        .I3(checksum[4]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[5]_i_1 
       (.I0(data_valid),
        .I1(data_in[5]),
        .I2(data_ready),
        .I3(checksum[5]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[6]_i_1 
       (.I0(data_valid),
        .I1(data_in[6]),
        .I2(data_ready),
        .I3(checksum[6]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[7]_i_1 
       (.I0(data_valid),
        .I1(data_in[7]),
        .I2(data_ready),
        .I3(checksum[7]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[8]_i_1 
       (.I0(data_valid),
        .I1(data_in[8]),
        .I2(data_ready),
        .I3(checksum[8]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \packet_word_out[9]_i_1 
       (.I0(data_valid),
        .I1(data_in[9]),
        .I2(data_ready),
        .I3(checksum[9]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\packet_word_out[9]_i_1_n_0 ));
  FDRE \packet_word_out_reg[0] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[0]_i_1_n_0 ),
        .Q(packet_word_out[0]),
        .R(rst));
  FDRE \packet_word_out_reg[10] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[10]_i_1_n_0 ),
        .Q(packet_word_out[10]),
        .R(rst));
  FDRE \packet_word_out_reg[11] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[11]_i_1_n_0 ),
        .Q(packet_word_out[11]),
        .R(rst));
  FDRE \packet_word_out_reg[12] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[12]_i_1_n_0 ),
        .Q(packet_word_out[12]),
        .R(rst));
  FDRE \packet_word_out_reg[13] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[13]_i_1_n_0 ),
        .Q(packet_word_out[13]),
        .R(rst));
  FDRE \packet_word_out_reg[14] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[14]_i_1_n_0 ),
        .Q(packet_word_out[14]),
        .R(rst));
  FDRE \packet_word_out_reg[15] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[15]_i_1_n_0 ),
        .Q(packet_word_out[15]),
        .R(rst));
  FDRE \packet_word_out_reg[16] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[16]_i_1_n_0 ),
        .Q(packet_word_out[16]),
        .R(rst));
  FDRE \packet_word_out_reg[17] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[17]_i_1_n_0 ),
        .Q(packet_word_out[17]),
        .R(rst));
  FDRE \packet_word_out_reg[18] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[18]_i_1_n_0 ),
        .Q(packet_word_out[18]),
        .R(rst));
  FDRE \packet_word_out_reg[19] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[19]_i_1_n_0 ),
        .Q(packet_word_out[19]),
        .R(rst));
  FDRE \packet_word_out_reg[1] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[1]_i_1_n_0 ),
        .Q(packet_word_out[1]),
        .R(rst));
  FDRE \packet_word_out_reg[20] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[20]_i_1_n_0 ),
        .Q(packet_word_out[20]),
        .R(rst));
  FDRE \packet_word_out_reg[21] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[21]_i_1_n_0 ),
        .Q(packet_word_out[21]),
        .R(rst));
  FDRE \packet_word_out_reg[22] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[22]_i_1_n_0 ),
        .Q(packet_word_out[22]),
        .R(rst));
  FDRE \packet_word_out_reg[23] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[23]_i_1_n_0 ),
        .Q(packet_word_out[23]),
        .R(rst));
  FDRE \packet_word_out_reg[24] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[24]_i_1_n_0 ),
        .Q(packet_word_out[24]),
        .R(rst));
  FDRE \packet_word_out_reg[25] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[25]_i_1_n_0 ),
        .Q(packet_word_out[25]),
        .R(rst));
  FDRE \packet_word_out_reg[26] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[26]_i_1_n_0 ),
        .Q(packet_word_out[26]),
        .R(rst));
  FDRE \packet_word_out_reg[27] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[27]_i_1_n_0 ),
        .Q(packet_word_out[27]),
        .R(rst));
  FDRE \packet_word_out_reg[28] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[28]_i_1_n_0 ),
        .Q(packet_word_out[28]),
        .R(rst));
  FDRE \packet_word_out_reg[29] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[29]_i_1_n_0 ),
        .Q(packet_word_out[29]),
        .R(rst));
  FDRE \packet_word_out_reg[2] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[2]_i_1_n_0 ),
        .Q(packet_word_out[2]),
        .R(rst));
  FDRE \packet_word_out_reg[30] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[30]_i_1_n_0 ),
        .Q(packet_word_out[30]),
        .R(rst));
  FDRE \packet_word_out_reg[31] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[31]_i_1_n_0 ),
        .Q(packet_word_out[31]),
        .R(rst));
  FDRE \packet_word_out_reg[3] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[3]_i_1_n_0 ),
        .Q(packet_word_out[3]),
        .R(rst));
  FDRE \packet_word_out_reg[4] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[4]_i_1_n_0 ),
        .Q(packet_word_out[4]),
        .R(rst));
  FDRE \packet_word_out_reg[5] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[5]_i_1_n_0 ),
        .Q(packet_word_out[5]),
        .R(rst));
  FDRE \packet_word_out_reg[6] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[6]_i_1_n_0 ),
        .Q(packet_word_out[6]),
        .R(rst));
  FDRE \packet_word_out_reg[7] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[7]_i_1_n_0 ),
        .Q(packet_word_out[7]),
        .R(rst));
  FDRE \packet_word_out_reg[8] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[8]_i_1_n_0 ),
        .Q(packet_word_out[8]),
        .R(rst));
  FDRE \packet_word_out_reg[9] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\packet_word_out[9]_i_1_n_0 ),
        .Q(packet_word_out[9]),
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
