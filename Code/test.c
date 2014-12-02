/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 
 
//#include <stdio.h>
//#include <util/delay.h>
//#include <avr/io.h>

//#define PF7	7
//#define LED1_OFF (PORTF&=~(1<<PF7))        
//#define LED1_ON  (PORTF|=(1<<PF7))

void setup(void) 
{
	//	DDRF = (1 << DDF7);        //PORTF BIT 7 (A0) als Ausgang
}

void loop(void) 
{
	//LED1_ON;
	//_delay_ms(500);
	//LED1_OFF;
	//_delay_ms(500);
}

int main(void)
{
	setup();
	for(;;)
	{
		loop();
	}
	return 0;
}