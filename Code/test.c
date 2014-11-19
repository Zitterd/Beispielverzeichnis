/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 

#include <stdio.h>
#include  "Arduino.h"


void setup() {

  printf("Test");
}

void loop() {
 
}

int main(void)
{
	init();  //reference undefined?!?
	setup();
	for(;;)
	{
		loop();
	}
	return 0;
}