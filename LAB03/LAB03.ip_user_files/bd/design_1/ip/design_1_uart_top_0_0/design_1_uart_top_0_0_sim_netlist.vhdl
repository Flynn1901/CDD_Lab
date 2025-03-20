-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Mar  7 22:46:10 2025
-- Host        : DESKTOP-N3AMQDS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/CDD/LAB02/LAB02.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \rCnt_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rCnt_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_reg[2]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \rTxByte_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rTxStart_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rTxStart_reg_0 : in STD_LOGIC;
    \rTxData_Current_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
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
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
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
  signal \rTxData_Current[6]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal rTxStart_i_2_n_0 : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of oTx_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rTxByte[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rTxData_Current[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of rTxStart_i_2 : label is "soft_lutpair0";
begin
\FSM_onehot_rFSM[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => rTxStart_reg(2),
      I2 => wTxDone,
      O => \rCnt_reg[2]\(0)
    );
\FSM_onehot_rFSM[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700FFFF77007000"
    )
        port map (
      I0 => \rTxByte_reg[0]\(2),
      I1 => \rTxByte_reg[0]\(3),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => rTxStart_reg(1),
      I4 => wTxDone,
      I5 => rTxStart_reg(2),
      O => \rCnt_reg[2]\(1)
    );
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => wTxDone,
      I1 => rTxStart_reg_0,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => rTxStart_reg_0,
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
      I1 => \rCnt_Current_reg_n_0_[8]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[6]\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
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
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
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
\rBuffer[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFAAAAAAAAAA"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => \rTxByte_reg[0]\(2),
      I2 => \rTxByte_reg[0]\(3),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => wTxDone,
      I5 => rTxStart_reg(1),
      O => E(0)
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00545454"
    )
        port map (
      I0 => \rTxByte_reg[0]\(0),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => \rCnt_reg[1]\(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000666066606660"
    )
        port map (
      I0 => \rTxByte_reg[0]\(1),
      I1 => \rTxByte_reg[0]\(0),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => \rCnt_reg[1]\(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777088808880"
    )
        port map (
      I0 => \rTxByte_reg[0]\(0),
      I1 => \rTxByte_reg[0]\(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => \rCnt_reg[1]\(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008880FFF00000"
    )
        port map (
      I0 => \rTxByte_reg[0]\(1),
      I1 => \rTxByte_reg[0]\(0),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => \rCnt_reg[1]\(3)
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
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
      O => \rCnt_Current[10]_i_2_n_0\
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
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT6
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
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[5]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1_n_0\
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
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT6
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
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
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
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
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
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
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
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(0),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(1),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(2),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(3),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(4),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(5),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => Q(6),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => D(6)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(1),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(2),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(3),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(4),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[6]_0\(5),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => rTxStart_reg_0,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current[6]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wTxData_Next
    );
\rTxData_Current[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \rTxData_Current_reg[6]_0\(6),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \rTxData_Current[6]_i_2_n_0\
    );
\rTxData_Current[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      O => \rTxData_Current[6]_i_3_n_0\
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
      D => \rTxData_Current[6]_i_2_n_0\,
      Q => in7(5),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74774444"
    )
        port map (
      I0 => rTxStart_i_2_n_0,
      I1 => rTxStart_reg(1),
      I2 => wTxDone,
      I3 => rTxStart_reg(2),
      I4 => rTxStart_reg_0,
      O => \FSM_onehot_rFSM_reg[2]\
    );
rTxStart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888F"
    )
        port map (
      I0 => \rTxByte_reg[0]\(2),
      I1 => \rTxByte_reg[0]\(3),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => wTxDone,
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
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_onehot_rFSM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[3]\ : STD_LOGIC;
  signal UART_TX_INST_n_10 : STD_LOGIC;
  signal UART_TX_INST_n_12 : STD_LOGIC;
  signal UART_TX_INST_n_13 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_8 : STD_LOGIC;
  signal UART_TX_INST_n_9 : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 94 downto 16 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBuffer : STD_LOGIC;
  signal \rBuffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[32]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[33]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[34]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[38]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[40]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[41]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[42]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[44]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[46]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[48]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[49]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[50]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[52]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[54]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[56]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[57]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[58]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[59]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[60]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[62]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[64]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[65]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[66]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[67]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[68]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[70]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[72]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[73]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[74]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[75]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[76]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[78]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[80]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[81]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[82]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[83]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[84]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[86]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[88]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[89]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[90]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[91]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[92]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[93]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[94]_i_2_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal rTxByte : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[0]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[1]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[2]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[3]\ : label is "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rBuffer[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[26]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[32]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer[33]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rBuffer[34]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBuffer[38]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBuffer[40]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBuffer[41]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rBuffer[42]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rBuffer[44]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBuffer[46]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBuffer[48]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[49]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBuffer[50]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[52]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[54]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[56]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBuffer[57]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBuffer[58]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rBuffer[59]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer[60]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[62]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rBuffer[64]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[65]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[66]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rBuffer[67]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rBuffer[68]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[70]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer[72]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[73]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[74]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer[75]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer[76]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[78]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[80]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[81]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[82]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[83]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[84]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[86]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[88]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer[89]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rBuffer[90]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer[91]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[92]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer[93]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer[94]_i_2\ : label is "soft_lutpair9";
begin
\FSM_onehot_rFSM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
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
      CE => '1',
      D => \FSM_onehot_rFSM_reg_n_0_[0]\,
      Q => \FSM_onehot_rFSM_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_13,
      Q => rCnt,
      R => iRst
    );
\FSM_onehot_rFSM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_12,
      Q => \FSM_onehot_rFSM_reg_n_0_[3]\,
      R => iRst
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(6 downto 0) => p_0_in(6 downto 0),
      E(0) => rBuffer,
      \FSM_onehot_rFSM_reg[2]\ => UART_TX_INST_n_15,
      Q(6) => \rBuffer_reg_n_0_[94]\,
      Q(5) => \rBuffer_reg_n_0_[93]\,
      Q(4) => \rBuffer_reg_n_0_[92]\,
      Q(3) => \rBuffer_reg_n_0_[91]\,
      Q(2) => \rBuffer_reg_n_0_[90]\,
      Q(1) => \rBuffer_reg_n_0_[89]\,
      Q(0) => \rBuffer_reg_n_0_[88]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rCnt_reg[1]\(3) => UART_TX_INST_n_7,
      \rCnt_reg[1]\(2) => UART_TX_INST_n_8,
      \rCnt_reg[1]\(1) => UART_TX_INST_n_9,
      \rCnt_reg[1]\(0) => UART_TX_INST_n_10,
      \rCnt_reg[2]\(1) => UART_TX_INST_n_12,
      \rCnt_reg[2]\(0) => UART_TX_INST_n_13,
      \rTxByte_reg[0]\(3) => \rCnt_reg_n_0_[3]\,
      \rTxByte_reg[0]\(2) => \rCnt_reg_n_0_[2]\,
      \rTxByte_reg[0]\(1) => \rCnt_reg_n_0_[1]\,
      \rTxByte_reg[0]\(0) => \rCnt_reg_n_0_[0]\,
      \rTxData_Current_reg[6]_0\(6 downto 0) => rTxByte(6 downto 0),
      rTxStart_reg(2) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      rTxStart_reg(1) => rCnt,
      rTxStart_reg(0) => \FSM_onehot_rFSM_reg_n_0_[1]\,
      rTxStart_reg_0 => rTxStart_reg_n_0
    );
\rBuffer[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(16),
      O => \rBuffer[16]_i_1_n_0\
    );
\rBuffer[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(24),
      O => \rBuffer[24]_i_1_n_0\
    );
\rBuffer[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(41),
      O => \rBuffer[26]_i_1_n_0\
    );
\rBuffer[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(32),
      I2 => rCnt,
      O => \rBuffer[32]_i_1_n_0\
    );
\rBuffer[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(33),
      I2 => rCnt,
      O => \rBuffer[33]_i_1_n_0\
    );
\rBuffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(34),
      I2 => rCnt,
      O => \rBuffer[34]_i_1_n_0\
    );
\rBuffer[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(49),
      I2 => rCnt,
      O => \rBuffer[38]_i_1_n_0\
    );
\rBuffer[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(40),
      I2 => rCnt,
      O => \rBuffer[40]_i_1_n_0\
    );
\rBuffer[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(41),
      I2 => rCnt,
      O => \rBuffer[41]_i_1_n_0\
    );
\rBuffer[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(42),
      I2 => rCnt,
      O => \rBuffer[42]_i_1_n_0\
    );
\rBuffer[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(16),
      I2 => rCnt,
      O => \rBuffer[44]_i_1_n_0\
    );
\rBuffer[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(46),
      I2 => rCnt,
      O => \rBuffer[46]_i_1_n_0\
    );
\rBuffer[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(48),
      O => \rBuffer[48]_i_1_n_0\
    );
\rBuffer[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(49),
      O => \rBuffer[49]_i_1_n_0\
    );
\rBuffer[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(50),
      O => \rBuffer[50]_i_1_n_0\
    );
\rBuffer[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(52),
      O => \rBuffer[52]_i_1_n_0\
    );
\rBuffer[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(54),
      O => \rBuffer[54]_i_1_n_0\
    );
\rBuffer[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(56),
      I2 => rCnt,
      O => \rBuffer[56]_i_1_n_0\
    );
\rBuffer[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(57),
      I2 => rCnt,
      O => \rBuffer[57]_i_1_n_0\
    );
\rBuffer[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(58),
      I2 => rCnt,
      O => \rBuffer[58]_i_1_n_0\
    );
\rBuffer[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(68),
      I2 => rCnt,
      O => \rBuffer[59]_i_1_n_0\
    );
\rBuffer[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(60),
      O => \rBuffer[60]_i_1_n_0\
    );
\rBuffer[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(62),
      I2 => rCnt,
      O => \rBuffer[62]_i_1_n_0\
    );
\rBuffer[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(64),
      O => \rBuffer[64]_i_1_n_0\
    );
\rBuffer[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(65),
      O => \rBuffer[65]_i_1_n_0\
    );
\rBuffer[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(66),
      I2 => rCnt,
      O => \rBuffer[66]_i_1_n_0\
    );
\rBuffer[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(67),
      I2 => rCnt,
      O => \rBuffer[67]_i_1_n_0\
    );
\rBuffer[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(68),
      O => \rBuffer[68]_i_1_n_0\
    );
\rBuffer[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(70),
      I2 => rCnt,
      O => \rBuffer[70]_i_1_n_0\
    );
\rBuffer[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(72),
      O => \rBuffer[72]_i_1_n_0\
    );
\rBuffer[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(73),
      O => \rBuffer[73]_i_1_n_0\
    );
\rBuffer[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(74),
      I2 => rCnt,
      O => \rBuffer[74]_i_1_n_0\
    );
\rBuffer[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(75),
      I2 => rCnt,
      O => \rBuffer[75]_i_1_n_0\
    );
\rBuffer[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(76),
      O => \rBuffer[76]_i_1_n_0\
    );
\rBuffer[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(78),
      I2 => rCnt,
      O => \rBuffer[78]_i_1_n_0\
    );
\rBuffer[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(80),
      I2 => rCnt,
      O => \rBuffer[80]_i_1_n_0\
    );
\rBuffer[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(81),
      O => \rBuffer[81]_i_1_n_0\
    );
\rBuffer[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(82),
      I2 => rCnt,
      O => \rBuffer[82]_i_1_n_0\
    );
\rBuffer[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(83),
      O => \rBuffer[83]_i_1_n_0\
    );
\rBuffer[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(84),
      O => \rBuffer[84]_i_1_n_0\
    );
\rBuffer[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(86),
      I2 => rCnt,
      O => \rBuffer[86]_i_1_n_0\
    );
\rBuffer[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(88),
      O => \rBuffer[88]_i_1_n_0\
    );
\rBuffer[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(89),
      O => \rBuffer[89]_i_1_n_0\
    );
\rBuffer[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(33),
      O => \rBuffer[8]_i_1_n_0\
    );
\rBuffer[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(90),
      O => \rBuffer[90]_i_1_n_0\
    );
\rBuffer[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(91),
      I2 => rCnt,
      O => \rBuffer[91]_i_1_n_0\
    );
\rBuffer[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => in5(92),
      O => \rBuffer[92]_i_1_n_0\
    );
\rBuffer[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt,
      I1 => \rBuffer_reg_n_0_[94]\,
      O => \rBuffer[93]_i_1_n_0\
    );
\rBuffer[94]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => in5(94),
      I2 => rCnt,
      O => \rBuffer[94]_i_2_n_0\
    );
\rBuffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[16]_i_1_n_0\,
      Q => in5(24),
      R => iRst
    );
\rBuffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[24]_i_1_n_0\,
      Q => in5(32),
      R => iRst
    );
\rBuffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \FSM_onehot_rFSM_reg_n_0_[1]\,
      Q => in5(33),
      R => iRst
    );
\rBuffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[26]_i_1_n_0\,
      Q => in5(34),
      R => iRst
    );
\rBuffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[32]_i_1_n_0\,
      Q => in5(40),
      R => iRst
    );
\rBuffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[33]_i_1_n_0\,
      Q => in5(41),
      R => iRst
    );
\rBuffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[34]_i_1_n_0\,
      Q => in5(42),
      R => iRst
    );
\rBuffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[38]_i_1_n_0\,
      Q => in5(46),
      R => iRst
    );
\rBuffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[40]_i_1_n_0\,
      Q => in5(48),
      R => iRst
    );
\rBuffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[41]_i_1_n_0\,
      Q => in5(49),
      R => iRst
    );
\rBuffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[42]_i_1_n_0\,
      Q => in5(50),
      R => iRst
    );
\rBuffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[44]_i_1_n_0\,
      Q => in5(52),
      R => iRst
    );
\rBuffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[46]_i_1_n_0\,
      Q => in5(54),
      R => iRst
    );
\rBuffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[48]_i_1_n_0\,
      Q => in5(56),
      R => iRst
    );
\rBuffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[49]_i_1_n_0\,
      Q => in5(57),
      R => iRst
    );
\rBuffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[50]_i_1_n_0\,
      Q => in5(58),
      R => iRst
    );
\rBuffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[52]_i_1_n_0\,
      Q => in5(60),
      R => iRst
    );
\rBuffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[54]_i_1_n_0\,
      Q => in5(62),
      R => iRst
    );
\rBuffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[56]_i_1_n_0\,
      Q => in5(64),
      R => iRst
    );
\rBuffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[57]_i_1_n_0\,
      Q => in5(65),
      R => iRst
    );
\rBuffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[58]_i_1_n_0\,
      Q => in5(66),
      R => iRst
    );
\rBuffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[59]_i_1_n_0\,
      Q => in5(67),
      R => iRst
    );
\rBuffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[60]_i_1_n_0\,
      Q => in5(68),
      R => iRst
    );
\rBuffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[62]_i_1_n_0\,
      Q => in5(70),
      R => iRst
    );
\rBuffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[64]_i_1_n_0\,
      Q => in5(72),
      R => iRst
    );
\rBuffer_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[65]_i_1_n_0\,
      Q => in5(73),
      R => iRst
    );
\rBuffer_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[66]_i_1_n_0\,
      Q => in5(74),
      R => iRst
    );
\rBuffer_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[67]_i_1_n_0\,
      Q => in5(75),
      R => iRst
    );
\rBuffer_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[68]_i_1_n_0\,
      Q => in5(76),
      R => iRst
    );
\rBuffer_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[70]_i_1_n_0\,
      Q => in5(78),
      R => iRst
    );
\rBuffer_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[72]_i_1_n_0\,
      Q => in5(80),
      R => iRst
    );
\rBuffer_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[73]_i_1_n_0\,
      Q => in5(81),
      R => iRst
    );
\rBuffer_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[74]_i_1_n_0\,
      Q => in5(82),
      R => iRst
    );
\rBuffer_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[75]_i_1_n_0\,
      Q => in5(83),
      R => iRst
    );
\rBuffer_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[76]_i_1_n_0\,
      Q => in5(84),
      R => iRst
    );
\rBuffer_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[78]_i_1_n_0\,
      Q => in5(86),
      R => iRst
    );
\rBuffer_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[80]_i_1_n_0\,
      Q => in5(88),
      R => iRst
    );
\rBuffer_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[81]_i_1_n_0\,
      Q => in5(89),
      R => iRst
    );
\rBuffer_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[82]_i_1_n_0\,
      Q => in5(90),
      R => iRst
    );
\rBuffer_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[83]_i_1_n_0\,
      Q => in5(91),
      R => iRst
    );
\rBuffer_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[84]_i_1_n_0\,
      Q => in5(92),
      R => iRst
    );
\rBuffer_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[86]_i_1_n_0\,
      Q => in5(94),
      R => iRst
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[88]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[89]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[8]_i_1_n_0\,
      Q => in5(16),
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[90]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[91]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[91]\,
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[92]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[93]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[94]_i_2_n_0\,
      Q => \rBuffer_reg_n_0_[94]\,
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_10,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_9,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_8,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_7,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(0),
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(1),
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(2),
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(3),
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(4),
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(5),
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => p_0_in(6),
      Q => rTxByte(6),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_15,
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
      oTx => oTx
    );
end STRUCTURE;
