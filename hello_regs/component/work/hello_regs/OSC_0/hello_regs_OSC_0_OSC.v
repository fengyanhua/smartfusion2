`timescale 1 ns/100 ps
// Version: v11.5 SP3 11.5.3.10


module hello_regs_OSC_0_OSC(
       XTL,
       RCOSC_25_50MHZ_CCC,
       RCOSC_25_50MHZ_O2F,
       RCOSC_1MHZ_CCC,
       RCOSC_1MHZ_O2F,
       XTLOSC_CCC,
       XTLOSC_O2F
    );
input  XTL;
output RCOSC_25_50MHZ_CCC;
output RCOSC_25_50MHZ_O2F;
output RCOSC_1MHZ_CCC;
output RCOSC_1MHZ_O2F;
output XTLOSC_CCC;
output XTLOSC_O2F;

    
    RCOSC_25_50MHZ #( .FREQUENCY(50.0) )  I_RCOSC_25_50MHZ (.CLKOUT(
        RCOSC_25_50MHZ_CCC));
    
endmodule
