/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 
 
#include <stdio.h>
#include <util/delay.h>
#include <avr/io.h>

# define USART_BAUDRATE 9600
# define BAUD_PRESCALE ((( F_CPU / ( USART_BAUDRATE * 16UL))) - 1)

#define PF7	7
#define LED1_OFF (PORTF&=~(1<<PF7))        
#define LED1_ON  (PORTF|=(1<<PF7))

void setup(void) 
{
		DDRF = (1 << DDF7);        //PORTF BIT 7 (A0) als Ausgang
}

void loop(void) 
{
	LED1_ON;
	_delay_ms(500);
	LED1_OFF;
	_delay_ms(500);
}


//uart-Implementierung
uint8_t uart_getc(void)				//nicht zwingend notwendig für die Rückmeldung ins System
{
    while (!(UCSR1A & (1<<RXC1)))     // warten bis Zeichen verfuegbar
        ;
    return UDR1;                     // Zeichen aus UDR an Aufrufer zurueckgeben
}



int uart_putc(unsigned char c)
{
    while (!(UCSR1A & (1<<UDRE1)))  /* warten bis Senden moeglich */
    {
    }                             
 
    UDR1 = c;                      /* sende Zeichen */
    return 0;
}



void uart_puts(char *s)
{
    while (*s)
    {   /* so lange *s != '\0' also ungleich dem "String-Endezeichen(Terminator)" */
        uart_putc(*s);
        s++;
    }
}


void uart_init(void)
{
	// set baud rate   
    unsigned int baud = BAUD_PRESCALE;
    
    UBRR1H = (unsigned char) (baud >> 8 );
    UBRR1L = (unsigned char)baud;
    
    // enable received and transmitter
    UCSR1B = ( 1 << RXEN1 ) | ( 1 << TXEN1 );
    
    // set frame format ( 8data, 2stop )
    UCSR1C = ( 1 << USBS1 ) | ( 3 << UCSZ10 );
}




int main(void)
{
	uart_init();
	uart_puts("Test bestanden");
	
	//LED blinken lassen
	setup();
	for(;;)
	{
	    uart_puts("Test");
		loop();
	}
	return 0;
}