//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Mar  3 10:01:13 2025
//Host        : DESKTOP-3T9PBIE running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (iClk,
    iRst,
    iRx,
    oTx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN design_1_i_Clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire Debounce_Switch_0_o_Switch;
  wire iRx_0_1;
  wire i_Clk_0_1;
  wire i_Switch_0_1;
  wire uart_top_0_oTx;

  assign iRx_0_1 = iRx;
  assign i_Clk_0_1 = iClk;
  assign i_Switch_0_1 = iRst;
  assign oTx = uart_top_0_oTx;
  design_1_Debounce_Switch_0_0 Debounce_Switch_0
       (.i_Clk(i_Clk_0_1),
        .i_Switch(i_Switch_0_1),
        .o_Switch(Debounce_Switch_0_o_Switch));
  design_1_uart_top_0_0 uart_top_0
       (.iClk(i_Clk_0_1),
        .iRst(Debounce_Switch_0_o_Switch),
        .iRx(iRx_0_1),
        .oTx(uart_top_0_oTx));
endmodule
