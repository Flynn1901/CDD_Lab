`timescale 1ns / 1ps

module mp_adder #(
      // to avoid extra complexity, it is best that OPERAND_WIDTH is a multiple of ADDER_WIDTH
      //   that way the number of iterations for the addition is an integer number
      // if the operands you want to add have an OPERAND_WIDTH non-multiple of ADDER_WIDTH
      //   you'll have to extend them by padding them with zeroes
      parameter OPERAND_WIDTH = 512,
      parameter ADDER_WIDTH   = 32,
      parameter N_ITERATIONS  = OPERAND_WIDTH / ADDER_WIDTH
    )
    (
    input  wire                       iClk,
    input  wire                       iRst,
    input  wire                       iStart,
    input  wire [OPERAND_WIDTH-1:0]   iOpA,
    input  wire [OPERAND_WIDTH-1:0]   iOpB,
    output wire [OPERAND_WIDTH:0]     oRes,  
    output wire                       oDone);

    // Describe an OPERAND_WIDTH-bit register for A
    wire [OPERAND_WIDTH-1:0] regA_D;
    reg  [OPERAND_WIDTH-1:0] regA_Q;
    
    always @(posedge iClk)
    begin
        if(iRst==1)     regA_Q <= { OPERAND_WIDTH{1'b0} }; 
        else            regA_Q <= regA_D;
    end
    
    // Describe an OPERAND_WIDTH-bit register for B
    wire [OPERAND_WIDTH-1:0] regB_D;
    reg  [OPERAND_WIDTH-1:0] regB_Q;    
    
    always @(posedge iClk)
    begin
      if(iRst==1)       regB_Q <= {OPERAND_WIDTH{1'b0}}; 
      else              regB_Q <= regB_D;
    end
    
    // Describe a 2-input Multiplexer for register A
    // It should select either of these two:
    //   - the input iOpA
    //   - the output of register A shifted-right 
    reg          muxA_sel;
    wire [OPERAND_WIDTH-1:0] muxA_Out;
    
    assign muxA_Out = (muxA_sel == 0) ? iOpA : { {ADDER_WIDTH{1'b0}}  , regA_Q[OPERAND_WIDTH-1:ADDER_WIDTH]};
    
    // connect the output of the multiplexer to the input of register A
    assign regA_D = muxA_Out;

    // Describe a 2-input Multiplexer for register B
    // It should select either of these two:
    //   - the input iOpB
    //   - the output of register B shifted-right 
    reg          muxB_sel;
    wire  [OPERAND_WIDTH-1:0] muxB_Out;
    
    assign muxB_Out = (muxB_sel == 0) ? iOpB : { {ADDER_WIDTH{1'b0}}  , regB_Q[OPERAND_WIDTH-1:ADDER_WIDTH]};
    
    // connect the output of the multiplexer to the input of register B
    assign regB_D = muxB_Out;

    // Instantiate the combinational adder
    // Its inputs are two ADDER_WIDTH-bit operands and 1-bit carry-in
    // Its outputs are one ADDER_WIDTH-bit result and a 1-bit carry-out
    wire [ADDER_WIDTH-1:0]  operandA;
    wire [ADDER_WIDTH-1:0]  operandB;
    wire                    carry_in;
    wire [ADDER_WIDTH-1:0]  result;
    wire                    carry_out;

    ripple_carry_adder_Nb #( .ADDER_WIDTH(ADDER_WIDTH) ) 
    ripple_carry_inst   (
        .iA( operandA ), 
        .iB( operandB ),
        .iCarry( carry_in ),
        .oSum(result),
        .oCarry(carry_out)
      );


    // Describe an OPERAND_WIDTH-bit register for storing the result
    // This shift register should palce the adder output at the MSB ADDER_WIDTH-bits,
    // and the shift the remaining OPERAND_WIDTH-ADDER_WIDTH bits to the right
    reg  [OPERAND_WIDTH-1:0] regResult;
    
    always @(posedge iClk)
    begin
        if(iRst==1)   regResult <= { OPERAND_WIDTH{1'b0} };
      else            regResult <= { result, regResult[OPERAND_WIDTH-1:ADDER_WIDTH] };
    end

    // Describe a 1-bit register for storing the carry-out
    reg  regCout;
    
    always @(posedge iClk)
    begin
      if(iRst==1)   regCout <= 1'b0;
      else          regCout <= carry_out;
    end

    // Describe a 1-bit multiplexer for selecting carry-in
    // It should select either of these two:
    //   - 0
    //   - carry-out
    reg  muxCarry_sel;
    wire muxCarryIn;

    assign muxCarryIn = (muxCarry_sel == 0) ? 1'b0 : regCout;

    // Connect the inputs of adder to the outputs of A and B registers
    // and to the carry mux
    assign operandA = regA_Q;
    assign operandB = regB_Q;
    assign carry_in = muxCarryIn;

    // Describe the output signal oRes: it is the concatenation of output registers
    assign oRes = { regCout, regResult};

    // FINITE STATE MACHINE
    
    // State definition  
    localparam s_IDLE         = 3'b000;
    localparam s_STORE_OPS    = 3'b001;
    localparam s_ADD_FIRST    = 3'b010;
    localparam s_ADD_WORDS    = 3'b011;
    localparam s_DONE         = 3'b100;

    reg [2:0] rFSM_current, wFSM_next;
    
    always @(posedge iClk)
    begin
        if(iRst==1)	  
            rFSM_current <= s_IDLE;
        else          
            rFSM_current <= wFSM_next;
    end

   // Define a counter to keep track of iterations
    reg [$clog2(N_ITERATIONS):0] rCnt_Current, wCnt_next;

    always @(posedge iClk)
    begin
        if(iRst==1)	  
            rCnt_Current <= 0;
        else          
            rCnt_Current <= wCnt_next;
    end

    // Describe next_state logic

    always @(*)
    begin
        case(rFSM_current)
        
            s_IDLE: 
              begin         
                muxA_sel = 0;
                muxB_sel = 0;
                muxCarry_sel = 0;
                wCnt_next = 0;
                
                if (iStart==1)
                    wFSM_next = s_STORE_OPS;
                else
                    wFSM_next = s_IDLE;
              end
            
            s_STORE_OPS: 
              begin
                muxA_sel = 0;
                muxB_sel = 0;
                muxCarry_sel = 0;
                wCnt_next = rCnt_Current + 1;
                
                wFSM_next = s_ADD_FIRST;
              end
              
            s_ADD_FIRST: 
              begin
                muxA_sel = 1;
                muxB_sel = 1;
                muxCarry_sel = 0;
                wCnt_next = rCnt_Current + 1;
                
                wFSM_next = s_ADD_WORDS;
              end
              
            s_ADD_WORDS: 
              begin
                muxA_sel = 1;
                muxB_sel = 1;
                muxCarry_sel = 1;
                wCnt_next = rCnt_Current + 1;
                
                if ( rCnt_Current < (N_ITERATIONS - 1) )
                  wFSM_next = s_ADD_WORDS;
                else
                  wFSM_next = s_DONE;
              end
                  
            s_DONE:
              begin
                muxA_sel = 1;
                muxB_sel = 1;
                muxCarry_sel = 1;
                wCnt_next = 0;
                wFSM_next = s_IDLE;
              end  
                
            default: 
              begin 
                muxA_sel = 0;
                muxB_sel = 0;
                muxCarry_sel = 0;
                wCnt_next = 0;
                
                wFSM_next = s_IDLE;
              end
              
        endcase
    end

    // Describe done signal
    // It should be high at the same clock cycle when the output ready

    reg regDone;
    always @(posedge iClk)
    begin
      if(iRst)    regDone <= 1'd0; 
      else        regDone <= ( rFSM_current == s_DONE ) ? 1'b1 : 1'b0;
    end

    assign oDone = regDone;
    

endmodule