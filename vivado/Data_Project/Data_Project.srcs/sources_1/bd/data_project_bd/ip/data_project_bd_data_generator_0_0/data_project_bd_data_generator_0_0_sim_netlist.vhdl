-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 12 17:54:22 2026
-- Host        : DESKTOP-1PC9PDU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dgeda/FPGA/Data_Project/vivado/Data_Project/Data_Project.srcs/sources_1/bd/data_project_bd/ip/data_project_bd_data_generator_0_0/data_project_bd_data_generator_0_0_sim_netlist.vhdl
-- Design      : data_project_bd_data_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_data_generator_0_0_data_generator is
  port (
    active_reg_0 : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of data_project_bd_data_generator_0_0_data_generator : entity is "data_generator";
end data_project_bd_data_generator_0_0_data_generator;

architecture STRUCTURE of data_project_bd_data_generator_0_0_data_generator is
  signal active_i_1_n_0 : STD_LOGIC;
  signal active_i_2_n_0 : STD_LOGIC;
  signal \^active_reg_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_out10_out : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal word_index : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \word_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of active_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \word_index[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \word_index[2]_i_1\ : label is "soft_lutpair0";
begin
  active_reg_0 <= \^active_reg_0\;
  data_out(3 downto 0) <= \^data_out\(3 downto 0);
active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE2E"
    )
        port map (
      I0 => start,
      I1 => \^active_reg_0\,
      I2 => data_ready,
      I3 => active_i_2_n_0,
      I4 => rst,
      O => active_i_1_n_0
    );
active_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => word_index(2),
      I1 => word_index(0),
      I2 => word_index(1),
      O => active_i_2_n_0
    );
active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active_i_1_n_0,
      Q => \^active_reg_0\,
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00A2"
    )
        port map (
      I0 => \^data_out\(0),
      I1 => start,
      I2 => \^active_reg_0\,
      I3 => \data_out[0]_i_2_n_0\,
      I4 => \data_out[0]_i_3_n_0\,
      I5 => rst,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888888"
    )
        port map (
      I0 => data_ready,
      I1 => \^active_reg_0\,
      I2 => word_index(1),
      I3 => word_index(0),
      I4 => word_index(2),
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF1515"
    )
        port map (
      I0 => word_index(0),
      I1 => word_index(2),
      I2 => word_index(1),
      I3 => \^active_reg_0\,
      I4 => start,
      O => \data_out[0]_i_3_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000338FAAAA"
    )
        port map (
      I0 => \^data_out\(1),
      I1 => word_index(2),
      I2 => word_index(0),
      I3 => word_index(1),
      I4 => data_out10_out,
      I5 => done_i_1_n_0,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003083AAAA"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => word_index(2),
      I2 => word_index(0),
      I3 => word_index(1),
      I4 => data_out10_out,
      I5 => done_i_1_n_0,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000B0AAAA"
    )
        port map (
      I0 => \^data_out\(3),
      I1 => word_index(2),
      I2 => word_index(0),
      I3 => word_index(1),
      I4 => data_out10_out,
      I5 => done_i_1_n_0,
      O => \data_out[3]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \^data_out\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \^data_out\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \^data_out\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \^data_out\(3),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => \^active_reg_0\,
      I2 => start,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^active_reg_0\,
      I1 => data_ready,
      O => data_out10_out
    );
done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => word_index(1),
      I1 => word_index(0),
      I2 => word_index(2),
      O => p_1_in
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out10_out,
      D => p_1_in,
      Q => done,
      R => done_i_1_n_0
    );
\word_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word_index(0),
      O => \word_index[0]_i_1_n_0\
    );
\word_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"52"
    )
        port map (
      I0 => word_index(0),
      I1 => word_index(2),
      I2 => word_index(1),
      O => \word_index[1]_i_1_n_0\
    );
\word_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => word_index(0),
      I1 => word_index(2),
      I2 => word_index(1),
      O => \word_index[2]_i_1_n_0\
    );
\word_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out10_out,
      D => \word_index[0]_i_1_n_0\,
      Q => word_index(0),
      R => done_i_1_n_0
    );
\word_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out10_out,
      D => \word_index[1]_i_1_n_0\,
      Q => word_index(1),
      R => done_i_1_n_0
    );
\word_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out10_out,
      D => \word_index[2]_i_1_n_0\,
      Q => word_index(2),
      R => done_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity data_project_bd_data_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_valid : out STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of data_project_bd_data_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of data_project_bd_data_generator_0_0 : entity is "data_project_bd_data_generator_0_0,data_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of data_project_bd_data_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of data_project_bd_data_generator_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of data_project_bd_data_generator_0_0 : entity is "data_generator,Vivado 2019.1";
end data_project_bd_data_generator_0_0;

architecture STRUCTURE of data_project_bd_data_generator_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN data_project_bd_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  data_out(31) <= \<const0>\;
  data_out(30) <= \<const0>\;
  data_out(29) <= \<const0>\;
  data_out(28) <= \<const0>\;
  data_out(27) <= \<const0>\;
  data_out(26) <= \<const0>\;
  data_out(25) <= \<const0>\;
  data_out(24) <= \<const0>\;
  data_out(23) <= \<const0>\;
  data_out(22) <= \<const0>\;
  data_out(21) <= \<const0>\;
  data_out(20) <= \<const0>\;
  data_out(19) <= \<const0>\;
  data_out(18) <= \<const0>\;
  data_out(17) <= \<const0>\;
  data_out(16) <= \<const0>\;
  data_out(15) <= \<const0>\;
  data_out(14) <= \<const0>\;
  data_out(13) <= \<const0>\;
  data_out(12) <= \<const0>\;
  data_out(11) <= \<const0>\;
  data_out(10) <= \<const0>\;
  data_out(9) <= \<const0>\;
  data_out(8) <= \<const0>\;
  data_out(7) <= \<const0>\;
  data_out(6) <= \<const0>\;
  data_out(5) <= \<const0>\;
  data_out(4) <= \<const0>\;
  data_out(3 downto 0) <= \^data_out\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.data_project_bd_data_generator_0_0_data_generator
     port map (
      active_reg_0 => data_valid,
      clk => clk,
      data_out(3 downto 0) => \^data_out\(3 downto 0),
      data_ready => data_ready,
      done => done,
      rst => rst,
      start => start
    );
end STRUCTURE;
