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
-- Description: This code creates an APB slave wrapper on a 32x8 memory block(with wait state)
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

reg  PREADY;
reg rd_enable;
reg wr_enable;
reg [1:0]   fsm; //state machine register


assign PSLVERR = 1'b0;

always@(posedge PCLK or negedge PRESETN)
if(~PRESETN)
  begin
      fsm <= 2'b00;
      rd_enable <= 1'b0;
      wr_enable <= 1'b0;
      PREADY <= 1'b1;
  end
else
  begin
  
  case (fsm)
     2'b00 :  begin
                  if (~PSEL)
                        begin
                          fsm <= 2'b00;
                        end
                  else        
                        begin
                          fsm <= 2'b01;
                          if (PWRITE)
                                begin 
                                    rd_enable <= 1'b0;
                                    wr_enable <= 1'b1;
                                    PREADY <= 1'b1;
                                end
                          else
                                begin      
                                    rd_enable <= 1'b1;
                                    wr_enable <= 1'b0;
                                    PREADY <= 1'b0;                          
                                end
                        end
               end

     2'b01 :  begin            
                          if (PWRITE)
                            begin 
                                rd_enable <= 1'b0;
                                wr_enable <= 1'b0;
                                PREADY <= 1'b1;
                                fsm <= 2'b00; 
                            end
                          else
                            begin      
                                rd_enable <= 1'b0;
                                wr_enable <= 1'b0;
                                PREADY <= 1'b0;
                                fsm <= 2'b10; 
                            end
              end

     2'b10 :  begin            
                          fsm <= 2'b11;
                          PREADY <= 1'b1;                                        
              end

     2'b11 :  begin            
                          fsm <= 2'b00;
              end

    default : fsm <= 2'b00;
  endcase
end

reg16x8 reg16x8_0 (.clk(PCLK), .nreset(PRESETN), .wr_en(wr_enable), 
        .rd_en(rd_enable), .addr(PADDR), .data_in(PWDATA), .data_out(PRDATA));      

    
endmodule