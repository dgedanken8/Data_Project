-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jul 21 23:27:22 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_axi_stream_master_0_0/data_project_bd_axi_stream_master_0_0_stub.vhdl
-- Design      : data_project_bd_axi_stream_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity data_project_bd_axi_stream_master_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_empty : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tvalid : out STD_LOGIC;
    axis_tlast : out STD_LOGIC;
    axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    debug_state : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end data_project_bd_axi_stream_master_0_0;

architecture stub of data_project_bd_axi_stream_master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,fifo_dout[31:0],fifo_empty,axis_tready,fifo_rd_en,axis_tdata[31:0],axis_tvalid,axis_tlast,axis_tkeep[3:0],busy,done,debug_state[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_stream_master,Vivado 2019.1";
begin
end;
