`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 14:41:05
// Design Name: 
// Module Name: wrap_adder
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


module wrap_adder #(
  parameter   ADDER_WIDTH = 32    // width of the internal adder
  )
  (
    input  wire   iClk, iRst,
    output wire   oXORResult, 
    output reg    oCarryOut
  );
      
  // 1. Create a counter to feed registered inputs to the adder
  // --------------------------------------------------------------
  // The number of bits of the counter should be : 
  //    length(OperandA) + lenght(OperandB) + length(CarryIn)
  localparam COUNTER_LENGTH = ADDER_WIDTH + ADDER_WIDTH + 1;
      
  // Describe the counter
  //  -> when the variable rCnt is full (all ones), it will wrap back to zero
  reg [COUNTER_LENGTH-1:0]  rCnt;  
      
  always @(posedge iClk)
    if (iRst==1)
      rCnt <= 0;
    else
      rCnt <= rCnt+1;
      
  // 2. Instantiate the combinational adder
  // --------------------------------------------------------------
  // The inputs from the adder are taken from the Counter register
  //  -> the upper ADDER_WIDTH bits are Input A
  //  -> the next ADDER_WIDTH bits are Input B
  //  -> the last bit is the Carry Input
      
  wire [ADDER_WIDTH-1:0]  wResult;
  wire              wCarryOut;
      
  ripple_carry_adder_Nb #( .ADDER_WIDTH(ADDER_WIDTH) ) 
  ripple_carry_inst   (
    .iA( rCnt[2*ADDER_WIDTH:ADDER_WIDTH+1] ), 
    .iB( rCnt[ADDER_WIDTH:1] ),
    .iCarry( rCnt[0] ),
    .oSum(wResult),
    .oCarry(wCarryOut)
  );
        
  // 3. Add a register at the outputs
  // ------------------------------------
  // Needed to obtain timing measurements in register-to-register paths
  reg [ADDER_WIDTH-1:0]  rResult;
      
  always @(posedge iClk)
  begin
    rResult <= wResult;
    oCarryOut <= wCarryOut;
  end
      
  // 4. XOR all bits in wResult and give them as single output
  //-------------------------------------
  // 'Hack' to prevent Vivado from optimizing away the adder
  assign oXORResult = ^rResult;
      
endmodule
