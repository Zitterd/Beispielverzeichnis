/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 

#include <stdio.h>
#include "Arduino.h"


void setup() {
  // put your setup code here, to run once:
  printf("Test erfolgreich bestanden! =)");
}

void loop() {
  // put your main code here, to run repeatedly:
   printf("Test erfolgreich bestanden!2 =)");
}

int main(void)
{
	init();  //welche?
	setup();
	int i=0;
	for(i=0;i<10;i++)
	{
		loop();
	}
	return 0;
}