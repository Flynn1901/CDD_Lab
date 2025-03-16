// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Mar  7 22:46:10 2025
// Host        : DESKTOP-N3AMQDS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/CDD/LAB02/LAB02.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
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
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk);
  output oTx;
  input iRst;
  input iClk;

  wire \FSM_onehot_rFSM_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_reg_n_0_[3] ;
  wire UART_TX_INST_n_10;
  wire UART_TX_INST_n_12;
  wire UART_TX_INST_n_13;
  wire UART_TX_INST_n_15;
  wire UART_TX_INST_n_7;
  wire UART_TX_INST_n_8;
  wire UART_TX_INST_n_9;
  wire iClk;
  wire iRst;
  wire [94:16]in5;
  wire oTx;
  wire [6:0]p_0_in;
  wire rBuffer;
  wire \rBuffer[16]_i_1_n_0 ;
  wire \rBuffer[24]_i_1_n_0 ;
  wire \rBuffer[26]_i_1_n_0 ;
  wire \rBuffer[32]_i_1_n_0 ;
  wire \rBuffer[33]_i_1_n_0 ;
  wire \rBuffer[34]_i_1_n_0 ;
  wire \rBuffer[38]_i_1_n_0 ;
  wire \rBuffer[40]_i_1_n_0 ;
  wire \rBuffer[41]_i_1_n_0 ;
  wire \rBuffer[42]_i_1_n_0 ;
  wire \rBuffer[44]_i_1_n_0 ;
  wire \rBuffer[46]_i_1_n_0 ;
  wire \rBuffer[48]_i_1_n_0 ;
  wire \rBuffer[49]_i_1_n_0 ;
  wire \rBuffer[50]_i_1_n_0 ;
  wire \rBuffer[52]_i_1_n_0 ;
  wire \rBuffer[54]_i_1_n_0 ;
  wire \rBuffer[56]_i_1_n_0 ;
  wire \rBuffer[57]_i_1_n_0 ;
  wire \rBuffer[58]_i_1_n_0 ;
  wire \rBuffer[59]_i_1_n_0 ;
  wire \rBuffer[60]_i_1_n_0 ;
  wire \rBuffer[62]_i_1_n_0 ;
  wire \rBuffer[64]_i_1_n_0 ;
  wire \rBuffer[65]_i_1_n_0 ;
  wire \rBuffer[66]_i_1_n_0 ;
  wire \rBuffer[67]_i_1_n_0 ;
  wire \rBuffer[68]_i_1_n_0 ;
  wire \rBuffer[70]_i_1_n_0 ;
  wire \rBuffer[72]_i_1_n_0 ;
  wire \rBuffer[73]_i_1_n_0 ;
  wire \rBuffer[74]_i_1_n_0 ;
  wire \rBuffer[75]_i_1_n_0 ;
  wire \rBuffer[76]_i_1_n_0 ;
  wire \rBuffer[78]_i_1_n_0 ;
  wire \rBuffer[80]_i_1_n_0 ;
  wire \rBuffer[81]_i_1_n_0 ;
  wire \rBuffer[82]_i_1_n_0 ;
  wire \rBuffer[83]_i_1_n_0 ;
  wire \rBuffer[84]_i_1_n_0 ;
  wire \rBuffer[86]_i_1_n_0 ;
  wire \rBuffer[88]_i_1_n_0 ;
  wire \rBuffer[89]_i_1_n_0 ;
  wire \rBuffer[8]_i_1_n_0 ;
  wire \rBuffer[90]_i_1_n_0 ;
  wire \rBuffer[91]_i_1_n_0 ;
  wire \rBuffer[92]_i_1_n_0 ;
  wire \rBuffer[93]_i_1_n_0 ;
  wire \rBuffer[94]_i_2_n_0 ;
  wire \rBuffer_reg_n_0_[88] ;
  wire \rBuffer_reg_n_0_[89] ;
  wire \rBuffer_reg_n_0_[90] ;
  wire \rBuffer_reg_n_0_[91] ;
  wire \rBuffer_reg_n_0_[92] ;
  wire \rBuffer_reg_n_0_[93] ;
  wire \rBuffer_reg_n_0_[94] ;
  wire rCnt;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire [6:0]rTxByte;
  wire rTxStart_reg_n_0;

  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_13),
        .Q(rCnt),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_12),
        .Q(\FSM_onehot_rFSM_reg_n_0_[3] ),
        .R(iRst));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D(p_0_in),
        .E(rBuffer),
        .\FSM_onehot_rFSM_reg[2] (UART_TX_INST_n_15),
        .Q({\rBuffer_reg_n_0_[94] ,\rBuffer_reg_n_0_[93] ,\rBuffer_reg_n_0_[92] ,\rBuffer_reg_n_0_[91] ,\rBuffer_reg_n_0_[90] ,\rBuffer_reg_n_0_[89] ,\rBuffer_reg_n_0_[88] }),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rCnt_reg[1] ({UART_TX_INST_n_7,UART_TX_INST_n_8,UART_TX_INST_n_9,UART_TX_INST_n_10}),
        .\rCnt_reg[2] ({UART_TX_INST_n_12,UART_TX_INST_n_13}),
        .\rTxByte_reg[0] ({\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .\rTxData_Current_reg[6]_0 (rTxByte),
        .rTxStart_reg({\FSM_onehot_rFSM_reg_n_0_[3] ,rCnt,\FSM_onehot_rFSM_reg_n_0_[1] }),
        .rTxStart_reg_0(rTxStart_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[16]_i_1 
       (.I0(rCnt),
        .I1(in5[16]),
        .O(\rBuffer[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[24]_i_1 
       (.I0(rCnt),
        .I1(in5[24]),
        .O(\rBuffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[26]_i_1 
       (.I0(rCnt),
        .I1(in5[41]),
        .O(\rBuffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[32]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[32]),
        .I2(rCnt),
        .O(\rBuffer[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[33]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[33]),
        .I2(rCnt),
        .O(\rBuffer[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[34]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[34]),
        .I2(rCnt),
        .O(\rBuffer[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[38]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[49]),
        .I2(rCnt),
        .O(\rBuffer[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[40]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[40]),
        .I2(rCnt),
        .O(\rBuffer[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[41]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[41]),
        .I2(rCnt),
        .O(\rBuffer[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[42]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[42]),
        .I2(rCnt),
        .O(\rBuffer[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[44]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[16]),
        .I2(rCnt),
        .O(\rBuffer[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[46]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[46]),
        .I2(rCnt),
        .O(\rBuffer[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[48]_i_1 
       (.I0(rCnt),
        .I1(in5[48]),
        .O(\rBuffer[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[49]_i_1 
       (.I0(rCnt),
        .I1(in5[49]),
        .O(\rBuffer[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[50]_i_1 
       (.I0(rCnt),
        .I1(in5[50]),
        .O(\rBuffer[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[52]_i_1 
       (.I0(rCnt),
        .I1(in5[52]),
        .O(\rBuffer[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[54]_i_1 
       (.I0(rCnt),
        .I1(in5[54]),
        .O(\rBuffer[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[56]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[56]),
        .I2(rCnt),
        .O(\rBuffer[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[57]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[57]),
        .I2(rCnt),
        .O(\rBuffer[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[58]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[58]),
        .I2(rCnt),
        .O(\rBuffer[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[59]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[68]),
        .I2(rCnt),
        .O(\rBuffer[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[60]_i_1 
       (.I0(rCnt),
        .I1(in5[60]),
        .O(\rBuffer[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[62]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[62]),
        .I2(rCnt),
        .O(\rBuffer[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[64]_i_1 
       (.I0(rCnt),
        .I1(in5[64]),
        .O(\rBuffer[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[65]_i_1 
       (.I0(rCnt),
        .I1(in5[65]),
        .O(\rBuffer[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[66]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[66]),
        .I2(rCnt),
        .O(\rBuffer[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[67]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[67]),
        .I2(rCnt),
        .O(\rBuffer[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[68]_i_1 
       (.I0(rCnt),
        .I1(in5[68]),
        .O(\rBuffer[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[70]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[70]),
        .I2(rCnt),
        .O(\rBuffer[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[72]_i_1 
       (.I0(rCnt),
        .I1(in5[72]),
        .O(\rBuffer[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[73]_i_1 
       (.I0(rCnt),
        .I1(in5[73]),
        .O(\rBuffer[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[74]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[74]),
        .I2(rCnt),
        .O(\rBuffer[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[75]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[75]),
        .I2(rCnt),
        .O(\rBuffer[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[76]_i_1 
       (.I0(rCnt),
        .I1(in5[76]),
        .O(\rBuffer[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[78]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[78]),
        .I2(rCnt),
        .O(\rBuffer[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[80]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[80]),
        .I2(rCnt),
        .O(\rBuffer[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[81]_i_1 
       (.I0(rCnt),
        .I1(in5[81]),
        .O(\rBuffer[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[82]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[82]),
        .I2(rCnt),
        .O(\rBuffer[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[83]_i_1 
       (.I0(rCnt),
        .I1(in5[83]),
        .O(\rBuffer[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[84]_i_1 
       (.I0(rCnt),
        .I1(in5[84]),
        .O(\rBuffer[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[86]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[86]),
        .I2(rCnt),
        .O(\rBuffer[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[88]_i_1 
       (.I0(rCnt),
        .I1(in5[88]),
        .O(\rBuffer[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[89]_i_1 
       (.I0(rCnt),
        .I1(in5[89]),
        .O(\rBuffer[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[8]_i_1 
       (.I0(rCnt),
        .I1(in5[33]),
        .O(\rBuffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[90]_i_1 
       (.I0(rCnt),
        .I1(in5[90]),
        .O(\rBuffer[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[91]_i_1 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[91]),
        .I2(rCnt),
        .O(\rBuffer[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[92]_i_1 
       (.I0(rCnt),
        .I1(in5[92]),
        .O(\rBuffer[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[93]_i_1 
       (.I0(rCnt),
        .I1(\rBuffer_reg_n_0_[94] ),
        .O(\rBuffer[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rBuffer[94]_i_2 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(in5[94]),
        .I2(rCnt),
        .O(\rBuffer[94]_i_2_n_0 ));
  FDRE \rBuffer_reg[16] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[16]_i_1_n_0 ),
        .Q(in5[24]),
        .R(iRst));
  FDRE \rBuffer_reg[24] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[24]_i_1_n_0 ),
        .Q(in5[32]),
        .R(iRst));
  FDRE \rBuffer_reg[25] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .Q(in5[33]),
        .R(iRst));
  FDRE \rBuffer_reg[26] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[26]_i_1_n_0 ),
        .Q(in5[34]),
        .R(iRst));
  FDRE \rBuffer_reg[32] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[32]_i_1_n_0 ),
        .Q(in5[40]),
        .R(iRst));
  FDRE \rBuffer_reg[33] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[33]_i_1_n_0 ),
        .Q(in5[41]),
        .R(iRst));
  FDRE \rBuffer_reg[34] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[34]_i_1_n_0 ),
        .Q(in5[42]),
        .R(iRst));
  FDRE \rBuffer_reg[38] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[38]_i_1_n_0 ),
        .Q(in5[46]),
        .R(iRst));
  FDRE \rBuffer_reg[40] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[40]_i_1_n_0 ),
        .Q(in5[48]),
        .R(iRst));
  FDRE \rBuffer_reg[41] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[41]_i_1_n_0 ),
        .Q(in5[49]),
        .R(iRst));
  FDRE \rBuffer_reg[42] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[42]_i_1_n_0 ),
        .Q(in5[50]),
        .R(iRst));
  FDRE \rBuffer_reg[44] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[44]_i_1_n_0 ),
        .Q(in5[52]),
        .R(iRst));
  FDRE \rBuffer_reg[46] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[46]_i_1_n_0 ),
        .Q(in5[54]),
        .R(iRst));
  FDRE \rBuffer_reg[48] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[48]_i_1_n_0 ),
        .Q(in5[56]),
        .R(iRst));
  FDRE \rBuffer_reg[49] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[49]_i_1_n_0 ),
        .Q(in5[57]),
        .R(iRst));
  FDRE \rBuffer_reg[50] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[50]_i_1_n_0 ),
        .Q(in5[58]),
        .R(iRst));
  FDRE \rBuffer_reg[52] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[52]_i_1_n_0 ),
        .Q(in5[60]),
        .R(iRst));
  FDRE \rBuffer_reg[54] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[54]_i_1_n_0 ),
        .Q(in5[62]),
        .R(iRst));
  FDRE \rBuffer_reg[56] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[56]_i_1_n_0 ),
        .Q(in5[64]),
        .R(iRst));
  FDRE \rBuffer_reg[57] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[57]_i_1_n_0 ),
        .Q(in5[65]),
        .R(iRst));
  FDRE \rBuffer_reg[58] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[58]_i_1_n_0 ),
        .Q(in5[66]),
        .R(iRst));
  FDRE \rBuffer_reg[59] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[59]_i_1_n_0 ),
        .Q(in5[67]),
        .R(iRst));
  FDRE \rBuffer_reg[60] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[60]_i_1_n_0 ),
        .Q(in5[68]),
        .R(iRst));
  FDRE \rBuffer_reg[62] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[62]_i_1_n_0 ),
        .Q(in5[70]),
        .R(iRst));
  FDRE \rBuffer_reg[64] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[64]_i_1_n_0 ),
        .Q(in5[72]),
        .R(iRst));
  FDRE \rBuffer_reg[65] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[65]_i_1_n_0 ),
        .Q(in5[73]),
        .R(iRst));
  FDRE \rBuffer_reg[66] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[66]_i_1_n_0 ),
        .Q(in5[74]),
        .R(iRst));
  FDRE \rBuffer_reg[67] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[67]_i_1_n_0 ),
        .Q(in5[75]),
        .R(iRst));
  FDRE \rBuffer_reg[68] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[68]_i_1_n_0 ),
        .Q(in5[76]),
        .R(iRst));
  FDRE \rBuffer_reg[70] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[70]_i_1_n_0 ),
        .Q(in5[78]),
        .R(iRst));
  FDRE \rBuffer_reg[72] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[72]_i_1_n_0 ),
        .Q(in5[80]),
        .R(iRst));
  FDRE \rBuffer_reg[73] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[73]_i_1_n_0 ),
        .Q(in5[81]),
        .R(iRst));
  FDRE \rBuffer_reg[74] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[74]_i_1_n_0 ),
        .Q(in5[82]),
        .R(iRst));
  FDRE \rBuffer_reg[75] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[75]_i_1_n_0 ),
        .Q(in5[83]),
        .R(iRst));
  FDRE \rBuffer_reg[76] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[76]_i_1_n_0 ),
        .Q(in5[84]),
        .R(iRst));
  FDRE \rBuffer_reg[78] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[78]_i_1_n_0 ),
        .Q(in5[86]),
        .R(iRst));
  FDRE \rBuffer_reg[80] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[80]_i_1_n_0 ),
        .Q(in5[88]),
        .R(iRst));
  FDRE \rBuffer_reg[81] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[81]_i_1_n_0 ),
        .Q(in5[89]),
        .R(iRst));
  FDRE \rBuffer_reg[82] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[82]_i_1_n_0 ),
        .Q(in5[90]),
        .R(iRst));
  FDRE \rBuffer_reg[83] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[83]_i_1_n_0 ),
        .Q(in5[91]),
        .R(iRst));
  FDRE \rBuffer_reg[84] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[84]_i_1_n_0 ),
        .Q(in5[92]),
        .R(iRst));
  FDRE \rBuffer_reg[86] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[86]_i_1_n_0 ),
        .Q(in5[94]),
        .R(iRst));
  FDRE \rBuffer_reg[88] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[88]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[88] ),
        .R(iRst));
  FDRE \rBuffer_reg[89] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[89]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[89] ),
        .R(iRst));
  FDRE \rBuffer_reg[8] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[8]_i_1_n_0 ),
        .Q(in5[16]),
        .R(iRst));
  FDRE \rBuffer_reg[90] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[90]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[90] ),
        .R(iRst));
  FDRE \rBuffer_reg[91] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[91]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[91] ),
        .R(iRst));
  FDRE \rBuffer_reg[92] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[92]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[92] ),
        .R(iRst));
  FDRE \rBuffer_reg[93] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[93]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[93] ),
        .R(iRst));
  FDRE \rBuffer_reg[94] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[94]_i_2_n_0 ),
        .Q(\rBuffer_reg_n_0_[94] ),
        .R(iRst));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_10),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_9),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_8),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_7),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[0]),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[1]),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[2]),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[3]),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[4]),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[5]),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(rCnt),
        .D(p_0_in[6]),
        .Q(rTxByte[6]),
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
    \rCnt_reg[1] ,
    E,
    \rCnt_reg[2] ,
    oTx,
    \FSM_onehot_rFSM_reg[2] ,
    Q,
    \rTxByte_reg[0] ,
    rTxStart_reg,
    rTxStart_reg_0,
    \rTxData_Current_reg[6]_0 ,
    iRst,
    iClk);
  output [6:0]D;
  output [3:0]\rCnt_reg[1] ;
  output [0:0]E;
  output [1:0]\rCnt_reg[2] ;
  output oTx;
  output \FSM_onehot_rFSM_reg[2] ;
  input [6:0]Q;
  input [3:0]\rTxByte_reg[0] ;
  input [2:0]rTxStart_reg;
  input rTxStart_reg_0;
  input [6:0]\rTxData_Current_reg[6]_0 ;
  input iRst;
  input iClk;

  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg[2] ;
  wire [6:0]Q;
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
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
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
  wire [3:0]\rCnt_reg[1] ;
  wire [1:0]\rCnt_reg[2] ;
  wire [3:0]\rTxByte_reg[0] ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_2_n_0 ;
  wire \rTxData_Current[6]_i_3_n_0 ;
  wire [6:0]\rTxData_Current_reg[6]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_i_2_n_0;
  wire [2:0]rTxStart_reg;
  wire rTxStart_reg_0;
  wire wBit_Next;
  wire wTxData_Next;
  wire wTxDone;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rFSM[2]_i_1 
       (.I0(rTxStart_reg[0]),
        .I1(rTxStart_reg[2]),
        .I2(wTxDone),
        .O(\rCnt_reg[2] [0]));
  LUT6 #(
    .INIT(64'h7700FFFF77007000)) 
    \FSM_onehot_rFSM[3]_i_1 
       (.I0(\rTxByte_reg[0] [2]),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(rTxStart_reg[1]),
        .I4(wTxDone),
        .I5(rTxStart_reg[2]),
        .O(\rCnt_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(wTxDone),
        .I1(rTxStart_reg_0),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .I1(\rCnt_Current_reg_n_0_[8] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[6] ),
        .I4(\rCnt_Current_reg_n_0_[7] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[2] ),
        .I1(\rCnt_Current_reg_n_0_[3] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .I3(\rCnt_Current_reg_n_0_[5] ),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[0]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\rBit_Current[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  LUT6 #(
    .INIT(64'hBFBFBFAAAAAAAAAA)) 
    \rBuffer[94]_i_1 
       (.I0(rTxStart_reg[0]),
        .I1(\rTxByte_reg[0] [2]),
        .I2(\rTxByte_reg[0] [3]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(rTxStart_reg[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h00545454)) 
    \rCnt[0]_i_1 
       (.I0(\rTxByte_reg[0] [0]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(\rCnt_reg[1] [0]));
  LUT6 #(
    .INIT(64'h0000666066606660)) 
    \rCnt[1]_i_1 
       (.I0(\rTxByte_reg[0] [1]),
        .I1(\rTxByte_reg[0] [0]),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxByte_reg[0] [3]),
        .I5(\rTxByte_reg[0] [2]),
        .O(\rCnt_reg[1] [1]));
  LUT6 #(
    .INIT(64'h0000777088808880)) 
    \rCnt[2]_i_1 
       (.I0(\rTxByte_reg[0] [0]),
        .I1(\rTxByte_reg[0] [1]),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxByte_reg[0] [3]),
        .I5(\rTxByte_reg[0] [2]),
        .O(\rCnt_reg[1] [2]));
  LUT6 #(
    .INIT(64'h00008880FFF00000)) 
    \rCnt[3]_i_1 
       (.I0(\rTxByte_reg[0] [1]),
        .I1(\rTxByte_reg[0] [0]),
        .I2(wTxDone),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(\rTxByte_reg[0] [3]),
        .I5(\rTxByte_reg[0] [2]),
        .O(\rCnt_reg[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \rCnt_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[10] ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F2F2F2F2F2F00)) 
    \rCnt_Current[10]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(\rBit_Current[2]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[10] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
    \rCnt_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[5]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \rCnt_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\rCnt_Current[8]_i_2_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current[8]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[8]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[5] ),
        .I1(\rCnt_Current_reg_n_0_[4] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554000000005554)) 
    \rCnt_Current[9]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[0]_i_1 
       (.I0(Q[0]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[1]_i_1 
       (.I0(Q[1]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[2]_i_1 
       (.I0(Q[2]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[3]_i_1 
       (.I0(Q[3]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[4]_i_1 
       (.I0(Q[4]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[5]_i_1 
       (.I0(Q[5]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    \rTxByte[6]_i_1 
       (.I0(Q[6]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\rTxByte_reg[0] [2]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[0]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[1]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [1]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[2]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [2]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[3]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [3]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[4]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [4]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[5]_i_1 
       (.I0(\rTxData_Current_reg[6]_0 [5]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \rTxData_Current[6]_i_1 
       (.I0(rTxStart_reg_0),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current[6]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wTxData_Next));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rTxData_Current[6]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\rTxData_Current_reg[6]_0 [6]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rTxData_Current[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rTxData_Current[6]_i_3 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .O(\rTxData_Current[6]_i_3_n_0 ));
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
        .D(\rTxData_Current[6]_i_2_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  LUT5 #(
    .INIT(32'h74774444)) 
    rTxStart_i_1
       (.I0(rTxStart_i_2_n_0),
        .I1(rTxStart_reg[1]),
        .I2(wTxDone),
        .I3(rTxStart_reg[2]),
        .I4(rTxStart_reg_0),
        .O(\FSM_onehot_rFSM_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    rTxStart_i_2
       (.I0(\rTxByte_reg[0] [2]),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(wTxDone),
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
