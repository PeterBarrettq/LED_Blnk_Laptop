#line 1 "C:/Users/User/Documents/Repositories/Structz/LED_Blnk_Laptop/LedBlinking.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdio.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/string.h"





void * memchr(void *p, char n, unsigned int v);
int memcmp(void *s1, void *s2, int n);
void * memcpy(void * d1, void * s1, int n);
void * memmove(void * to, void * from, int n);
void * memset(void * p1, char character, int n);
char * strcat(char * to, char * from);
char * strchr(char * ptr, char chr);
int strcmp(char * s1, char * s2);
char * strcpy(char * to, char * from);
int strlen(char * s);
char * strncat(char * to, char * from, int size);
char * strncpy(char * to, char * from, int size);
int strspn(char * str1, char * str2);
char strcspn(char * s1, char * s2);
int strncmp(char * s1, char * s2, char len);
char * strpbrk(char * s1, char * s2);
char * strrchr(char *ptr, char chr);
char * strstr(char * s1, char * s2);
char * strtok(char * s1, char * s2);
#line 31 "C:/Users/User/Documents/Repositories/Structz/LED_Blnk_Laptop/LedBlinking.c"
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
 struct patient settings ;
}my,his;

struct oz {
char actor [18];
int years;
char role [16];

} ;
#line 65 "C:/Users/User/Documents/Repositories/Structz/LED_Blnk_Laptop/LedBlinking.c"
 struct oz cast [2] = {
 "david", 23, "driver",
 "peter", 35, "doctor"
 };

 struct oz temp;
 char input [10];

int total,time;
double mins =5.5;
char txt_tmin [6];


 void vEEPROM_Store ();

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
strcpy (input,RNS.name);

strcpy (input,RNS.NOR);
 TRISA =1;
 vEEPROM_Store ();
#line 125 "C:/Users/User/Documents/Repositories/Structz/LED_Blnk_Laptop/LedBlinking.c"
 TRISA = 0;
 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;

 do {
 LATA = 0x00;
 LATB = 0x00;
 LATC = 0x00;
 LATD = 0x00;
 LATE = 0x00;
 Delay_ms(3000);

 LATA = 0xFF;
 LATB = 0xFF;
 LATC = 0xFF;
 LATD = 0xFF;
 LATE = 0xFF;
 Delay_ms(3000);
 } while(1);

}

void vEEPROM_Store () {

unsigned int tmins_i;

unsigned char low_byte;
unsigned char high_byte;
unsigned int Total_Use_min,use1_min,use2_min;



 do {
 if ( mins == 5.5){
 mins =0;
 }

 tmins_i = mins;
 use1_min = (unsigned int)EEPROM_read (0x01) <<8;
 Delay_ms (25);
 use2_min = EEPROM_read (0x00);
 Delay_ms (25);
 if (tmins_i == 0){
 tmins_i =1;
 }
 Total_Use_Min = use1_min + use2_min + tmins_i;

 Total_Use_Min = 40000;
 WordToStr (Total_Use_Min,txt_tmin);



 low_byte = (Total_Use_Min & 0x00FF);
 high_byte = (Total_Use_Min & 0xFF00) >>8;

 EEPROM_Write (0x01,(unsigned short) high_byte);
 Delay_ms (25);
 EEPROM_Write (0x00,(unsigned short) low_byte);
 Delay_ms (25);
 my.settings.age =22;
 mins =35;
 } while (mins !=6);

}
