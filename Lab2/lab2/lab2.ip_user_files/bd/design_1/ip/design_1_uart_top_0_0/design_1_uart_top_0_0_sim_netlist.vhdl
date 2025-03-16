-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Mar  5 21:00:27 2025
-- Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/PROJECT/XILINX/CDD/Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_rFSM_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_onehot_rFSM[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal rCnt_Current : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal rFSM_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal wBit_Next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wBit_Next__0\ : STD_LOGIC;
  signal \wBit_Next_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wBit_Next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wBit_Next_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wBit_Next_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal wFSM_Next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wFSM_Next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[4]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[0]\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[1]\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[2]\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[0]_i_3\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rBit[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rBit[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCnt_Current[9]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \wBit_Next_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \wBit_Next_reg[2]_i_2\ : label is "soft_lutpair0";
begin
\FSM_onehot_rFSM[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_rFSM[4]_i_3_n_0\,
      I1 => \FSM_onehot_rFSM_reg[0]\(1),
      I2 => \FSM_onehot_rFSM_reg[0]\(2),
      I3 => \FSM_onehot_rFSM_reg[0]\(0),
      I4 => \FSM_onehot_rFSM_reg[0]\(4),
      I5 => \FSM_onehot_rFSM_reg[0]\(3),
      O => E(0)
    );
\FSM_onehot_rFSM[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => rFSM_Current(0),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \FSM_onehot_rFSM[4]_i_3_n_0\
    );
\FSM_sequential_rFSM_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(0),
      Q => rFSM_Current(0),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(1),
      Q => rFSM_Current(1),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(2),
      Q => rFSM_Current(2),
      R => iRst
    );
\FSM_sequential_wFSM_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wFSM_Next__0\(0),
      G => \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wFSM_Next(0)
    );
\FSM_sequential_wFSM_Next_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03000F0503000005"
    )
        port map (
      I0 => rRx2,
      I1 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I2 => rFSM_Current(2),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(0),
      I5 => \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\,
      O => \wFSM_Next__0\(0)
    );
\FSM_sequential_wFSM_Next_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080008000000000"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\,
      I4 => \FSM_sequential_wFSM_Next_reg[0]_i_3_n_0\,
      I5 => rCnt_Current(10),
      O => \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\
    );
\FSM_sequential_wFSM_Next_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => rCnt_Current(8),
      I2 => rCnt_Current(6),
      I3 => rCnt_Current(9),
      O => \FSM_sequential_wFSM_Next_reg[0]_i_3_n_0\
    );
\FSM_sequential_wFSM_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wFSM_Next__0\(1),
      G => \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wFSM_Next(1)
    );
\FSM_sequential_wFSM_Next_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007C"
    )
        port map (
      I0 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(2),
      O => \wFSM_Next__0\(1)
    );
\FSM_sequential_wFSM_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wFSM_Next__0\(2),
      G => \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wFSM_Next(2)
    );
\FSM_sequential_wFSM_Next_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      O => \wFSM_Next__0\(2)
    );
\FSM_sequential_wFSM_Next_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F1B"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(2),
      I3 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => rCnt_Current(10),
      I1 => rCnt_Current(7),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(6),
      I4 => rCnt_Current(9),
      I5 => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCnt_Current(2),
      I1 => rCnt_Current(5),
      I2 => rCnt_Current(3),
      I3 => rCnt_Current(4),
      O => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\
    );
\rBit[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020202"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(0),
      O => D(0)
    );
\rBit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_rFSM[4]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => D(1)
    );
\rBit[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_rFSM[4]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => D(2)
    );
\rBit[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM[4]_i_3_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => D(3)
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(0),
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(1),
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(2),
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(0),
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(10),
      I2 => \rCnt_Current[10]_i_3__0_n_0\,
      I3 => rCnt_Current(9),
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002F2F2F00"
    )
        port map (
      I0 => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\,
      I1 => \FSM_sequential_wFSM_Next_reg[0]_i_3_n_0\,
      I2 => rCnt_Current(10),
      I3 => rFSM_Current(0),
      I4 => rFSM_Current(1),
      I5 => rFSM_Current(2),
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => rCnt_Current(6),
      I2 => \rCnt_Current[8]_i_2__0_n_0\,
      I3 => rCnt_Current(8),
      O => \rCnt_Current[10]_i_3__0_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(1),
      I2 => rCnt_Current(0),
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(0),
      I2 => rCnt_Current(1),
      I3 => rCnt_Current(2),
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(1),
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(2),
      I4 => rCnt_Current(3),
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(1),
      I4 => rCnt_Current(3),
      I5 => rCnt_Current(4),
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[5]_i_2__0_n_0\,
      I2 => rCnt_Current(3),
      I3 => rCnt_Current(4),
      I4 => rCnt_Current(5),
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rCnt_Current(1),
      I1 => rCnt_Current(0),
      I2 => rCnt_Current(2),
      O => \rCnt_Current[5]_i_2__0_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[8]_i_2__0_n_0\,
      I2 => rCnt_Current(6),
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => \rCnt_Current[8]_i_2__0_n_0\,
      I2 => rCnt_Current(6),
      I3 => \rCnt_Current[10]_i_2_n_0\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \rCnt_Current[8]_i_2__0_n_0\,
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(7),
      I3 => \rCnt_Current[10]_i_2_n_0\,
      I4 => rCnt_Current(8),
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rCnt_Current(4),
      I1 => rCnt_Current(3),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(2),
      I4 => rCnt_Current(1),
      I5 => rCnt_Current(0),
      O => \rCnt_Current[8]_i_2__0_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[10]_i_3__0_n_0\,
      I2 => rCnt_Current(9),
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => rCnt_Current(10),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => rCnt_Current(1),
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => rCnt_Current(2),
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => rCnt_Current(3),
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => rCnt_Current(4),
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => rCnt_Current(5),
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => rCnt_Current(6),
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => rCnt_Current(7),
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1__0_n_0\,
      Q => rCnt_Current(8),
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => rCnt_Current(9),
      R => iRst
    );
rRx1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      R => '0'
    );
rRx2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => rRx2,
      R => '0'
    );
\wBit_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next_reg[0]_i_1_n_0\,
      G => \wBit_Next__0\,
      GE => '1',
      Q => wBit_Next(0)
    );
\wBit_Next_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => \rBit_Current_reg_n_0_[0]\,
      I4 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      O => \wBit_Next_reg[0]_i_1_n_0\
    );
\wBit_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next_reg[1]_i_1_n_0\,
      G => \wBit_Next__0\,
      GE => '1',
      Q => wBit_Next(1)
    );
\wBit_Next_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I4 => \rBit_Current_reg_n_0_[0]\,
      I5 => \rBit_Current_reg_n_0_[1]\,
      O => \wBit_Next_reg[1]_i_1_n_0\
    );
\wBit_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next_reg[2]_i_1_n_0\,
      G => \wBit_Next__0\,
      GE => '1',
      Q => wBit_Next(2)
    );
\wBit_Next_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \wBit_Next_reg[2]_i_3_n_0\,
      I1 => \rBit_Current_reg_n_0_[2]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      I3 => \rBit_Current_reg_n_0_[0]\,
      I4 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      O => \wBit_Next_reg[2]_i_1_n_0\
    );
\wBit_Next_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(2),
      I2 => rFSM_Current(1),
      O => \wBit_Next__0\
    );
\wBit_Next_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      O => \wBit_Next_reg[2]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_reg[2]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_rFSM_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rTxStart_reg : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal rTxStart_i_2_n_0 : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of oTx_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rTxData_Current[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxData_Current[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxData_Current[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rTxData_Current[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rTxData_Current[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rTxStart_i_2 : label is "soft_lutpair9";
begin
\FSM_onehot_rFSM[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => wTxDone,
      O => D(0)
    );
\FSM_onehot_rFSM[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00FFFF3F002A00"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_reg[4]\(2),
      I2 => \FSM_onehot_rFSM_reg[4]\(3),
      I3 => Q(1),
      I4 => wTxDone,
      I5 => Q(2),
      O => D(1)
    );
\FSM_onehot_rFSM[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABABABAAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_reg[4]\(2),
      I4 => \FSM_onehot_rFSM_reg[4]\(3),
      I5 => Q(1),
      O => D(2)
    );
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => wTxDone,
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FF00FF00"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => rBit_Current(1),
      I2 => rBit_Current(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => rBit_Current(0),
      I3 => rBit_Current(1),
      I4 => rBit_Current(2),
      I5 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \rCnt_Current_reg_n_0_[4]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \rBit_Current[0]_i_2_n_0\,
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rBit_Current[0]_i_2_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rBit_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I4 => \rBit_Current[2]_i_4_n_0\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007770"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[4]\(3),
      I1 => \FSM_onehot_rFSM_reg[4]\(2),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \FSM_onehot_rFSM_reg[4]\(0),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777077700000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[4]\(3),
      I1 => \FSM_onehot_rFSM_reg[4]\(2),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \FSM_onehot_rFSM_reg[4]\(1),
      I5 => \FSM_onehot_rFSM_reg[4]\(0),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00545454FC000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[4]\(3),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \FSM_onehot_rFSM_reg[4]\(0),
      I4 => \FSM_onehot_rFSM_reg[4]\(1),
      I5 => \FSM_onehot_rFSM_reg[4]\(2),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE000E000E000E0"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_reg[4]\(3),
      I3 => \FSM_onehot_rFSM_reg[4]\(2),
      I4 => \FSM_onehot_rFSM_reg[4]\(1),
      I5 => \FSM_onehot_rFSM_reg[4]\(0),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(3)
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2F2F2F2F00"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rBit_Current[2]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[10]_i_2__0_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1__0_n_0\
    );
\rCnt_Current[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current[5]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current[8]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current[8]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554000000005554"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1__0_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(1),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(2),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(3),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(4),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(5),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current[6]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wTxData_Next
    );
\rTxData_Current[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      O => \rTxData_Current[6]_i_2_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      Q => in7(5),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => rTxStart_i_2_n_0,
      I1 => Q(1),
      I2 => wTxDone,
      I3 => Q(2),
      I4 => rTxStart_reg,
      O => \FSM_onehot_rFSM_reg[2]\
    );
rTxStart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_reg[4]\(2),
      I3 => \FSM_onehot_rFSM_reg[4]\(3),
      O => rTxStart_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_onehot_rFSM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[4]\ : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_2 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_5 : STD_LOGIC;
  signal UART_TX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_8 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rBit : STD_LOGIC;
  signal rBit_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \rBit_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_reg_n_0_[1]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[0]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[1]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[2]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[3]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[4]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
begin
\FSM_onehot_rFSM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_4,
      D => '0',
      Q => \FSM_onehot_rFSM_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_4,
      D => \FSM_onehot_rFSM_reg_n_0_[0]\,
      Q => rBit,
      R => iRst
    );
\FSM_onehot_rFSM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_4,
      D => UART_TX_INST_n_2,
      Q => rCnt,
      R => iRst
    );
\FSM_onehot_rFSM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_4,
      D => UART_TX_INST_n_1,
      Q => \FSM_onehot_rFSM_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_4,
      D => UART_TX_INST_n_0,
      Q => \FSM_onehot_rFSM_reg_n_0_[4]\,
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      D(3 downto 0) => p_0_in(3 downto 0),
      E(0) => UART_RX_INST_n_4,
      \FSM_onehot_rFSM_reg[0]\(4) => \FSM_onehot_rFSM_reg_n_0_[4]\,
      \FSM_onehot_rFSM_reg[0]\(3) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      \FSM_onehot_rFSM_reg[0]\(2) => rCnt,
      \FSM_onehot_rFSM_reg[0]\(1) => rBit,
      \FSM_onehot_rFSM_reg[0]\(0) => \FSM_onehot_rFSM_reg_n_0_[0]\,
      Q(3 downto 2) => rBit_reg(3 downto 2),
      Q(1) => \rBit_reg_n_0_[1]\,
      Q(0) => \rBit_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(2) => UART_TX_INST_n_0,
      D(1) => UART_TX_INST_n_1,
      D(0) => UART_TX_INST_n_2,
      \FSM_onehot_rFSM_Current_reg[4]_0\(3) => UART_TX_INST_n_3,
      \FSM_onehot_rFSM_Current_reg[4]_0\(2) => UART_TX_INST_n_4,
      \FSM_onehot_rFSM_Current_reg[4]_0\(1) => UART_TX_INST_n_5,
      \FSM_onehot_rFSM_Current_reg[4]_0\(0) => UART_TX_INST_n_6,
      \FSM_onehot_rFSM_reg[2]\ => UART_TX_INST_n_8,
      \FSM_onehot_rFSM_reg[4]\(3) => \rCnt_reg_n_0_[3]\,
      \FSM_onehot_rFSM_reg[4]\(2) => \rCnt_reg_n_0_[2]\,
      \FSM_onehot_rFSM_reg[4]\(1) => \rCnt_reg_n_0_[1]\,
      \FSM_onehot_rFSM_reg[4]\(0) => \rCnt_reg_n_0_[0]\,
      Q(3) => \FSM_onehot_rFSM_reg_n_0_[4]\,
      Q(2) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      Q(1) => rCnt,
      Q(0) => rBit,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      rTxStart_reg => rTxStart_reg_n_0
    );
\rBit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBit,
      D => p_0_in(0),
      Q => \rBit_reg_n_0_[0]\,
      R => iRst
    );
\rBit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBit,
      D => p_0_in(1),
      Q => \rBit_reg_n_0_[1]\,
      R => iRst
    );
\rBit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBit,
      D => p_0_in(2),
      Q => rBit_reg(2),
      R => iRst
    );
\rBit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBit,
      D => p_0_in(3),
      Q => rBit_reg(3),
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_6,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_5,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_4,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_3,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_8,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
