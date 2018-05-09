#line 1 "C:/Users/peters thinkpad/Documents/GitHub/LED_Blnk_Laptop/LedBlinking.c"
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
#line 29 "C:/Users/peters thinkpad/Documents/GitHub/LED_Blnk_Laptop/LedBlinking.c"
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
strcpy (input,RNS.name);

strcpy (input,RNS.NOR);

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
 Delay_ms(1000);

 LATA = 0xFF;
 LATB = 0xFF;
 LATC = 0xFF;
 LATD = 0xFF;
 LATE = 0xFF;
 Delay_ms(1000);
 } while(1);
}
