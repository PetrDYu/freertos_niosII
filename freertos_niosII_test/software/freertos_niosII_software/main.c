#include "sys/alt_stdio.h"
#include "sys/alt_irq.h"
#include "system.h"
#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "altera_avalon_pio_regs.h"

int n = 0;

void sayHello( void *p){
while(1){
 printf("Hello, world!\n");
 vTaskDelay(1000);
 }
}
void sayInBitween (void *p){
while(1){
 printf("In between\n");
 IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 1 << n);
 n++;
 if (n == 10) n = 0;
 vTaskDelay(300);
 }
}
int main()
{
alt_putstr("Hello from Nios II!\n");
 xTaskCreate(sayHello, "sayHello", 512, NULL, 2, NULL);
 xTaskCreate(sayInBitween, "sayInBitween",512,NULL,2,NULL);
 vTaskStartScheduler();
return 0;
}
