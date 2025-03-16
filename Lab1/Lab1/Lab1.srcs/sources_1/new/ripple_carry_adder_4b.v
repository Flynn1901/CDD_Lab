`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 10:43:58
// Design Name: 
// Module Name: ripple_carry_adder_4b
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


module ripple_carry_adder_4b(
    input wire[3:0] iA, iB,
    input wire      iCarry,
    output wire[3:0] oSum,
    output wire      oCarry
    );
    
    wire[2:0] w_oCarry;
    
    full_adder full_adder_inst1(
        .iA(iA[0]),.iB(iB[0]),.iCarry(iCarry),.oSum(oSum[0]),.oCarry(w_oCarry[0])
    );
    full_adder full_adder_inst2(
        .iA(iA[1]),.iB(iB[1]),.iCarry(w_oCarry[0]),.oSum(oSum[1]),.oCarry(w_oCarry[1])
    );
    full_adder full_adder_inst3(
        .iA(iA[2]),.iB(iB[2]),.iCarry(w_oCarry[1]),.oSum(oSum[2]),.oCarry(w_oCarry[2])
    );
    full_adder full_adder_inst4(
        .iA(iA[3]),.iB(iB[3]),.iCarry(w_oCarry[2]),.oSum(oSum[3]),.oCarry(oCarry)
    );
endmodule
