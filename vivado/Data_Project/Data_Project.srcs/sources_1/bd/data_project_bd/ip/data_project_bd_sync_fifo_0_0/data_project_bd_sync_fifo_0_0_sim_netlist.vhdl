-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 12 17:54:22 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_sync_fifo_0_0/data_project_bd_sync_fifo_0_0_sim_netlist.vhdl
-- Design      : data_project_bd_sync_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_sync_fifo_0_0_sync_fifo is
  port (
    \count_reg[1]_0\ : out STD_LOGIC;
    \count_reg[0]_0\ : out STD_LOGIC;
    \count_reg[4]_0\ : out STD_LOGIC;
    \count_reg[2]_0\ : out STD_LOGIC;
    \count_reg[3]_0\ : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of data_project_bd_sync_fifo_0_0_sync_fifo : entity is "sync_fifo";
end data_project_bd_sync_fifo_0_0_sync_fifo;

architecture STRUCTURE of data_project_bd_sync_fifo_0_0_sync_fifo is
  signal count : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg[1]_0\ : STD_LOGIC;
  signal \^count_reg[2]_0\ : STD_LOGIC;
  signal \^count_reg[3]_0\ : STD_LOGIC;
  signal \^count_reg[4]_0\ : STD_LOGIC;
  signal dout0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dout[31]_i_1_n_0\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal overflow_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_pr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_pr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_pr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_pr[3]_i_1_n_0\ : STD_LOGIC;
  signal underflow_i_1_n_0 : STD_LOGIC;
  signal wr_pr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_5 : label is "inst/mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_17 : label is "inst/mem";
  attribute ram_addr_begin of mem_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_17 : label is 15;
  attribute ram_offset of mem_reg_0_15_12_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_23 : label is "inst/mem";
  attribute ram_addr_begin of mem_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_23 : label is 15;
  attribute ram_offset of mem_reg_0_15_18_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_29 : label is "inst/mem";
  attribute ram_addr_begin of mem_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_29 : label is 15;
  attribute ram_offset of mem_reg_0_15_24_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_31 : label is "inst/mem";
  attribute ram_addr_begin of mem_reg_0_15_30_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_31 : label is 15;
  attribute ram_offset of mem_reg_0_15_30_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_31 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_11 : label is "inst/mem";
  attribute ram_addr_begin of mem_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_11 : label is 15;
  attribute ram_offset of mem_reg_0_15_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_11 : label is 11;
  attribute SOFT_HLUTNM of overflow_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_pr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_pr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_pr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_pr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of underflow_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_pr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_pr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_pr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_pr[3]_i_2\ : label is "soft_lutpair1";
begin
  \count_reg[0]_0\ <= \^count_reg[0]_0\;
  \count_reg[1]_0\ <= \^count_reg[1]_0\;
  \count_reg[2]_0\ <= \^count_reg[2]_0\;
  \count_reg[3]_0\ <= \^count_reg[3]_0\;
  \count_reg[4]_0\ <= \^count_reg[4]_0\;
  empty <= \^empty\;
  full <= \^full\;
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0096"
    )
        port map (
      I0 => \^count_reg[0]_0\,
      I1 => \dout[31]_i_1_n_0\,
      I2 => p_0_in_0(1),
      I3 => rst,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969696969696B69"
    )
        port map (
      I0 => wr_en,
      I1 => \^count_reg[1]_0\,
      I2 => \^count_reg[0]_0\,
      I3 => \^count_reg[4]_0\,
      I4 => \^count_reg[2]_0\,
      I5 => \^count_reg[3]_0\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77778888EEEE1131"
    )
        port map (
      I0 => wr_en,
      I1 => \^count_reg[0]_0\,
      I2 => \^count_reg[4]_0\,
      I3 => \^count_reg[3]_0\,
      I4 => \^count_reg[2]_0\,
      I5 => \^count_reg[1]_0\,
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFC000FFFC0023"
    )
        port map (
      I0 => \^count_reg[4]_0\,
      I1 => \^count_reg[0]_0\,
      I2 => wr_en,
      I3 => \^count_reg[1]_0\,
      I4 => \^count_reg[3]_0\,
      I5 => \^count_reg[2]_0\,
      O => count(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout[31]_i_1_n_0\,
      I1 => p_0_in_0(1),
      O => \count[4]_i_1_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFA0001"
    )
        port map (
      I0 => \^count_reg[1]_0\,
      I1 => wr_en,
      I2 => \^count_reg[0]_0\,
      I3 => \^count_reg[2]_0\,
      I4 => \^count_reg[4]_0\,
      I5 => \^count_reg[3]_0\,
      O => count(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \^count_reg[0]_0\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => \count[1]_i_1_n_0\,
      Q => \^count_reg[1]_0\,
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => count(2),
      Q => \^count_reg[2]_0\,
      R => rst
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => count(3),
      Q => \^count_reg[3]_0\,
      R => rst
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[4]_i_1_n_0\,
      D => count(4),
      Q => \^count_reg[4]_0\,
      R => rst
    );
\dout[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd_en,
      I1 => \^count_reg[2]_0\,
      I2 => \^count_reg[1]_0\,
      I3 => \^count_reg[0]_0\,
      I4 => \^count_reg[4]_0\,
      I5 => \^count_reg[3]_0\,
      O => \dout[31]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(0),
      Q => dout(0),
      R => rst
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(10),
      Q => dout(10),
      R => rst
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(11),
      Q => dout(11),
      R => rst
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(12),
      Q => dout(12),
      R => rst
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(13),
      Q => dout(13),
      R => rst
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(14),
      Q => dout(14),
      R => rst
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(15),
      Q => dout(15),
      R => rst
    );
\dout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(16),
      Q => dout(16),
      R => rst
    );
\dout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(17),
      Q => dout(17),
      R => rst
    );
\dout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(18),
      Q => dout(18),
      R => rst
    );
\dout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(19),
      Q => dout(19),
      R => rst
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(1),
      Q => dout(1),
      R => rst
    );
\dout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(20),
      Q => dout(20),
      R => rst
    );
\dout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(21),
      Q => dout(21),
      R => rst
    );
\dout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(22),
      Q => dout(22),
      R => rst
    );
\dout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(23),
      Q => dout(23),
      R => rst
    );
\dout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(24),
      Q => dout(24),
      R => rst
    );
\dout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(25),
      Q => dout(25),
      R => rst
    );
\dout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(26),
      Q => dout(26),
      R => rst
    );
\dout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(27),
      Q => dout(27),
      R => rst
    );
\dout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(28),
      Q => dout(28),
      R => rst
    );
\dout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(29),
      Q => dout(29),
      R => rst
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(2),
      Q => dout(2),
      R => rst
    );
\dout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(30),
      Q => dout(30),
      R => rst
    );
\dout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(31),
      Q => dout(31),
      R => rst
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(3),
      Q => dout(3),
      R => rst
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(4),
      Q => dout(4),
      R => rst
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(5),
      Q => dout(5),
      R => rst
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(6),
      Q => dout(6),
      R => rst
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(7),
      Q => dout(7),
      R => rst
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(8),
      Q => dout(8),
      R => rst
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => dout0(9),
      Q => dout(9),
      R => rst
    );
empty_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^count_reg[3]_0\,
      I1 => \^count_reg[4]_0\,
      I2 => \^count_reg[0]_0\,
      I3 => \^count_reg[1]_0\,
      I4 => \^count_reg[2]_0\,
      O => \^empty\
    );
full_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^count_reg[3]_0\,
      I1 => \^count_reg[2]_0\,
      I2 => \^count_reg[4]_0\,
      I3 => \^count_reg[0]_0\,
      I4 => \^count_reg[1]_0\,
      O => \^full\
    );
mem_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(1 downto 0),
      DOB(1 downto 0) => dout0(3 downto 2),
      DOC(1 downto 0) => dout0(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_15_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => rst,
      O => p_0_in
    );
mem_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(13 downto 12),
      DIB(1 downto 0) => din(15 downto 14),
      DIC(1 downto 0) => din(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(13 downto 12),
      DOB(1 downto 0) => dout0(15 downto 14),
      DOC(1 downto 0) => dout0(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(19 downto 18),
      DIB(1 downto 0) => din(21 downto 20),
      DIC(1 downto 0) => din(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(19 downto 18),
      DOB(1 downto 0) => dout0(21 downto 20),
      DOC(1 downto 0) => dout0(23 downto 22),
      DOD(1 downto 0) => NLW_mem_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(25 downto 24),
      DIB(1 downto 0) => din(27 downto 26),
      DIC(1 downto 0) => din(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(25 downto 24),
      DOB(1 downto 0) => dout0(27 downto 26),
      DOC(1 downto 0) => dout0(29 downto 28),
      DOD(1 downto 0) => NLW_mem_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_15_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(31 downto 30),
      DOB(1 downto 0) => NLW_mem_reg_0_15_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_15_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_15_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
mem_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_pr(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_pr(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_pr(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wr_pr_reg(3 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1 downto 0) => din(9 downto 8),
      DIC(1 downto 0) => din(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout0(7 downto 6),
      DOB(1 downto 0) => dout0(9 downto 8),
      DOC(1 downto 0) => dout0(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
overflow_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^full\,
      I1 => wr_en,
      I2 => rst,
      O => overflow_i_1_n_0
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => overflow_i_1_n_0,
      Q => overflow,
      R => '0'
    );
\rd_pr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pr(0),
      O => \rd_pr[0]_i_1_n_0\
    );
\rd_pr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pr(0),
      I1 => rd_pr(1),
      O => \rd_pr[1]_i_1_n_0\
    );
\rd_pr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pr(0),
      I1 => rd_pr(1),
      I2 => rd_pr(2),
      O => \rd_pr[2]_i_1_n_0\
    );
\rd_pr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pr(1),
      I1 => rd_pr(0),
      I2 => rd_pr(2),
      I3 => rd_pr(3),
      O => \rd_pr[3]_i_1_n_0\
    );
\rd_pr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \rd_pr[0]_i_1_n_0\,
      Q => rd_pr(0),
      R => rst
    );
\rd_pr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \rd_pr[1]_i_1_n_0\,
      Q => rd_pr(1),
      R => rst
    );
\rd_pr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \rd_pr[2]_i_1_n_0\,
      Q => rd_pr(2),
      R => rst
    );
\rd_pr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[31]_i_1_n_0\,
      D => \rd_pr[3]_i_1_n_0\,
      Q => rd_pr(3),
      R => rst
    );
underflow_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^empty\,
      I1 => rd_en,
      I2 => rst,
      O => underflow_i_1_n_0
    );
underflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => underflow_i_1_n_0,
      Q => underflow,
      R => '0'
    );
\wr_pr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pr_reg(0),
      O => \p_0_in__0\(0)
    );
\wr_pr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pr_reg(0),
      I1 => wr_pr_reg(1),
      O => \p_0_in__0\(1)
    );
\wr_pr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pr_reg(0),
      I1 => wr_pr_reg(1),
      I2 => wr_pr_reg(2),
      O => \p_0_in__0\(2)
    );
\wr_pr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => wr_en,
      I1 => \^count_reg[1]_0\,
      I2 => \^count_reg[0]_0\,
      I3 => \^count_reg[4]_0\,
      I4 => \^count_reg[2]_0\,
      I5 => \^count_reg[3]_0\,
      O => p_0_in_0(1)
    );
\wr_pr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pr_reg(1),
      I1 => wr_pr_reg(0),
      I2 => wr_pr_reg(2),
      I3 => wr_pr_reg(3),
      O => \p_0_in__0\(3)
    );
\wr_pr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => \p_0_in__0\(0),
      Q => wr_pr_reg(0),
      R => rst
    );
\wr_pr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => \p_0_in__0\(1),
      Q => wr_pr_reg(1),
      R => rst
    );
\wr_pr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => \p_0_in__0\(2),
      Q => wr_pr_reg(2),
      R => rst
    );
\wr_pr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => \p_0_in__0\(3),
      Q => wr_pr_reg(3),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_sync_fifo_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of data_project_bd_sync_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of data_project_bd_sync_fifo_0_0 : entity is "data_project_bd_sync_fifo_0_0,sync_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of data_project_bd_sync_fifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of data_project_bd_sync_fifo_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of data_project_bd_sync_fifo_0_0 : entity is "sync_fifo,Vivado 2019.1";
end data_project_bd_sync_fifo_0_0;

architecture STRUCTURE of data_project_bd_sync_fifo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.data_project_bd_sync_fifo_0_0_sync_fifo
     port map (
      clk => clk,
      \count_reg[0]_0\ => count(0),
      \count_reg[1]_0\ => count(1),
      \count_reg[2]_0\ => count(2),
      \count_reg[3]_0\ => count(3),
      \count_reg[4]_0\ => count(4),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      overflow => overflow,
      rd_en => rd_en,
      rst => rst,
      underflow => underflow,
      wr_en => wr_en
    );
end STRUCTURE;
