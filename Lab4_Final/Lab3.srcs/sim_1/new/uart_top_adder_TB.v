`timescale 1ns/1ps

module tb_uart_top;

  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  reg  rRx = 1'b1;  // Idle state for UART is high
  wire wTx;
  
  // Downscale the values in the simulation
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  
  // DUT parameters: operand width modified to 32 bits for simulation
  parameter OPERAND_WIDTH = 16;       // Modified from 512 to 32 bits
  parameter ADDER_WIDTH   = 4;
  parameter NBYTES        = OPERAND_WIDTH / 8; // Now equals 4
  
  // Instantiate DUT  
  uart_top 
  #(  .OPERAND_WIDTH(OPERAND_WIDTH),
      .ADDER_WIDTH(ADDER_WIDTH),
      .NBYTES(NBYTES),
      .CLK_FREQ(CLK_FREQ_inst), 
      .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(rRx), .oTx(wTx) );
  
  // Define clock signal with a period of 4 ns
  localparam CLOCK_PERIOD = 4;  // ns
  
  // Clock generation: toggle every half period
  always
    #(CLOCK_PERIOD/2) rClk <= ~rClk;
    
  // Calculate bit period (in ns) for simulation
  // Bit period = (CLK_FREQ_inst / BAUD_RATE_inst) * CLOCK_PERIOD
  //            = (100/10)*4 = 40 ns
  localparam BIT_PERIOD = (CLK_FREQ_inst / BAUD_RATE_inst) * CLOCK_PERIOD;

  // Test sequence
  initial begin
    // Apply reset (active high) and initialize rRx (UART idle high)
    rRst = 1;
    rRx  = 1;
    #10;            // Hold reset for 10 ns
    rRst = 0;
    
    // Wait a little for system stabilization
    #20;
    
    // Send operand A: 4 bytes (example: 8'h55)
    send_operand(NBYTES, 8'hff);
    
    // Short pause between sending operand A and operand B
    #(BIT_PERIOD * 100);
    
    // Send operand B: 4 bytes (example: 8'hAA)
    send_operand(NBYTES, 8'haa);
    
    // Wait enough time for the adder to process and for UART TX to complete
    #1000;
    
    $stop;
  end

  // Task to send one byte over UART
  task send_byte;
    input [7:0] data;
    integer i;
    begin
      // Start bit (logic low)
      rRx = 0;
      #(BIT_PERIOD);
      // Transmit 8 data bits (LSB first)
      for (i = 0; i < 8; i = i + 1) begin
        rRx = data[i];
        #(BIT_PERIOD);
      end
      // Stop bit (logic high)
      rRx = 1;
      #(BIT_PERIOD);
    end
  endtask

  // Task to send an operand: transmits multiple bytes sequentially
  task send_operand;
    input integer num_bytes;
    input [7:0] data;
    integer j;
    begin
      for (j = 0; j < num_bytes; j = j + 1) begin
        send_byte(data);
        // Optional: small gap between bytes
        #(BIT_PERIOD/2);
      end
    end
  endtask

endmodule
