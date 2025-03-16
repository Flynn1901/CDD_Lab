`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/03 09:38:12
// Design Name: 
// Module Name: uart_tx
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

module uart_tx #(
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200,
    // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085 
    parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
  )
  (
   input wire       iClk, iRst,
   input wire       iTxStart,
   input wire [7:0] iTxByte, 
   output wire      oTxSerial,
   output wire      oTxBusy,
   output wire      oTxDone
   );
  
  // State definition  
  localparam sIDLE         = 3'b000;
  localparam sTX_START     = 3'b001;
  localparam sTX_DATA      = 3'b010;
  localparam sTX_STOP      = 3'b011;
  localparam sDONE         = 3'b100;
  
  // Register variables required to drive the FSM
  //---------------------------------------------
  // Remember:  -> 'current' is the register output
  //            -> 'next' is the register input
  
  // -> FSM state
  reg [2:0] rFSM_Current, wFSM_Next; 
  
  // -> counter to keep track of the clock cycles
  reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;
    
  // -> counter to keep track of sent bits
  // (between 0 and 7)
  reg [2:0] rBit_Current, wBit_Next;
  
  // -> the byte we want to send (we store an internal copy)
  reg [7:0] rTxData_Current, wTxData_Next;
  
  
  // Describe all previous registers
  //------------------------------------------ 
  // Needs to be done with a clocked always block 
  // Don't forget the synchronous reset (default state)
  
  always @(posedge iClk)
  begin
    if (iRst==1)
      begin
        rFSM_Current <= sIDLE;
        rCnt_Current <= 0;
        rBit_Current <= 0;
        rTxData_Current <= 0;
      end
    else
      begin
        rFSM_Current <= wFSM_Next;
        rCnt_Current <= wCnt_Next;
        rBit_Current <= wBit_Next;
        rTxData_Current <= wTxData_Next;
      end
  end
  
  // Next state logic
  //------------------------------------------ 
  // -> this is a COMBINATIONAL module, which specifies the next state 
  //    of the FSM and also the next value of the previous registers
  // -> to AVOID LATCHES, you need to make sure all the next register values
  //    ( rFSM_Next, rCnt_Next, rBit_Next, rTxData_Next)
  //    are defined for every possible condition
     
  always @(*)
    begin
      case (rFSM_Current)
      
        // IDLE STATE:
        // -> we simply wait here until iTxStart is asserted
        // -> when iTxStart is asserted, we copy the byte to send
        //    (iTxByte) into our local register (rTxData_Current)  
        //    and we are ready to start the frame transmission    
        sIDLE :
          begin
            wCnt_Next = 0;
            wBit_Next = 0;
             
            if (iTxStart == 1)
              begin
                wFSM_Next = sTX_START;
                wTxData_Next = iTxByte;   // copy the byte to send into rTxData_Current
              end
            else
             begin    
                wFSM_Next = sIDLE;
                wTxData_Next = rTxData_Current;
             end
          end 
           
        // TX_START STATE:
        // -> we stay here for the duration of the start bit,
        //    which takes CLKS_PER_BIT clock cycles
        // -> we use rCnt_Current to keep track of clock cycles 
        sTX_START :
            begin
              wTxData_Next = rTxData_Current;
              wBit_Next = 0;//bit that has to be sent
               
              if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sTX_START;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sTX_DATA;//ready to transfer data finally after the start bit
                  wCnt_Next = 0;//clear the counter
                end
            end 
           
           
          // TX_DATA STATE:
          // -> we stay here for the duration of the byte sending,
          //    which takes 8 * CLKS_PER_BIT clock cycles     
          // -> we use rCnt_Current to keep track of clock cycles 
          // -> we use rBit_Current to keep track of number of bits
        
          // -> when rBit_Current increases, we shift the contents of the
          //    rTxData_Current register
          // -> why? by doing so, the LSB of rTxData_Current contains the
          //    bit we need to send
          // -> see below, where oTxSerial is assigned the value of rTxData_Current[0]
          
          sTX_DATA :
            begin
              
              if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sTX_DATA;
                  wCnt_Next = rCnt_Current + 1;
                  wTxData_Next = rTxData_Current;
                  wBit_Next = rBit_Current;
                end
              else
                begin
                  wCnt_Next = 0;
                  
                  if (rBit_Current != 7)
                    begin
                      wFSM_Next = sTX_DATA;//没有传输玩7个bits
                      wBit_Next = rBit_Current + 1;//继续传输下一个bit
                      wTxData_Next = { 1'b0, rTxData_Current[7:1] }; // shift rTxData_Current one bit to the right. 这个应该不是uart传输模块，只是将数据输出而已，并且输出最低一位的bit
                    end
                  else
                    begin
                      wFSM_Next = sTX_STOP;
                      wBit_Next = 0;
                      wTxData_Next = rTxData_Current;
                    end
                end
            end  
            
           
          // TX_STOP STATE:
          // -> we stay here for the duration of the stop bit,
          //    which takes CLKS_PER_BIT clock cycles
          // -> we use rCnt_Current to keep track of clock cycles 
          sTX_STOP :
            begin
              wTxData_Next = rTxData_Current;
              wBit_Next = 0;
               
              if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sTX_STOP;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sDONE;
                  wCnt_Next = 0;
                end
            end 
           
           
          // DONE STATE:
          // -> we stay here 1 clock cycle, we will use this state
          //    to assert the output oDone 
          sDONE :
            begin
              wTxData_Next = rTxData_Current;
              wBit_Next = 0;
              wCnt_Next = 0;
              wFSM_Next = sIDLE;
            end
           
          default :
            begin
              wFSM_Next = sIDLE;
              wCnt_Next = 0;
              wBit_Next = 0;
              wTxData_Next = 0;
            end 
        endcase
    end
 
  // 3. Output logic
  //------------------------------------------ 
  // -> these are COMBINATIONAL circuits, which specify the value of
  //    the outputs, based on the current state of the registers used
  //    in the FSM
  
  
  // Output oTxSerial : easiest is to define it with a combinational
  //  always block
  //  -> it is '1' by default
  //  -> it is '0' during the start bit
  //  -> it is rTxData_Current[0] during the sending of bits
  //  -> it is '1' during the stop bit
  reg rTxSerial;
  
  always @(*)
  begin
    if (rFSM_Current == sTX_START)
      rTxSerial = 0;
    else if (rFSM_Current == sTX_DATA)
      rTxSerial = rTxData_Current[0];
    else
      rTxSerial = 1;
  end
  
  assign oTxSerial = rTxSerial;
  
  // Output oTxBusy : easiest is to define it with a simple
  // continuous assignment
  //  -> it is '0' when FSM in sIDLE or sDONE
  //  -> it is '1' otherwise
  
  assign oTxBusy = ( (rFSM_Current == sIDLE) || (rFSM_Current == sDONE) ) ? 0 : 1;
  
  // Output oTxDone : easiest is to define it with a simple
  // continuous assignment
  //  -> it is '0' by default
  //  -> it is '1' during sDONE
  
  assign oTxDone = (rFSM_Current == sDONE) ? 1 : 0;
   
endmodule
