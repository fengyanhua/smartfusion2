
  #include "mss_uart.h"
  #include "../../CMSIS/system_m2sxxx.h"

#define REG_APB	0x30000000u
#define COREGPIO 0x50000a0u
#define CORESRAM 0x20000000u

  int main(void)
  {
     uint8_t message0[10] = "start !";
     uint8_t message1[10] = "end !";
	 uint32_t data0 = 0;

     MSS_UART_init(&g_mss_uart0,
                   MSS_UART_9600_BAUD,
                   MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

     MSS_UART_polled_tx(&g_mss_uart0, message0, sizeof(message0));

     *(uint32_t *)(REG_APB) = 0x65;

     *(uint32_t *)(COREGPIO) = 0xff;

     data0 = *(uint32_t *)(REG_APB);
	 MSS_UART_polled_tx(&g_mss_uart0, data0, sizeof(data0));

     MSS_UART_polled_tx(&g_mss_uart0, message1, sizeof(message1));

     return 0;
  }
