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

#define PF7 7
#define LED1_OFF (PORTF&=~(1<<PF7))
#define LED1_ON  (PORTF|=(1<<PF7))

void dio_init(void)
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
void uart_init( unsigned int baud )
{
	/* Set baud rate */
	UBRR1H = (unsigned char)(baud>>8);
	UBRR1L = (unsigned char)baud;
	/* Enable receiver and transmitter */
	UCSR1B = (1<<RXEN1)|(1<<TXEN1);
	/* Set frame format: 8data, 2stop bit */
	UCSR1C = (1<<USBS1)|(1<<UCSZ10)|(1<<UCSZ11);
}

void uart_putc( unsigned char data )
{
	/* Wait for empty transmit buffer */
	while ( !( UCSR1A & (1<<UDRE1)) )
	;
	/* Put data into buffer, sends the data */
	UDR1 = data;
}

unsigned char uart_getc( void )
{
	/* Wait for data to be received */
	while ( !(UCSR1A & (1<<RXC1)) )
	;
	/* Get and return received data from buffer */
	return UDR1;
}

uart_puts(char *s)
{
    while (*s)
    {   /* so lange *s != '\0' also ungleich dem
		"String-Endezeichen(Terminator)" */
        uart_putc(*s);
        s++;
    }
}

int main(void)
{
dio_init();
uart_init(BAUD_PRESCALE);

uart_puts("Test bestanden");
//LED blinken lassen
//setup();
for(;;)
{
loop();
}
return 0;
}