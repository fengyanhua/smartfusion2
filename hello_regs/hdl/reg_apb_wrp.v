`timescale 1 ns/100 ps
/*-------------------------------------------------------------------------------
-- Title      : Custom APB slave
-------------------------------------------------------------------------------
-- File       : reg_apb_wrp.v
-- Author     : Mir Ali
-- Company    : Microsemi Corporation
-- Device     : SmartFusion 
-- Standard   : Verilog
-------------------------------------------------------------------------------
-- Description: This code creates an APB slave wrapper on a 32x8 memory block(no wait state)
-- It decodes the APB lite signals and then do the required action on the memory
-------------------------------------------------------------------------------
-- Copyright (c) 2011   Microsemi Corporation
--                      All rights reserved.
-------------------------------------------------------------------------------
-- Revisions  : V1.0 
-------------------------------------------------------------------------------*/


module reg_apb_wrp(
  PCLK,
  PENABLE,
  PSEL,
  PRESETN,
  PWRITE,
  PREADY,
  PSLVERR,
  PADDR,
  PWDATA,
  PRDATA);


input PCLK,PENABLE, PSEL, PRESETN, PWRITE;
input  [7:0] PWDATA, PADDR;
output [7:0] PRDATA;
output PREADY, PSLVERR;

wire rd_enable;
wire wr_enable;

assign wr_enable = (PENABLE &&  PWRITE && PSEL);
assign rd_enable = (!PWRITE && PSEL); //Data is ready during first cycle to make it availble on the bus when PENABLE is asserted

reg16x8 reg16x8_0 (.clk(PCLK), .nreset(PRESETN), .wr_en(wr_enable), 
        .rd_en(rd_enable), .addr(PADDR[5:2]), .data_in(PWDATA), .data_out(PRDATA));
        
assign PREADY = 1'b1; 
assign PSLVERR = 1'b0;         
    
endmodule