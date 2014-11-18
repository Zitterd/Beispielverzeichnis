/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 

#include <stdio.h>
#include  "Arduino.h"


void setup() {
  // put your setup code here, to run once:
  pinMode(13, OUTPUT);
  printf("Test erfolgreich bestanden! =)");
}

void loop() {
  // put your main code here, to run repeatedly:
   printf("Test erfolgreich bestanden!2 =)");
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