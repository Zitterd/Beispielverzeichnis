/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 
 

#include <stdio.h>
#include  "Arduino.h"
#include <util/delay.h>
#include <avr/io.h>

#define PF7	7

#define LED1_OFF (PORTF&=~(1<<PF7))        
#define LED1_ON  (PORTF|=(1<<PF7))

void setup() {
		  // initialize serial communication at 9600 bits per second:
		//Serial.begin(9600);
		DDRF = (1 << DDF7);                        //PORTF BIT 7 (A0) als Ausgang
}

void loop() {
	//Serial.println("HALLO TEST");
	LED1_ON;
	_delay_ms(500);
	LED1_OFF;
	_delay_ms(500);
}

int main(void)
{
	//init();  //reference undefined?!?
	setup();
	for(;;)
	{
		loop();
	}
	return 0;
}






/*
#include <avr/io.h>
#include <util/delay.h>

#include <string.h>

# define USART_BAUDRATE 9600
# define BAUD_PRESCALE ((( F_CPU / ( USART_BAUDRATE * 16UL))) - 1)

// transmit a char to uart
void uart_transmit( unsigned char data )
{
    // wait for empty transmit buffer
    while ( ! ( UCSR1A & ( 1 << UDRE1 ) ) )
        ;
    
    // put data into buffer, sends data
    UDR1 = data;
}

// read a char from uart
unsigned char uart_receive(void)
{
    while (!( UCSR1A & ( 1 << RXC1) ))
        ;
    
    return UDR1;
}

// init uart
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

// check if there are any chars to be read
int uart_dataAvailable(void)
{
    if ( UCSR1A & ( 1 << RXC1) )
        return 1;
    
    return 0;
}

// write a string to the uart
void uart_print( char data[] )
{
    int c = 0;
    
    for ( c = 0; c < strlen(data); c++ )
        uart_transmit(data[c]);
}

int main(void)
{
    // setup uart
    uart_init();
    
    unsigned char receivedChar = '0';
    
    uart_print( "\n\r Test bestanden!! \n\r" );
    
    while (1)
    {
        if ( uart_dataAvailable() )
        {
            // echo any received characters right back 
            receivedChar = uart_receive();
            uart_transmit(receivedChar);
        }
    }
    
    return 0;
}


*/


/*

#include <avr/io.h>
#include <util/delay.h>

#include <string.h>

# define USART_BAUDRATE 9600
# define BAUD_PRESCALE ((( F_CPU / ( USART_BAUDRATE * 16UL))) - 1)

// transmit a char to uart
void uart_transmit( unsigned char data )
{
    // wait for empty transmit buffer
    while ( ! ( UCSR1A & ( 1 << UDRE1 ) ) )
        ;
    
    // put data into buffer, sends data
    UDR1 = data;
}

// read a char from uart
unsigned char uart_receive(void)
{
    while (!( UCSR1A & ( 1 << RXC1) ))
        ;
    
    return UDR1;
}

// init uart
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

// check if there are any chars to be read
int uart_dataAvailable(void)
{
    if ( UCSR1A & ( 1 << RXC1) )
        return 1;
    
    return 0;
}

// write a string to the uart
void uart_print( char data[] )
{
    int c = 0;
    
    for ( c = 0; c < strlen(data); c++ )
        uart_transmit(data[c]);
}

void setup() {
  // put your setup code here, to run once:
   uart_init();
    
    
    
    uart_print( "\n\r Test bestanden!! \n\r" );
}

void loop() {
  // put your main code here, to run repeatedly:
       unsigned char receivedChar = '0';
        if ( uart_dataAvailable() )
        {
            // echo any received characters right back 
            receivedChar = uart_receive();
            uart_transmit(receivedChar);
        }
}


*/




