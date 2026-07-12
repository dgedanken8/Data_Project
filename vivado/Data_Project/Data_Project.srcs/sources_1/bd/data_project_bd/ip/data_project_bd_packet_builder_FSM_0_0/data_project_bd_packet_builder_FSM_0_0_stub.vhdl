-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 12 17:54:23 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_packet_builder_FSM_0_0/data_project_bd_packet_builder_FSM_0_0_stub.vhdl
-- Design      : data_project_bd_packet_builder_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity data_project_bd_packet_builder_FSM_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    packet_word_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    packet_valid : out STD_LOGIC;
    packet_done : out STD_LOGIC;
    data_ready : out STD_LOGIC
  );

end data_project_bd_packet_builder_FSM_0_0;

architecture stub of data_project_bd_packet_builder_FSM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,data_valid,data_in[31:0],packet_word_out[31:0],packet_valid,packet_done,data_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "packet_builder_FSM,Vivado 2019.1";
begin
end;
