//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Sep 15 10:49:16 2015
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// FIC
module FIC(
    // Inputs
    GPIO_IN,
    MMUART_0_RXD,
    MSS_RESET_N_F2M,
    // Outputs
    GPIO_OUT,
    MMUART_0_TXD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [0:6] GPIO_IN;
input        MMUART_0_RXD;
input        MSS_RESET_N_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [0:6] GPIO_OUT;
output       MMUART_0_TXD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_0_APBmslave2_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire          CoreAPB3_0_APBmslave2_PWRITE;
wire          CoreAPB3_0_APBmslave3_PREADY;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire          CoreAPB3_0_APBmslave3_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire          FCCC_0_GL1;
wire          FCCC_0_LOCK;
wire   [31:0] FIC_MSS_0_FIC_0_APB_MASTER_PADDR;
wire          FIC_MSS_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] FIC_MSS_0_FIC_0_APB_MASTER_PRDATA;
wire          FIC_MSS_0_FIC_0_APB_MASTER_PREADY;
wire          FIC_MSS_0_FIC_0_APB_MASTER_PSELx;
wire          FIC_MSS_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] FIC_MSS_0_FIC_0_APB_MASTER_PWDATA;
wire          FIC_MSS_0_FIC_0_APB_MASTER_PWRITE;
wire   [0:6]  GPIO_IN;
wire   [0:6]  GPIO_OUT_net_0;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_net_0;
wire          MSS_RESET_N_F2M;
wire          OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire          MMUART_0_TXD_net_1;
wire   [0:6]  GPIO_OUT_net_1;
wire   [7:31] GPIO_OUT_slice_0;
wire   [31:0] GPIO_IN_net_0;
wire   [31:0] GPIO_OUT_net_2;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [7:31] GPIO_IN_const_net_0;
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] PRDATAS0_const_net_0;
wire   [31:0] PRDATAS1_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
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
wire   [19:0] CoreAPB3_0_APBmslave2_PADDR_0_19to0;
wire   [19:0] CoreAPB3_0_APBmslave2_PADDR_0;
wire   [7:0]  CoreAPB3_0_APBmslave2_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave2_PADDR_1;
wire   [7:0]  CoreAPB3_0_APBmslave2_PADDR_2_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave2_PADDR_2;
wire   [31:0] CoreAPB3_0_APBmslave2_PADDR;
wire   [31:0] CoreAPB3_0_APBmslave2_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave2_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave2_PWDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave3_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave3_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave3_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0   = 25'h0000000;
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign PADDR_const_net_0     = 6'h00;
assign PWDATA_const_net_0    = 8'h00;
assign PRDATAS0_const_net_0  = 32'h00000000;
assign PRDATAS1_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
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
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
assign GPIO_OUT_net_1     = GPIO_OUT_net_0;
assign GPIO_OUT[0:6]      = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign GPIO_OUT_net_0   = { GPIO_OUT_net_2[0] , GPIO_OUT_net_2[1] , GPIO_OUT_net_2[2] , GPIO_OUT_net_2[3] , GPIO_OUT_net_2[4] , GPIO_OUT_net_2[5] , GPIO_OUT_net_2[6] };
assign GPIO_OUT_slice_0 = { GPIO_OUT_net_2[7] , GPIO_OUT_net_2[8] , GPIO_OUT_net_2[9] , GPIO_OUT_net_2[10] , GPIO_OUT_net_2[11] , GPIO_OUT_net_2[12] , GPIO_OUT_net_2[13] , GPIO_OUT_net_2[14] , GPIO_OUT_net_2[15] , GPIO_OUT_net_2[16] , GPIO_OUT_net_2[17] , GPIO_OUT_net_2[18] , GPIO_OUT_net_2[19] , GPIO_OUT_net_2[20] , GPIO_OUT_net_2[21] , GPIO_OUT_net_2[22] , GPIO_OUT_net_2[23] , GPIO_OUT_net_2[24] , GPIO_OUT_net_2[25] , GPIO_OUT_net_2[26] , GPIO_OUT_net_2[27] , GPIO_OUT_net_2[28] , GPIO_OUT_net_2[29] , GPIO_OUT_net_2[30] , GPIO_OUT_net_2[31] };
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPIO_IN_net_0 = { 25'h0000000 , { GPIO_IN[6] , GPIO_IN[5] , GPIO_IN[4] , GPIO_IN[3] , GPIO_IN[2] , GPIO_IN[1] , GPIO_IN[0] } };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave2_PADDR_0_19to0 = CoreAPB3_0_APBmslave2_PADDR[19:0];
assign CoreAPB3_0_APBmslave2_PADDR_0 = { CoreAPB3_0_APBmslave2_PADDR_0_19to0 };
assign CoreAPB3_0_APBmslave2_PADDR_1_7to0 = CoreAPB3_0_APBmslave2_PADDR[7:0];
assign CoreAPB3_0_APBmslave2_PADDR_1 = { CoreAPB3_0_APBmslave2_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave2_PADDR_2_7to0 = CoreAPB3_0_APBmslave2_PADDR[7:0];
assign CoreAPB3_0_APBmslave2_PADDR_2 = { CoreAPB3_0_APBmslave2_PADDR_2_7to0 };

assign CoreAPB3_0_APBmslave2_PWDATA_0_7to0 = CoreAPB3_0_APBmslave2_PWDATA[7:0];
assign CoreAPB3_0_APBmslave2_PWDATA_0 = { CoreAPB3_0_APBmslave2_PWDATA_0_7to0 };

assign CoreAPB3_0_APBmslave3_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave3_PRDATA_0_7to0 = CoreAPB3_0_APBmslave3_PRDATA[7:0];
assign CoreAPB3_0_APBmslave3_PRDATA_0 = { CoreAPB3_0_APBmslave3_PRDATA_0_31to8, CoreAPB3_0_APBmslave3_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 0 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 0 ),
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
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 32 ),
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
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( FIC_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .PENABLE    ( FIC_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .PSEL       ( FIC_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERRS3  ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
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
        .PADDR      ( FIC_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .PWDATA     ( FIC_MSS_0_FIC_0_APB_MASTER_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( PRDATAS1_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA_0 ),
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
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
        .PREADY     ( FIC_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR    ( FIC_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave2_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave2_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     (  ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     (  ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     (  ),
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
        .PRDATA     ( FIC_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave2_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave2_PWDATA ) 
        );

//--------FIC_COREAPBLSRAM_0_COREAPBLSRAM   -   Actel:DirectCore:COREAPBLSRAM:2.0.108
FIC_COREAPBLSRAM_0_COREAPBLSRAM #( 
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
        .PRESETN ( MSS_RESET_N_F2M ),
        .PSEL    ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave2_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave2_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave2_PADDR_0 ),
        .PWDATA  ( CoreAPB3_0_APBmslave2_PWDATA ),
        // Outputs
        .PSLVERR ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADY  ( CoreAPB3_0_APBmslave2_PREADY ),
        .PRDATA  ( CoreAPB3_0_APBmslave2_PRDATA ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.0.120
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 15 ),
        .FIXED_CONFIG_0  ( 0 ),
        .FIXED_CONFIG_1  ( 0 ),
        .FIXED_CONFIG_2  ( 0 ),
        .FIXED_CONFIG_3  ( 0 ),
        .FIXED_CONFIG_4  ( 0 ),
        .FIXED_CONFIG_5  ( 0 ),
        .FIXED_CONFIG_6  ( 0 ),
        .FIXED_CONFIG_7  ( 0 ),
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
        .IO_NUM          ( 32 ),
        .IO_TYPE_0       ( 0 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
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
        .PRESETN  ( MSS_RESET_N_F2M ),
        .PCLK     ( FCCC_0_GL1 ),
        .PSEL     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave2_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave2_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave2_PADDR_2 ),
        .PWDATA   ( CoreAPB3_0_APBmslave2_PWDATA ),
        .GPIO_IN  ( GPIO_IN_net_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave5_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_2 ),
        .GPIO_OE  (  ) 
        );

//--------FIC_FCCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
FIC_FCCC_0_FCCC FCCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL1            ( FCCC_0_GL1 ),
        .LOCK           ( FCCC_0_LOCK ) 
        );

//--------FIC_MSS
FIC_MSS FIC_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FCCC_0_GL1 ),
        .MMUART_0_RXD           ( MMUART_0_RXD ),
        .FIC_0_APB_M_PREADY     ( FIC_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( FIC_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .MCCC_CLK_BASE_PLL_LOCK ( FCCC_0_LOCK ),
        .MSS_RESET_N_F2M        ( MSS_RESET_N_F2M ),
        .FIC_0_APB_M_PRDATA     ( FIC_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        // Outputs
        .MMUART_0_TXD           ( MMUART_0_TXD_net_0 ),
        .FIC_0_APB_M_PSEL       ( FIC_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( FIC_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( FIC_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_0_APB_M_PADDR      ( FIC_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA     ( FIC_MSS_0_FIC_0_APB_MASTER_PWDATA ) 
        );

//--------FIC_OSC_0_OSC   -   Actel:SgCore:OSC:1.0.103
FIC_OSC_0_OSC OSC_0(
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
        .PENABLE ( CoreAPB3_0_APBmslave2_PENABLE ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PRESETN ( MSS_RESET_N_F2M ),
        .PWRITE  ( CoreAPB3_0_APBmslave2_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave2_PADDR_1 ),
        .PWDATA  ( CoreAPB3_0_APBmslave2_PWDATA_0 ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );


endmodule
