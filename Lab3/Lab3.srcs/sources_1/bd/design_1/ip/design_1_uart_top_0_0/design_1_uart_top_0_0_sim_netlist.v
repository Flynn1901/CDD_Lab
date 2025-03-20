// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Mar 19 22:08:26 2025
// Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/PROJECT/XILINX/CDD/Lab3/Lab3.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
// Design      : design_1_uart_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_uart_top_0_0
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "mp_adder" *) 
module design_1_uart_top_0_0_mp_adder
   (D,
    E,
    regDone_reg_0,
    iRst,
    iClk,
    Q,
    rFSM1__1,
    \FSM_onehot_rFSM_reg[5] ,
    \FSM_sequential_rFSM_current_reg[0]_0 ,
    \regB_Q_reg[15]_0 ,
    \regA_Q_reg[15]_0 );
  output [16:0]D;
  output [0:0]E;
  output [1:0]regDone_reg_0;
  input iRst;
  input iClk;
  input [3:0]Q;
  input rFSM1__1;
  input [0:0]\FSM_onehot_rFSM_reg[5] ;
  input \FSM_sequential_rFSM_current_reg[0]_0 ;
  input [15:0]\regB_Q_reg[15]_0 ;
  input [15:0]\regA_Q_reg[15]_0 ;

  wire [16:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_rFSM_reg[5] ;
  wire \FSM_sequential_rFSM_current_reg[0]_0 ;
  wire [3:0]Q;
  wire carry_out;
  wire iClk;
  wire iRst;
  wire [15:0]muxA_Out;
  wire [15:0]muxB_Out;
  wire oCarry00_out__2;
  wire oCarry0__2;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire rFSM1__1;
  wire [2:0]rFSM_current;
  wire [15:0]\regA_Q_reg[15]_0 ;
  wire \regA_Q_reg_n_0_[0] ;
  wire \regA_Q_reg_n_0_[10] ;
  wire \regA_Q_reg_n_0_[11] ;
  wire \regA_Q_reg_n_0_[12] ;
  wire \regA_Q_reg_n_0_[13] ;
  wire \regA_Q_reg_n_0_[14] ;
  wire \regA_Q_reg_n_0_[15] ;
  wire \regA_Q_reg_n_0_[1] ;
  wire \regA_Q_reg_n_0_[2] ;
  wire \regA_Q_reg_n_0_[3] ;
  wire \regA_Q_reg_n_0_[4] ;
  wire \regA_Q_reg_n_0_[5] ;
  wire \regA_Q_reg_n_0_[6] ;
  wire \regA_Q_reg_n_0_[7] ;
  wire \regA_Q_reg_n_0_[8] ;
  wire \regA_Q_reg_n_0_[9] ;
  wire [7:0]regB_Q;
  wire [15:0]\regB_Q_reg[15]_0 ;
  wire \regB_Q_reg_n_0_[10] ;
  wire \regB_Q_reg_n_0_[11] ;
  wire \regB_Q_reg_n_0_[12] ;
  wire \regB_Q_reg_n_0_[13] ;
  wire \regB_Q_reg_n_0_[14] ;
  wire \regB_Q_reg_n_0_[15] ;
  wire \regB_Q_reg_n_0_[8] ;
  wire \regB_Q_reg_n_0_[9] ;
  wire regDone0;
  wire [1:0]regDone_reg_0;
  wire [7:0]result;
  wire \ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0 ;
  wire \ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0 ;
  wire \ripple_carry_inst/w_oCarry_0 ;
  wire \ripple_carry_inst/w_oCarry_2 ;
  wire \ripple_carry_inst/w_oCarry_4 ;
  wire \ripple_carry_inst/w_oCarry_5 ;
  wire [1:0]wCnt_next;
  wire wDone;
  wire [2:0]wFSM_next;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM[4]_i_1 
       (.I0(Q[0]),
        .I1(wDone),
        .I2(Q[1]),
        .O(regDone_reg_0[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_rFSM[5]_i_1 
       (.I0(wDone),
        .I1(Q[1]),
        .I2(\FSM_onehot_rFSM_reg[5] ),
        .I3(Q[3]),
        .O(regDone_reg_0[1]));
  LUT6 #(
    .INIT(64'h1110111011105510)) 
    \FSM_sequential_rFSM_current[0]_i_1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[0]),
        .I2(\FSM_sequential_rFSM_current_reg[0]_0 ),
        .I3(rFSM_current[1]),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .I5(\rCnt_Current_reg_n_0_[1] ),
        .O(wFSM_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h14141454)) 
    \FSM_sequential_rFSM_current[1]_i_1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[1]),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .O(wFSM_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0E000000)) 
    \FSM_sequential_rFSM_current[2]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(rFSM_current[1]),
        .O(wFSM_next[2]));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[0]),
        .Q(rFSM_current[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[1]),
        .Q(rFSM_current[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[2]),
        .Q(rFSM_current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \rCnt_Current[0]_i_1__1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[0]),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .O(wCnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h14141400)) 
    \rCnt_Current[1]_i_1__1 
       (.I0(rFSM_current[2]),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(rFSM_current[1]),
        .I4(rFSM_current[0]),
        .O(wCnt_next[1]));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCnt_next[0]),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCnt_next[1]),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[23]_i_1 
       (.I0(wDone),
        .I1(Q[1]),
        .I2(rFSM1__1),
        .I3(Q[2]),
        .O(E));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[0]_i_1 
       (.I0(\regA_Q_reg_n_0_[8] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [0]),
        .O(muxA_Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[10]_i_1 
       (.I0(\regA_Q_reg[15]_0 [10]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[11]_i_1 
       (.I0(\regA_Q_reg[15]_0 [11]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[12]_i_1 
       (.I0(\regA_Q_reg[15]_0 [12]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[13]_i_1 
       (.I0(\regA_Q_reg[15]_0 [13]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[14]_i_1 
       (.I0(\regA_Q_reg[15]_0 [14]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[15]_i_1 
       (.I0(\regA_Q_reg[15]_0 [15]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[15]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[1]_i_1 
       (.I0(\regA_Q_reg_n_0_[9] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [1]),
        .O(muxA_Out[1]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[2]_i_1 
       (.I0(\regA_Q_reg_n_0_[10] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [2]),
        .O(muxA_Out[2]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[3]_i_1 
       (.I0(\regA_Q_reg_n_0_[11] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [3]),
        .O(muxA_Out[3]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[4]_i_1 
       (.I0(\regA_Q_reg_n_0_[12] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [4]),
        .O(muxA_Out[4]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[5]_i_1 
       (.I0(\regA_Q_reg_n_0_[13] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [5]),
        .O(muxA_Out[5]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[6]_i_1 
       (.I0(\regA_Q_reg_n_0_[14] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [6]),
        .O(muxA_Out[6]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regA_Q[7]_i_1 
       (.I0(\regA_Q_reg_n_0_[15] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regA_Q_reg[15]_0 [7]),
        .O(muxA_Out[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[8]_i_1 
       (.I0(\regA_Q_reg[15]_0 [8]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regA_Q[9]_i_1 
       (.I0(\regA_Q_reg[15]_0 [9]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxA_Out[9]));
  FDRE \regA_Q_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[0]),
        .Q(\regA_Q_reg_n_0_[0] ),
        .R(iRst));
  FDRE \regA_Q_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[10]),
        .Q(\regA_Q_reg_n_0_[10] ),
        .R(iRst));
  FDRE \regA_Q_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[11]),
        .Q(\regA_Q_reg_n_0_[11] ),
        .R(iRst));
  FDRE \regA_Q_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[12]),
        .Q(\regA_Q_reg_n_0_[12] ),
        .R(iRst));
  FDRE \regA_Q_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[13]),
        .Q(\regA_Q_reg_n_0_[13] ),
        .R(iRst));
  FDRE \regA_Q_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[14]),
        .Q(\regA_Q_reg_n_0_[14] ),
        .R(iRst));
  FDRE \regA_Q_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[15]),
        .Q(\regA_Q_reg_n_0_[15] ),
        .R(iRst));
  FDRE \regA_Q_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[1]),
        .Q(\regA_Q_reg_n_0_[1] ),
        .R(iRst));
  FDRE \regA_Q_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[2]),
        .Q(\regA_Q_reg_n_0_[2] ),
        .R(iRst));
  FDRE \regA_Q_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[3]),
        .Q(\regA_Q_reg_n_0_[3] ),
        .R(iRst));
  FDRE \regA_Q_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[4]),
        .Q(\regA_Q_reg_n_0_[4] ),
        .R(iRst));
  FDRE \regA_Q_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[5]),
        .Q(\regA_Q_reg_n_0_[5] ),
        .R(iRst));
  FDRE \regA_Q_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[6]),
        .Q(\regA_Q_reg_n_0_[6] ),
        .R(iRst));
  FDRE \regA_Q_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[7]),
        .Q(\regA_Q_reg_n_0_[7] ),
        .R(iRst));
  FDRE \regA_Q_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[8]),
        .Q(\regA_Q_reg_n_0_[8] ),
        .R(iRst));
  FDRE \regA_Q_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[9]),
        .Q(\regA_Q_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[0]_i_1 
       (.I0(\regB_Q_reg_n_0_[8] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [0]),
        .O(muxB_Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[10]_i_1 
       (.I0(\regB_Q_reg[15]_0 [10]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[11]_i_1 
       (.I0(\regB_Q_reg[15]_0 [11]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[12]_i_1 
       (.I0(\regB_Q_reg[15]_0 [12]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[13]_i_1 
       (.I0(\regB_Q_reg[15]_0 [13]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[14]_i_1 
       (.I0(\regB_Q_reg[15]_0 [14]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[15]_i_1 
       (.I0(\regB_Q_reg[15]_0 [15]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[15]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[1]_i_1 
       (.I0(\regB_Q_reg_n_0_[9] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [1]),
        .O(muxB_Out[1]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[2]_i_1 
       (.I0(\regB_Q_reg_n_0_[10] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [2]),
        .O(muxB_Out[2]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[3]_i_1 
       (.I0(\regB_Q_reg_n_0_[11] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [3]),
        .O(muxB_Out[3]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[4]_i_1 
       (.I0(\regB_Q_reg_n_0_[12] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [4]),
        .O(muxB_Out[4]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[5]_i_1 
       (.I0(\regB_Q_reg_n_0_[13] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [5]),
        .O(muxB_Out[5]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[6]_i_1 
       (.I0(\regB_Q_reg_n_0_[14] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [6]),
        .O(muxB_Out[6]));
  LUT5 #(
    .INIT(32'hFBEB0828)) 
    \regB_Q[7]_i_1 
       (.I0(\regB_Q_reg_n_0_[15] ),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(\regB_Q_reg[15]_0 [7]),
        .O(muxB_Out[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[8]_i_1 
       (.I0(\regB_Q_reg[15]_0 [8]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \regB_Q[9]_i_1 
       (.I0(\regB_Q_reg[15]_0 [9]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .O(muxB_Out[9]));
  FDRE \regB_Q_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[0]),
        .Q(regB_Q[0]),
        .R(iRst));
  FDRE \regB_Q_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[10]),
        .Q(\regB_Q_reg_n_0_[10] ),
        .R(iRst));
  FDRE \regB_Q_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[11]),
        .Q(\regB_Q_reg_n_0_[11] ),
        .R(iRst));
  FDRE \regB_Q_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[12]),
        .Q(\regB_Q_reg_n_0_[12] ),
        .R(iRst));
  FDRE \regB_Q_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[13]),
        .Q(\regB_Q_reg_n_0_[13] ),
        .R(iRst));
  FDRE \regB_Q_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[14]),
        .Q(\regB_Q_reg_n_0_[14] ),
        .R(iRst));
  FDRE \regB_Q_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[15]),
        .Q(\regB_Q_reg_n_0_[15] ),
        .R(iRst));
  FDRE \regB_Q_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[1]),
        .Q(regB_Q[1]),
        .R(iRst));
  FDRE \regB_Q_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[2]),
        .Q(regB_Q[2]),
        .R(iRst));
  FDRE \regB_Q_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[3]),
        .Q(regB_Q[3]),
        .R(iRst));
  FDRE \regB_Q_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[4]),
        .Q(regB_Q[4]),
        .R(iRst));
  FDRE \regB_Q_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[5]),
        .Q(regB_Q[5]),
        .R(iRst));
  FDRE \regB_Q_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[6]),
        .Q(regB_Q[6]),
        .R(iRst));
  FDRE \regB_Q_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[7]),
        .Q(regB_Q[7]),
        .R(iRst));
  FDRE \regB_Q_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[8]),
        .Q(\regB_Q_reg_n_0_[8] ),
        .R(iRst));
  FDRE \regB_Q_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[9]),
        .Q(\regB_Q_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    regCout_i_1
       (.I0(\ripple_carry_inst/w_oCarry_5 ),
        .I1(regB_Q[6]),
        .I2(\regA_Q_reg_n_0_[6] ),
        .I3(regB_Q[7]),
        .I4(\regA_Q_reg_n_0_[7] ),
        .O(carry_out));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    regCout_i_2
       (.I0(oCarry00_out__2),
        .I1(oCarry0__2),
        .I2(regB_Q[4]),
        .I3(\regA_Q_reg_n_0_[4] ),
        .I4(regB_Q[5]),
        .I5(\regA_Q_reg_n_0_[5] ),
        .O(\ripple_carry_inst/w_oCarry_5 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    regCout_i_3
       (.I0(\ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0 ),
        .I1(\regA_Q_reg_n_0_[2] ),
        .I2(regB_Q[2]),
        .I3(\regA_Q_reg_n_0_[1] ),
        .I4(regB_Q[1]),
        .I5(\ripple_carry_inst/w_oCarry_0 ),
        .O(oCarry00_out__2));
  LUT2 #(
    .INIT(4'h8)) 
    regCout_i_4
       (.I0(\regA_Q_reg_n_0_[3] ),
        .I1(regB_Q[3]),
        .O(oCarry0__2));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    regCout_i_5
       (.I0(regB_Q[3]),
        .I1(\regA_Q_reg_n_0_[3] ),
        .O(\ripple_carry_inst/genblk1[3].full_adder_inst/xor_ab__0 ));
  FDRE regCout_reg
       (.C(iClk),
        .CE(1'b1),
        .D(carry_out),
        .Q(D[16]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    regDone_i_1
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[1]),
        .O(regDone0));
  FDRE regDone_reg
       (.C(iClk),
        .CE(1'b1),
        .D(regDone0),
        .Q(wDone),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[10]_i_1 
       (.I0(\regA_Q_reg_n_0_[1] ),
        .I1(regB_Q[1]),
        .I2(\ripple_carry_inst/w_oCarry_0 ),
        .I3(\regA_Q_reg_n_0_[2] ),
        .I4(regB_Q[2]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'hFFFF240024000000)) 
    \regResult[10]_i_2 
       (.I0(rFSM_current[1]),
        .I1(rFSM_current[2]),
        .I2(rFSM_current[0]),
        .I3(D[16]),
        .I4(regB_Q[0]),
        .I5(\regA_Q_reg_n_0_[0] ),
        .O(\ripple_carry_inst/w_oCarry_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[11]_i_1 
       (.I0(\ripple_carry_inst/w_oCarry_2 ),
        .I1(\regA_Q_reg_n_0_[3] ),
        .I2(regB_Q[3]),
        .O(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[12]_i_1 
       (.I0(\regA_Q_reg_n_0_[3] ),
        .I1(regB_Q[3]),
        .I2(\ripple_carry_inst/w_oCarry_2 ),
        .I3(\regA_Q_reg_n_0_[4] ),
        .I4(regB_Q[4]),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \regResult[12]_i_2 
       (.I0(\ripple_carry_inst/w_oCarry_0 ),
        .I1(regB_Q[1]),
        .I2(\regA_Q_reg_n_0_[1] ),
        .I3(regB_Q[2]),
        .I4(\regA_Q_reg_n_0_[2] ),
        .O(\ripple_carry_inst/w_oCarry_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[13]_i_1 
       (.I0(\ripple_carry_inst/w_oCarry_4 ),
        .I1(\regA_Q_reg_n_0_[5] ),
        .I2(regB_Q[5]),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[14]_i_1 
       (.I0(\regA_Q_reg_n_0_[5] ),
        .I1(regB_Q[5]),
        .I2(\ripple_carry_inst/w_oCarry_4 ),
        .I3(\regA_Q_reg_n_0_[6] ),
        .I4(regB_Q[6]),
        .O(result[6]));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \regResult[15]_i_1 
       (.I0(\regA_Q_reg_n_0_[6] ),
        .I1(regB_Q[6]),
        .I2(\regA_Q_reg_n_0_[5] ),
        .I3(regB_Q[5]),
        .I4(\ripple_carry_inst/w_oCarry_4 ),
        .I5(\ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0 ),
        .O(result[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \regResult[15]_i_2 
       (.I0(\ripple_carry_inst/w_oCarry_2 ),
        .I1(regB_Q[3]),
        .I2(\regA_Q_reg_n_0_[3] ),
        .I3(regB_Q[4]),
        .I4(\regA_Q_reg_n_0_[4] ),
        .O(\ripple_carry_inst/w_oCarry_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \regResult[15]_i_3 
       (.I0(regB_Q[7]),
        .I1(\regA_Q_reg_n_0_[7] ),
        .O(\ripple_carry_inst/genblk1[7].full_adder_inst/xor_ab__0 ));
  LUT6 #(
    .INIT(64'h0820F7DFF7DF0820)) 
    \regResult[8]_i_1 
       (.I0(D[16]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[0] ),
        .I5(regB_Q[0]),
        .O(result[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[9]_i_1 
       (.I0(\ripple_carry_inst/w_oCarry_0 ),
        .I1(\regA_Q_reg_n_0_[1] ),
        .I2(regB_Q[1]),
        .O(result[1]));
  FDRE \regResult_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[8]),
        .Q(D[0]),
        .R(iRst));
  FDRE \regResult_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[2]),
        .Q(D[10]),
        .R(iRst));
  FDRE \regResult_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[3]),
        .Q(D[11]),
        .R(iRst));
  FDRE \regResult_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[4]),
        .Q(D[12]),
        .R(iRst));
  FDRE \regResult_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[5]),
        .Q(D[13]),
        .R(iRst));
  FDRE \regResult_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[6]),
        .Q(D[14]),
        .R(iRst));
  FDRE \regResult_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[7]),
        .Q(D[15]),
        .R(iRst));
  FDRE \regResult_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[9]),
        .Q(D[1]),
        .R(iRst));
  FDRE \regResult_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[10]),
        .Q(D[2]),
        .R(iRst));
  FDRE \regResult_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[11]),
        .Q(D[3]),
        .R(iRst));
  FDRE \regResult_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[12]),
        .Q(D[4]),
        .R(iRst));
  FDRE \regResult_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[13]),
        .Q(D[5]),
        .R(iRst));
  FDRE \regResult_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[14]),
        .Q(D[6]),
        .R(iRst));
  FDRE \regResult_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(D[15]),
        .Q(D[7]),
        .R(iRst));
  FDRE \regResult_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[0]),
        .Q(D[8]),
        .R(iRst));
  FDRE \regResult_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[1]),
        .Q(D[9]),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_uart_top_0_0_uart_rx
   (E,
    rCnt,
    D,
    iRx,
    iClk,
    Q,
    \rBuffer_reg[0] ,
    iRst);
  output [0:0]E;
  output rCnt;
  output [7:0]D;
  input iRx;
  input iClk;
  input [2:0]Q;
  input \rBuffer_reg[0] ;
  input iRst;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_5_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [2:0]Q;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [7:0]in12;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[1]_i_2_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_2__0_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current_reg_n_0_[0] ;
  wire \rBit_Current_reg_n_0_[1] ;
  wire \rBit_Current_reg_n_0_[2] ;
  wire \rBuffer_reg[0] ;
  wire rCnt;
  wire [11:0]rCnt_Current;
  wire \rCnt_Current[0]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_1__0_n_0 ;
  wire \rCnt_Current[11]_i_1_n_0 ;
  wire \rCnt_Current[1]_i_1__0_n_0 ;
  wire \rCnt_Current[2]_i_1__0_n_0 ;
  wire \rCnt_Current[3]_i_1__0_n_0 ;
  wire \rCnt_Current[4]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_1__0_n_0 ;
  wire \rCnt_Current[6]_i_1__0_n_0 ;
  wire \rCnt_Current[7]_i_1__0_n_0 ;
  wire \rCnt_Current[8]_i_1__0_n_0 ;
  wire \rCnt_Current[9]_i_1__0_n_0 ;
  wire rRx1;
  wire rRx2;
  wire \rRxData_Current[7]_i_1_n_0 ;
  wire wCnt_Next0_carry__0_n_0;
  wire wCnt_Next0_carry__0_n_1;
  wire wCnt_Next0_carry__0_n_2;
  wire wCnt_Next0_carry__0_n_3;
  wire wCnt_Next0_carry__0_n_4;
  wire wCnt_Next0_carry__0_n_5;
  wire wCnt_Next0_carry__0_n_6;
  wire wCnt_Next0_carry__0_n_7;
  wire wCnt_Next0_carry__1_n_2;
  wire wCnt_Next0_carry__1_n_3;
  wire wCnt_Next0_carry__1_n_5;
  wire wCnt_Next0_carry__1_n_6;
  wire wCnt_Next0_carry__1_n_7;
  wire wCnt_Next0_carry_n_0;
  wire wCnt_Next0_carry_n_1;
  wire wCnt_Next0_carry_n_2;
  wire wCnt_Next0_carry_n_3;
  wire wCnt_Next0_carry_n_4;
  wire wCnt_Next0_carry_n_5;
  wire wCnt_Next0_carry_n_6;
  wire wCnt_Next0_carry_n_7;
  wire wRxDone;
  wire [3:2]NLW_wCnt_Next0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCnt_Next0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rFSM_Current[0]_i_1__0 
       (.I0(wRxDone),
        .I1(rRx2),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rFSM_Current[1]_i_1__0 
       (.I0(rRx2),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \FSM_onehot_rFSM_Current[2]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \FSM_onehot_rFSM_Current[2]_i_2 
       (.I0(rCnt_Current[9]),
        .I1(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_5_n_0 ),
        .I3(rCnt_Current[11]),
        .I4(rCnt_Current[10]),
        .O(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_rFSM_Current[2]_i_3 
       (.I0(\rBit_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \FSM_onehot_rFSM_Current[2]_i_4 
       (.I0(rCnt_Current[1]),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[4]),
        .I3(rCnt_Current[3]),
        .O(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rFSM_Current[2]_i_5 
       (.I0(rCnt_Current[6]),
        .I1(rCnt_Current[5]),
        .I2(rCnt_Current[8]),
        .I3(rCnt_Current[7]),
        .O(\FSM_onehot_rFSM_Current[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \FSM_onehot_rFSM_Current[3]_i_1__0 
       (.I0(\rBit_Current_reg_n_0_[0] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_onehot_rFSM_Current[4]_i_2__0 
       (.I0(rCnt_Current[10]),
        .I1(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_4_n_0 ),
        .I3(rCnt_Current[11]),
        .O(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rFSM_Current[4]_i_3__0 
       (.I0(rCnt_Current[7]),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[9]),
        .I3(rCnt_Current[8]),
        .O(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_rFSM_Current[4]_i_4 
       (.I0(rCnt_Current[3]),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[4]),
        .O(\FSM_onehot_rFSM_Current[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ),
        .Q(wRxDone),
        .R(iRst));
  LUT6 #(
    .INIT(64'h222222222222222C)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\rRxData_Current[7]_i_1_n_0 ),
        .I5(\rBit_Current[2]_i_3_n_0 ),
        .O(\rBit_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \rBit_Current[1]_i_1 
       (.I0(\rBit_Current[1]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rRxData_Current[7]_i_1_n_0 ),
        .I4(\rBit_Current[2]_i_3_n_0 ),
        .I5(\rBit_Current_reg_n_0_[1] ),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rBit_Current[1]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .O(\rBit_Current[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \rBit_Current[2]_i_1 
       (.I0(\rBit_Current[2]_i_2__0_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rRxData_Current[7]_i_1_n_0 ),
        .I4(\rBit_Current[2]_i_3_n_0 ),
        .I5(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rBit_Current[2]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .I3(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[2]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(wRxDone),
        .O(\rBit_Current[2]_i_3_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[2] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[0]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[0]),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hACA8)) 
    \rBuffer[15]_i_1 
       (.I0(Q[0]),
        .I1(wRxDone),
        .I2(\rBuffer_reg[0] ),
        .I3(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[1]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[1]),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[2]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[2]),
        .I3(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[3]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[3]),
        .I3(Q[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[4]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[4]),
        .I3(Q[1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[5]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[5]),
        .I3(Q[1]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[6]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[6]),
        .I3(Q[1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[7]_i_1 
       (.I0(\rBuffer_reg[0] ),
        .I1(Q[0]),
        .I2(in12[7]),
        .I3(Q[1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEFEFEF0)) 
    \rCnt[1]_i_3 
       (.I0(\rBuffer_reg[0] ),
        .I1(wRxDone),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(rCnt));
  LUT6 #(
    .INIT(64'h00000000FFF88888)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(rCnt_Current[0]),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[10]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__1_n_6),
        .O(\rCnt_Current[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[11]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__1_n_5),
        .O(\rCnt_Current[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry_n_7),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[2]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry_n_6),
        .O(\rCnt_Current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[3]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry_n_5),
        .O(\rCnt_Current[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry_n_4),
        .O(\rCnt_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[5]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__0_n_7),
        .O(\rCnt_Current[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[6]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__0_n_6),
        .O(\rCnt_Current[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[7]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__0_n_5),
        .O(\rCnt_Current[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[8]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__0_n_4),
        .O(\rCnt_Current[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888800000000)) 
    \rCnt_Current[9]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(wCnt_Next0_carry__1_n_7),
        .O(\rCnt_Current[9]_i_1__0_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1__0_n_0 ),
        .Q(rCnt_Current[0]),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1__0_n_0 ),
        .Q(rCnt_Current[10]),
        .R(iRst));
  FDRE \rCnt_Current_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[11]_i_1_n_0 ),
        .Q(rCnt_Current[11]),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1__0_n_0 ),
        .Q(rCnt_Current[1]),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1__0_n_0 ),
        .Q(rCnt_Current[2]),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1__0_n_0 ),
        .Q(rCnt_Current[3]),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1__0_n_0 ),
        .Q(rCnt_Current[4]),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1__0_n_0 ),
        .Q(rCnt_Current[5]),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1__0_n_0 ),
        .Q(rCnt_Current[6]),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1__0_n_0 ),
        .Q(rCnt_Current[7]),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1__0_n_0 ),
        .Q(rCnt_Current[8]),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1__0_n_0 ),
        .Q(rCnt_Current[9]),
        .R(iRst));
  FDRE rRx1_reg
       (.C(iClk),
        .CE(1'b1),
        .D(iRx),
        .Q(rRx1),
        .R(1'b0));
  FDRE rRx2_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rRx1),
        .Q(rRx2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rRxData_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\rRxData_Current[7]_i_1_n_0 ));
  FDRE \rRxData_Current_reg[0] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[1]),
        .Q(in12[0]),
        .R(iRst));
  FDRE \rRxData_Current_reg[1] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[2]),
        .Q(in12[1]),
        .R(iRst));
  FDRE \rRxData_Current_reg[2] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[3]),
        .Q(in12[2]),
        .R(iRst));
  FDRE \rRxData_Current_reg[3] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[4]),
        .Q(in12[3]),
        .R(iRst));
  FDRE \rRxData_Current_reg[4] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[5]),
        .Q(in12[4]),
        .R(iRst));
  FDRE \rRxData_Current_reg[5] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[6]),
        .Q(in12[5]),
        .R(iRst));
  FDRE \rRxData_Current_reg[6] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(in12[7]),
        .Q(in12[6]),
        .R(iRst));
  FDRE \rRxData_Current_reg[7] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRx2),
        .Q(in12[7]),
        .R(iRst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry
       (.CI(1'b0),
        .CO({wCnt_Next0_carry_n_0,wCnt_Next0_carry_n_1,wCnt_Next0_carry_n_2,wCnt_Next0_carry_n_3}),
        .CYINIT(rCnt_Current[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry_n_4,wCnt_Next0_carry_n_5,wCnt_Next0_carry_n_6,wCnt_Next0_carry_n_7}),
        .S(rCnt_Current[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__0
       (.CI(wCnt_Next0_carry_n_0),
        .CO({wCnt_Next0_carry__0_n_0,wCnt_Next0_carry__0_n_1,wCnt_Next0_carry__0_n_2,wCnt_Next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry__0_n_4,wCnt_Next0_carry__0_n_5,wCnt_Next0_carry__0_n_6,wCnt_Next0_carry__0_n_7}),
        .S(rCnt_Current[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__1
       (.CI(wCnt_Next0_carry__0_n_0),
        .CO({NLW_wCnt_Next0_carry__1_CO_UNCONNECTED[3:2],wCnt_Next0_carry__1_n_2,wCnt_Next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wCnt_Next0_carry__1_O_UNCONNECTED[3],wCnt_Next0_carry__1_n_5,wCnt_Next0_carry__1_n_6,wCnt_Next0_carry__1_n_7}),
        .S({1'b0,rCnt_Current[11:9]}));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk,
    iRx);
  output oTx;
  input iRst;
  input iClk;
  input iRx;

  wire \FSM_onehot_rFSM[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg_n_0_[6] ;
  wire \FSM_onehot_rFSM_reg_n_0_[7] ;
  wire MP_ADDER_INST_n_18;
  wire MP_ADDER_INST_n_19;
  wire UART_RX_INST_n_2;
  wire UART_RX_INST_n_3;
  wire UART_RX_INST_n_4;
  wire UART_RX_INST_n_5;
  wire UART_RX_INST_n_6;
  wire UART_RX_INST_n_7;
  wire UART_RX_INST_n_8;
  wire UART_RX_INST_n_9;
  wire UART_TX_INST_n_0;
  wire UART_TX_INST_n_1;
  wire UART_TX_INST_n_10;
  wire UART_TX_INST_n_11;
  wire UART_TX_INST_n_14;
  wire UART_TX_INST_n_15;
  wire UART_TX_INST_n_3;
  wire UART_TX_INST_n_4;
  wire UART_TX_INST_n_5;
  wire UART_TX_INST_n_6;
  wire UART_TX_INST_n_7;
  wire UART_TX_INST_n_8;
  wire UART_TX_INST_n_9;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [15:8]in12;
  wire oTx;
  wire [15:0]rA;
  wire rA_3;
  wire [15:0]rB;
  wire rBuffer;
  wire \rBuffer[10]_i_1_n_0 ;
  wire \rBuffer[11]_i_1_n_0 ;
  wire \rBuffer[12]_i_1_n_0 ;
  wire \rBuffer[13]_i_1_n_0 ;
  wire \rBuffer[14]_i_1_n_0 ;
  wire \rBuffer[15]_i_2_n_0 ;
  wire \rBuffer[8]_i_1_n_0 ;
  wire \rBuffer[9]_i_1_n_0 ;
  wire \rBuffer_reg_n_0_[10] ;
  wire \rBuffer_reg_n_0_[11] ;
  wire \rBuffer_reg_n_0_[12] ;
  wire \rBuffer_reg_n_0_[13] ;
  wire \rBuffer_reg_n_0_[14] ;
  wire \rBuffer_reg_n_0_[15] ;
  wire \rBuffer_reg_n_0_[8] ;
  wire \rBuffer_reg_n_0_[9] ;
  wire rCnt;
  wire \rCnt[0]_i_1_n_0 ;
  wire \rCnt[1]_i_1_n_0 ;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire rFSM1__1;
  wire [23:0]rFinal;
  wire \rFinal[0]_i_1_n_0 ;
  wire \rFinal[10]_i_1_n_0 ;
  wire \rFinal[11]_i_1_n_0 ;
  wire \rFinal[12]_i_1_n_0 ;
  wire \rFinal[13]_i_1_n_0 ;
  wire \rFinal[14]_i_1_n_0 ;
  wire \rFinal[15]_i_1_n_0 ;
  wire \rFinal[16]_i_1_n_0 ;
  wire \rFinal[17]_i_1_n_0 ;
  wire \rFinal[18]_i_1_n_0 ;
  wire \rFinal[19]_i_1_n_0 ;
  wire \rFinal[1]_i_1_n_0 ;
  wire \rFinal[20]_i_1_n_0 ;
  wire \rFinal[21]_i_1_n_0 ;
  wire \rFinal[22]_i_1_n_0 ;
  wire \rFinal[23]_i_2_n_0 ;
  wire \rFinal[2]_i_1_n_0 ;
  wire \rFinal[3]_i_1_n_0 ;
  wire \rFinal[4]_i_1_n_0 ;
  wire \rFinal[5]_i_1_n_0 ;
  wire \rFinal[6]_i_1_n_0 ;
  wire \rFinal[7]_i_1_n_0 ;
  wire \rFinal[8]_i_1_n_0 ;
  wire \rFinal[9]_i_1_n_0 ;
  wire rFinal_2;
  wire [16:0]rResult;
  wire rResult_1;
  wire rStart_i_1_n_0;
  wire rStart_reg_n_0;
  wire [7:0]rTxByte;
  wire rTxByte_0;
  wire rTxStart_reg_n_0;
  wire [15:0]regResult;
  wire [16:16]wResult;
  wire wTxDone;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM[1]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_rFSM[2]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rFSM[3]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_reg_n_0_[7] ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(MP_ADDER_INST_n_19),
        .Q(rResult_1),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(MP_ADDER_INST_n_18),
        .Q(rTxByte_0),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_1),
        .Q(\FSM_onehot_rFSM_reg_n_0_[6] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00000001,s_RX1:00000010,s_CAL_START:00001000,s_RX2:00000100,s_CAL:00010000,s_DONE:10000000,s_WAIT_TX:01000000,s_TX:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_0),
        .Q(\FSM_onehot_rFSM_reg_n_0_[7] ),
        .R(iRst));
  design_1_uart_top_0_0_mp_adder MP_ADDER_INST
       (.D({wResult,regResult}),
        .E(rFinal_2),
        .\FSM_onehot_rFSM_reg[5] (wTxDone),
        .\FSM_sequential_rFSM_current_reg[0]_0 (rStart_reg_n_0),
        .Q({\FSM_onehot_rFSM_reg_n_0_[6] ,rTxByte_0,rResult_1,\FSM_onehot_rFSM_reg_n_0_[3] }),
        .iClk(iClk),
        .iRst(iRst),
        .rFSM1__1(rFSM1__1),
        .\regA_Q_reg[15]_0 (rA),
        .\regB_Q_reg[15]_0 (rB),
        .regDone_reg_0({MP_ADDER_INST_n_18,MP_ADDER_INST_n_19}));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D({UART_RX_INST_n_2,UART_RX_INST_n_3,UART_RX_INST_n_4,UART_RX_INST_n_5,UART_RX_INST_n_6,UART_RX_INST_n_7,UART_RX_INST_n_8,UART_RX_INST_n_9}),
        .E(rBuffer),
        .Q({rTxByte_0,\FSM_onehot_rFSM_reg_n_0_[2] ,\FSM_onehot_rFSM_reg_n_0_[1] }),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .\rBuffer_reg[0] (\rCnt_reg_n_0_[1] ),
        .rCnt(rCnt));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D({UART_TX_INST_n_0,UART_TX_INST_n_1}),
        .\FSM_onehot_rFSM_Current_reg[0]_0 ({UART_TX_INST_n_3,UART_TX_INST_n_4,UART_TX_INST_n_5,UART_TX_INST_n_6,UART_TX_INST_n_7,UART_TX_INST_n_8,UART_TX_INST_n_9,UART_TX_INST_n_10}),
        .\FSM_onehot_rFSM_Current_reg[4]_0 (wTxDone),
        .\FSM_onehot_rFSM_reg[5] (UART_TX_INST_n_11),
        .\FSM_onehot_rFSM_reg[5]_0 (UART_TX_INST_n_14),
        .\FSM_onehot_rFSM_reg[5]_1 (UART_TX_INST_n_15),
        .\FSM_onehot_rFSM_reg[7] (\rCnt_reg_n_0_[1] ),
        .\FSM_onehot_rFSM_reg[7]_0 (\rCnt_reg_n_0_[0] ),
        .Q({\FSM_onehot_rFSM_reg_n_0_[6] ,rTxByte_0}),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .rFSM1__1(rFSM1__1),
        .\rTxByte_reg[7] (rFinal[23:16]),
        .\rTxData_Current_reg[7]_0 (rTxByte),
        .rTxStart_reg(rTxStart_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \rA[15]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .O(rA_3));
  FDRE \rA_reg[0] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[8]),
        .Q(rA[0]),
        .R(iRst));
  FDRE \rA_reg[10] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[10] ),
        .Q(rA[10]),
        .R(iRst));
  FDRE \rA_reg[11] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[11] ),
        .Q(rA[11]),
        .R(iRst));
  FDRE \rA_reg[12] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[12] ),
        .Q(rA[12]),
        .R(iRst));
  FDRE \rA_reg[13] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[13] ),
        .Q(rA[13]),
        .R(iRst));
  FDRE \rA_reg[14] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[14] ),
        .Q(rA[14]),
        .R(iRst));
  FDRE \rA_reg[15] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[15] ),
        .Q(rA[15]),
        .R(iRst));
  FDRE \rA_reg[1] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[9]),
        .Q(rA[1]),
        .R(iRst));
  FDRE \rA_reg[2] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[10]),
        .Q(rA[2]),
        .R(iRst));
  FDRE \rA_reg[3] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[11]),
        .Q(rA[3]),
        .R(iRst));
  FDRE \rA_reg[4] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[12]),
        .Q(rA[4]),
        .R(iRst));
  FDRE \rA_reg[5] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[13]),
        .Q(rA[5]),
        .R(iRst));
  FDRE \rA_reg[6] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[14]),
        .Q(rA[6]),
        .R(iRst));
  FDRE \rA_reg[7] 
       (.C(iClk),
        .CE(rA_3),
        .D(in12[15]),
        .Q(rA[7]),
        .R(iRst));
  FDRE \rA_reg[8] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[8] ),
        .Q(rA[8]),
        .R(iRst));
  FDRE \rA_reg[9] 
       (.C(iClk),
        .CE(rA_3),
        .D(\rBuffer_reg_n_0_[9] ),
        .Q(rA[9]),
        .R(iRst));
  FDRE \rB_reg[0] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[8]),
        .Q(rB[0]),
        .R(iRst));
  FDRE \rB_reg[10] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[10] ),
        .Q(rB[10]),
        .R(iRst));
  FDRE \rB_reg[11] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[11] ),
        .Q(rB[11]),
        .R(iRst));
  FDRE \rB_reg[12] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[12] ),
        .Q(rB[12]),
        .R(iRst));
  FDRE \rB_reg[13] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[13] ),
        .Q(rB[13]),
        .R(iRst));
  FDRE \rB_reg[14] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[14] ),
        .Q(rB[14]),
        .R(iRst));
  FDRE \rB_reg[15] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[15] ),
        .Q(rB[15]),
        .R(iRst));
  FDRE \rB_reg[1] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[9]),
        .Q(rB[1]),
        .R(iRst));
  FDRE \rB_reg[2] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[10]),
        .Q(rB[2]),
        .R(iRst));
  FDRE \rB_reg[3] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[11]),
        .Q(rB[3]),
        .R(iRst));
  FDRE \rB_reg[4] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[12]),
        .Q(rB[4]),
        .R(iRst));
  FDRE \rB_reg[5] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[13]),
        .Q(rB[5]),
        .R(iRst));
  FDRE \rB_reg[6] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[14]),
        .Q(rB[6]),
        .R(iRst));
  FDRE \rB_reg[7] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(in12[15]),
        .Q(rB[7]),
        .R(iRst));
  FDRE \rB_reg[8] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[8] ),
        .Q(rB[8]),
        .R(iRst));
  FDRE \rB_reg[9] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM[3]_i_1_n_0 ),
        .D(\rBuffer_reg_n_0_[9] ),
        .Q(rB[9]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[10]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[10]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[11]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[11]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[12]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[12]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[13]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[13]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[14]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[14]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[15]_i_2 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[15]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[8]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[8]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \rBuffer[9]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(in12[9]),
        .I3(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .O(\rBuffer[9]_i_1_n_0 ));
  FDRE \rBuffer_reg[0] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_9),
        .Q(in12[8]),
        .R(iRst));
  FDRE \rBuffer_reg[10] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[10]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rBuffer_reg[11] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[11]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[11] ),
        .R(iRst));
  FDRE \rBuffer_reg[12] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[12]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[12] ),
        .R(iRst));
  FDRE \rBuffer_reg[13] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[13]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[13] ),
        .R(iRst));
  FDRE \rBuffer_reg[14] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[14]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[14] ),
        .R(iRst));
  FDRE \rBuffer_reg[15] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[15]_i_2_n_0 ),
        .Q(\rBuffer_reg_n_0_[15] ),
        .R(iRst));
  FDRE \rBuffer_reg[1] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_8),
        .Q(in12[9]),
        .R(iRst));
  FDRE \rBuffer_reg[2] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_7),
        .Q(in12[10]),
        .R(iRst));
  FDRE \rBuffer_reg[3] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_6),
        .Q(in12[11]),
        .R(iRst));
  FDRE \rBuffer_reg[4] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_5),
        .Q(in12[12]),
        .R(iRst));
  FDRE \rBuffer_reg[5] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_4),
        .Q(in12[13]),
        .R(iRst));
  FDRE \rBuffer_reg[6] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_3),
        .Q(in12[14]),
        .R(iRst));
  FDRE \rBuffer_reg[7] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_2),
        .Q(in12[15]),
        .R(iRst));
  FDRE \rBuffer_reg[8] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[8]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rBuffer_reg[9] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[9]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[9] ),
        .R(iRst));
  LUT6 #(
    .INIT(64'hF0F0FFFFF5F40000)) 
    \rCnt[0]_i_1 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .I2(UART_TX_INST_n_14),
        .I3(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I4(rCnt),
        .I5(\rCnt_reg_n_0_[0] ),
        .O(\rCnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFFFFAF80000)) 
    \rCnt[1]_i_1 
       (.I0(\rCnt_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .I2(UART_TX_INST_n_11),
        .I3(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I4(rCnt),
        .I5(\rCnt_reg_n_0_[1] ),
        .O(\rCnt[1]_i_1_n_0 ));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt[0]_i_1_n_0 ),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt[1]_i_1_n_0 ),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[0]_i_1 
       (.I0(rResult_1),
        .I1(rResult[0]),
        .O(\rFinal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[10]_i_1 
       (.I0(rResult[10]),
        .I1(rResult_1),
        .I2(rFinal[2]),
        .I3(rTxByte_0),
        .O(\rFinal[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[11]_i_1 
       (.I0(rResult[11]),
        .I1(rResult_1),
        .I2(rFinal[3]),
        .I3(rTxByte_0),
        .O(\rFinal[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[12]_i_1 
       (.I0(rResult[12]),
        .I1(rResult_1),
        .I2(rFinal[4]),
        .I3(rTxByte_0),
        .O(\rFinal[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[13]_i_1 
       (.I0(rResult[13]),
        .I1(rResult_1),
        .I2(rFinal[5]),
        .I3(rTxByte_0),
        .O(\rFinal[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[14]_i_1 
       (.I0(rResult[14]),
        .I1(rResult_1),
        .I2(rFinal[6]),
        .I3(rTxByte_0),
        .O(\rFinal[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[15]_i_1 
       (.I0(rResult[15]),
        .I1(rResult_1),
        .I2(rFinal[7]),
        .I3(rTxByte_0),
        .O(\rFinal[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[16]_i_1 
       (.I0(rResult[16]),
        .I1(rResult_1),
        .I2(rFinal[8]),
        .I3(rTxByte_0),
        .O(\rFinal[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[17]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[9]),
        .O(\rFinal[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[18]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[10]),
        .O(\rFinal[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[19]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[11]),
        .O(\rFinal[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[1]_i_1 
       (.I0(rResult_1),
        .I1(rResult[1]),
        .O(\rFinal[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[20]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[12]),
        .O(\rFinal[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[21]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[13]),
        .O(\rFinal[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[22]_i_1 
       (.I0(rTxByte_0),
        .I1(rFinal[14]),
        .O(\rFinal[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[23]_i_2 
       (.I0(rTxByte_0),
        .I1(rFinal[15]),
        .O(\rFinal[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[2]_i_1 
       (.I0(rResult_1),
        .I1(rResult[2]),
        .O(\rFinal[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[3]_i_1 
       (.I0(rResult_1),
        .I1(rResult[3]),
        .O(\rFinal[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[4]_i_1 
       (.I0(rResult_1),
        .I1(rResult[4]),
        .O(\rFinal[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[5]_i_1 
       (.I0(rResult_1),
        .I1(rResult[5]),
        .O(\rFinal[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[6]_i_1 
       (.I0(rResult_1),
        .I1(rResult[6]),
        .O(\rFinal[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rFinal[7]_i_1 
       (.I0(rResult_1),
        .I1(rResult[7]),
        .O(\rFinal[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[8]_i_1 
       (.I0(rResult[8]),
        .I1(rResult_1),
        .I2(rFinal[0]),
        .I3(rTxByte_0),
        .O(\rFinal[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rFinal[9]_i_1 
       (.I0(rResult[9]),
        .I1(rResult_1),
        .I2(rFinal[1]),
        .I3(rTxByte_0),
        .O(\rFinal[9]_i_1_n_0 ));
  FDRE \rFinal_reg[0] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[0]_i_1_n_0 ),
        .Q(rFinal[0]),
        .R(iRst));
  FDRE \rFinal_reg[10] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[10]_i_1_n_0 ),
        .Q(rFinal[10]),
        .R(iRst));
  FDRE \rFinal_reg[11] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[11]_i_1_n_0 ),
        .Q(rFinal[11]),
        .R(iRst));
  FDRE \rFinal_reg[12] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[12]_i_1_n_0 ),
        .Q(rFinal[12]),
        .R(iRst));
  FDRE \rFinal_reg[13] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[13]_i_1_n_0 ),
        .Q(rFinal[13]),
        .R(iRst));
  FDRE \rFinal_reg[14] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[14]_i_1_n_0 ),
        .Q(rFinal[14]),
        .R(iRst));
  FDRE \rFinal_reg[15] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[15]_i_1_n_0 ),
        .Q(rFinal[15]),
        .R(iRst));
  FDRE \rFinal_reg[16] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[16]_i_1_n_0 ),
        .Q(rFinal[16]),
        .R(iRst));
  FDRE \rFinal_reg[17] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[17]_i_1_n_0 ),
        .Q(rFinal[17]),
        .R(iRst));
  FDRE \rFinal_reg[18] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[18]_i_1_n_0 ),
        .Q(rFinal[18]),
        .R(iRst));
  FDRE \rFinal_reg[19] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[19]_i_1_n_0 ),
        .Q(rFinal[19]),
        .R(iRst));
  FDRE \rFinal_reg[1] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[1]_i_1_n_0 ),
        .Q(rFinal[1]),
        .R(iRst));
  FDRE \rFinal_reg[20] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[20]_i_1_n_0 ),
        .Q(rFinal[20]),
        .R(iRst));
  FDRE \rFinal_reg[21] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[21]_i_1_n_0 ),
        .Q(rFinal[21]),
        .R(iRst));
  FDRE \rFinal_reg[22] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[22]_i_1_n_0 ),
        .Q(rFinal[22]),
        .R(iRst));
  FDRE \rFinal_reg[23] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[23]_i_2_n_0 ),
        .Q(rFinal[23]),
        .R(iRst));
  FDRE \rFinal_reg[2] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[2]_i_1_n_0 ),
        .Q(rFinal[2]),
        .R(iRst));
  FDRE \rFinal_reg[3] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[3]_i_1_n_0 ),
        .Q(rFinal[3]),
        .R(iRst));
  FDRE \rFinal_reg[4] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[4]_i_1_n_0 ),
        .Q(rFinal[4]),
        .R(iRst));
  FDRE \rFinal_reg[5] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[5]_i_1_n_0 ),
        .Q(rFinal[5]),
        .R(iRst));
  FDRE \rFinal_reg[6] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[6]_i_1_n_0 ),
        .Q(rFinal[6]),
        .R(iRst));
  FDRE \rFinal_reg[7] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[7]_i_1_n_0 ),
        .Q(rFinal[7]),
        .R(iRst));
  FDRE \rFinal_reg[8] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[8]_i_1_n_0 ),
        .Q(rFinal[8]),
        .R(iRst));
  FDRE \rFinal_reg[9] 
       (.C(iClk),
        .CE(rFinal_2),
        .D(\rFinal[9]_i_1_n_0 ),
        .Q(rFinal[9]),
        .R(iRst));
  FDRE \rResult_reg[0] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[0]),
        .Q(rResult[0]),
        .R(iRst));
  FDRE \rResult_reg[10] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[10]),
        .Q(rResult[10]),
        .R(iRst));
  FDRE \rResult_reg[11] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[11]),
        .Q(rResult[11]),
        .R(iRst));
  FDRE \rResult_reg[12] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[12]),
        .Q(rResult[12]),
        .R(iRst));
  FDRE \rResult_reg[13] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[13]),
        .Q(rResult[13]),
        .R(iRst));
  FDRE \rResult_reg[14] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[14]),
        .Q(rResult[14]),
        .R(iRst));
  FDRE \rResult_reg[15] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[15]),
        .Q(rResult[15]),
        .R(iRst));
  FDRE \rResult_reg[16] 
       (.C(iClk),
        .CE(rResult_1),
        .D(wResult),
        .Q(rResult[16]),
        .R(iRst));
  FDRE \rResult_reg[1] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[1]),
        .Q(rResult[1]),
        .R(iRst));
  FDRE \rResult_reg[2] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[2]),
        .Q(rResult[2]),
        .R(iRst));
  FDRE \rResult_reg[3] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[3]),
        .Q(rResult[3]),
        .R(iRst));
  FDRE \rResult_reg[4] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[4]),
        .Q(rResult[4]),
        .R(iRst));
  FDRE \rResult_reg[5] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[5]),
        .Q(rResult[5]),
        .R(iRst));
  FDRE \rResult_reg[6] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[6]),
        .Q(rResult[6]),
        .R(iRst));
  FDRE \rResult_reg[7] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[7]),
        .Q(rResult[7]),
        .R(iRst));
  FDRE \rResult_reg[8] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[8]),
        .Q(rResult[8]),
        .R(iRst));
  FDRE \rResult_reg[9] 
       (.C(iClk),
        .CE(rResult_1),
        .D(regResult[9]),
        .Q(rResult[9]),
        .R(iRst));
  LUT4 #(
    .INIT(16'hFD0C)) 
    rStart_i_1
       (.I0(rResult_1),
        .I1(\FSM_onehot_rFSM_reg_n_0_[3] ),
        .I2(iRst),
        .I3(rStart_reg_n_0),
        .O(rStart_i_1_n_0));
  FDRE rStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rStart_i_1_n_0),
        .Q(rStart_reg_n_0),
        .R(1'b0));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_10),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_9),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_8),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_7),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_6),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_5),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_4),
        .Q(rTxByte[6]),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_3),
        .Q(rTxByte[7]),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_15),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    \FSM_onehot_rFSM_Current_reg[0]_0 ,
    \FSM_onehot_rFSM_reg[5] ,
    rFSM1__1,
    oTx,
    \FSM_onehot_rFSM_reg[5]_0 ,
    \FSM_onehot_rFSM_reg[5]_1 ,
    Q,
    \FSM_onehot_rFSM_reg[7] ,
    \FSM_onehot_rFSM_reg[7]_0 ,
    \rTxByte_reg[7] ,
    rTxStart_reg,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output [1:0]D;
  output [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  output [7:0]\FSM_onehot_rFSM_Current_reg[0]_0 ;
  output \FSM_onehot_rFSM_reg[5] ;
  output rFSM1__1;
  output oTx;
  output \FSM_onehot_rFSM_reg[5]_0 ;
  output \FSM_onehot_rFSM_reg[5]_1 ;
  input [1:0]Q;
  input \FSM_onehot_rFSM_reg[7] ;
  input \FSM_onehot_rFSM_reg[7]_0 ;
  input [7:0]\rTxByte_reg[7] ;
  input rTxStart_reg;
  input [7:0]\rTxData_Current_reg[7]_0 ;
  input iRst;
  input iClk;

  wire [1:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire [7:0]\FSM_onehot_rFSM_Current_reg[0]_0 ;
  wire [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg[5] ;
  wire \FSM_onehot_rFSM_reg[5]_0 ;
  wire \FSM_onehot_rFSM_reg[5]_1 ;
  wire \FSM_onehot_rFSM_reg[7] ;
  wire \FSM_onehot_rFSM_reg[7]_0 ;
  wire [1:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_2_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_2_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[10] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire \rCnt_Current_reg_n_0_[2] ;
  wire \rCnt_Current_reg_n_0_[3] ;
  wire \rCnt_Current_reg_n_0_[4] ;
  wire \rCnt_Current_reg_n_0_[5] ;
  wire \rCnt_Current_reg_n_0_[6] ;
  wire \rCnt_Current_reg_n_0_[7] ;
  wire \rCnt_Current_reg_n_0_[8] ;
  wire \rCnt_Current_reg_n_0_[9] ;
  wire rFSM1__1;
  wire [7:0]\rTxByte_reg[7] ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_1_n_0 ;
  wire \rTxData_Current[7]_i_2_n_0 ;
  wire \rTxData_Current[7]_i_3_n_0 ;
  wire [7:0]\rTxData_Current_reg[7]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_reg;
  wire wBit_Next;
  wire wTxData_Next;

  LUT6 #(
    .INIT(64'h7700FFFF77007000)) 
    \FSM_onehot_rFSM[6]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[7]_0 ),
        .I1(\FSM_onehot_rFSM_reg[7] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I5(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAA020202)) 
    \FSM_onehot_rFSM[7]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I3(\FSM_onehot_rFSM_reg[7] ),
        .I4(\FSM_onehot_rFSM_reg[7]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I1(rTxStart_reg),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF22222222)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(rBit_Current[1]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[2]),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(rBit_Current[1]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rCnt_Current_reg_n_0_[4] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(wBit_Next),
        .I2(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \rBit_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \rBit_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .O(wBit_Next));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \rCnt[0]_i_2 
       (.I0(Q[0]),
        .I1(\FSM_onehot_rFSM_reg[7]_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h28282800)) 
    \rCnt[1]_i_2 
       (.I0(Q[0]),
        .I1(\FSM_onehot_rFSM_reg[7]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \rCnt_Current[0]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current_reg_n_0_[10] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rCnt_Current[10]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rCnt_Current[10]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \rCnt_Current[1]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[2] ),
        .I3(\rCnt_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[4]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[4] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rCnt_Current[4]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[5]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[5] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \rCnt_Current[6]_i_1 
       (.I0(\rCnt_Current[8]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current[8]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current[8]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[8]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[5] ),
        .I1(\rCnt_Current_reg_n_0_[3] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[2] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7770)) 
    \rFinal[23]_i_3 
       (.I0(\FSM_onehot_rFSM_reg[7]_0 ),
        .I1(\FSM_onehot_rFSM_reg[7] ),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(rFSM1__1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [0]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [1]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [2]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [3]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [4]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [4]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [5]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [5]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [6]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [6]));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \rTxByte[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_onehot_rFSM_reg[7] ),
        .I3(\FSM_onehot_rFSM_reg[7]_0 ),
        .I4(\rTxByte_reg[7] [7]),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 [7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[0]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [0]),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[1]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [1]),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [2]),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[3]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [3]),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[4]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [4]),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[5]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [5]),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(in7[6]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxData_Current_reg[7]_0 [6]),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rTxData_Current[7]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current[7]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wTxData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\rTxData_Current_reg[7]_0 [7]),
        .O(\rTxData_Current[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rTxData_Current[7]_i_3 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .O(\rTxData_Current[7]_i_3_n_0 ));
  FDRE \rTxData_Current_reg[0] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[0]_i_1_n_0 ),
        .Q(\rTxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxData_Current_reg[1] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[1]_i_1_n_0 ),
        .Q(in7[0]),
        .R(iRst));
  FDRE \rTxData_Current_reg[2] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[2]_i_1_n_0 ),
        .Q(in7[1]),
        .R(iRst));
  FDRE \rTxData_Current_reg[3] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[3]_i_1_n_0 ),
        .Q(in7[2]),
        .R(iRst));
  FDRE \rTxData_Current_reg[4] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[4]_i_1_n_0 ),
        .Q(in7[3]),
        .R(iRst));
  FDRE \rTxData_Current_reg[5] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[5]_i_1_n_0 ),
        .Q(in7[4]),
        .R(iRst));
  FDRE \rTxData_Current_reg[6] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[6]_i_1_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  FDRE \rTxData_Current_reg[7] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[7]_i_2_n_0 ),
        .Q(in7[6]),
        .R(iRst));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    rTxStart_i_1
       (.I0(rFSM1__1),
        .I1(Q[0]),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I3(Q[1]),
        .I4(rTxStart_reg),
        .O(\FSM_onehot_rFSM_reg[5]_1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
