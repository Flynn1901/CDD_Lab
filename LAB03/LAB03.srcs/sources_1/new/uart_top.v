`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/07 21:49:33
// Design Name: 
// Module Name: uart_top
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


module uart_top #(
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH   = 16,
    parameter   NBYTES        = OPERAND_WIDTH / 8,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  reg         rClk = 0;
  reg         rRst = 0;
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rA, rB;
  reg [NBYTES*8 : 0] rRes;
  wire [NBYTES*8 : 0] wAddRes;
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_ADD          = 3'b010;
  localparam s_TX           = 3'b011;
  localparam s_WAIT_TX      = 3'b100;
  localparam s_DONE         = 3'b101;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  reg         rStartAdd;
  wire        wAddDone;
  
  wire        wTxBusy;
  wire        wTxDone;
  
  wire [7:0]  wRxByte;
  wire        wRxDone;
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
  uart_rx #( .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) ) 
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
     
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH) )
  mp_adder_INST
  ( .iClk(iClk), 
    .iRst(iRst), 
    .iStart(rStartAdd), 
    .iOpA(rA), 
    .iOpB(rB), 
    .oRes(wAddRes), 
    .oDone(wAddDone) );
     
  reg [$clog2(NBYTES):0] rCnt;
  
  reg [$clog2(NBYTES):0] rRxCnt;
  
  reg [$clog2(OPERAND_WIDTH/ADDER_WIDTH + 3):0] rAddCycleCnt;
  
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rStartAdd <= 0;
      rCnt <= 0;
      rRxCnt <= 0;
      rAddCycleCnt <= 0;
      rTxByte <= 0;
      rA <= 0;
      rB <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RX;
          end
          
        s_WAIT_RX :
          begin
              // When we receive a byte, store it in the buffer
              if (wRxDone == 1)
                begin
                  // Shift the buffer and add the new byte at the end
                  if (rRxCnt < NBYTES)
                    begin
                    rA <= {rA[NBYTES*8-9:0], wRxByte};//because UART first transmit LSB
                    rRxCnt <= rRxCnt + 1;
                    end
                  else if (rRxCnt < NBYTES*2)
                    begin
                    rB <= {rB[NBYTES*8-9:0], wRxByte};
                    rRxCnt <= rRxCnt + 1;
                  // If we've received all bytes, start transmitting
                    if (rRxCnt == NBYTES*2 - 1)
                        begin
                        rFSM <= s_ADD;
                        rRxCnt <= 0;
                        end
                    end
                end
            end
            
s_ADD :
  begin
    if (wAddDone == 1)
      begin
        rFSM <= s_TX;
        rAddCycleCnt <= 0;
        rStartAdd <= 0;
        rRes <= wAddRes;
      end
    else if (rStartAdd == 0 && rAddCycleCnt == 0) //only enable adder once
      begin
        rStartAdd <= 1;
        rAddCycleCnt <= rAddCycleCnt + 1;
        rFSM <= s_ADD;
      end
    else
      begin
        rStartAdd <= 0; //only enable adder once
        rAddCycleCnt <= rAddCycleCnt + 1;
        rFSM <= s_ADD;
      end
  end
             
        s_TX :
          begin
            if ( (rCnt < NBYTES+1) && (wTxBusy == 0) ) //NBYTES+1 for carry bit
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                if ( rCnt == 0)
                    begin
                    rTxByte <= {7'b0, rRes[NBYTES*8]};//carry bit just one bit
                    end
                else
                    begin
                    rTxByte <= rRes[NBYTES*8-1:NBYTES*8-8];            // we send the uppermost byte
                    rRes <= {1'b0, rRes[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
                    //remeber rRes has NBYTES+1 bits
                    end
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end 
            
            s_WAIT_TX :
              begin
                if (wTxDone) begin
                  rFSM <= s_TX;
                end else begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 0;                   
                end
              end 
              
            s_DONE :
              begin
                rFSM <= s_IDLE;
              end 

            default :
              rFSM <= s_IDLE;
             
          endcase
      end
    end       
    
endmodule
