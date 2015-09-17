
  #include "mss_uart.h"
  #include "../../CMSIS/hw_reg_io.h"
  #include "../../CMSIS/system_m2sxxx.h"

#define RAM_REGS 0x55000000u
#define SRAM     0x54000000u
#define CoreGPIO 0x560000a0u

  int main(void)
  {
     uint8_t message0[15] = "start";
     uint8_t message1[15] = "end ";
	 uint32_t data0 = 0;
	 uint32_t data1 = 0;
	 uint32_t delay = 600;

     MSS_UART_init(&g_mss_uart0,
                   MSS_UART_9600_BAUD,
                   MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

     MSS_UART_polled_tx(&g_mss_uart0, message0, sizeof(message0));

     *(uint32_t *)(RAM_REGS + 0x01) =60;
     *(uint32_t *)(SRAM + 0x04)  = 65;
     *(uint32_t *)(CoreGPIO + 0xa0) = 0xff;

     while(delay--);

     data0 = *(uint32_t *)(RAM_REGS+ 0x01);
     data1 = *(uint32_t *)(SRAM + 0x04);


     MSS_UART_polled_tx_string(&g_mss_uart0,(const uint8_t*)data0);
     MSS_UART_polled_tx_string(&g_mss_uart0,(const uint8_t*)data1);


     MSS_UART_polled_tx(&g_mss_uart0, message1, sizeof(message1));

     return(0);
  }
