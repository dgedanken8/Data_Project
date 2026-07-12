-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 12 17:54:22 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_axi_stream_master_0_0/data_project_bd_axi_stream_master_0_0_sim_netlist.vhdl
-- Design      : data_project_bd_axi_stream_master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_axi_stream_master_0_0_axi_stream_master is
  port (
    axis_tvalid : out STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tlast : out STD_LOGIC;
    axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    debug_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_empty : in STD_LOGIC;
    start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of data_project_bd_axi_stream_master_0_0_axi_stream_master : entity is "axi_stream_master";
end data_project_bd_axi_stream_master_0_0_axi_stream_master;

architecture STRUCTURE of data_project_bd_axi_stream_master_0_0_axi_stream_master is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axis_tdata_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_tlast_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_i_2_n_0 : STD_LOGIC;
  signal \^axis_tvalid\ : STD_LOGIC;
  signal axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_reg_0 : STD_LOGIC;
  signal fifo_rd_en_i_1_n_0 : STD_LOGIC;
  signal fifo_rd_en_i_2_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal word_count : STD_LOGIC;
  signal \word_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \word_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "IDLE:0001,DONE:1000,SEND:0100,LOAD:0010";
  attribute SOFT_HLUTNM of \axis_tdata[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axis_tdata[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axis_tlast_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axis_tlast_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axis_tvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \word_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \word_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_count[3]_i_2\ : label is "soft_lutpair0";
begin
  axis_tvalid <= \^axis_tvalid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => fifo_empty,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => \^axis_tvalid\,
      I1 => axis_tready,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axis_tvalid\,
      I1 => axis_tlast_i_2_n_0,
      I2 => axis_tready,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_rd_en_i_1_n_0,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(0),
      I1 => \^axis_tvalid\,
      I2 => data_reg(0),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(0)
    );
\axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(10),
      I1 => \^axis_tvalid\,
      I2 => data_reg(10),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(10)
    );
\axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(11),
      I1 => \^axis_tvalid\,
      I2 => data_reg(11),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(11)
    );
\axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(12),
      I1 => \^axis_tvalid\,
      I2 => data_reg(12),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(12)
    );
\axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(13),
      I1 => \^axis_tvalid\,
      I2 => data_reg(13),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(13)
    );
\axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(14),
      I1 => \^axis_tvalid\,
      I2 => data_reg(14),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(14)
    );
\axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(15),
      I1 => \^axis_tvalid\,
      I2 => data_reg(15),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(15)
    );
\axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(16),
      I1 => \^axis_tvalid\,
      I2 => data_reg(16),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(16)
    );
\axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(17),
      I1 => \^axis_tvalid\,
      I2 => data_reg(17),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(17)
    );
\axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(18),
      I1 => \^axis_tvalid\,
      I2 => data_reg(18),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(18)
    );
\axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(19),
      I1 => \^axis_tvalid\,
      I2 => data_reg(19),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(19)
    );
\axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(1),
      I1 => \^axis_tvalid\,
      I2 => data_reg(1),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(1)
    );
\axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(20),
      I1 => \^axis_tvalid\,
      I2 => data_reg(20),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(20)
    );
\axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(21),
      I1 => \^axis_tvalid\,
      I2 => data_reg(21),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(21)
    );
\axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(22),
      I1 => \^axis_tvalid\,
      I2 => data_reg(22),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(22)
    );
\axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(23),
      I1 => \^axis_tvalid\,
      I2 => data_reg(23),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(23)
    );
\axis_tdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(24),
      I1 => \^axis_tvalid\,
      I2 => data_reg(24),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(24)
    );
\axis_tdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(25),
      I1 => \^axis_tvalid\,
      I2 => data_reg(25),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(25)
    );
\axis_tdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(26),
      I1 => \^axis_tvalid\,
      I2 => data_reg(26),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(26)
    );
\axis_tdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(27),
      I1 => \^axis_tvalid\,
      I2 => data_reg(27),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(27)
    );
\axis_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(28),
      I1 => \^axis_tvalid\,
      I2 => data_reg(28),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(28)
    );
\axis_tdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(29),
      I1 => \^axis_tvalid\,
      I2 => data_reg(29),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(29)
    );
\axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(2),
      I1 => \^axis_tvalid\,
      I2 => data_reg(2),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(2)
    );
\axis_tdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(30),
      I1 => \^axis_tvalid\,
      I2 => data_reg(30),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(30)
    );
\axis_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \axis_tdata[31]_i_1_n_0\
    );
\axis_tdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(31),
      I1 => \^axis_tvalid\,
      I2 => data_reg(31),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(31)
    );
\axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(3),
      I1 => \^axis_tvalid\,
      I2 => data_reg(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(3)
    );
\axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(4),
      I1 => \^axis_tvalid\,
      I2 => data_reg(4),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(4)
    );
\axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(5),
      I1 => \^axis_tvalid\,
      I2 => data_reg(5),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(5)
    );
\axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(6),
      I1 => \^axis_tvalid\,
      I2 => data_reg(6),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(6)
    );
\axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(7),
      I1 => \^axis_tvalid\,
      I2 => data_reg(7),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(7)
    );
\axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(8),
      I1 => \^axis_tvalid\,
      I2 => data_reg(8),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(8)
    );
\axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => fifo_dout(9),
      I1 => \^axis_tvalid\,
      I2 => data_reg(9),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tdata_1(9)
    );
\axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(0),
      Q => axis_tdata(0),
      R => rst
    );
\axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(10),
      Q => axis_tdata(10),
      R => rst
    );
\axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(11),
      Q => axis_tdata(11),
      R => rst
    );
\axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(12),
      Q => axis_tdata(12),
      R => rst
    );
\axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(13),
      Q => axis_tdata(13),
      R => rst
    );
\axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(14),
      Q => axis_tdata(14),
      R => rst
    );
\axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(15),
      Q => axis_tdata(15),
      R => rst
    );
\axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(16),
      Q => axis_tdata(16),
      R => rst
    );
\axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(17),
      Q => axis_tdata(17),
      R => rst
    );
\axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(18),
      Q => axis_tdata(18),
      R => rst
    );
\axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(19),
      Q => axis_tdata(19),
      R => rst
    );
\axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(1),
      Q => axis_tdata(1),
      R => rst
    );
\axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(20),
      Q => axis_tdata(20),
      R => rst
    );
\axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(21),
      Q => axis_tdata(21),
      R => rst
    );
\axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(22),
      Q => axis_tdata(22),
      R => rst
    );
\axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(23),
      Q => axis_tdata(23),
      R => rst
    );
\axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(24),
      Q => axis_tdata(24),
      R => rst
    );
\axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(25),
      Q => axis_tdata(25),
      R => rst
    );
\axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(26),
      Q => axis_tdata(26),
      R => rst
    );
\axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(27),
      Q => axis_tdata(27),
      R => rst
    );
\axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(28),
      Q => axis_tdata(28),
      R => rst
    );
\axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(29),
      Q => axis_tdata(29),
      R => rst
    );
\axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(2),
      Q => axis_tdata(2),
      R => rst
    );
\axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(30),
      Q => axis_tdata(30),
      R => rst
    );
\axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(31),
      Q => axis_tdata(31),
      R => rst
    );
\axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(3),
      Q => axis_tdata(3),
      R => rst
    );
\axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(4),
      Q => axis_tdata(4),
      R => rst
    );
\axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(5),
      Q => axis_tdata(5),
      R => rst
    );
\axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(6),
      Q => axis_tdata(6),
      R => rst
    );
\axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(7),
      Q => axis_tdata(7),
      R => rst
    );
\axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(8),
      Q => axis_tdata(8),
      R => rst
    );
\axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_tdata[31]_i_1_n_0\,
      D => axis_tdata_1(9),
      Q => axis_tdata(9),
      R => rst
    );
\axis_tkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => axis_tkeep(0),
      R => rst
    );
axis_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => axis_tlast_i_2_n_0,
      I1 => \^axis_tvalid\,
      I2 => axis_tready,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tlast_i_1_n_0
    );
axis_tlast_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \word_count_reg_n_0_[2]\,
      I1 => \word_count_reg_n_0_[1]\,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => \word_count_reg_n_0_[3]\,
      O => axis_tlast_i_2_n_0
    );
axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_tlast_i_1_n_0,
      Q => axis_tlast,
      R => rst
    );
axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^axis_tvalid\,
      I1 => axis_tready,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => axis_tvalid_i_1_n_0
    );
axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_tvalid_i_1_n_0,
      Q => \^axis_tvalid\,
      R => rst
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDCCC"
    )
        port map (
      I0 => fifo_empty,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => start,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy,
      R => rst
    );
\data_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => data_reg_0
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(0),
      Q => data_reg(0),
      R => rst
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(10),
      Q => data_reg(10),
      R => rst
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(11),
      Q => data_reg(11),
      R => rst
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(12),
      Q => data_reg(12),
      R => rst
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(13),
      Q => data_reg(13),
      R => rst
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(14),
      Q => data_reg(14),
      R => rst
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(15),
      Q => data_reg(15),
      R => rst
    );
\data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(16),
      Q => data_reg(16),
      R => rst
    );
\data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(17),
      Q => data_reg(17),
      R => rst
    );
\data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(18),
      Q => data_reg(18),
      R => rst
    );
\data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(19),
      Q => data_reg(19),
      R => rst
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(1),
      Q => data_reg(1),
      R => rst
    );
\data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(20),
      Q => data_reg(20),
      R => rst
    );
\data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(21),
      Q => data_reg(21),
      R => rst
    );
\data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(22),
      Q => data_reg(22),
      R => rst
    );
\data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(23),
      Q => data_reg(23),
      R => rst
    );
\data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(24),
      Q => data_reg(24),
      R => rst
    );
\data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(25),
      Q => data_reg(25),
      R => rst
    );
\data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(26),
      Q => data_reg(26),
      R => rst
    );
\data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(27),
      Q => data_reg(27),
      R => rst
    );
\data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(28),
      Q => data_reg(28),
      R => rst
    );
\data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(29),
      Q => data_reg(29),
      R => rst
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(2),
      Q => data_reg(2),
      R => rst
    );
\data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(30),
      Q => data_reg(30),
      R => rst
    );
\data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(31),
      Q => data_reg(31),
      R => rst
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(3),
      Q => data_reg(3),
      R => rst
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(4),
      Q => data_reg(4),
      R => rst
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(5),
      Q => data_reg(5),
      R => rst
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(6),
      Q => data_reg(6),
      R => rst
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(7),
      Q => data_reg(7),
      R => rst
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(8),
      Q => data_reg(8),
      R => rst
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_reg_0,
      D => axis_tdata_1(9),
      Q => data_reg(9),
      R => rst
    );
\debug_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state(0),
      Q => debug_state(0),
      R => rst
    );
\debug_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state(1),
      Q => debug_state(1),
      R => rst
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => done,
      R => rst
    );
fifo_rd_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5C0C0C0"
    )
        port map (
      I0 => fifo_empty,
      I1 => fifo_rd_en_i_2_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => start,
      O => fifo_rd_en_i_1_n_0
    );
fifo_rd_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA00000000"
    )
        port map (
      I0 => axis_tready,
      I1 => \word_count_reg_n_0_[2]\,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => \word_count_reg_n_0_[1]\,
      I4 => \word_count_reg_n_0_[3]\,
      I5 => \^axis_tvalid\,
      O => fifo_rd_en_i_2_n_0
    );
fifo_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_rd_en_i_1_n_0,
      Q => fifo_rd_en,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D111C000"
    )
        port map (
      I0 => fifo_empty,
      I1 => state(1),
      I2 => \^axis_tvalid\,
      I3 => axis_tready,
      I4 => start,
      I5 => state(0),
      O => next_state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5155AAAA"
    )
        port map (
      I0 => state(0),
      I1 => \^axis_tvalid\,
      I2 => axis_tlast_i_2_n_0,
      I3 => axis_tready,
      I4 => state(1),
      O => next_state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => state(1),
      R => rst
    );
\word_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \word_count_reg_n_0_[0]\,
      O => \word_count[0]_i_1_n_0\
    );
\word_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => \word_count_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \word_count[1]_i_1_n_0\
    );
\word_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => \word_count_reg_n_0_[1]\,
      I2 => \word_count_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \word_count[2]_i_1_n_0\
    );
\word_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => fifo_rd_en_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => word_count
    );
\word_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \word_count_reg_n_0_[2]\,
      I1 => \word_count_reg_n_0_[0]\,
      I2 => \word_count_reg_n_0_[1]\,
      I3 => \word_count_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \word_count[3]_i_2_n_0\
    );
\word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => word_count,
      D => \word_count[0]_i_1_n_0\,
      Q => \word_count_reg_n_0_[0]\,
      R => rst
    );
\word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => word_count,
      D => \word_count[1]_i_1_n_0\,
      Q => \word_count_reg_n_0_[1]\,
      R => rst
    );
\word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => word_count,
      D => \word_count[2]_i_1_n_0\,
      Q => \word_count_reg_n_0_[2]\,
      R => rst
    );
\word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => word_count,
      D => \word_count[3]_i_2_n_0\,
      Q => \word_count_reg_n_0_[3]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_axi_stream_master_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of data_project_bd_axi_stream_master_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of data_project_bd_axi_stream_master_0_0 : entity is "data_project_bd_axi_stream_master_0_0,axi_stream_master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of data_project_bd_axi_stream_master_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of data_project_bd_axi_stream_master_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of data_project_bd_axi_stream_master_0_0 : entity is "axi_stream_master,Vivado 2019.1";
end data_project_bd_axi_stream_master_0_0;

architecture STRUCTURE of data_project_bd_axi_stream_master_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^axis_tkeep\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^debug_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_tlast : signal is "xilinx.com:interface:axis:1.0 axis TLAST";
  attribute X_INTERFACE_INFO of axis_tready : signal is "xilinx.com:interface:axis:1.0 axis TREADY";
  attribute X_INTERFACE_INFO of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axis TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tdata : signal is "xilinx.com:interface:axis:1.0 axis TDATA";
  attribute X_INTERFACE_INFO of axis_tkeep : signal is "xilinx.com:interface:axis:1.0 axis TKEEP";
  attribute X_INTERFACE_PARAMETER of axis_tkeep : signal is "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  axis_tkeep(3) <= \^axis_tkeep\(2);
  axis_tkeep(2) <= \^axis_tkeep\(2);
  axis_tkeep(1) <= \^axis_tkeep\(2);
  axis_tkeep(0) <= \^axis_tkeep\(2);
  debug_state(3) <= \<const0>\;
  debug_state(2) <= \<const0>\;
  debug_state(1 downto 0) <= \^debug_state\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.data_project_bd_axi_stream_master_0_0_axi_stream_master
     port map (
      axis_tdata(31 downto 0) => axis_tdata(31 downto 0),
      axis_tkeep(0) => \^axis_tkeep\(2),
      axis_tlast => axis_tlast,
      axis_tready => axis_tready,
      axis_tvalid => axis_tvalid,
      busy => busy,
      clk => clk,
      debug_state(1 downto 0) => \^debug_state\(1 downto 0),
      done => done,
      fifo_dout(31 downto 0) => fifo_dout(31 downto 0),
      fifo_empty => fifo_empty,
      fifo_rd_en => fifo_rd_en,
      rst => rst,
      start => start
    );
end STRUCTURE;
