// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Mar 16 17:36:59 2025
// Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/PROJECT/XILINX/CDD/LAB02/LAB02/LAB02.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
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
   (rBuffer,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    iRx,
    iClk,
    Q,
    iRst);
  output [7:0]rBuffer;
  output [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  input iRx;
  input iClk;
  input [0:0]Q;
  input iRst;

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
  wire [0:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [0:0]Q;
  wire iClk;
  wire iRst;
  wire iRx;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[1]_i_2_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_2__0_n_0 ;
  wire \rBit_Current[2]_i_3__0_n_0 ;
  wire \rBit_Current_reg_n_0_[0] ;
  wire \rBit_Current_reg_n_0_[1] ;
  wire \rBit_Current_reg_n_0_[2] ;
  wire [7:0]rBuffer;
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
  wire [7:0]rRxData_Current;
  wire \rRxData_Current[7]_i_1_n_0 ;
  wire \rRxData_Current[7]_i_2_n_0 ;
  wire \rRxData_Current[7]_i_3_n_0 ;
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
  wire [3:2]NLW_wCnt_Next0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCnt_Next0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rFSM_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \FSM_onehot_rFSM_Current[2]_i_4 
       (.I0(rCnt_Current[1]),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[4]),
        .I3(rCnt_Current[3]),
        .O(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .I1(\rRxData_Current[7]_i_3_n_0 ),
        .I2(\rRxData_Current[7]_i_2_n_0 ),
        .I3(rCnt_Current[11]),
        .O(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ));
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
        .Q(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .R(iRst));
  LUT6 #(
    .INIT(64'h222222222222222C)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\rRxData_Current[7]_i_1_n_0 ),
        .I5(\rBit_Current[2]_i_3__0_n_0 ),
        .O(\rBit_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \rBit_Current[1]_i_1 
       (.I0(\rBit_Current[1]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rRxData_Current[7]_i_1_n_0 ),
        .I4(\rBit_Current[2]_i_3__0_n_0 ),
        .I5(\rBit_Current_reg_n_0_[1] ),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .I4(\rBit_Current[2]_i_3__0_n_0 ),
        .I5(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rBit_Current[2]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .I3(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[2]_i_3__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .O(\rBit_Current[2]_i_3__0_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[0]),
        .I1(Q),
        .O(rBuffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[1]),
        .I1(Q),
        .O(rBuffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[2]),
        .I1(Q),
        .O(rBuffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[3]),
        .I1(Q),
        .O(rBuffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[4]),
        .I1(Q),
        .O(rBuffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[5]),
        .I1(Q),
        .O(rBuffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[6]),
        .I1(Q),
        .O(rBuffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxData_Current[7]),
        .I1(Q),
        .O(rBuffer[7]));
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
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \rRxData_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rCnt_Current[11]),
        .I2(\rRxData_Current[7]_i_2_n_0 ),
        .I3(\rRxData_Current[7]_i_3_n_0 ),
        .I4(rCnt_Current[10]),
        .O(\rRxData_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rRxData_Current[7]_i_2 
       (.I0(rCnt_Current[3]),
        .I1(rCnt_Current[2]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[4]),
        .O(\rRxData_Current[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rRxData_Current[7]_i_3 
       (.I0(rCnt_Current[7]),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[9]),
        .I3(rCnt_Current[8]),
        .O(\rRxData_Current[7]_i_3_n_0 ));
  FDRE \rRxData_Current_reg[0] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[1]),
        .Q(rRxData_Current[0]),
        .R(iRst));
  FDRE \rRxData_Current_reg[1] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[2]),
        .Q(rRxData_Current[1]),
        .R(iRst));
  FDRE \rRxData_Current_reg[2] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[3]),
        .Q(rRxData_Current[2]),
        .R(iRst));
  FDRE \rRxData_Current_reg[3] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[4]),
        .Q(rRxData_Current[3]),
        .R(iRst));
  FDRE \rRxData_Current_reg[4] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[5]),
        .Q(rRxData_Current[4]),
        .R(iRst));
  FDRE \rRxData_Current_reg[5] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[6]),
        .Q(rRxData_Current[5]),
        .R(iRst));
  FDRE \rRxData_Current_reg[6] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRxData_Current[7]),
        .Q(rRxData_Current[6]),
        .R(iRst));
  FDRE \rRxData_Current_reg[7] 
       (.C(iClk),
        .CE(\rRxData_Current[7]_i_1_n_0 ),
        .D(rRx2),
        .Q(rRxData_Current[7]),
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

  wire \FSM_sequential_rFSM[0]_i_2_n_0 ;
  wire UART_TX_INST_n_11;
  wire UART_TX_INST_n_12;
  wire UART_TX_INST_n_13;
  wire UART_TX_INST_n_14;
  wire UART_TX_INST_n_17;
  wire UART_TX_INST_n_2;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;
  wire [7:0]p_0_in;
  wire [7:0]rBuffer;
  wire rBuffer_0;
  wire \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0 ;
  wire \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ;
  wire rBuffer_reg_gate__0_n_0;
  wire rBuffer_reg_gate__1_n_0;
  wire rBuffer_reg_gate__2_n_0;
  wire rBuffer_reg_gate__3_n_0;
  wire rBuffer_reg_gate__4_n_0;
  wire rBuffer_reg_gate__5_n_0;
  wire rBuffer_reg_gate__6_n_0;
  wire rBuffer_reg_gate_n_0;
  wire \rBuffer_reg_n_0_[88] ;
  wire \rBuffer_reg_n_0_[89] ;
  wire \rBuffer_reg_n_0_[90] ;
  wire \rBuffer_reg_n_0_[91] ;
  wire \rBuffer_reg_n_0_[92] ;
  wire \rBuffer_reg_n_0_[93] ;
  wire \rBuffer_reg_n_0_[94] ;
  wire \rBuffer_reg_n_0_[95] ;
  wire rBuffer_reg_r_0_n_0;
  wire rBuffer_reg_r_1_n_0;
  wire rBuffer_reg_r_2_n_0;
  wire rBuffer_reg_r_3_n_0;
  wire rBuffer_reg_r_4_n_0;
  wire rBuffer_reg_r_5_n_0;
  wire rBuffer_reg_r_6_n_0;
  wire rBuffer_reg_r_7_n_0;
  wire rBuffer_reg_r_8_n_0;
  wire rBuffer_reg_r_9_n_0;
  wire rBuffer_reg_r_n_0;
  wire rCnt;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire [2:0]rFSM;
  wire [2:1]rFSM__0;
  wire rRxDone;
  wire [7:0]rTxByte;
  wire \rTxByte[7]_i_1_n_0 ;
  wire rTxStart_reg_n_0;
  wire wRxDone;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_rFSM[0]_i_2 
       (.I0(\rCnt_reg_n_0_[3] ),
        .I1(\rCnt_reg_n_0_[2] ),
        .O(\FSM_sequential_rFSM[0]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_2),
        .Q(rFSM[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[1]),
        .Q(rFSM[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[2]),
        .Q(rFSM[2]),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.\FSM_onehot_rFSM_Current_reg[4]_0 (wRxDone),
        .Q(rFSM[1]),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .rBuffer(rBuffer));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D({rFSM__0,UART_TX_INST_n_2}),
        .\FSM_sequential_rFSM_reg[0] (UART_TX_INST_n_17),
        .\FSM_sequential_rFSM_reg[0]_0 (\FSM_sequential_rFSM[0]_i_2_n_0 ),
        .Q(rFSM),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .rBuffer_0(rBuffer_0),
        .\rBuffer_reg[95] (p_0_in),
        .\rCnt_reg[2] ({UART_TX_INST_n_11,UART_TX_INST_n_12,UART_TX_INST_n_13,UART_TX_INST_n_14}),
        .rRxDone(rRxDone),
        .\rTxByte_reg[0] ({\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .\rTxByte_reg[0]_0 (\rBuffer_reg_n_0_[88] ),
        .\rTxByte_reg[1] (\rBuffer_reg_n_0_[89] ),
        .\rTxByte_reg[2] (\rBuffer_reg_n_0_[90] ),
        .\rTxByte_reg[3] (\rBuffer_reg_n_0_[91] ),
        .\rTxByte_reg[4] (\rBuffer_reg_n_0_[92] ),
        .\rTxByte_reg[5] (\rBuffer_reg_n_0_[93] ),
        .\rTxByte_reg[6] (\rBuffer_reg_n_0_[94] ),
        .\rTxByte_reg[7] (\rBuffer_reg_n_0_[95] ),
        .\rTxData_Current_reg[7]_0 (rTxByte),
        .rTxStart_reg(rTxStart_reg_n_0));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[0]),
        .Q(\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[1]),
        .Q(\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[2]),
        .Q(\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[3]),
        .Q(\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[4]),
        .Q(\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[5]),
        .Q(\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[6]),
        .Q(\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(rBuffer_0),
        .CLK(iClk),
        .D(rBuffer[7]),
        .Q(\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  FDRE \rBuffer_reg[80]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[81]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[82]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[83]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[84]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[85]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[86]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[87]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[88] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__6_n_0),
        .Q(\rBuffer_reg_n_0_[88] ),
        .R(iRst));
  FDRE \rBuffer_reg[89] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__5_n_0),
        .Q(\rBuffer_reg_n_0_[89] ),
        .R(iRst));
  FDRE \rBuffer_reg[90] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__4_n_0),
        .Q(\rBuffer_reg_n_0_[90] ),
        .R(iRst));
  FDRE \rBuffer_reg[91] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__3_n_0),
        .Q(\rBuffer_reg_n_0_[91] ),
        .R(iRst));
  FDRE \rBuffer_reg[92] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__2_n_0),
        .Q(\rBuffer_reg_n_0_[92] ),
        .R(iRst));
  FDRE \rBuffer_reg[93] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__1_n_0),
        .Q(\rBuffer_reg_n_0_[93] ),
        .R(iRst));
  FDRE \rBuffer_reg[94] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate__0_n_0),
        .Q(\rBuffer_reg_n_0_[94] ),
        .R(iRst));
  FDRE \rBuffer_reg[95] 
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_gate_n_0),
        .Q(\rBuffer_reg_n_0_[95] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate
       (.I0(\rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__0
       (.I0(\rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__1
       (.I0(\rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__2
       (.I0(\rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__3
       (.I0(\rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__4
       (.I0(\rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__5
       (.I0(\rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__6
       (.I0(\rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate__6_n_0));
  FDRE rBuffer_reg_r
       (.C(iClk),
        .CE(rBuffer_0),
        .D(1'b1),
        .Q(rBuffer_reg_r_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_0
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_n_0),
        .Q(rBuffer_reg_r_0_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_1
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_0_n_0),
        .Q(rBuffer_reg_r_1_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_2
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_1_n_0),
        .Q(rBuffer_reg_r_2_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_3
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_2_n_0),
        .Q(rBuffer_reg_r_3_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_4
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_3_n_0),
        .Q(rBuffer_reg_r_4_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_5
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_4_n_0),
        .Q(rBuffer_reg_r_5_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_6
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_5_n_0),
        .Q(rBuffer_reg_r_6_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_7
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_6_n_0),
        .Q(rBuffer_reg_r_7_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_8
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_7_n_0),
        .Q(rBuffer_reg_r_8_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_9
       (.C(iClk),
        .CE(rBuffer_0),
        .D(rBuffer_reg_r_8_n_0),
        .Q(rBuffer_reg_r_9_n_0),
        .R(iRst));
  LUT6 #(
    .INIT(64'h1212120212021202)) 
    \rCnt[3]_i_1 
       (.I0(rFSM[1]),
        .I1(rFSM[2]),
        .I2(rFSM[0]),
        .I3(rRxDone),
        .I4(\rCnt_reg_n_0_[2] ),
        .I5(\rCnt_reg_n_0_[3] ),
        .O(rCnt));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_14),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_13),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_12),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_TX_INST_n_11),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    rRxDone_reg
       (.C(iClk),
        .CE(1'b1),
        .D(wRxDone),
        .Q(rRxDone),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \rTxByte[7]_i_1 
       (.I0(rFSM[0]),
        .I1(rFSM[1]),
        .I2(rFSM[2]),
        .O(\rTxByte[7]_i_1_n_0 ));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(rTxByte[6]),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(rTxByte[7]),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_17),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \rBuffer_reg[95] ,
    \rCnt_reg[2] ,
    rBuffer_0,
    oTx,
    \FSM_sequential_rFSM_reg[0] ,
    Q,
    \FSM_sequential_rFSM_reg[0]_0 ,
    \rTxByte_reg[0] ,
    rTxStart_reg,
    \rTxByte_reg[0]_0 ,
    \rTxByte_reg[1] ,
    \rTxByte_reg[2] ,
    \rTxByte_reg[3] ,
    \rTxByte_reg[4] ,
    \rTxByte_reg[5] ,
    \rTxByte_reg[6] ,
    \rTxByte_reg[7] ,
    rRxDone,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output [2:0]D;
  output [7:0]\rBuffer_reg[95] ;
  output [3:0]\rCnt_reg[2] ;
  output rBuffer_0;
  output oTx;
  output \FSM_sequential_rFSM_reg[0] ;
  input [2:0]Q;
  input \FSM_sequential_rFSM_reg[0]_0 ;
  input [3:0]\rTxByte_reg[0] ;
  input rTxStart_reg;
  input \rTxByte_reg[0]_0 ;
  input \rTxByte_reg[1] ;
  input \rTxByte_reg[2] ;
  input \rTxByte_reg[3] ;
  input \rTxByte_reg[4] ;
  input \rTxByte_reg[5] ;
  input \rTxByte_reg[6] ;
  input \rTxByte_reg[7] ;
  input rRxDone;
  input [7:0]\rTxData_Current_reg[7]_0 ;
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
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_sequential_rFSM[2]_i_2_n_0 ;
  wire \FSM_sequential_rFSM_reg[0] ;
  wire \FSM_sequential_rFSM_reg[0]_0 ;
  wire [2:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[0]_i_2_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current[2]_i_4_n_0 ;
  wire rBuffer_0;
  wire [7:0]\rBuffer_reg[95] ;
  wire \rCnt[3]_i_3_n_0 ;
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
  wire [3:0]\rCnt_reg[2] ;
  wire rRxDone;
  wire [3:0]\rTxByte_reg[0] ;
  wire \rTxByte_reg[0]_0 ;
  wire \rTxByte_reg[1] ;
  wire \rTxByte_reg[2] ;
  wire \rTxByte_reg[3] ;
  wire \rTxByte_reg[4] ;
  wire \rTxByte_reg[5] ;
  wire \rTxByte_reg[6] ;
  wire \rTxByte_reg[7] ;
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
  wire wTxDone;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(wTxDone),
        .I1(rTxStart_reg),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  LUT6 #(
    .INIT(64'h0511115505111055)) 
    \FSM_sequential_rFSM[0]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_sequential_rFSM_reg[0]_0 ),
        .I2(wTxDone),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000000EEE0E0E0)) 
    \FSM_sequential_rFSM[1]_i_1 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rTxByte_reg[0] [2]),
        .I4(\rTxByte_reg[0] [3]),
        .I5(Q[2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0310)) 
    \FSM_sequential_rFSM[2]_i_1 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    \FSM_sequential_rFSM[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(wTxDone),
        .I2(\rTxByte_reg[0] [2]),
        .I3(\rTxByte_reg[0] [3]),
        .O(\FSM_sequential_rFSM[2]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
    .INIT(64'h000000AA00003000)) 
    rBuffer_r_i_1
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(\FSM_sequential_rFSM_reg[0]_0 ),
        .I2(rRxDone),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(rBuffer_0));
  LUT5 #(
    .INIT(32'h0000AABF)) 
    \rCnt[0]_i_1 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(Q[1]),
        .I4(\rTxByte_reg[0] [0]),
        .O(\rCnt_reg[2] [0]));
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt[1]_i_1 
       (.I0(\rCnt[3]_i_3_n_0 ),
        .I1(\rTxByte_reg[0] [1]),
        .I2(\rTxByte_reg[0] [0]),
        .O(\rCnt_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt[2]_i_1 
       (.I0(\rCnt[3]_i_3_n_0 ),
        .I1(\rTxByte_reg[0] [0]),
        .I2(\rTxByte_reg[0] [1]),
        .I3(\rTxByte_reg[0] [2]),
        .O(\rCnt_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt[3]_i_2 
       (.I0(\rCnt[3]_i_3_n_0 ),
        .I1(\rTxByte_reg[0] [2]),
        .I2(\rTxByte_reg[0] [1]),
        .I3(\rTxByte_reg[0] [0]),
        .I4(\rTxByte_reg[0] [3]),
        .O(\rCnt_reg[2] [3]));
  LUT6 #(
    .INIT(64'h0555055505550111)) 
    \rCnt[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(\rTxByte_reg[0] [3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(wTxDone),
        .O(\rCnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[0]_i_1 
       (.I0(\rTxByte_reg[0]_0 ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [0]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[1]_i_1 
       (.I0(\rTxByte_reg[1] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [1]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[2]_i_1 
       (.I0(\rTxByte_reg[2] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [2]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[3]_i_1 
       (.I0(\rTxByte_reg[3] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [3]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[4]_i_1 
       (.I0(\rTxByte_reg[4] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [4]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[5]_i_1 
       (.I0(\rTxByte_reg[5] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [5]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[6]_i_1 
       (.I0(\rTxByte_reg[6] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [6]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[7]_i_2 
       (.I0(\rTxByte_reg[7] ),
        .I1(\rTxByte_reg[0] [3]),
        .I2(\rTxByte_reg[0] [2]),
        .I3(wTxDone),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBuffer_reg[95] [7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[0]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[1]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [1]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[2]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [2]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[3]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [3]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[4]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [4]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[5]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [5]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[6]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [6]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[6]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
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
    .INIT(8'h80)) 
    \rTxData_Current[7]_i_3 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
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
  LUT6 #(
    .INIT(64'hFEFFF2FF02000200)) 
    rTxStart_i_1
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(wTxDone),
        .I5(rTxStart_reg),
        .O(\FSM_sequential_rFSM_reg[0] ));
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
