-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 12 17:54:23 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_packet_builder_FSM_0_0/data_project_bd_packet_builder_FSM_0_0_sim_netlist.vhdl
-- Design      : data_project_bd_packet_builder_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM is
  port (
    data_ready : out STD_LOGIC;
    packet_word_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    packet_valid : out STD_LOGIC;
    packet_done : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    start : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM : entity is "packet_builder_FSM";
end data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM;

architecture STRUCTURE of data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \__0/i__n_0\ : STD_LOGIC;
  signal \__1/i__n_0\ : STD_LOGIC;
  signal checksum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \checksum0_carry__0_n_0\ : STD_LOGIC;
  signal \checksum0_carry__0_n_1\ : STD_LOGIC;
  signal \checksum0_carry__0_n_2\ : STD_LOGIC;
  signal \checksum0_carry__0_n_3\ : STD_LOGIC;
  signal \checksum0_carry__1_n_0\ : STD_LOGIC;
  signal \checksum0_carry__1_n_1\ : STD_LOGIC;
  signal \checksum0_carry__1_n_2\ : STD_LOGIC;
  signal \checksum0_carry__1_n_3\ : STD_LOGIC;
  signal \checksum0_carry__2_n_0\ : STD_LOGIC;
  signal \checksum0_carry__2_n_1\ : STD_LOGIC;
  signal \checksum0_carry__2_n_2\ : STD_LOGIC;
  signal \checksum0_carry__2_n_3\ : STD_LOGIC;
  signal \checksum0_carry__3_n_0\ : STD_LOGIC;
  signal \checksum0_carry__3_n_1\ : STD_LOGIC;
  signal \checksum0_carry__3_n_2\ : STD_LOGIC;
  signal \checksum0_carry__3_n_3\ : STD_LOGIC;
  signal \checksum0_carry__4_n_0\ : STD_LOGIC;
  signal \checksum0_carry__4_n_1\ : STD_LOGIC;
  signal \checksum0_carry__4_n_2\ : STD_LOGIC;
  signal \checksum0_carry__4_n_3\ : STD_LOGIC;
  signal \checksum0_carry__5_n_0\ : STD_LOGIC;
  signal \checksum0_carry__5_n_1\ : STD_LOGIC;
  signal \checksum0_carry__5_n_2\ : STD_LOGIC;
  signal \checksum0_carry__5_n_3\ : STD_LOGIC;
  signal \checksum0_carry__6_n_1\ : STD_LOGIC;
  signal \checksum0_carry__6_n_2\ : STD_LOGIC;
  signal \checksum0_carry__6_n_3\ : STD_LOGIC;
  signal \checksum0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__4_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__5_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_1__6_n_0\ : STD_LOGIC;
  signal checksum0_carry_i_1_n_0 : STD_LOGIC;
  signal \checksum0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__4_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__5_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_2__6_n_0\ : STD_LOGIC;
  signal checksum0_carry_i_2_n_0 : STD_LOGIC;
  signal \checksum0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__4_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__5_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_3__6_n_0\ : STD_LOGIC;
  signal checksum0_carry_i_3_n_0 : STD_LOGIC;
  signal \checksum0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__4_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__5_n_0\ : STD_LOGIC;
  signal \checksum0_carry_i_4__6_n_0\ : STD_LOGIC;
  signal checksum0_carry_i_4_n_0 : STD_LOGIC;
  signal checksum0_carry_n_0 : STD_LOGIC;
  signal checksum0_carry_n_1 : STD_LOGIC;
  signal checksum0_carry_n_2 : STD_LOGIC;
  signal checksum0_carry_n_3 : STD_LOGIC;
  signal \checksum[0]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[10]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[11]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[12]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[13]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[14]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[15]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[16]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[17]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[18]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[19]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[1]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[20]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[21]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[22]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[23]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[24]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[25]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[26]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[27]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[28]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[29]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[2]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[30]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[31]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[3]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[4]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[5]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[6]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[7]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[8]_i_1_n_0\ : STD_LOGIC;
  signal \checksum[9]_i_1_n_0\ : STD_LOGIC;
  signal data_index : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \data_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \^data_ready\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^packet_done\ : STD_LOGIC;
  signal packet_done_i_1_n_0 : STD_LOGIC;
  signal \packet_word_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \packet_word_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_checksum0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "SEND_LENGTH:000100,DONE:100000,IDLE:000001,SEND_HEADER:000010,SEND_DATA:001000,SEND_CHECKSUM:010000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \checksum[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \checksum[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \checksum[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \checksum[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \checksum[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \checksum[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \checksum[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \checksum[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \checksum[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \checksum[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \checksum[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \checksum[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \checksum[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \checksum[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \checksum[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \checksum[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \checksum[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \checksum[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \checksum[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \checksum[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \checksum[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \checksum[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \checksum[30]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \checksum[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \checksum[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \checksum[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \checksum[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \checksum[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \checksum[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \checksum[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \checksum[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_index[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_index[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_index[2]_i_2\ : label is "soft_lutpair0";
begin
  data_ready <= \^data_ready\;
  packet_done <= \^packet_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \data_index_reg_n_0_[0]\,
      I2 => \data_index_reg_n_0_[2]\,
      I3 => \data_index_reg_n_0_[1]\,
      I4 => data_valid,
      I5 => \^data_ready\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \^data_ready\,
      I1 => \data_index_reg_n_0_[1]\,
      I2 => \data_index_reg_n_0_[0]\,
      I3 => \data_index_reg_n_0_[2]\,
      I4 => data_valid,
      O => \FSM_onehot_state[4]_i_1_n_0\
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
      D => \FSM_onehot_state[1]_i_1_n_0\,
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
      D => \FSM_onehot_state_reg_n_0_[1]\,
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
      Q => \^data_ready\,
      R => rst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => rst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => rst
    );
\__0/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^data_ready\,
      I3 => data_valid,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \__0/i__n_0\
    );
\__1/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^data_ready\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \__1/i__n_0\
    );
checksum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => checksum0_carry_n_0,
      CO(2) => checksum0_carry_n_1,
      CO(1) => checksum0_carry_n_2,
      CO(0) => checksum0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => checksum(3 downto 0),
      O(3 downto 0) => in5(3 downto 0),
      S(3) => checksum0_carry_i_1_n_0,
      S(2) => checksum0_carry_i_2_n_0,
      S(1) => checksum0_carry_i_3_n_0,
      S(0) => checksum0_carry_i_4_n_0
    );
\checksum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => checksum0_carry_n_0,
      CO(3) => \checksum0_carry__0_n_0\,
      CO(2) => \checksum0_carry__0_n_1\,
      CO(1) => \checksum0_carry__0_n_2\,
      CO(0) => \checksum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(7 downto 4),
      O(3 downto 0) => in5(7 downto 4),
      S(3) => \checksum0_carry_i_1__0_n_0\,
      S(2) => \checksum0_carry_i_2__0_n_0\,
      S(1) => \checksum0_carry_i_3__0_n_0\,
      S(0) => \checksum0_carry_i_4__0_n_0\
    );
\checksum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__0_n_0\,
      CO(3) => \checksum0_carry__1_n_0\,
      CO(2) => \checksum0_carry__1_n_1\,
      CO(1) => \checksum0_carry__1_n_2\,
      CO(0) => \checksum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(11 downto 8),
      O(3 downto 0) => in5(11 downto 8),
      S(3) => \checksum0_carry_i_1__1_n_0\,
      S(2) => \checksum0_carry_i_2__1_n_0\,
      S(1) => \checksum0_carry_i_3__1_n_0\,
      S(0) => \checksum0_carry_i_4__1_n_0\
    );
\checksum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__1_n_0\,
      CO(3) => \checksum0_carry__2_n_0\,
      CO(2) => \checksum0_carry__2_n_1\,
      CO(1) => \checksum0_carry__2_n_2\,
      CO(0) => \checksum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(15 downto 12),
      O(3 downto 0) => in5(15 downto 12),
      S(3) => \checksum0_carry_i_1__2_n_0\,
      S(2) => \checksum0_carry_i_2__2_n_0\,
      S(1) => \checksum0_carry_i_3__2_n_0\,
      S(0) => \checksum0_carry_i_4__2_n_0\
    );
\checksum0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__2_n_0\,
      CO(3) => \checksum0_carry__3_n_0\,
      CO(2) => \checksum0_carry__3_n_1\,
      CO(1) => \checksum0_carry__3_n_2\,
      CO(0) => \checksum0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(19 downto 16),
      O(3 downto 0) => in5(19 downto 16),
      S(3) => \checksum0_carry_i_1__3_n_0\,
      S(2) => \checksum0_carry_i_2__3_n_0\,
      S(1) => \checksum0_carry_i_3__3_n_0\,
      S(0) => \checksum0_carry_i_4__3_n_0\
    );
\checksum0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__3_n_0\,
      CO(3) => \checksum0_carry__4_n_0\,
      CO(2) => \checksum0_carry__4_n_1\,
      CO(1) => \checksum0_carry__4_n_2\,
      CO(0) => \checksum0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(23 downto 20),
      O(3 downto 0) => in5(23 downto 20),
      S(3) => \checksum0_carry_i_1__4_n_0\,
      S(2) => \checksum0_carry_i_2__4_n_0\,
      S(1) => \checksum0_carry_i_3__4_n_0\,
      S(0) => \checksum0_carry_i_4__4_n_0\
    );
\checksum0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__4_n_0\,
      CO(3) => \checksum0_carry__5_n_0\,
      CO(2) => \checksum0_carry__5_n_1\,
      CO(1) => \checksum0_carry__5_n_2\,
      CO(0) => \checksum0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => checksum(27 downto 24),
      O(3 downto 0) => in5(27 downto 24),
      S(3) => \checksum0_carry_i_1__5_n_0\,
      S(2) => \checksum0_carry_i_2__5_n_0\,
      S(1) => \checksum0_carry_i_3__5_n_0\,
      S(0) => \checksum0_carry_i_4__5_n_0\
    );
\checksum0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum0_carry__5_n_0\,
      CO(3) => \NLW_checksum0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \checksum0_carry__6_n_1\,
      CO(1) => \checksum0_carry__6_n_2\,
      CO(0) => \checksum0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => checksum(30 downto 28),
      O(3 downto 0) => in5(31 downto 28),
      S(3) => \checksum0_carry_i_1__6_n_0\,
      S(2) => \checksum0_carry_i_2__6_n_0\,
      S(1) => \checksum0_carry_i_3__6_n_0\,
      S(0) => \checksum0_carry_i_4__6_n_0\
    );
checksum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(3),
      I1 => data_in(3),
      O => checksum0_carry_i_1_n_0
    );
\checksum0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(7),
      I1 => data_in(7),
      O => \checksum0_carry_i_1__0_n_0\
    );
\checksum0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(11),
      I1 => data_in(11),
      O => \checksum0_carry_i_1__1_n_0\
    );
\checksum0_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(15),
      I1 => data_in(15),
      O => \checksum0_carry_i_1__2_n_0\
    );
\checksum0_carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(19),
      I1 => data_in(19),
      O => \checksum0_carry_i_1__3_n_0\
    );
\checksum0_carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(23),
      I1 => data_in(23),
      O => \checksum0_carry_i_1__4_n_0\
    );
\checksum0_carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(27),
      I1 => data_in(27),
      O => \checksum0_carry_i_1__5_n_0\
    );
\checksum0_carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(31),
      I1 => data_in(31),
      O => \checksum0_carry_i_1__6_n_0\
    );
checksum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(2),
      I1 => data_in(2),
      O => checksum0_carry_i_2_n_0
    );
\checksum0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(6),
      I1 => data_in(6),
      O => \checksum0_carry_i_2__0_n_0\
    );
\checksum0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(10),
      I1 => data_in(10),
      O => \checksum0_carry_i_2__1_n_0\
    );
\checksum0_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(14),
      I1 => data_in(14),
      O => \checksum0_carry_i_2__2_n_0\
    );
\checksum0_carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(18),
      I1 => data_in(18),
      O => \checksum0_carry_i_2__3_n_0\
    );
\checksum0_carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(22),
      I1 => data_in(22),
      O => \checksum0_carry_i_2__4_n_0\
    );
\checksum0_carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(26),
      I1 => data_in(26),
      O => \checksum0_carry_i_2__5_n_0\
    );
\checksum0_carry_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(30),
      I1 => data_in(30),
      O => \checksum0_carry_i_2__6_n_0\
    );
checksum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(1),
      I1 => data_in(1),
      O => checksum0_carry_i_3_n_0
    );
\checksum0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(5),
      I1 => data_in(5),
      O => \checksum0_carry_i_3__0_n_0\
    );
\checksum0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(9),
      I1 => data_in(9),
      O => \checksum0_carry_i_3__1_n_0\
    );
\checksum0_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(13),
      I1 => data_in(13),
      O => \checksum0_carry_i_3__2_n_0\
    );
\checksum0_carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(17),
      I1 => data_in(17),
      O => \checksum0_carry_i_3__3_n_0\
    );
\checksum0_carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(21),
      I1 => data_in(21),
      O => \checksum0_carry_i_3__4_n_0\
    );
\checksum0_carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(25),
      I1 => data_in(25),
      O => \checksum0_carry_i_3__5_n_0\
    );
\checksum0_carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(29),
      I1 => data_in(29),
      O => \checksum0_carry_i_3__6_n_0\
    );
checksum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(0),
      I1 => data_in(0),
      O => checksum0_carry_i_4_n_0
    );
\checksum0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(4),
      I1 => data_in(4),
      O => \checksum0_carry_i_4__0_n_0\
    );
\checksum0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(8),
      I1 => data_in(8),
      O => \checksum0_carry_i_4__1_n_0\
    );
\checksum0_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(12),
      I1 => data_in(12),
      O => \checksum0_carry_i_4__2_n_0\
    );
\checksum0_carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(16),
      I1 => data_in(16),
      O => \checksum0_carry_i_4__3_n_0\
    );
\checksum0_carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(20),
      I1 => data_in(20),
      O => \checksum0_carry_i_4__4_n_0\
    );
\checksum0_carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(24),
      I1 => data_in(24),
      O => \checksum0_carry_i_4__5_n_0\
    );
\checksum0_carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => checksum(28),
      I1 => data_in(28),
      O => \checksum0_carry_i_4__6_n_0\
    );
\checksum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(0),
      O => \checksum[0]_i_1_n_0\
    );
\checksum[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(10),
      O => \checksum[10]_i_1_n_0\
    );
\checksum[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(11),
      O => \checksum[11]_i_1_n_0\
    );
\checksum[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(12),
      O => \checksum[12]_i_1_n_0\
    );
\checksum[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(13),
      O => \checksum[13]_i_1_n_0\
    );
\checksum[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(14),
      O => \checksum[14]_i_1_n_0\
    );
\checksum[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(15),
      O => \checksum[15]_i_1_n_0\
    );
\checksum[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(16),
      O => \checksum[16]_i_1_n_0\
    );
\checksum[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(17),
      O => \checksum[17]_i_1_n_0\
    );
\checksum[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(18),
      O => \checksum[18]_i_1_n_0\
    );
\checksum[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(19),
      O => \checksum[19]_i_1_n_0\
    );
\checksum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(1),
      O => \checksum[1]_i_1_n_0\
    );
\checksum[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(20),
      O => \checksum[20]_i_1_n_0\
    );
\checksum[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(21),
      O => \checksum[21]_i_1_n_0\
    );
\checksum[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(22),
      O => \checksum[22]_i_1_n_0\
    );
\checksum[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(23),
      O => \checksum[23]_i_1_n_0\
    );
\checksum[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(24),
      O => \checksum[24]_i_1_n_0\
    );
\checksum[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(25),
      O => \checksum[25]_i_1_n_0\
    );
\checksum[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(26),
      O => \checksum[26]_i_1_n_0\
    );
\checksum[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(27),
      O => \checksum[27]_i_1_n_0\
    );
\checksum[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(28),
      O => \checksum[28]_i_1_n_0\
    );
\checksum[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(29),
      O => \checksum[29]_i_1_n_0\
    );
\checksum[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(2),
      O => \checksum[2]_i_1_n_0\
    );
\checksum[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(30),
      O => \checksum[30]_i_1_n_0\
    );
\checksum[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(31),
      O => \checksum[31]_i_1_n_0\
    );
\checksum[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(3),
      O => \checksum[3]_i_1_n_0\
    );
\checksum[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(4),
      O => \checksum[4]_i_1_n_0\
    );
\checksum[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(5),
      O => \checksum[5]_i_1_n_0\
    );
\checksum[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(6),
      O => \checksum[6]_i_1_n_0\
    );
\checksum[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(7),
      O => \checksum[7]_i_1_n_0\
    );
\checksum[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(8),
      O => \checksum[8]_i_1_n_0\
    );
\checksum[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_ready\,
      I1 => in5(9),
      O => \checksum[9]_i_1_n_0\
    );
\checksum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[0]_i_1_n_0\,
      Q => checksum(0),
      R => rst
    );
\checksum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[10]_i_1_n_0\,
      Q => checksum(10),
      R => rst
    );
\checksum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[11]_i_1_n_0\,
      Q => checksum(11),
      R => rst
    );
\checksum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[12]_i_1_n_0\,
      Q => checksum(12),
      R => rst
    );
\checksum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[13]_i_1_n_0\,
      Q => checksum(13),
      R => rst
    );
\checksum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[14]_i_1_n_0\,
      Q => checksum(14),
      R => rst
    );
\checksum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[15]_i_1_n_0\,
      Q => checksum(15),
      R => rst
    );
\checksum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[16]_i_1_n_0\,
      Q => checksum(16),
      R => rst
    );
\checksum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[17]_i_1_n_0\,
      Q => checksum(17),
      R => rst
    );
\checksum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[18]_i_1_n_0\,
      Q => checksum(18),
      R => rst
    );
\checksum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[19]_i_1_n_0\,
      Q => checksum(19),
      R => rst
    );
\checksum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[1]_i_1_n_0\,
      Q => checksum(1),
      R => rst
    );
\checksum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[20]_i_1_n_0\,
      Q => checksum(20),
      R => rst
    );
\checksum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[21]_i_1_n_0\,
      Q => checksum(21),
      R => rst
    );
\checksum_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[22]_i_1_n_0\,
      Q => checksum(22),
      R => rst
    );
\checksum_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[23]_i_1_n_0\,
      Q => checksum(23),
      R => rst
    );
\checksum_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[24]_i_1_n_0\,
      Q => checksum(24),
      R => rst
    );
\checksum_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[25]_i_1_n_0\,
      Q => checksum(25),
      R => rst
    );
\checksum_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[26]_i_1_n_0\,
      Q => checksum(26),
      R => rst
    );
\checksum_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[27]_i_1_n_0\,
      Q => checksum(27),
      R => rst
    );
\checksum_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[28]_i_1_n_0\,
      Q => checksum(28),
      R => rst
    );
\checksum_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[29]_i_1_n_0\,
      Q => checksum(29),
      R => rst
    );
\checksum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[2]_i_1_n_0\,
      Q => checksum(2),
      R => rst
    );
\checksum_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[30]_i_1_n_0\,
      Q => checksum(30),
      R => rst
    );
\checksum_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[31]_i_1_n_0\,
      Q => checksum(31),
      R => rst
    );
\checksum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[3]_i_1_n_0\,
      Q => checksum(3),
      R => rst
    );
\checksum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[4]_i_1_n_0\,
      Q => checksum(4),
      R => rst
    );
\checksum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[5]_i_1_n_0\,
      Q => checksum(5),
      R => rst
    );
\checksum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[6]_i_1_n_0\,
      Q => checksum(6),
      R => rst
    );
\checksum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[7]_i_1_n_0\,
      Q => checksum(7),
      R => rst
    );
\checksum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[8]_i_1_n_0\,
      Q => checksum(8),
      R => rst
    );
\checksum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \checksum[9]_i_1_n_0\,
      Q => checksum(9),
      R => rst
    );
\data_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_ready\,
      I1 => \data_index_reg_n_0_[0]\,
      O => \data_index[0]_i_1_n_0\
    );
\data_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^data_ready\,
      I1 => \data_index_reg_n_0_[1]\,
      I2 => \data_index_reg_n_0_[0]\,
      O => data_index(1)
    );
\data_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => data_valid,
      I2 => \^data_ready\,
      O => \data_index[2]_i_1_n_0\
    );
\data_index[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \^data_ready\,
      I1 => \data_index_reg_n_0_[2]\,
      I2 => \data_index_reg_n_0_[1]\,
      I3 => \data_index_reg_n_0_[0]\,
      O => data_index(2)
    );
\data_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => \data_index[0]_i_1_n_0\,
      Q => \data_index_reg_n_0_[0]\,
      R => rst
    );
\data_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => data_index(1),
      Q => \data_index_reg_n_0_[1]\,
      R => rst
    );
\data_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_index[2]_i_1_n_0\,
      D => data_index(2),
      Q => \data_index_reg_n_0_[2]\,
      R => rst
    );
packet_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF51FF00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^data_ready\,
      I2 => data_valid,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \^packet_done\,
      O => packet_done_i_1_n_0
    );
packet_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => packet_done_i_1_n_0,
      Q => \^packet_done\,
      R => rst
    );
packet_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \__0/i__n_0\,
      Q => packet_valid,
      R => rst
    );
\packet_word_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(0),
      I3 => \^data_ready\,
      I4 => data_in(0),
      I5 => data_valid,
      O => \packet_word_out[0]_i_1_n_0\
    );
\packet_word_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(10),
      I2 => \^data_ready\,
      I3 => checksum(10),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[10]_i_1_n_0\
    );
\packet_word_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(11),
      I2 => \^data_ready\,
      I3 => checksum(11),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[11]_i_1_n_0\
    );
\packet_word_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(12),
      I2 => \^data_ready\,
      I3 => checksum(12),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[12]_i_1_n_0\
    );
\packet_word_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(13),
      I2 => \^data_ready\,
      I3 => checksum(13),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[13]_i_1_n_0\
    );
\packet_word_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(14),
      I2 => \^data_ready\,
      I3 => checksum(14),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[14]_i_1_n_0\
    );
\packet_word_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(15),
      I2 => \^data_ready\,
      I3 => checksum(15),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[15]_i_1_n_0\
    );
\packet_word_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(16),
      I3 => \^data_ready\,
      I4 => data_in(16),
      I5 => data_valid,
      O => \packet_word_out[16]_i_1_n_0\
    );
\packet_word_out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(17),
      I2 => \^data_ready\,
      I3 => checksum(17),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[17]_i_1_n_0\
    );
\packet_word_out[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(18),
      I3 => \^data_ready\,
      I4 => data_in(18),
      I5 => data_valid,
      O => \packet_word_out[18]_i_1_n_0\
    );
\packet_word_out[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(19),
      I2 => \^data_ready\,
      I3 => checksum(19),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[19]_i_1_n_0\
    );
\packet_word_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(1),
      I3 => \^data_ready\,
      I4 => data_in(1),
      I5 => data_valid,
      O => \packet_word_out[1]_i_1_n_0\
    );
\packet_word_out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(20),
      I2 => \^data_ready\,
      I3 => checksum(20),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[20]_i_1_n_0\
    );
\packet_word_out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(21),
      I3 => \^data_ready\,
      I4 => data_in(21),
      I5 => data_valid,
      O => \packet_word_out[21]_i_1_n_0\
    );
\packet_word_out[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(22),
      I2 => \^data_ready\,
      I3 => checksum(22),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[22]_i_1_n_0\
    );
\packet_word_out[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(23),
      I3 => \^data_ready\,
      I4 => data_in(23),
      I5 => data_valid,
      O => \packet_word_out[23]_i_1_n_0\
    );
\packet_word_out[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(24),
      I3 => \^data_ready\,
      I4 => data_in(24),
      I5 => data_valid,
      O => \packet_word_out[24]_i_1_n_0\
    );
\packet_word_out[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(25),
      I2 => \^data_ready\,
      I3 => checksum(25),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[25]_i_1_n_0\
    );
\packet_word_out[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(26),
      I3 => \^data_ready\,
      I4 => data_in(26),
      I5 => data_valid,
      O => \packet_word_out[26]_i_1_n_0\
    );
\packet_word_out[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(27),
      I2 => \^data_ready\,
      I3 => checksum(27),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[27]_i_1_n_0\
    );
\packet_word_out[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(28),
      I2 => \^data_ready\,
      I3 => checksum(28),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[28]_i_1_n_0\
    );
\packet_word_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(29),
      I3 => \^data_ready\,
      I4 => data_in(29),
      I5 => data_valid,
      O => \packet_word_out[29]_i_1_n_0\
    );
\packet_word_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(2),
      I3 => \^data_ready\,
      I4 => data_in(2),
      I5 => data_valid,
      O => \packet_word_out[2]_i_1_n_0\
    );
\packet_word_out[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(30),
      I2 => \^data_ready\,
      I3 => checksum(30),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[30]_i_1_n_0\
    );
\packet_word_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => checksum(31),
      I3 => \^data_ready\,
      I4 => data_in(31),
      I5 => data_valid,
      O => \packet_word_out[31]_i_1_n_0\
    );
\packet_word_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(3),
      I2 => \^data_ready\,
      I3 => checksum(3),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[3]_i_1_n_0\
    );
\packet_word_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(4),
      I2 => \^data_ready\,
      I3 => checksum(4),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[4]_i_1_n_0\
    );
\packet_word_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(5),
      I2 => \^data_ready\,
      I3 => checksum(5),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[5]_i_1_n_0\
    );
\packet_word_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(6),
      I2 => \^data_ready\,
      I3 => checksum(6),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[6]_i_1_n_0\
    );
\packet_word_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(7),
      I2 => \^data_ready\,
      I3 => checksum(7),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[7]_i_1_n_0\
    );
\packet_word_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(8),
      I2 => \^data_ready\,
      I3 => checksum(8),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[8]_i_1_n_0\
    );
\packet_word_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_valid,
      I1 => data_in(9),
      I2 => \^data_ready\,
      I3 => checksum(9),
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \packet_word_out[9]_i_1_n_0\
    );
\packet_word_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[0]_i_1_n_0\,
      Q => packet_word_out(0),
      R => rst
    );
\packet_word_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[10]_i_1_n_0\,
      Q => packet_word_out(10),
      R => rst
    );
\packet_word_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[11]_i_1_n_0\,
      Q => packet_word_out(11),
      R => rst
    );
\packet_word_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[12]_i_1_n_0\,
      Q => packet_word_out(12),
      R => rst
    );
\packet_word_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[13]_i_1_n_0\,
      Q => packet_word_out(13),
      R => rst
    );
\packet_word_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[14]_i_1_n_0\,
      Q => packet_word_out(14),
      R => rst
    );
\packet_word_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[15]_i_1_n_0\,
      Q => packet_word_out(15),
      R => rst
    );
\packet_word_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[16]_i_1_n_0\,
      Q => packet_word_out(16),
      R => rst
    );
\packet_word_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[17]_i_1_n_0\,
      Q => packet_word_out(17),
      R => rst
    );
\packet_word_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[18]_i_1_n_0\,
      Q => packet_word_out(18),
      R => rst
    );
\packet_word_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[19]_i_1_n_0\,
      Q => packet_word_out(19),
      R => rst
    );
\packet_word_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[1]_i_1_n_0\,
      Q => packet_word_out(1),
      R => rst
    );
\packet_word_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[20]_i_1_n_0\,
      Q => packet_word_out(20),
      R => rst
    );
\packet_word_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[21]_i_1_n_0\,
      Q => packet_word_out(21),
      R => rst
    );
\packet_word_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[22]_i_1_n_0\,
      Q => packet_word_out(22),
      R => rst
    );
\packet_word_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[23]_i_1_n_0\,
      Q => packet_word_out(23),
      R => rst
    );
\packet_word_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[24]_i_1_n_0\,
      Q => packet_word_out(24),
      R => rst
    );
\packet_word_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[25]_i_1_n_0\,
      Q => packet_word_out(25),
      R => rst
    );
\packet_word_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[26]_i_1_n_0\,
      Q => packet_word_out(26),
      R => rst
    );
\packet_word_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[27]_i_1_n_0\,
      Q => packet_word_out(27),
      R => rst
    );
\packet_word_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[28]_i_1_n_0\,
      Q => packet_word_out(28),
      R => rst
    );
\packet_word_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[29]_i_1_n_0\,
      Q => packet_word_out(29),
      R => rst
    );
\packet_word_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[2]_i_1_n_0\,
      Q => packet_word_out(2),
      R => rst
    );
\packet_word_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[30]_i_1_n_0\,
      Q => packet_word_out(30),
      R => rst
    );
\packet_word_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[31]_i_1_n_0\,
      Q => packet_word_out(31),
      R => rst
    );
\packet_word_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[3]_i_1_n_0\,
      Q => packet_word_out(3),
      R => rst
    );
\packet_word_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[4]_i_1_n_0\,
      Q => packet_word_out(4),
      R => rst
    );
\packet_word_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[5]_i_1_n_0\,
      Q => packet_word_out(5),
      R => rst
    );
\packet_word_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[6]_i_1_n_0\,
      Q => packet_word_out(6),
      R => rst
    );
\packet_word_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[7]_i_1_n_0\,
      Q => packet_word_out(7),
      R => rst
    );
\packet_word_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[8]_i_1_n_0\,
      Q => packet_word_out(8),
      R => rst
    );
\packet_word_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \packet_word_out[9]_i_1_n_0\,
      Q => packet_word_out(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_packet_builder_FSM_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of data_project_bd_packet_builder_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of data_project_bd_packet_builder_FSM_0_0 : entity is "data_project_bd_packet_builder_FSM_0_0,packet_builder_FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of data_project_bd_packet_builder_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of data_project_bd_packet_builder_FSM_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of data_project_bd_packet_builder_FSM_0_0 : entity is "packet_builder_FSM,Vivado 2019.1";
end data_project_bd_packet_builder_FSM_0_0;

architecture STRUCTURE of data_project_bd_packet_builder_FSM_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.data_project_bd_packet_builder_FSM_0_0_packet_builder_FSM
     port map (
      clk => clk,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_ready => data_ready,
      data_valid => data_valid,
      packet_done => packet_done,
      packet_valid => packet_valid,
      packet_word_out(31 downto 0) => packet_word_out(31 downto 0),
      rst => rst,
      start => start
    );
end STRUCTURE;
