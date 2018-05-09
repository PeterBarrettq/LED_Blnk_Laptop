
_main:

;LedBlinking.c,54 :: 		void main() {
;LedBlinking.c,58 :: 		his.letter ='f';
	MOVLW       102
	MOVWF       _his+0 
;LedBlinking.c,59 :: 		his.number =123;
	MOVLW       123
	MOVWF       _his+1 
	MOVLW       0
	MOVWF       _his+2 
;LedBlinking.c,60 :: 		my.letter ='p';
	MOVLW       112
	MOVWF       _my+0 
;LedBlinking.c,62 :: 		total = his.number *6;
	MOVLW       226
	MOVWF       _total+0 
	MOVLW       2
	MOVWF       _total+1 
;LedBlinking.c,63 :: 		total = RNS.age;
	MOVF        _RNS+16, 0 
	MOVWF       _total+0 
	MOVF        _RNS+17, 0 
	MOVWF       _total+1 
;LedBlinking.c,64 :: 		strcpy (input,RNS.name);//cant use = sign for copying text string to another string variable eg input [10]
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,66 :: 		strcpy (input,RNS.NOR);
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+18
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+18)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,68 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;LedBlinking.c,69 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;LedBlinking.c,70 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;LedBlinking.c,71 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;LedBlinking.c,72 :: 		TRISE = 0;           // set direction to be output
	CLRF        TRISE+0 
;LedBlinking.c,74 :: 		do {
L_main0:
;LedBlinking.c,75 :: 		LATA = 0x00;       // Turn OFF LEDs on PORTA
	CLRF        LATA+0 
;LedBlinking.c,76 :: 		LATB = 0x00;       // Turn OFF LEDs on PORTB
	CLRF        LATB+0 
;LedBlinking.c,77 :: 		LATC = 0x00;       // Turn OFF LEDs on PORTC
	CLRF        LATC+0 
;LedBlinking.c,78 :: 		LATD = 0x00;       // Turn OFF LEDs on PORTD
	CLRF        LATD+0 
;LedBlinking.c,79 :: 		LATE = 0x00;       // Turn OFF LEDs on PORTE
	CLRF        LATE+0 
;LedBlinking.c,80 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       41
	MOVWF       R11, 0
	MOVLW       150
	MOVWF       R12, 0
	MOVLW       127
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
;LedBlinking.c,82 :: 		LATA = 0xFF;       // Turn ON LEDs on PORTA
	MOVLW       255
	MOVWF       LATA+0 
;LedBlinking.c,83 :: 		LATB = 0xFF;       // Turn ON LEDs on PORTB
	MOVLW       255
	MOVWF       LATB+0 
;LedBlinking.c,84 :: 		LATC = 0xFF;       // Turn ON LEDs on PORTC
	MOVLW       255
	MOVWF       LATC+0 
;LedBlinking.c,85 :: 		LATD = 0xFF;       // Turn ON LEDs on PORTD
	MOVLW       255
	MOVWF       LATD+0 
;LedBlinking.c,86 :: 		LATE = 0xFF;       // Turn ON LEDs on PORTE
	MOVLW       255
	MOVWF       LATE+0 
;LedBlinking.c,87 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       41
	MOVWF       R11, 0
	MOVLW       150
	MOVWF       R12, 0
	MOVLW       127
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
;LedBlinking.c,88 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;LedBlinking.c,89 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
