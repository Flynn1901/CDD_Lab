// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Mar  5 21:00:27 2025
// Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/PROJECT/XILINX/CDD/Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
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

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_uart_top_0_0_uart_rx
   (D,
    E,
    iRx,
    iClk,
    Q,
    \FSM_onehot_rFSM_reg[0] ,
    iRst);
  output [3:0]D;
  output [0:0]E;
  input iRx;
  input iClk;
  input [3:0]Q;
  input [4:0]\FSM_onehot_rFSM_reg[0] ;
  input iRst;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM[4]_i_3_n_0 ;
  wire [4:0]\FSM_onehot_rFSM_reg[0] ;
  wire \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_wFSM_Next_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_wFSM_Next_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0 ;
  wire [3:0]Q;
  wire iClk;
  wire iRst;
  wire iRx;
  wire \rBit_Current_reg_n_0_[0] ;
  wire \rBit_Current_reg_n_0_[1] ;
  wire \rBit_Current_reg_n_0_[2] ;
  wire [10:0]rCnt_Current;
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3__0_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_2__0_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1__0_n_0 ;
  wire \rCnt_Current[8]_i_2__0_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire [2:0]rFSM_Current;
  wire rRx1;
  wire rRx2;
  wire [2:0]wBit_Next;
  wire wBit_Next__0;
  wire \wBit_Next_reg[0]_i_1_n_0 ;
  wire \wBit_Next_reg[1]_i_1_n_0 ;
  wire \wBit_Next_reg[2]_i_1_n_0 ;
  wire \wBit_Next_reg[2]_i_3_n_0 ;
  wire [2:0]wFSM_Next;
  wire [2:0]wFSM_Next__0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \FSM_onehot_rFSM[4]_i_1 
       (.I0(\FSM_onehot_rFSM[4]_i_3_n_0 ),
        .I1(\FSM_onehot_rFSM_reg[0] [1]),
        .I2(\FSM_onehot_rFSM_reg[0] [2]),
        .I3(\FSM_onehot_rFSM_reg[0] [0]),
        .I4(\FSM_onehot_rFSM_reg[0] [4]),
        .I5(\FSM_onehot_rFSM_reg[0] [3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00070000)) 
    \FSM_onehot_rFSM[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(rFSM_Current[0]),
        .I3(rFSM_Current[1]),
        .I4(rFSM_Current[2]),
        .O(\FSM_onehot_rFSM[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_Next[0]),
        .Q(rFSM_Current[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_Next[1]),
        .Q(rFSM_Current[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_Next[2]),
        .Q(rFSM_Current[2]),
        .R(iRst));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_wFSM_Next_reg[0] 
       (.CLR(1'b0),
        .D(wFSM_Next__0[0]),
        .G(\FSM_sequential_wFSM_Next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wFSM_Next[0]));
  LUT6 #(
    .INIT(64'h03000F0503000005)) 
    \FSM_sequential_wFSM_Next_reg[0]_i_1 
       (.I0(rRx2),
        .I1(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .I2(rFSM_Current[2]),
        .I3(rFSM_Current[1]),
        .I4(rFSM_Current[0]),
        .I5(\FSM_sequential_wFSM_Next_reg[0]_i_2_n_0 ),
        .O(wFSM_Next__0[0]));
  LUT6 #(
    .INIT(64'h8080008000000000)) 
    \FSM_sequential_wFSM_Next_reg[0]_i_2 
       (.I0(\rBit_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[0] ),
        .I3(\FSM_sequential_wFSM_Next_reg[2]_i_4_n_0 ),
        .I4(\FSM_sequential_wFSM_Next_reg[0]_i_3_n_0 ),
        .I5(rCnt_Current[10]),
        .O(\FSM_sequential_wFSM_Next_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_wFSM_Next_reg[0]_i_3 
       (.I0(rCnt_Current[7]),
        .I1(rCnt_Current[8]),
        .I2(rCnt_Current[6]),
        .I3(rCnt_Current[9]),
        .O(\FSM_sequential_wFSM_Next_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_wFSM_Next_reg[1] 
       (.CLR(1'b0),
        .D(wFSM_Next__0[1]),
        .G(\FSM_sequential_wFSM_Next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wFSM_Next[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h007C)) 
    \FSM_sequential_wFSM_Next_reg[1]_i_1 
       (.I0(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .I1(rFSM_Current[0]),
        .I2(rFSM_Current[1]),
        .I3(rFSM_Current[2]),
        .O(wFSM_Next__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_wFSM_Next_reg[2] 
       (.CLR(1'b0),
        .D(wFSM_Next__0[2]),
        .G(\FSM_sequential_wFSM_Next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wFSM_Next[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_wFSM_Next_reg[2]_i_1 
       (.I0(rFSM_Current[2]),
        .I1(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .I2(rFSM_Current[1]),
        .I3(rFSM_Current[0]),
        .O(wFSM_Next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1F1B)) 
    \FSM_sequential_wFSM_Next_reg[2]_i_2 
       (.I0(rFSM_Current[1]),
        .I1(rFSM_Current[0]),
        .I2(rFSM_Current[2]),
        .I3(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_wFSM_Next_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \FSM_sequential_wFSM_Next_reg[2]_i_3 
       (.I0(rCnt_Current[10]),
        .I1(rCnt_Current[7]),
        .I2(rCnt_Current[8]),
        .I3(rCnt_Current[6]),
        .I4(rCnt_Current[9]),
        .I5(\FSM_sequential_wFSM_Next_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_wFSM_Next_reg[2]_i_4 
       (.I0(rCnt_Current[2]),
        .I1(rCnt_Current[5]),
        .I2(rCnt_Current[3]),
        .I3(rCnt_Current[4]),
        .O(\FSM_sequential_wFSM_Next_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020202)) 
    \rBit[0]_i_1 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \rBit[1]_i_1 
       (.I0(\FSM_onehot_rFSM[4]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rBit[2]_i_1 
       (.I0(\FSM_onehot_rFSM[4]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA8888888)) 
    \rBit[3]_i_1 
       (.I0(\FSM_onehot_rFSM[4]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[3]));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wBit_Next[0]),
        .Q(\rBit_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wBit_Next[1]),
        .Q(\rBit_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wBit_Next[2]),
        .Q(\rBit_Current_reg_n_0_[2] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt_Current[0]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[0]),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[10]),
        .I2(\rCnt_Current[10]_i_3__0_n_0 ),
        .I3(rCnt_Current[9]),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002F2F2F00)) 
    \rCnt_Current[10]_i_2 
       (.I0(\FSM_sequential_wFSM_Next_reg[2]_i_4_n_0 ),
        .I1(\FSM_sequential_wFSM_Next_reg[0]_i_3_n_0 ),
        .I2(rCnt_Current[10]),
        .I3(rFSM_Current[0]),
        .I4(rFSM_Current[1]),
        .I5(rFSM_Current[2]),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCnt_Current[10]_i_3__0 
       (.I0(rCnt_Current[7]),
        .I1(rCnt_Current[6]),
        .I2(\rCnt_Current[8]_i_2__0_n_0 ),
        .I3(rCnt_Current[8]),
        .O(\rCnt_Current[10]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[1]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[1]),
        .I2(rCnt_Current[0]),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[0]),
        .I2(rCnt_Current[1]),
        .I3(rCnt_Current[2]),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[1]),
        .I2(rCnt_Current[0]),
        .I3(rCnt_Current[2]),
        .I4(rCnt_Current[3]),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[0]),
        .I3(rCnt_Current[1]),
        .I4(rCnt_Current[3]),
        .I5(rCnt_Current[4]),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[5]_i_2__0_n_0 ),
        .I2(rCnt_Current[3]),
        .I3(rCnt_Current[4]),
        .I4(rCnt_Current[5]),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rCnt_Current[5]_i_2__0 
       (.I0(rCnt_Current[1]),
        .I1(rCnt_Current[0]),
        .I2(rCnt_Current[2]),
        .O(\rCnt_Current[5]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[6]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[8]_i_2__0_n_0 ),
        .I2(rCnt_Current[6]),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \rCnt_Current[7]_i_1 
       (.I0(rCnt_Current[7]),
        .I1(\rCnt_Current[8]_i_2__0_n_0 ),
        .I2(rCnt_Current[6]),
        .I3(\rCnt_Current[10]_i_2_n_0 ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \rCnt_Current[8]_i_1__0 
       (.I0(\rCnt_Current[8]_i_2__0_n_0 ),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[7]),
        .I3(\rCnt_Current[10]_i_2_n_0 ),
        .I4(rCnt_Current[8]),
        .O(\rCnt_Current[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[8]_i_2__0 
       (.I0(rCnt_Current[4]),
        .I1(rCnt_Current[3]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[2]),
        .I4(rCnt_Current[1]),
        .I5(rCnt_Current[0]),
        .O(\rCnt_Current[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[10]_i_3__0_n_0 ),
        .I2(rCnt_Current[9]),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1_n_0 ),
        .Q(rCnt_Current[0]),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(rCnt_Current[10]),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1_n_0 ),
        .Q(rCnt_Current[1]),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(rCnt_Current[2]),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(rCnt_Current[3]),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(rCnt_Current[4]),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(rCnt_Current[5]),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(rCnt_Current[6]),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
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
        .D(\rCnt_Current[9]_i_1_n_0 ),
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
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wBit_Next_reg[0] 
       (.CLR(1'b0),
        .D(\wBit_Next_reg[0]_i_1_n_0 ),
        .G(wBit_Next__0),
        .GE(1'b1),
        .Q(wBit_Next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \wBit_Next_reg[0]_i_1 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[0]),
        .I3(\rBit_Current_reg_n_0_[0] ),
        .I4(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .O(\wBit_Next_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wBit_Next_reg[1] 
       (.CLR(1'b0),
        .D(\wBit_Next_reg[1]_i_1_n_0 ),
        .G(wBit_Next__0),
        .GE(1'b1),
        .Q(wBit_Next[1]));
  LUT6 #(
    .INIT(64'h0004040404000000)) 
    \wBit_Next_reg[1]_i_1 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[0]),
        .I3(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .I4(\rBit_Current_reg_n_0_[0] ),
        .I5(\rBit_Current_reg_n_0_[1] ),
        .O(\wBit_Next_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wBit_Next_reg[2] 
       (.CLR(1'b0),
        .D(\wBit_Next_reg[2]_i_1_n_0 ),
        .G(wBit_Next__0),
        .GE(1'b1),
        .Q(wBit_Next[2]));
  LUT5 #(
    .INIT(32'h28888888)) 
    \wBit_Next_reg[2]_i_1 
       (.I0(\wBit_Next_reg[2]_i_3_n_0 ),
        .I1(\rBit_Current_reg_n_0_[2] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .I3(\rBit_Current_reg_n_0_[0] ),
        .I4(\FSM_sequential_wFSM_Next_reg[2]_i_3_n_0 ),
        .O(\wBit_Next_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \wBit_Next_reg[2]_i_2 
       (.I0(rFSM_Current[0]),
        .I1(rFSM_Current[2]),
        .I2(rFSM_Current[1]),
        .O(wBit_Next__0));
  LUT3 #(
    .INIT(8'h04)) 
    \wBit_Next_reg[2]_i_3 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[0]),
        .O(\wBit_Next_reg[2]_i_3_n_0 ));
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

  wire \FSM_onehot_rFSM_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg_n_0_[4] ;
  wire UART_RX_INST_n_4;
  wire UART_TX_INST_n_0;
  wire UART_TX_INST_n_1;
  wire UART_TX_INST_n_2;
  wire UART_TX_INST_n_3;
  wire UART_TX_INST_n_4;
  wire UART_TX_INST_n_5;
  wire UART_TX_INST_n_6;
  wire UART_TX_INST_n_8;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;
  wire [3:0]p_0_in;
  wire rBit;
  wire [3:2]rBit_reg;
  wire \rBit_reg_n_0_[0] ;
  wire \rBit_reg_n_0_[1] ;
  wire rCnt;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire rTxStart_reg_n_0;

  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_reg[0] 
       (.C(iClk),
        .CE(UART_RX_INST_n_4),
        .D(1'b0),
        .Q(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[1] 
       (.C(iClk),
        .CE(UART_RX_INST_n_4),
        .D(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .Q(rBit),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[2] 
       (.C(iClk),
        .CE(UART_RX_INST_n_4),
        .D(UART_TX_INST_n_2),
        .Q(rCnt),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[3] 
       (.C(iClk),
        .CE(UART_RX_INST_n_4),
        .D(UART_TX_INST_n_1),
        .Q(\FSM_onehot_rFSM_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[4] 
       (.C(iClk),
        .CE(UART_RX_INST_n_4),
        .D(UART_TX_INST_n_0),
        .Q(\FSM_onehot_rFSM_reg_n_0_[4] ),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D(p_0_in),
        .E(UART_RX_INST_n_4),
        .\FSM_onehot_rFSM_reg[0] ({\FSM_onehot_rFSM_reg_n_0_[4] ,\FSM_onehot_rFSM_reg_n_0_[3] ,rCnt,rBit,\FSM_onehot_rFSM_reg_n_0_[0] }),
        .Q({rBit_reg,\rBit_reg_n_0_[1] ,\rBit_reg_n_0_[0] }),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D({UART_TX_INST_n_0,UART_TX_INST_n_1,UART_TX_INST_n_2}),
        .\FSM_onehot_rFSM_Current_reg[4]_0 ({UART_TX_INST_n_3,UART_TX_INST_n_4,UART_TX_INST_n_5,UART_TX_INST_n_6}),
        .\FSM_onehot_rFSM_reg[2] (UART_TX_INST_n_8),
        .\FSM_onehot_rFSM_reg[4] ({\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .Q({\FSM_onehot_rFSM_reg_n_0_[4] ,\FSM_onehot_rFSM_reg_n_0_[3] ,rCnt,rBit}),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .rTxStart_reg(rTxStart_reg_n_0));
  FDRE \rBit_reg[0] 
       (.C(iClk),
        .CE(rBit),
        .D(p_0_in[0]),
        .Q(\rBit_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBit_reg[1] 
       (.C(iClk),
        .CE(rBit),
        .D(p_0_in[1]),
        .Q(\rBit_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBit_reg[2] 
       (.C(iClk),
        .CE(rBit),
        .D(p_0_in[2]),
        .Q(rBit_reg[2]),
        .R(iRst));
  FDRE \rBit_reg[3] 
       (.C(iClk),
        .CE(rBit),
        .D(p_0_in[3]),
        .Q(rBit_reg[3]),
        .R(iRst));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_6),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_5),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_4),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_3),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_8),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    oTx,
    \FSM_onehot_rFSM_reg[2] ,
    Q,
    \FSM_onehot_rFSM_reg[4] ,
    rTxStart_reg,
    iRst,
    iClk);
  output [2:0]D;
  output [3:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  output oTx;
  output \FSM_onehot_rFSM_reg[2] ;
  input [3:0]Q;
  input [3:0]\FSM_onehot_rFSM_reg[4] ;
  input rTxStart_reg;
  input iRst;
  input iClk;

  wire [2:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire [3:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg[2] ;
  wire [3:0]\FSM_onehot_rFSM_reg[4] ;
  wire [3:0]Q;
  wire iClk;
  wire iRst;
  wire [5:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[0]_i_2_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current[2]_i_4_n_0 ;
  wire \rCnt_Current[0]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_2__0_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1__0_n_0 ;
  wire \rCnt_Current[2]_i_1__0_n_0 ;
  wire \rCnt_Current[3]_i_1__0_n_0 ;
  wire \rCnt_Current[4]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1__0_n_0 ;
  wire \rCnt_Current[7]_i_1__0_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_2_n_0 ;
  wire \rCnt_Current[9]_i_1__0_n_0 ;
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
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_2_n_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_i_2_n_0;
  wire rTxStart_reg;
  wire wBit_Next;
  wire wTxData_Next;
  wire wTxDone;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rFSM[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(wTxDone),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3F00FFFF3F002A00)) 
    \FSM_onehot_rFSM[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_reg[4] [2]),
        .I2(\FSM_onehot_rFSM_reg[4] [3]),
        .I3(Q[1]),
        .I4(wTxDone),
        .I5(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFABABABAAAAAAAA)) 
    \FSM_onehot_rFSM[4]_i_2 
       (.I0(Q[3]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_reg[4] [2]),
        .I4(\FSM_onehot_rFSM_reg[4] [3]),
        .I5(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(wTxDone),
        .I1(rTxStart_reg),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F00FF00FF00)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(rBit_Current[0]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(rBit_Current[0]),
        .I3(rBit_Current[1]),
        .I4(rBit_Current[2]),
        .I5(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[10] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[5] ),
        .I2(\rCnt_Current_reg_n_0_[2] ),
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
        .Q(wTxDone),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  LUT6 #(
    .INIT(64'h00000007AAAAAAA8)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(\rBit_Current[0]_i_2_n_0 ),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[0]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\rBit_Current[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8088)) 
    \rBit_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rCnt_Current_reg_n_0_[10] ),
        .I2(\rBit_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I4(\rBit_Current[2]_i_4_n_0 ),
        .O(wBit_Next));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_4 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rBit_Current[2]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00007770)) 
    \rCnt[0]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[4] [3]),
        .I1(\FSM_onehot_rFSM_reg[4] [2]),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\FSM_onehot_rFSM_reg[4] [0]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h0000777077700000)) 
    \rCnt[1]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[4] [3]),
        .I1(\FSM_onehot_rFSM_reg[4] [2]),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\FSM_onehot_rFSM_reg[4] [1]),
        .I5(\FSM_onehot_rFSM_reg[4] [0]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h00545454FC000000)) 
    \rCnt[2]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[4] [3]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\FSM_onehot_rFSM_reg[4] [0]),
        .I4(\FSM_onehot_rFSM_reg[4] [1]),
        .I5(\FSM_onehot_rFSM_reg[4] [2]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h0EE000E000E000E0)) 
    \rCnt[3]_i_1 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_reg[4] [3]),
        .I3(\FSM_onehot_rFSM_reg[4] [2]),
        .I4(\FSM_onehot_rFSM_reg[4] [1]),
        .I5(\FSM_onehot_rFSM_reg[4] [0]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \rCnt_Current[10]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[10] ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F2F2F2F2F2F00)) 
    \rCnt_Current[10]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(\rBit_Current[2]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[10] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCnt_Current[10]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[3] ),
        .I2(\rCnt_Current_reg_n_0_[2] ),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \rCnt_Current[5]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[4] ),
        .I2(\rCnt_Current[5]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \rCnt_Current[6]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current[8]_i_2_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[7]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current[10]_i_2__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current[8]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[8]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rCnt_Current_reg_n_0_[3] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554000000005554)) 
    \rCnt_Current[9]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[9]_i_1__0_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1__0_n_0 ),
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
        .D(\rCnt_Current[9]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[1]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[2]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[3]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[4]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(in7[5]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \rTxData_Current[6]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current[6]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wTxData_Next));
  LUT3 #(
    .INIT(8'h80)) 
    \rTxData_Current[6]_i_2 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .O(\rTxData_Current[6]_i_2_n_0 ));
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
        .D(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .Q(in7[5]),
        .R(iRst));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    rTxStart_i_1
       (.I0(rTxStart_i_2_n_0),
        .I1(Q[1]),
        .I2(wTxDone),
        .I3(Q[2]),
        .I4(rTxStart_reg),
        .O(\FSM_onehot_rFSM_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    rTxStart_i_2
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_reg[4] [2]),
        .I3(\FSM_onehot_rFSM_reg[4] [3]),
        .O(rTxStart_i_2_n_0));
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
