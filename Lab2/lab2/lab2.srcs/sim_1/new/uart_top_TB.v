`timescale 100ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/03 09:52:49
// Design Name: 
// Module Name: uart_top_TB
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

module uart_top_TB ();

  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 80;
  localparam BAUD_RATE_inst = 10;
 
  // Define signals for module under test
  reg         rClk = 0;
  reg         rRst = 0;
  reg         rTxStart = 0;
  reg [7:0]   rTxByte = 0;
  wire [7:0]  wRxByte;
  wire        wTxSerial;
  wire        wTxDone;
  wire        wRxDone;
  wire        wTx;
  

  // Instantiate DUT  
  uart_top 
  #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wTxSerial), .oTx(wTx) );
  
  uart_tx
  #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_tx_inst
  (.iClk(rClk),
   .iRst(rRst),
   .iTxStart(rTxStart),
   .iTxByte(rTxByte),
   .oTxSerial(wTxSerial),
   .oTxDone(wTxDone)
   );
   
     uart_rx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_RX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iRxSerial(wTx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
  
  // Define clock signal
  localparam T = 4;
  
  always
    #(T/2) rClk <= !rClk;
 
  // Input stimulus
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






      

            
      $stop;
           
    end
   
endmodule
