// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 12 17:54:22 2026
// Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_data_generator_0_0/data_project_bd_data_generator_0_0_sim_netlist.v
// Design      : data_project_bd_data_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_project_bd_data_generator_0_0,data_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "data_generator,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module data_project_bd_data_generator_0_0
   (clk,
    rst,
    start,
    data_ready,
    data_out,
    data_valid,
    done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input data_ready;
  output [31:0]data_out;
  output data_valid;
  output done;

  wire \<const0> ;
  wire clk;
  wire [3:0]\^data_out ;
  wire data_ready;
  wire data_valid;
  wire done;
  wire rst;
  wire start;

  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const0> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24] = \<const0> ;
  assign data_out[23] = \<const0> ;
  assign data_out[22] = \<const0> ;
  assign data_out[21] = \<const0> ;
  assign data_out[20] = \<const0> ;
  assign data_out[19] = \<const0> ;
  assign data_out[18] = \<const0> ;
  assign data_out[17] = \<const0> ;
  assign data_out[16] = \<const0> ;
  assign data_out[15] = \<const0> ;
  assign data_out[14] = \<const0> ;
  assign data_out[13] = \<const0> ;
  assign data_out[12] = \<const0> ;
  assign data_out[11] = \<const0> ;
  assign data_out[10] = \<const0> ;
  assign data_out[9] = \<const0> ;
  assign data_out[8] = \<const0> ;
  assign data_out[7] = \<const0> ;
  assign data_out[6] = \<const0> ;
  assign data_out[5] = \<const0> ;
  assign data_out[4] = \<const0> ;
  assign data_out[3:0] = \^data_out [3:0];
  GND GND
       (.G(\<const0> ));
  data_project_bd_data_generator_0_0_data_generator inst
       (.active_reg_0(data_valid),
        .clk(clk),
        .data_out(\^data_out ),
        .data_ready(data_ready),
        .done(done),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "data_generator" *) 
module data_project_bd_data_generator_0_0_data_generator
   (active_reg_0,
    data_out,
    done,
    clk,
    start,
    data_ready,
    rst);
  output active_reg_0;
  output [3:0]data_out;
  output done;
  input clk;
  input start;
  input data_ready;
  input rst;

  wire active_i_1_n_0;
  wire active_i_2_n_0;
  wire active_reg_0;
  wire clk;
  wire [3:0]data_out;
  wire data_out10_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire data_ready;
  wire done;
  wire done_i_1_n_0;
  wire p_1_in;
  wire rst;
  wire start;
  wire [2:0]word_index;
  wire \word_index[0]_i_1_n_0 ;
  wire \word_index[1]_i_1_n_0 ;
  wire \word_index[2]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'h0000EE2E)) 
    active_i_1
       (.I0(start),
        .I1(active_reg_0),
        .I2(data_ready),
        .I3(active_i_2_n_0),
        .I4(rst),
        .O(active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    active_i_2
       (.I0(word_index[2]),
        .I1(word_index[0]),
        .I2(word_index[1]),
        .O(active_i_2_n_0));
  FDRE active_reg
       (.C(clk),
        .CE(1'b1),
        .D(active_i_1_n_0),
        .Q(active_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFAE00A2)) 
    \data_out[0]_i_1 
       (.I0(data_out[0]),
        .I1(start),
        .I2(active_reg_0),
        .I3(\data_out[0]_i_2_n_0 ),
        .I4(\data_out[0]_i_3_n_0 ),
        .I5(rst),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80888888)) 
    \data_out[0]_i_2 
       (.I0(data_ready),
        .I1(active_reg_0),
        .I2(word_index[1]),
        .I3(word_index[0]),
        .I4(word_index[2]),
        .O(\data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15FF1515)) 
    \data_out[0]_i_3 
       (.I0(word_index[0]),
        .I1(word_index[2]),
        .I2(word_index[1]),
        .I3(active_reg_0),
        .I4(start),
        .O(\data_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000338FAAAA)) 
    \data_out[1]_i_1 
       (.I0(data_out[1]),
        .I1(word_index[2]),
        .I2(word_index[0]),
        .I3(word_index[1]),
        .I4(data_out10_out),
        .I5(done_i_1_n_0),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003083AAAA)) 
    \data_out[2]_i_1 
       (.I0(data_out[2]),
        .I1(word_index[2]),
        .I2(word_index[0]),
        .I3(word_index[1]),
        .I4(data_out10_out),
        .I5(done_i_1_n_0),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000B0AAAA)) 
    \data_out[3]_i_1 
       (.I0(data_out[3]),
        .I1(word_index[2]),
        .I2(word_index[0]),
        .I3(word_index[1]),
        .I4(data_out10_out),
        .I5(done_i_1_n_0),
        .O(\data_out[3]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    done_i_1
       (.I0(rst),
        .I1(active_reg_0),
        .I2(start),
        .O(done_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    done_i_2
       (.I0(active_reg_0),
        .I1(data_ready),
        .O(data_out10_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    done_i_3
       (.I0(word_index[1]),
        .I1(word_index[0]),
        .I2(word_index[2]),
        .O(p_1_in));
  FDRE done_reg
       (.C(clk),
        .CE(data_out10_out),
        .D(p_1_in),
        .Q(done),
        .R(done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \word_index[0]_i_1 
       (.I0(word_index[0]),
        .O(\word_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h52)) 
    \word_index[1]_i_1 
       (.I0(word_index[0]),
        .I1(word_index[2]),
        .I2(word_index[1]),
        .O(\word_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \word_index[2]_i_1 
       (.I0(word_index[0]),
        .I1(word_index[2]),
        .I2(word_index[1]),
        .O(\word_index[2]_i_1_n_0 ));
  FDRE \word_index_reg[0] 
       (.C(clk),
        .CE(data_out10_out),
        .D(\word_index[0]_i_1_n_0 ),
        .Q(word_index[0]),
        .R(done_i_1_n_0));
  FDRE \word_index_reg[1] 
       (.C(clk),
        .CE(data_out10_out),
        .D(\word_index[1]_i_1_n_0 ),
        .Q(word_index[1]),
        .R(done_i_1_n_0));
  FDRE \word_index_reg[2] 
       (.C(clk),
        .CE(data_out10_out),
        .D(\word_index[2]_i_1_n_0 ),
        .Q(word_index[2]),
        .R(done_i_1_n_0));
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
