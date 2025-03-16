`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 10:54:17
// Design Name: 
// Module Name: ripple_carry_adder_4b_TB
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


module ripple_carry_adder_4b_TB;
    reg[3:0] r_iA, r_iB;
    reg      r_iCarry;
    wire[3:0] w_oSum;
    wire      w_oCarry;

    ripple_carry_adder_Nb ripple_carry_adder_Nb_inst
    (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry));
    
    integer i,j,k;
    wire[4:0] w_totalSum;
    assign w_totalSum = {w_oCarry,w_oSum};
    
    initial begin
        for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                for(k=0;k<2;k=k+1) begin
                    r_iA = i;
                    r_iB = j;
                    r_iCarry = k;
                    #10
                    if(w_totalSum==(r_iA+r_iB+r_iCarry)) $display("Test vector r_iA:%d,r_iB:%d,r_iCarry:%d passed",r_iA,r_iB,r_iCarry);
                    else                                 $display("Test vector %d failed.Output is:%d, Input is:%d",r_iA+r_iB+r_iCarry,w_totalSum,r_iA+r_iB+r_iCarry);
                end
            end
        end
    $stop;
    end
endmodule
