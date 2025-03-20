-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Mar 19 22:08:26 2025
-- Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/PROJECT/XILINX/CDD/Lab3/Lab3.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_mp_adder is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    regDone_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rFSM1__1\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rFSM_current_reg[0]_0\ : in STD_LOGIC;
    \regB_Q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \regA_Q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_mp_adder : entity is "mp_adder";
end design_1_uart_top_0_0_mp_adder;

architecture STRUCTURE of design_1_uart_top_0_0_mp_adder is
  signal \^d\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal carry_out : STD_LOGIC;
  signal muxA_Out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal muxB_Out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \oCarry00_out__2\ : STD_LOGIC;
  signal \oCarry0__2\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal rFSM_current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \regA_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal regB_Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regB_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal regDone0 : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0\ : STD_LOGIC;
  signal \ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0\ : STD_LOGIC;
  signal \ripple_carry_inst/w_oCarry_0\ : STD_LOGIC;
  signal \ripple_carry_inst/w_oCarry_2\ : STD_LOGIC;
  signal \ripple_carry_inst/w_oCarry_4\ : STD_LOGIC;
  signal \ripple_carry_inst/w_oCarry_5\ : STD_LOGIC;
  signal wCnt_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wDone : STD_LOGIC;
  signal wFSM_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_current[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[0]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[1]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[2]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rFinal[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \regA_Q[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \regA_Q[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \regA_Q[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \regA_Q[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \regA_Q[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \regA_Q[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \regA_Q[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \regA_Q[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \regB_Q[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \regB_Q[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \regB_Q[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \regB_Q[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \regB_Q[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \regB_Q[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \regB_Q[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \regB_Q[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \regB_Q[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of regCout_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of regCout_i_5 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of regDone_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \regResult[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \regResult[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \regResult[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \regResult[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \regResult[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regResult[14]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regResult[15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \regResult[15]_i_3\ : label is "soft_lutpair0";
begin
  D(16 downto 0) <= \^d\(16 downto 0);
\FSM_onehot_rFSM[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(0),
      I1 => wDone,
      I2 => Q(1),
      O => regDone_reg_0(0)
    );
\FSM_onehot_rFSM[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => wDone,
      I1 => Q(1),
      I2 => \FSM_onehot_rFSM_reg[5]\(0),
      I3 => Q(3),
      O => regDone_reg_0(1)
    );
\FSM_sequential_rFSM_current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111011105510"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => \FSM_sequential_rFSM_current_reg[0]_0\,
      I3 => rFSM_current(1),
      I4 => \rCnt_Current_reg_n_0_[0]\,
      I5 => \rCnt_Current_reg_n_0_[1]\,
      O => wFSM_next(0)
    );
\FSM_sequential_rFSM_current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14141454"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(1),
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      O => wFSM_next(1)
    );
\FSM_sequential_rFSM_current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => rFSM_current(1),
      O => wFSM_next(2)
    );
\FSM_sequential_rFSM_current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(0),
      Q => rFSM_current(0),
      R => iRst
    );
\FSM_sequential_rFSM_current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(1),
      Q => rFSM_current(1),
      R => iRst
    );
\FSM_sequential_rFSM_current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(2),
      Q => rFSM_current(2),
      R => iRst
    );
\rCnt_Current[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(1),
      I2 => rFSM_current(0),
      I3 => \rCnt_Current_reg_n_0_[0]\,
      O => wCnt_next(0)
    );
\rCnt_Current[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14141400"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => rFSM_current(1),
      I4 => rFSM_current(0),
      O => wCnt_next(1)
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_next(0),
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_next(1),
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rFinal[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => wDone,
      I1 => Q(1),
      I2 => \rFSM1__1\,
      I3 => Q(2),
      O => E(0)
    );
\regA_Q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[8]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(0),
      O => muxA_Out(0)
    );
\regA_Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(10),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(10)
    );
\regA_Q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(11),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(11)
    );
\regA_Q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(12),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(12)
    );
\regA_Q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(13),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(13)
    );
\regA_Q[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(14),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(14)
    );
\regA_Q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(15),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(15)
    );
\regA_Q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[9]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(1),
      O => muxA_Out(1)
    );
\regA_Q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[10]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(2),
      O => muxA_Out(2)
    );
\regA_Q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[11]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(3),
      O => muxA_Out(3)
    );
\regA_Q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[12]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(4),
      O => muxA_Out(4)
    );
\regA_Q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[13]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(5),
      O => muxA_Out(5)
    );
\regA_Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[14]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(6),
      O => muxA_Out(6)
    );
\regA_Q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[15]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regA_Q_reg[15]_0\(7),
      O => muxA_Out(7)
    );
\regA_Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(8),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(8)
    );
\regA_Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(9),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxA_Out(9)
    );
\regA_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(0),
      Q => \regA_Q_reg_n_0_[0]\,
      R => iRst
    );
\regA_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(10),
      Q => \regA_Q_reg_n_0_[10]\,
      R => iRst
    );
\regA_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(11),
      Q => \regA_Q_reg_n_0_[11]\,
      R => iRst
    );
\regA_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(12),
      Q => \regA_Q_reg_n_0_[12]\,
      R => iRst
    );
\regA_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(13),
      Q => \regA_Q_reg_n_0_[13]\,
      R => iRst
    );
\regA_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(14),
      Q => \regA_Q_reg_n_0_[14]\,
      R => iRst
    );
\regA_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(15),
      Q => \regA_Q_reg_n_0_[15]\,
      R => iRst
    );
\regA_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(1),
      Q => \regA_Q_reg_n_0_[1]\,
      R => iRst
    );
\regA_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(2),
      Q => \regA_Q_reg_n_0_[2]\,
      R => iRst
    );
\regA_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(3),
      Q => \regA_Q_reg_n_0_[3]\,
      R => iRst
    );
\regA_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(4),
      Q => \regA_Q_reg_n_0_[4]\,
      R => iRst
    );
\regA_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(5),
      Q => \regA_Q_reg_n_0_[5]\,
      R => iRst
    );
\regA_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(6),
      Q => \regA_Q_reg_n_0_[6]\,
      R => iRst
    );
\regA_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(7),
      Q => \regA_Q_reg_n_0_[7]\,
      R => iRst
    );
\regA_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(8),
      Q => \regA_Q_reg_n_0_[8]\,
      R => iRst
    );
\regA_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(9),
      Q => \regA_Q_reg_n_0_[9]\,
      R => iRst
    );
\regB_Q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[8]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(0),
      O => muxB_Out(0)
    );
\regB_Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(10),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(10)
    );
\regB_Q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(11),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(11)
    );
\regB_Q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(12),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(12)
    );
\regB_Q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(13),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(13)
    );
\regB_Q[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(14),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(14)
    );
\regB_Q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(15),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(15)
    );
\regB_Q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[9]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(1),
      O => muxB_Out(1)
    );
\regB_Q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[10]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(2),
      O => muxB_Out(2)
    );
\regB_Q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[11]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(3),
      O => muxB_Out(3)
    );
\regB_Q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[12]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(4),
      O => muxB_Out(4)
    );
\regB_Q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[13]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(5),
      O => muxB_Out(5)
    );
\regB_Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[14]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(6),
      O => muxB_Out(6)
    );
\regB_Q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEB0828"
    )
        port map (
      I0 => \regB_Q_reg_n_0_[15]\,
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => \regB_Q_reg[15]_0\(7),
      O => muxB_Out(7)
    );
\regB_Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(8),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(8)
    );
\regB_Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(9),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => muxB_Out(9)
    );
\regB_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(0),
      Q => regB_Q(0),
      R => iRst
    );
\regB_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(10),
      Q => \regB_Q_reg_n_0_[10]\,
      R => iRst
    );
\regB_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(11),
      Q => \regB_Q_reg_n_0_[11]\,
      R => iRst
    );
\regB_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(12),
      Q => \regB_Q_reg_n_0_[12]\,
      R => iRst
    );
\regB_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(13),
      Q => \regB_Q_reg_n_0_[13]\,
      R => iRst
    );
\regB_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(14),
      Q => \regB_Q_reg_n_0_[14]\,
      R => iRst
    );
\regB_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(15),
      Q => \regB_Q_reg_n_0_[15]\,
      R => iRst
    );
\regB_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(1),
      Q => regB_Q(1),
      R => iRst
    );
\regB_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(2),
      Q => regB_Q(2),
      R => iRst
    );
\regB_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(3),
      Q => regB_Q(3),
      R => iRst
    );
\regB_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(4),
      Q => regB_Q(4),
      R => iRst
    );
\regB_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(5),
      Q => regB_Q(5),
      R => iRst
    );
\regB_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(6),
      Q => regB_Q(6),
      R => iRst
    );
\regB_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(7),
      Q => regB_Q(7),
      R => iRst
    );
\regB_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(8),
      Q => \regB_Q_reg_n_0_[8]\,
      R => iRst
    );
\regB_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(9),
      Q => \regB_Q_reg_n_0_[9]\,
      R => iRst
    );
regCout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_5\,
      I1 => regB_Q(6),
      I2 => \regA_Q_reg_n_0_[6]\,
      I3 => regB_Q(7),
      I4 => \regA_Q_reg_n_0_[7]\,
      O => carry_out
    );
regCout_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \oCarry00_out__2\,
      I1 => \oCarry0__2\,
      I2 => regB_Q(4),
      I3 => \regA_Q_reg_n_0_[4]\,
      I4 => regB_Q(5),
      I5 => \regA_Q_reg_n_0_[5]\,
      O => \ripple_carry_inst/w_oCarry_5\
    );
regCout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0\,
      I1 => \regA_Q_reg_n_0_[2]\,
      I2 => regB_Q(2),
      I3 => \regA_Q_reg_n_0_[1]\,
      I4 => regB_Q(1),
      I5 => \ripple_carry_inst/w_oCarry_0\,
      O => \oCarry00_out__2\
    );
regCout_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[3]\,
      I1 => regB_Q(3),
      O => \oCarry0__2\
    );
regCout_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regB_Q(3),
      I1 => \regA_Q_reg_n_0_[3]\,
      O => \ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0\
    );
regCout_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => carry_out,
      Q => \^d\(16),
      R => iRst
    );
regDone_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(1),
      O => regDone0
    );
regDone_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regDone0,
      Q => wDone,
      R => iRst
    );
\regResult[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[1]\,
      I1 => regB_Q(1),
      I2 => \ripple_carry_inst/w_oCarry_0\,
      I3 => \regA_Q_reg_n_0_[2]\,
      I4 => regB_Q(2),
      O => result(2)
    );
\regResult[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF240024000000"
    )
        port map (
      I0 => rFSM_current(1),
      I1 => rFSM_current(2),
      I2 => rFSM_current(0),
      I3 => \^d\(16),
      I4 => regB_Q(0),
      I5 => \regA_Q_reg_n_0_[0]\,
      O => \ripple_carry_inst/w_oCarry_0\
    );
\regResult[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_2\,
      I1 => \regA_Q_reg_n_0_[3]\,
      I2 => regB_Q(3),
      O => result(3)
    );
\regResult[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[3]\,
      I1 => regB_Q(3),
      I2 => \ripple_carry_inst/w_oCarry_2\,
      I3 => \regA_Q_reg_n_0_[4]\,
      I4 => regB_Q(4),
      O => result(4)
    );
\regResult[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_0\,
      I1 => regB_Q(1),
      I2 => \regA_Q_reg_n_0_[1]\,
      I3 => regB_Q(2),
      I4 => \regA_Q_reg_n_0_[2]\,
      O => \ripple_carry_inst/w_oCarry_2\
    );
\regResult[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_4\,
      I1 => \regA_Q_reg_n_0_[5]\,
      I2 => regB_Q(5),
      O => result(5)
    );
\regResult[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[5]\,
      I1 => regB_Q(5),
      I2 => \ripple_carry_inst/w_oCarry_4\,
      I3 => \regA_Q_reg_n_0_[6]\,
      I4 => regB_Q(6),
      O => result(6)
    );
\regResult[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[6]\,
      I1 => regB_Q(6),
      I2 => \regA_Q_reg_n_0_[5]\,
      I3 => regB_Q(5),
      I4 => \ripple_carry_inst/w_oCarry_4\,
      I5 => \ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0\,
      O => result(7)
    );
\regResult[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_2\,
      I1 => regB_Q(3),
      I2 => \regA_Q_reg_n_0_[3]\,
      I3 => regB_Q(4),
      I4 => \regA_Q_reg_n_0_[4]\,
      O => \ripple_carry_inst/w_oCarry_4\
    );
\regResult[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regB_Q(7),
      I1 => \regA_Q_reg_n_0_[7]\,
      O => \ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0\
    );
\regResult[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820F7DFF7DF0820"
    )
        port map (
      I0 => \^d\(16),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[0]\,
      I5 => regB_Q(0),
      O => result(0)
    );
\regResult[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ripple_carry_inst/w_oCarry_0\,
      I1 => \regA_Q_reg_n_0_[1]\,
      I2 => regB_Q(1),
      O => result(1)
    );
\regResult_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(8),
      Q => \^d\(0),
      R => iRst
    );
\regResult_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(2),
      Q => \^d\(10),
      R => iRst
    );
\regResult_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(3),
      Q => \^d\(11),
      R => iRst
    );
\regResult_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(4),
      Q => \^d\(12),
      R => iRst
    );
\regResult_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(5),
      Q => \^d\(13),
      R => iRst
    );
\regResult_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(6),
      Q => \^d\(14),
      R => iRst
    );
\regResult_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(7),
      Q => \^d\(15),
      R => iRst
    );
\regResult_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(9),
      Q => \^d\(1),
      R => iRst
    );
\regResult_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(10),
      Q => \^d\(2),
      R => iRst
    );
\regResult_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(11),
      Q => \^d\(3),
      R => iRst
    );
\regResult_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(12),
      Q => \^d\(4),
      R => iRst
    );
\regResult_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(13),
      Q => \^d\(5),
      R => iRst
    );
\regResult_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(14),
      Q => \^d\(6),
      R => iRst
    );
\regResult_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \^d\(15),
      Q => \^d\(7),
      R => iRst
    );
\regResult_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(0),
      Q => \^d\(8),
      R => iRst
    );
\regResult_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(1),
      Q => \^d\(9),
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rCnt : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rBuffer_reg[0]\ : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal rCnt_Current : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal \rRxData_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_0\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_1\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_4\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_7\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_7\ : STD_LOGIC;
  signal wCnt_Next0_carry_n_0 : STD_LOGIC;
  signal wCnt_Next0_carry_n_1 : STD_LOGIC;
  signal wCnt_Next0_carry_n_2 : STD_LOGIC;
  signal wCnt_Next0_carry_n_3 : STD_LOGIC;
  signal wCnt_Next0_carry_n_4 : STD_LOGIC;
  signal wCnt_Next0_carry_n_5 : STD_LOGIC;
  signal wCnt_Next0_carry_n_6 : STD_LOGIC;
  signal wCnt_Next0_carry_n_7 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  signal \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[2]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[2]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_4\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rBuffer[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBuffer[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rBuffer[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rCnt[1]_i_3\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCnt_Next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__1\ : label is 35;
begin
\FSM_onehot_rFSM_Current[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => wRxDone,
      I1 => rRx2,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => rRx2,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000005D"
    )
        port map (
      I0 => rCnt_Current(9),
      I1 => \FSM_onehot_rFSM_Current[2]_i_4_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_5_n_0\,
      I3 => rCnt_Current(11),
      I4 => rCnt_Current(10),
      O => \FSM_onehot_rFSM_Current[2]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[2]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => rCnt_Current(1),
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(4),
      I3 => rCnt_Current(3),
      O => \FSM_onehot_rFSM_Current[2]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rCnt_Current(6),
      I1 => rCnt_Current(5),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(7),
      O => \FSM_onehot_rFSM_Current[2]_i_5_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000008000"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => rCnt_Current(10),
      I1 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_4_n_0\,
      I3 => rCnt_Current(11),
      O => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(9),
      I3 => rCnt_Current(8),
      O => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(4),
      O => \FSM_onehot_rFSM_Current[4]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\,
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
      D => \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\,
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
      D => \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\,
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
      D => \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\,
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
      D => \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\,
      Q => wRxDone,
      R => iRst
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222222222222C"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \rRxData_Current[7]_i_1_n_0\,
      I5 => \rBit_Current[2]_i_3_n_0\,
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \rBit_Current[1]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rRxData_Current[7]_i_1_n_0\,
      I4 => \rBit_Current[2]_i_3_n_0\,
      I5 => \rBit_Current_reg_n_0_[1]\,
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[0]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      O => \rBit_Current[1]_i_2_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \rBit_Current[2]_i_2__0_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rRxData_Current[7]_i_1_n_0\,
      I4 => \rBit_Current[2]_i_3_n_0\,
      I5 => \rBit_Current_reg_n_0_[2]\,
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[0]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      I3 => \rBit_Current_reg_n_0_[2]\,
      O => \rBit_Current[2]_i_2__0_n_0\
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => wRxDone,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
\rBuffer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(0),
      I3 => Q(1),
      O => D(0)
    );
\rBuffer[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA8"
    )
        port map (
      I0 => Q(0),
      I1 => wRxDone,
      I2 => \rBuffer_reg[0]\,
      I3 => Q(1),
      O => E(0)
    );
\rBuffer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(1),
      I3 => Q(1),
      O => D(1)
    );
\rBuffer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(2),
      I3 => Q(1),
      O => D(2)
    );
\rBuffer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(3),
      I3 => Q(1),
      O => D(3)
    );
\rBuffer[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(4),
      I3 => Q(1),
      O => D(4)
    );
\rBuffer[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(5),
      I3 => Q(1),
      O => D(5)
    );
\rBuffer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(6),
      I3 => Q(1),
      O => D(6)
    );
\rBuffer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => Q(0),
      I2 => in12(7),
      I3 => Q(1),
      O => D(7)
    );
\rCnt[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEF0"
    )
        port map (
      I0 => \rBuffer_reg[0]\,
      I1 => wRxDone,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => rCnt
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF88888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => rCnt_Current(0),
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__1_n_6\,
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__1_n_5\,
      O => \rCnt_Current[11]_i_1_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => wCnt_Next0_carry_n_7,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => wCnt_Next0_carry_n_6,
      O => \rCnt_Current[2]_i_1__0_n_0\
    );
\rCnt_Current[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => wCnt_Next0_carry_n_5,
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => wCnt_Next0_carry_n_4,
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__0_n_7\,
      O => \rCnt_Current[5]_i_1__0_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__0_n_6\,
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__0_n_5\,
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__0_n_4\,
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \wCnt_Next0_carry__1_n_7\,
      O => \rCnt_Current[9]_i_1__0_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1__0_n_0\,
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1__0_n_0\,
      Q => rCnt_Current(10),
      R => iRst
    );
\rCnt_Current_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[11]_i_1_n_0\,
      Q => rCnt_Current(11),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1__0_n_0\,
      Q => rCnt_Current(1),
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1__0_n_0\,
      Q => rCnt_Current(2),
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1__0_n_0\,
      Q => rCnt_Current(3),
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1__0_n_0\,
      Q => rCnt_Current(4),
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1__0_n_0\,
      Q => rCnt_Current(5),
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1__0_n_0\,
      Q => rCnt_Current(6),
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1__0_n_0\,
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
      D => \rCnt_Current[9]_i_1__0_n_0\,
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
\rRxData_Current[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \rRxData_Current[7]_i_1_n_0\
    );
\rRxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(1),
      Q => in12(0),
      R => iRst
    );
\rRxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(2),
      Q => in12(1),
      R => iRst
    );
\rRxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(3),
      Q => in12(2),
      R => iRst
    );
\rRxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(4),
      Q => in12(3),
      R => iRst
    );
\rRxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(5),
      Q => in12(4),
      R => iRst
    );
\rRxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(6),
      Q => in12(5),
      R => iRst
    );
\rRxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => in12(7),
      Q => in12(6),
      R => iRst
    );
\rRxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => rRx2,
      Q => in12(7),
      R => iRst
    );
wCnt_Next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wCnt_Next0_carry_n_0,
      CO(2) => wCnt_Next0_carry_n_1,
      CO(1) => wCnt_Next0_carry_n_2,
      CO(0) => wCnt_Next0_carry_n_3,
      CYINIT => rCnt_Current(0),
      DI(3 downto 0) => B"0000",
      O(3) => wCnt_Next0_carry_n_4,
      O(2) => wCnt_Next0_carry_n_5,
      O(1) => wCnt_Next0_carry_n_6,
      O(0) => wCnt_Next0_carry_n_7,
      S(3 downto 0) => rCnt_Current(4 downto 1)
    );
\wCnt_Next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wCnt_Next0_carry_n_0,
      CO(3) => \wCnt_Next0_carry__0_n_0\,
      CO(2) => \wCnt_Next0_carry__0_n_1\,
      CO(1) => \wCnt_Next0_carry__0_n_2\,
      CO(0) => \wCnt_Next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wCnt_Next0_carry__0_n_4\,
      O(2) => \wCnt_Next0_carry__0_n_5\,
      O(1) => \wCnt_Next0_carry__0_n_6\,
      O(0) => \wCnt_Next0_carry__0_n_7\,
      S(3 downto 0) => rCnt_Current(8 downto 5)
    );
\wCnt_Next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wCnt_Next0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wCnt_Next0_carry__1_n_2\,
      CO(0) => \wCnt_Next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\(3),
      O(2) => \wCnt_Next0_carry__1_n_5\,
      O(1) => \wCnt_Next0_carry__1_n_6\,
      O(0) => \wCnt_Next0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => rCnt_Current(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rFSM_Current_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rFSM_reg[5]\ : out STD_LOGIC;
    \rFSM1__1\ : out STD_LOGIC;
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_reg[5]_0\ : out STD_LOGIC;
    \FSM_onehot_rFSM_reg[5]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_reg[7]\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[7]_0\ : in STD_LOGIC;
    \rTxByte_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rTxStart_reg : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \^fsm_onehot_rfsm_current_reg[4]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_2_n_0\ : STD_LOGIC;
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
  signal \^rfsm1__1\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of oTx_INST_0 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rCnt[0]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rCnt[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rCnt_Current[4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rFinal[23]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rTxByte[0]_i_1\ : label is "soft_lutpair27";
begin
  \FSM_onehot_rFSM_Current_reg[4]_0\(0) <= \^fsm_onehot_rfsm_current_reg[4]_0\(0);
  \rFSM1__1\ <= \^rfsm1__1\;
\FSM_onehot_rFSM[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700FFFF77007000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[7]_0\,
      I1 => \FSM_onehot_rFSM_reg[7]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I5 => Q(1),
      O => D(0)
    );
\FSM_onehot_rFSM[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA020202"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I3 => \FSM_onehot_rFSM_reg[7]\,
      I4 => \FSM_onehot_rFSM_reg[7]_0\,
      O => D(1)
    );
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
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
      INIT => X"EFFFFFFF22222222"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      I4 => rBit_Current(2),
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000008000"
    )
        port map (
      I0 => rBit_Current(1),
      I1 => rBit_Current(0),
      I2 => rBit_Current(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
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
      Q => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
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
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
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
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => wBit_Next
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
\rCnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_rFSM_reg[7]_0\,
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_reg[5]_0\
    );
\rCnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28282800"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_rFSM_reg[7]_0\,
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_reg[5]\
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \rCnt_Current[4]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[4]_i_2_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \rCnt_Current[5]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \rCnt_Current[8]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78000000"
    )
        port map (
      I0 => \rCnt_Current[8]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current[8]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[2]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
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
\rFinal[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[7]_0\,
      I1 => \FSM_onehot_rFSM_reg[7]\,
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \^rfsm1__1\
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(0),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(1),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(2),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(3),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(4),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(5),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(6),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(6)
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[7]\,
      I3 => \FSM_onehot_rFSM_reg[7]_0\,
      I4 => \rTxByte_reg[7]\(7),
      O => \FSM_onehot_rFSM_Current_reg[0]_0\(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(0),
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(1),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(1),
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(2),
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(3),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(3),
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(4),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(4),
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(5),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(5),
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => in7(6),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(6),
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current[7]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      O => \rTxData_Current[7]_i_3_n_0\
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
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => \^rfsm1__1\,
      I1 => Q(0),
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I3 => Q(1),
      I4 => rTxStart_reg,
      O => \FSM_onehot_rFSM_reg[5]_1\
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
  signal \FSM_onehot_rFSM[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[7]\ : STD_LOGIC;
  signal MP_ADDER_INST_n_18 : STD_LOGIC;
  signal MP_ADDER_INST_n_19 : STD_LOGIC;
  signal UART_RX_INST_n_2 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_RX_INST_n_5 : STD_LOGIC;
  signal UART_RX_INST_n_6 : STD_LOGIC;
  signal UART_RX_INST_n_7 : STD_LOGIC;
  signal UART_RX_INST_n_8 : STD_LOGIC;
  signal UART_RX_INST_n_9 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_10 : STD_LOGIC;
  signal UART_TX_INST_n_11 : STD_LOGIC;
  signal UART_TX_INST_n_14 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_5 : STD_LOGIC;
  signal UART_TX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_8 : STD_LOGIC;
  signal UART_TX_INST_n_9 : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal rA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rA_3 : STD_LOGIC;
  signal rB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rBuffer : STD_LOGIC;
  signal \rBuffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \rBuffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[9]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rFSM1__1\ : STD_LOGIC;
  signal rFinal : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rFinal[0]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[10]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[11]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[12]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[13]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[14]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[15]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[16]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[17]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[18]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[19]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[1]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[20]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[21]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[22]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[23]_i_2_n_0\ : STD_LOGIC;
  signal \rFinal[2]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[3]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[4]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[5]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[6]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[7]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[8]_i_1_n_0\ : STD_LOGIC;
  signal \rFinal[9]_i_1_n_0\ : STD_LOGIC;
  signal rFinal_2 : STD_LOGIC;
  signal rResult : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal rResult_1 : STD_LOGIC;
  signal rStart_i_1_n_0 : STD_LOGIC;
  signal rStart_reg_n_0 : STD_LOGIC;
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_0 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  signal regResult : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wResult : STD_LOGIC_VECTOR ( 16 to 16 );
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[2]_i_1\ : label is "soft_lutpair47";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[0]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[1]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[2]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[3]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[4]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[5]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[6]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[7]\ : label is "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000";
  attribute SOFT_HLUTNM of \rBuffer[10]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[13]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[14]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[15]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[9]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rFinal[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rFinal[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rFinal[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rFinal[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rFinal[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rFinal[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rFinal[15]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rFinal[16]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rFinal[17]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rFinal[18]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rFinal[19]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rFinal[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rFinal[20]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rFinal[21]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rFinal[22]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rFinal[23]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rFinal[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rFinal[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rFinal[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rFinal[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rFinal[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rFinal[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rFinal[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rFinal[9]_i_1\ : label is "soft_lutpair35";
begin
\FSM_onehot_rFSM[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[0]\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM[1]_i_1_n_0\
    );
\FSM_onehot_rFSM[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM[2]_i_1_n_0\
    );
\FSM_onehot_rFSM[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_reg_n_0_[7]\,
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
      D => \FSM_onehot_rFSM[1]_i_1_n_0\,
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
      D => \FSM_onehot_rFSM[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => MP_ADDER_INST_n_19,
      Q => rResult_1,
      R => iRst
    );
\FSM_onehot_rFSM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => MP_ADDER_INST_n_18,
      Q => rTxByte_0,
      R => iRst
    );
\FSM_onehot_rFSM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_1,
      Q => \FSM_onehot_rFSM_reg_n_0_[6]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_0,
      Q => \FSM_onehot_rFSM_reg_n_0_[7]\,
      R => iRst
    );
MP_ADDER_INST: entity work.design_1_uart_top_0_0_mp_adder
     port map (
      D(16) => wResult(16),
      D(15 downto 0) => regResult(15 downto 0),
      E(0) => rFinal_2,
      \FSM_onehot_rFSM_reg[5]\(0) => wTxDone,
      \FSM_sequential_rFSM_current_reg[0]_0\ => rStart_reg_n_0,
      Q(3) => \FSM_onehot_rFSM_reg_n_0_[6]\,
      Q(2) => rTxByte_0,
      Q(1) => rResult_1,
      Q(0) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      iClk => iClk,
      iRst => iRst,
      \rFSM1__1\ => \rFSM1__1\,
      \regA_Q_reg[15]_0\(15 downto 0) => rA(15 downto 0),
      \regB_Q_reg[15]_0\(15 downto 0) => rB(15 downto 0),
      regDone_reg_0(1) => MP_ADDER_INST_n_18,
      regDone_reg_0(0) => MP_ADDER_INST_n_19
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      D(7) => UART_RX_INST_n_2,
      D(6) => UART_RX_INST_n_3,
      D(5) => UART_RX_INST_n_4,
      D(4) => UART_RX_INST_n_5,
      D(3) => UART_RX_INST_n_6,
      D(2) => UART_RX_INST_n_7,
      D(1) => UART_RX_INST_n_8,
      D(0) => UART_RX_INST_n_9,
      E(0) => rBuffer,
      Q(2) => rTxByte_0,
      Q(1) => \FSM_onehot_rFSM_reg_n_0_[2]\,
      Q(0) => \FSM_onehot_rFSM_reg_n_0_[1]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rBuffer_reg[0]\ => \rCnt_reg_n_0_[1]\,
      rCnt => rCnt
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(1) => UART_TX_INST_n_0,
      D(0) => UART_TX_INST_n_1,
      \FSM_onehot_rFSM_Current_reg[0]_0\(7) => UART_TX_INST_n_3,
      \FSM_onehot_rFSM_Current_reg[0]_0\(6) => UART_TX_INST_n_4,
      \FSM_onehot_rFSM_Current_reg[0]_0\(5) => UART_TX_INST_n_5,
      \FSM_onehot_rFSM_Current_reg[0]_0\(4) => UART_TX_INST_n_6,
      \FSM_onehot_rFSM_Current_reg[0]_0\(3) => UART_TX_INST_n_7,
      \FSM_onehot_rFSM_Current_reg[0]_0\(2) => UART_TX_INST_n_8,
      \FSM_onehot_rFSM_Current_reg[0]_0\(1) => UART_TX_INST_n_9,
      \FSM_onehot_rFSM_Current_reg[0]_0\(0) => UART_TX_INST_n_10,
      \FSM_onehot_rFSM_Current_reg[4]_0\(0) => wTxDone,
      \FSM_onehot_rFSM_reg[5]\ => UART_TX_INST_n_11,
      \FSM_onehot_rFSM_reg[5]_0\ => UART_TX_INST_n_14,
      \FSM_onehot_rFSM_reg[5]_1\ => UART_TX_INST_n_15,
      \FSM_onehot_rFSM_reg[7]\ => \rCnt_reg_n_0_[1]\,
      \FSM_onehot_rFSM_reg[7]_0\ => \rCnt_reg_n_0_[0]\,
      Q(1) => \FSM_onehot_rFSM_reg_n_0_[6]\,
      Q(0) => rTxByte_0,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rFSM1__1\ => \rFSM1__1\,
      \rTxByte_reg[7]\(7 downto 0) => rFinal(23 downto 16),
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg => rTxStart_reg_n_0
    );
\rA[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[1]\,
      O => rA_3
    );
\rA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(8),
      Q => rA(0),
      R => iRst
    );
\rA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[10]\,
      Q => rA(10),
      R => iRst
    );
\rA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[11]\,
      Q => rA(11),
      R => iRst
    );
\rA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[12]\,
      Q => rA(12),
      R => iRst
    );
\rA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[13]\,
      Q => rA(13),
      R => iRst
    );
\rA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[14]\,
      Q => rA(14),
      R => iRst
    );
\rA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[15]\,
      Q => rA(15),
      R => iRst
    );
\rA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(9),
      Q => rA(1),
      R => iRst
    );
\rA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(10),
      Q => rA(2),
      R => iRst
    );
\rA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(11),
      Q => rA(3),
      R => iRst
    );
\rA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(12),
      Q => rA(4),
      R => iRst
    );
\rA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(13),
      Q => rA(5),
      R => iRst
    );
\rA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(14),
      Q => rA(6),
      R => iRst
    );
\rA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => in12(15),
      Q => rA(7),
      R => iRst
    );
\rA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[8]\,
      Q => rA(8),
      R => iRst
    );
\rA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_3,
      D => \rBuffer_reg_n_0_[9]\,
      Q => rA(9),
      R => iRst
    );
\rB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(8),
      Q => rB(0),
      R => iRst
    );
\rB_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[10]\,
      Q => rB(10),
      R => iRst
    );
\rB_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[11]\,
      Q => rB(11),
      R => iRst
    );
\rB_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[12]\,
      Q => rB(12),
      R => iRst
    );
\rB_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[13]\,
      Q => rB(13),
      R => iRst
    );
\rB_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[14]\,
      Q => rB(14),
      R => iRst
    );
\rB_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[15]\,
      Q => rB(15),
      R => iRst
    );
\rB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(9),
      Q => rB(1),
      R => iRst
    );
\rB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(10),
      Q => rB(2),
      R => iRst
    );
\rB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(11),
      Q => rB(3),
      R => iRst
    );
\rB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(12),
      Q => rB(4),
      R => iRst
    );
\rB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(13),
      Q => rB(5),
      R => iRst
    );
\rB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(14),
      Q => rB(6),
      R => iRst
    );
\rB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => in12(15),
      Q => rB(7),
      R => iRst
    );
\rB_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[8]\,
      Q => rB(8),
      R => iRst
    );
\rB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM[3]_i_1_n_0\,
      D => \rBuffer_reg_n_0_[9]\,
      Q => rB(9),
      R => iRst
    );
\rBuffer[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(10),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[10]_i_1_n_0\
    );
\rBuffer[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(11),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[11]_i_1_n_0\
    );
\rBuffer[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(12),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[12]_i_1_n_0\
    );
\rBuffer[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(13),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[13]_i_1_n_0\
    );
\rBuffer[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(14),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[14]_i_1_n_0\
    );
\rBuffer[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(15),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[15]_i_2_n_0\
    );
\rBuffer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(8),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[8]_i_1_n_0\
    );
\rBuffer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => in12(9),
      I3 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      O => \rBuffer[9]_i_1_n_0\
    );
\rBuffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_9,
      Q => in12(8),
      R => iRst
    );
\rBuffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[10]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[10]\,
      R => iRst
    );
\rBuffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[11]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[11]\,
      R => iRst
    );
\rBuffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[12]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[12]\,
      R => iRst
    );
\rBuffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[13]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[13]\,
      R => iRst
    );
\rBuffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[14]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[14]\,
      R => iRst
    );
\rBuffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[15]_i_2_n_0\,
      Q => \rBuffer_reg_n_0_[15]\,
      R => iRst
    );
\rBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_8,
      Q => in12(9),
      R => iRst
    );
\rBuffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_7,
      Q => in12(10),
      R => iRst
    );
\rBuffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_6,
      Q => in12(11),
      R => iRst
    );
\rBuffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_5,
      Q => in12(12),
      R => iRst
    );
\rBuffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_4,
      Q => in12(13),
      R => iRst
    );
\rBuffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_3,
      Q => in12(14),
      R => iRst
    );
\rBuffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_2,
      Q => in12(15),
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[8]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[8]\,
      R => iRst
    );
\rBuffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[9]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[9]\,
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFFF5F40000"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      I2 => UART_TX_INST_n_14,
      I3 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I4 => rCnt,
      I5 => \rCnt_reg_n_0_[0]\,
      O => \rCnt[0]_i_1_n_0\
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFFFAF80000"
    )
        port map (
      I0 => \rCnt_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      I2 => UART_TX_INST_n_11,
      I3 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I4 => rCnt,
      I5 => \rCnt_reg_n_0_[1]\,
      O => \rCnt[1]_i_1_n_0\
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt[0]_i_1_n_0\,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt[1]_i_1_n_0\,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rFinal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(0),
      O => \rFinal[0]_i_1_n_0\
    );
\rFinal[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(10),
      I1 => rResult_1,
      I2 => rFinal(2),
      I3 => rTxByte_0,
      O => \rFinal[10]_i_1_n_0\
    );
\rFinal[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(11),
      I1 => rResult_1,
      I2 => rFinal(3),
      I3 => rTxByte_0,
      O => \rFinal[11]_i_1_n_0\
    );
\rFinal[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(12),
      I1 => rResult_1,
      I2 => rFinal(4),
      I3 => rTxByte_0,
      O => \rFinal[12]_i_1_n_0\
    );
\rFinal[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(13),
      I1 => rResult_1,
      I2 => rFinal(5),
      I3 => rTxByte_0,
      O => \rFinal[13]_i_1_n_0\
    );
\rFinal[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(14),
      I1 => rResult_1,
      I2 => rFinal(6),
      I3 => rTxByte_0,
      O => \rFinal[14]_i_1_n_0\
    );
\rFinal[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(15),
      I1 => rResult_1,
      I2 => rFinal(7),
      I3 => rTxByte_0,
      O => \rFinal[15]_i_1_n_0\
    );
\rFinal[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(16),
      I1 => rResult_1,
      I2 => rFinal(8),
      I3 => rTxByte_0,
      O => \rFinal[16]_i_1_n_0\
    );
\rFinal[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(9),
      O => \rFinal[17]_i_1_n_0\
    );
\rFinal[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(10),
      O => \rFinal[18]_i_1_n_0\
    );
\rFinal[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(11),
      O => \rFinal[19]_i_1_n_0\
    );
\rFinal[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(1),
      O => \rFinal[1]_i_1_n_0\
    );
\rFinal[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(12),
      O => \rFinal[20]_i_1_n_0\
    );
\rFinal[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(13),
      O => \rFinal[21]_i_1_n_0\
    );
\rFinal[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(14),
      O => \rFinal[22]_i_1_n_0\
    );
\rFinal[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => rFinal(15),
      O => \rFinal[23]_i_2_n_0\
    );
\rFinal[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(2),
      O => \rFinal[2]_i_1_n_0\
    );
\rFinal[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(3),
      O => \rFinal[3]_i_1_n_0\
    );
\rFinal[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(4),
      O => \rFinal[4]_i_1_n_0\
    );
\rFinal[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(5),
      O => \rFinal[5]_i_1_n_0\
    );
\rFinal[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(6),
      O => \rFinal[6]_i_1_n_0\
    );
\rFinal[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rResult_1,
      I1 => rResult(7),
      O => \rFinal[7]_i_1_n_0\
    );
\rFinal[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(8),
      I1 => rResult_1,
      I2 => rFinal(0),
      I3 => rTxByte_0,
      O => \rFinal[8]_i_1_n_0\
    );
\rFinal[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rResult(9),
      I1 => rResult_1,
      I2 => rFinal(1),
      I3 => rTxByte_0,
      O => \rFinal[9]_i_1_n_0\
    );
\rFinal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[0]_i_1_n_0\,
      Q => rFinal(0),
      R => iRst
    );
\rFinal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[10]_i_1_n_0\,
      Q => rFinal(10),
      R => iRst
    );
\rFinal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[11]_i_1_n_0\,
      Q => rFinal(11),
      R => iRst
    );
\rFinal_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[12]_i_1_n_0\,
      Q => rFinal(12),
      R => iRst
    );
\rFinal_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[13]_i_1_n_0\,
      Q => rFinal(13),
      R => iRst
    );
\rFinal_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[14]_i_1_n_0\,
      Q => rFinal(14),
      R => iRst
    );
\rFinal_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[15]_i_1_n_0\,
      Q => rFinal(15),
      R => iRst
    );
\rFinal_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[16]_i_1_n_0\,
      Q => rFinal(16),
      R => iRst
    );
\rFinal_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[17]_i_1_n_0\,
      Q => rFinal(17),
      R => iRst
    );
\rFinal_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[18]_i_1_n_0\,
      Q => rFinal(18),
      R => iRst
    );
\rFinal_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[19]_i_1_n_0\,
      Q => rFinal(19),
      R => iRst
    );
\rFinal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[1]_i_1_n_0\,
      Q => rFinal(1),
      R => iRst
    );
\rFinal_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[20]_i_1_n_0\,
      Q => rFinal(20),
      R => iRst
    );
\rFinal_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[21]_i_1_n_0\,
      Q => rFinal(21),
      R => iRst
    );
\rFinal_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[22]_i_1_n_0\,
      Q => rFinal(22),
      R => iRst
    );
\rFinal_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[23]_i_2_n_0\,
      Q => rFinal(23),
      R => iRst
    );
\rFinal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[2]_i_1_n_0\,
      Q => rFinal(2),
      R => iRst
    );
\rFinal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[3]_i_1_n_0\,
      Q => rFinal(3),
      R => iRst
    );
\rFinal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[4]_i_1_n_0\,
      Q => rFinal(4),
      R => iRst
    );
\rFinal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[5]_i_1_n_0\,
      Q => rFinal(5),
      R => iRst
    );
\rFinal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[6]_i_1_n_0\,
      Q => rFinal(6),
      R => iRst
    );
\rFinal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[7]_i_1_n_0\,
      Q => rFinal(7),
      R => iRst
    );
\rFinal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[8]_i_1_n_0\,
      Q => rFinal(8),
      R => iRst
    );
\rFinal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rFinal_2,
      D => \rFinal[9]_i_1_n_0\,
      Q => rFinal(9),
      R => iRst
    );
\rResult_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(0),
      Q => rResult(0),
      R => iRst
    );
\rResult_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(10),
      Q => rResult(10),
      R => iRst
    );
\rResult_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(11),
      Q => rResult(11),
      R => iRst
    );
\rResult_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(12),
      Q => rResult(12),
      R => iRst
    );
\rResult_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(13),
      Q => rResult(13),
      R => iRst
    );
\rResult_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(14),
      Q => rResult(14),
      R => iRst
    );
\rResult_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(15),
      Q => rResult(15),
      R => iRst
    );
\rResult_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => wResult(16),
      Q => rResult(16),
      R => iRst
    );
\rResult_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(1),
      Q => rResult(1),
      R => iRst
    );
\rResult_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(2),
      Q => rResult(2),
      R => iRst
    );
\rResult_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(3),
      Q => rResult(3),
      R => iRst
    );
\rResult_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(4),
      Q => rResult(4),
      R => iRst
    );
\rResult_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(5),
      Q => rResult(5),
      R => iRst
    );
\rResult_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(6),
      Q => rResult(6),
      R => iRst
    );
\rResult_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(7),
      Q => rResult(7),
      R => iRst
    );
\rResult_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(8),
      Q => rResult(8),
      R => iRst
    );
\rResult_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult_1,
      D => regResult(9),
      Q => rResult(9),
      R => iRst
    );
rStart_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => rResult_1,
      I1 => \FSM_onehot_rFSM_reg_n_0_[3]\,
      I2 => iRst,
      I3 => rStart_reg_n_0,
      O => rStart_i_1_n_0
    );
rStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rStart_i_1_n_0,
      Q => rStart_reg_n_0,
      R => '0'
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_10,
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_9,
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_8,
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_7,
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_6,
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_5,
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_4,
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_3,
      Q => rTxByte(7),
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
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
