/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 

#include <stdio.h>
//#include  "Arduino.h"


void setup() {
		  // initialize serial communication at 9600 bits per second:
		//Serial.begin(9600);
}

void loop() {

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