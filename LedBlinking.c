/*
 * Project name:
     LED_Blinking (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2011.
 * Revision History:
     20110929:
       - initial release (FJ);
 * Description:
     This is a simple 'Hello World' project. It turns on/off LEDs connected to
     PORTA, PORTB, PORTC, PORTD and PORTE. 
 * Test configuration:
     MCU:             PIC18F45K22
                      http://ww1.microchip.com/downloads/en/DeviceDoc/40001412G.pdf
     Dev.Board:       EasyPIC7 - ac:LEDs
                      http://www.mikroe.com/easypic/
     Oscillator:      HS-PLL 32.0000 MHz, 8.0000 MHz Crystal
     Ext. Modules:    None.
     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/mikroc/pic/
 * NOTES:
    
     - Turn ON the PORT LEDs at SW3.
 */
 
 #include <stdio.h>
 #include <string.h>        //must tick c string in library manager
 
 struct patient {
  char name [16];
  int age;
  char NOR [4];
  float Vtb;
 
 } RNS = {
          "kelly",
          23,
          "INV",
          20.2,
          };
 

 struct stuff{

 char letter;
 int number;

}my,his;

 char input [10];

int total;

void main() {



his.letter ='f';
his.number =123;
my.letter ='p';

total = his.number *6;
total = RNS.age;
strcpy (input,RNS.name);//cant use = sign for copying text string to another string variable eg input [10]
   //must use strcpy
strcpy (input,RNS.NOR);  //this is my changed comment an next line
     TRISA =1;

  TRISA = 0;           // set direction to be output
  TRISB = 0;           // set direction to be output
  TRISC = 0;           // set direction to be output
  TRISD = 0;           // set direction to be output
  TRISE = 0;           // set direction to be output

  do {
    LATA = 0x00;       // Turn OFF LEDs on PORTA
    LATB = 0x00;       // Turn OFF LEDs on PORTB
    LATC = 0x00;       // Turn OFF LEDs on PORTC
    LATD = 0x00;       // Turn OFF LEDs on PORTD
    LATE = 0x00;       // Turn OFF LEDs on PORTE
    Delay_ms(1000);    // 1 second delay

    LATA = 0xFF;       // Turn ON LEDs on PORTA
    LATB = 0xFF;       // Turn ON LEDs on PORTB
    LATC = 0xFF;       // Turn ON LEDs on PORTC
    LATD = 0xFF;       // Turn ON LEDs on PORTD
    LATE = 0xFF;       // Turn ON LEDs on PORTE
    Delay_ms(1000);    // 1 second delay
  } while(1);          // Endless loop
}
