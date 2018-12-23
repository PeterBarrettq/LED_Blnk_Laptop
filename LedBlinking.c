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
     MCU:             PIC18F87K22
                      http://ww1.microchip.com/downloads/en/DeviceDoc/40001412G.pdf
     dev.board:       easypicpro7 -
                      http://www.mikroe.com/easypic/
     Oscillator:      16.0000 MHz Crystal
     Ext. Modules:    None.
     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/mikroc/pic/
 * NOTES:
    
     - Turn ON the PORT LEDs at SW3.
     
     my notes - shows structures....Shows use of EEPROM
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

 int number;                       //
 struct patient settings ;
}my,his;

struct oz {
char actor [18];
int years;
char role [16];

} ;
/*
cast as record

*/


              struct oz cast [2] = {      //showng using cast create here records of struct oz.
               "david", 23, "driver",     // see pages 286  287 "C all in one desk ref"
               "peter", 35, "doctor"
              };

 struct oz temp;  //another way of doing struct variable - "temp".
 char input [10];

int total,time;
double mins =5.5;
char txt_tmin [6];


 void    vEEPROM_Store ();

void main() {


my.settings.age =21;

strcpy (my.settings.NOR,"NOR");
his.letter ='f';
his.number =123;
my.letter ='p';
temp.years =120;
time = cast [0].years;
strcpy (input, cast [1].role);


total = his.number *6;
total = total +1;
total = RNS.age;
strcpy (input,RNS.name);//cant use = sign for copying text string to another string variable eg input [10]
   //must use strcpy
strcpy (input,RNS.NOR);  //this is my changed comment an next line
     TRISA =1;
 vEEPROM_Store ();

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
    Delay_ms(3000);    // 1 second delay

    LATA = 0xFF;       // Turn ON LEDs on PORTA
    LATB = 0xFF;       // Turn ON LEDs on PORTB
    LATC = 0xFF;       // Turn ON LEDs on PORTC
    LATD = 0xFF;       // Turn ON LEDs on PORTD
    LATE = 0xFF;       // Turn ON LEDs on PORTE
    Delay_ms(3000);    // 1 second delay
  } while(1);          // Endless loop

}

void vEEPROM_Store () {

unsigned int tmins_i;
unsigned char low_byte;
unsigned char high_byte;
unsigned int Total_Use_min,use1_min,use2_min;
//high byte addr 0x01 low byte addr 0x00.
//txt_min is global.


  do {
    if ( mins == 5.5){
    mins =0;
    }
    //mins =35;
    tmins_i = mins;
    use1_min =  (unsigned int)EEPROM_read (0x01) <<8;
    Delay_ms (25);
    use2_min =   EEPROM_read (0x00);
    Delay_ms (25);
    if (tmins_i == 0){                                   // so at start as EEPROM value at ea address is FF.
     tmins_i =1;
    }
    Total_Use_Min =   use1_min + use2_min + tmins_i;
    //display on screen
                                  //test word to str
     WordToStr (Total_Use_Min,txt_tmin);                   //level_r = reading of level.
                Glcd_Set_Font(font 3x5, 5, 7, 32);           //change font
                Glcd_Write_Text ( "TOTAL USE MINS",5,3,1);
                Glcd_Write_Text(txt_tmin, 40, 3, 1);
                
     if (Total_Use_Min >= 3000) {
      Glcd_Set_Font(font 3x5, 5, 7, 32);           //change font
      Glcd_Write_Text ( "CALIBRATION REQUIRED",30,4,1);
     
     }
    low_byte = (Total_Use_Min & 0x00FF);
    high_byte = (Total_Use_Min & 0xFF00) >>8;
     //now write new total  to eeprom
    EEPROM_Write (0x01,(unsigned short) high_byte);
    Delay_ms (25);                         //need this delay between read and write
    EEPROM_Write (0x00,(unsigned short) low_byte);
    Delay_ms (25);


     } while (mins !=6);

}