//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Sep 15 18:39:28 2015
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// hello_regs
module hello_regs(
    // Inputs
    GPIO_IN,
    MMUART_0_RXD,
    // Outputs
    GPIO_OUT_1,
    MMUART_0_TXD,
    MSS_RESET_N_M2F
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] GPIO_IN;
input        MMUART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0] GPIO_OUT_1;
output       MMUART_0_TXD;
output       MSS_RESET_N_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_0_APBmslave4_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA;
wire          CoreAPB3_0_APBmslave4_PREADY;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire          CoreAPB3_0_APBmslave4_PSLVERR;
wire          CoreAPB3_0_APBmslave4_PWRITE;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire          CoreAPB3_0_APBmslave6_PREADY;
wire          CoreAPB3_0_APBmslave6_PSELx;
wire          CoreAPB3_0_APBmslave6_PSLVERR;
wire          FCCC_0_GL1;
wire          FCCC_0_LOCK;
wire   [7:0]  GPIO_IN;
wire   [7:0]  GPIO_OUT_1_net_0;
wire   [31:0] hello_regs_MSS_0_FIC_0_APB_MASTER_PADDR;
wire          hello_regs_MSS_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] hello_regs_MSS_0_FIC_0_APB_MASTER_PRDATA;
wire          hello_regs_MSS_0_FIC_0_APB_MASTER_PREADY;
wire          hello_regs_MSS_0_FIC_0_APB_MASTER_PSELx;
wire          hello_regs_MSS_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] hello_regs_MSS_0_FIC_0_APB_MASTER_PWDATA;
wire          hello_regs_MSS_0_FIC_0_APB_MASTER_PWRITE;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_0;
wire          MSS_RESET_N_M2F_1;
wire          OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire          MMUART_0_TXD_0_net_0;
wire          MSS_RESET_N_M2F_1_net_0;
wire   [7:0]  GPIO_OUT_1_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [31:0] IADDR_const_net_0;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] PRDATAS0_const_net_0;
wire   [31:0] PRDATAS1_const_net_0;
wire   [31:0] PRDATAS2_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [19:0] CoreAPB3_0_APBmslave4_PADDR_0_19to0;
wire   [19:0] CoreAPB3_0_APBmslave4_PADDR_0;
wire   [7:0]  CoreAPB3_0_APBmslave4_PADDR_2_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave4_PADDR_2;
wire   [7:0]  CoreAPB3_0_APBmslave4_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave4_PADDR_1;
wire   [31:0] CoreAPB3_0_APBmslave4_PADDR;
wire   [7:0]  CoreAPB3_0_APBmslave4_PWDATA_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave4_PWDATA_1;
wire   [31:0] CoreAPB3_0_APBmslave4_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave4_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave4_PWDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave5_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave5_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave5_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave6_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave6_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave6_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave6_PRDATA_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GND_net               = 1'b0;
assign IADDR_const_net_0     = 32'h00000000;
assign PADDR_const_net_0     = 6'h00;
assign PWDATA_const_net_0    = 8'h00;
assign PRDATAS0_const_net_0  = 32'h00000000;
assign PRDATAS1_const_net_0  = 32'h00000000;
assign PRDATAS2_const_net_0  = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_0_net_0    = MMUART_0_TXD_0;
assign MMUART_0_TXD            = MMUART_0_TXD_0_net_0;
assign MSS_RESET_N_M2F_1_net_0 = MSS_RESET_N_M2F_1;
assign MSS_RESET_N_M2F         = MSS_RESET_N_M2F_1_net_0;
assign GPIO_OUT_1_net_1        = GPIO_OUT_1_net_0;
assign GPIO_OUT_1[7:0]         = GPIO_OUT_1_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave4_PADDR_0_19to0 = CoreAPB3_0_APBmslave4_PADDR[19:0];
assign CoreAPB3_0_APBmslave4_PADDR_0 = { CoreAPB3_0_APBmslave4_PADDR_0_19to0 };
assign CoreAPB3_0_APBmslave4_PADDR_2_7to0 = CoreAPB3_0_APBmslave4_PADDR[7:0];
assign CoreAPB3_0_APBmslave4_PADDR_2 = { CoreAPB3_0_APBmslave4_PADDR_2_7to0 };
assign CoreAPB3_0_APBmslave4_PADDR_1_7to0 = CoreAPB3_0_APBmslave4_PADDR[7:0];
assign CoreAPB3_0_APBmslave4_PADDR_1 = { CoreAPB3_0_APBmslave4_PADDR_1_7to0 };

assign CoreAPB3_0_APBmslave4_PWDATA_1_7to0 = CoreAPB3_0_APBmslave4_PWDATA[7:0];
assign CoreAPB3_0_APBmslave4_PWDATA_1 = { CoreAPB3_0_APBmslave4_PWDATA_1_7to0 };
assign CoreAPB3_0_APBmslave4_PWDATA_0_7to0 = CoreAPB3_0_APBmslave4_PWDATA[7:0];
assign CoreAPB3_0_APBmslave4_PWDATA_0 = { CoreAPB3_0_APBmslave4_PWDATA_0_7to0 };

assign CoreAPB3_0_APBmslave5_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave5_PRDATA_0_7to0 = CoreAPB3_0_APBmslave5_PRDATA[7:0];
assign CoreAPB3_0_APBmslave5_PRDATA_0 = { CoreAPB3_0_APBmslave5_PRDATA_0_31to8, CoreAPB3_0_APBmslave5_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave6_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave6_PRDATA_0_7to0 = CoreAPB3_0_APBmslave6_PRDATA[7:0];
assign CoreAPB3_0_APBmslave6_PRDATA_0 = { CoreAPB3_0_APBmslave6_PRDATA_0_31to8, CoreAPB3_0_APBmslave6_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 0 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 1 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 19 ),
        .IADDR_OPTION    ( 2 ),
        .MADDR_BITS      ( 28 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 6 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( MSS_RESET_N_M2F_1 ),
        .PCLK       ( FCCC_0_GL1 ),
        .PWRITE     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .PENABLE    ( hello_regs_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .PSEL       ( hello_regs_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( CoreAPB3_0_APBmslave4_PREADY ),
        .PSLVERRS4  ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( CoreAPB3_0_APBmslave6_PREADY ),
        .PSLVERRS6  ( CoreAPB3_0_APBmslave6_PSLVERR ),
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( hello_regs_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .PWDATA     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( PRDATAS1_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA_0 ),
        .PRDATAS6   ( CoreAPB3_0_APBmslave6_PRDATA_0 ),
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR    ( hello_regs_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave4_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave4_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     (  ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     ( CoreAPB3_0_APBmslave6_PSELx ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave4_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave4_PWDATA ) 
        );

//--------hello_regs_COREAPBLSRAM_0_COREAPBLSRAM   -   Actel:DirectCore:COREAPBLSRAM:2.0.108
hello_regs_COREAPBLSRAM_0_COREAPBLSRAM #( 
        .APB_DWIDTH                   ( 32 ),
        .FAMILY                       ( 19 ),
        .LSRAM_NUM_LOCATIONS_DWIDTH08 ( 2048 ),
        .LSRAM_NUM_LOCATIONS_DWIDTH16 ( 1024 ),
        .LSRAM_NUM_LOCATIONS_DWIDTH24 ( 512 ),
        .LSRAM_NUM_LOCATIONS_DWIDTH32 ( 512 ),
        .SEL_SRAM_TYPE                ( 0 ),
        .USRAM_NUM_LOCATIONS_DWIDTH08 ( 128 ),
        .USRAM_NUM_LOCATIONS_DWIDTH16 ( 64 ),
        .USRAM_NUM_LOCATIONS_DWIDTH24 ( 64 ),
        .USRAM_NUM_LOCATIONS_DWIDTH32 ( 64 ) )
COREAPBLSRAM_0(
        // Inputs
        .PCLK    ( FCCC_0_GL1 ),
        .PRESETN ( MSS_RESET_N_M2F_1 ),
        .PSEL    ( CoreAPB3_0_APBmslave4_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave4_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave4_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave4_PADDR_0 ),
        .PWDATA  ( CoreAPB3_0_APBmslave4_PWDATA ),
        // Outputs
        .PSLVERR ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .PREADY  ( CoreAPB3_0_APBmslave4_PREADY ),
        .PRDATA  ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 8 ),
        .FAMILY          ( 19 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 0 ) )
CoreGPIO_0(
        // Inputs
        .PRESETN  ( MSS_RESET_N_M2F_1 ),
        .PCLK     ( FCCC_0_GL1 ),
        .PSEL     ( CoreAPB3_0_APBmslave6_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave4_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave4_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave4_PADDR_2 ),
        .PWDATA   ( CoreAPB3_0_APBmslave4_PWDATA_1 ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave6_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave6_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave6_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_1_net_0 ),
        .GPIO_OE  (  ) 
        );

//--------hello_regs_FCCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
hello_regs_FCCC_0_FCCC FCCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL1            ( FCCC_0_GL1 ),
        .LOCK           ( FCCC_0_LOCK ) 
        );

//--------hello_regs_MSS
hello_regs_MSS hello_regs_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FCCC_0_GL1 ),
        .FIC_0_APB_M_PREADY     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( hello_regs_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .MCCC_CLK_BASE_PLL_LOCK ( FCCC_0_LOCK ),
        .MMUART_0_RXD           ( MMUART_0_RXD ),
        .FIC_0_APB_M_PRDATA     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        // Outputs
        .FIC_0_APB_M_PSEL       ( hello_regs_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( hello_regs_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .MMUART_0_TXD           ( MMUART_0_TXD_0 ),
        .MSS_RESET_N_M2F        ( MSS_RESET_N_M2F_1 ),
        .FIC_0_APB_M_PADDR      ( hello_regs_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA     ( hello_regs_MSS_0_FIC_0_APB_MASTER_PWDATA ) 
        );

//--------hello_regs_OSC_0_OSC   -   Actel:SgCore:OSC:1.0.103
hello_regs_OSC_0_OSC OSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F (  ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------reg_apb_wrp
reg_apb_wrp reg_apb_wrp_0(
        // Inputs
        .PCLK    ( FCCC_0_GL1 ),
        .PENABLE ( CoreAPB3_0_APBmslave4_PENABLE ),
        .PSEL    ( CoreAPB3_0_APBmslave5_PSELx ),
        .PRESETN ( MSS_RESET_N_M2F_1 ),
        .PWRITE  ( CoreAPB3_0_APBmslave4_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave4_PADDR_1 ),
        .PWDATA  ( CoreAPB3_0_APBmslave4_PWDATA_0 ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave5_PRDATA ) 
        );


endmodule
