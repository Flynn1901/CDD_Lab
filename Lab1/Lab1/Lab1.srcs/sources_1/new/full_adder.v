`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 17:12:15
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input wire iA, iB, iCarry,
    output wire oSum, oCarry
    );
    wire xor_ab;
    
    assign xor_ab = iA^iB;
    assign oSum = xor_ab^iCarry;
    assign oCarry = (xor_ab&iCarry)|(iA&iB);

endmodule
