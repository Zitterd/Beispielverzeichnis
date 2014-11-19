/*
 * test.c
 *
 * Created: 08.10.2014 09:53:26
 *  Author: Jonas Hamers
 */ 

#include <stdio.h>
#include  "Arduino.h"

//#include "rxtxSerial.dll"

void setup() {
  // put your setup code here, to run once: 
  //Serial.begin(9600);
  //pinMode(13, OUTPUT);
  printf("Test erfolgreich bestanden! =)");
}

void loop() {
  // put your main code here, to run repeatedly:
  // printf("Test erfolgreich bestanden!");
   //digitalWrite(13, HIGH);   // set the LED on
   //delay(1000);              // wait for a second
   //digitalWrite(13, LOW);    // set the LED off
   //delay(1000);              // wait for a second
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