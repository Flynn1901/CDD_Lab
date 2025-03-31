`timescale 100ns / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/03 17:15:09
// Design Name: 
// Module Name: uart_rx_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module uart_rx_TB ();
 
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
 
  // inputs (define as reg)
  reg         rClk = 0;
  reg         rRst = 0;
  reg         rTxStart = 0;
  reg [7:0]   rTxByte = 0;
  
  // outputs (define as wire)
  wire        wTxSerial;
  wire        wTxDone;
  
  wire [7:0]  wRxByte;
  wire        wRxDone;
  
  // instantiate module under test
  uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wTxSerial),
     .oTxDone(wTxDone)
     );
     
  // instantiate module under test
  uart_rx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_RX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iRxSerial(wTxSerial),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );

  // define the clock
  localparam T  = 4;
  always
    #(T/2) rClk <= !rClk;
 
  // input stimulus
  initial
    begin
    
      // circuit is reset
      rTxStart = 0;
      rTxByte = 8'h56;
      rRst = 1;
      #(5*T);
      
      // disable rRst
      rRst = 0;
      #(5*T);
      
      // assert rTxStart to send a frame (only 1 clock cycle!)
      rTxStart = 1;
      #(T);
      rTxStart = 0;
      rTxByte = 8'h00;
      
      // let the counter run for 150 clock cycles
      #(150*T);
      
      // circuit is reset
      rTxStart = 0;
      rTxByte = 8'h79;
      rRst = 1;
      #(5*T);
      
      // disable rRst
      rRst = 0;
      #(5*T);
      
      // assert rTxStart to send a frame (only 1 clock cycle!)
      rTxStart = 1;
      #(T);
      rTxStart = 0;
      rTxByte = 8'h00;
      
      // let the counter run for 150 clock cycles
      #(150*T);
      
      $stop;        //stop simulation  
           
    end
   
endmodule
