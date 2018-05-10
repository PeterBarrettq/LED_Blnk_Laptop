
_main:

;LedBlinking.c,68 :: 		void main() {
;LedBlinking.c,72 :: 		his.letter ='f';
	MOVLW       102
	MOVWF       _his+0 
;LedBlinking.c,73 :: 		his.number =123;
	MOVLW       123
	MOVWF       _his+1 
	MOVLW       0
	MOVWF       _his+2 
;LedBlinking.c,74 :: 		my.letter ='p';
	MOVLW       112
	MOVWF       _my+0 
;LedBlinking.c,75 :: 		temp.years =120;
	MOVLW       120
	MOVWF       _temp+18 
	MOVLW       0
	MOVWF       _temp+19 
;LedBlinking.c,76 :: 		time = cast [0].years;
	MOVF        _cast+18, 0 
	MOVWF       _time+0 
	MOVF        _cast+19, 0 
	MOVWF       _time+1 
;LedBlinking.c,77 :: 		strcpy (input, cast [1].role);
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _cast+56
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_cast+56)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,80 :: 		total = his.number *6;
	MOVF        _his+1, 0 
	MOVWF       R0 
	MOVF        _his+2, 0 
	MOVWF       R1 
	MOVLW       6
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       _total+0 
	MOVF        R1, 0 
	MOVWF       _total+1 
;LedBlinking.c,81 :: 		total = RNS.age;
	MOVF        _RNS+16, 0 
	MOVWF       _total+0 
	MOVF        _RNS+17, 0 
	MOVWF       _total+1 
;LedBlinking.c,82 :: 		strcpy (input,RNS.name);//cant use = sign for copying text string to another string variable eg input [10]
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,84 :: 		strcpy (input,RNS.NOR);  //this is my changed comment an next line
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+18
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+18)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,85 :: 		TRISA =1;
	MOVLW       1
	MOVWF       TRISA+0 
;LedBlinking.c,92 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;LedBlinking.c,93 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;LedBlinking.c,94 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;LedBlinking.c,95 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;LedBlinking.c,96 :: 		TRISE = 0;           // set direction to be output
	CLRF        TRISE+0 
;LedBlinking.c,98 :: 		do {
L_main0:
;LedBlinking.c,99 :: 		LATA = 0x00;       // Turn OFF LEDs on PORTA
	CLRF        LATA+0 
;LedBlinking.c,100 :: 		LATB = 0x00;       // Turn OFF LEDs on PORTB
	CLRF        LATB+0 
;LedBlinking.c,101 :: 		LATC = 0x00;       // Turn OFF LEDs on PORTC
	CLRF        LATC+0 
;LedBlinking.c,102 :: 		LATD = 0x00;       // Turn OFF LEDs on PORTD
	CLRF        LATD+0 
;LedBlinking.c,103 :: 		LATE = 0x00;       // Turn OFF LEDs on PORTE
	CLRF        LATE+0 
;LedBlinking.c,104 :: 		Delay_ms(1000);    // 1 second delay
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
;LedBlinking.c,106 :: 		LATA = 0xFF;       // Turn ON LEDs on PORTA
	MOVLW       255
	MOVWF       LATA+0 
;LedBlinking.c,107 :: 		LATB = 0xFF;       // Turn ON LEDs on PORTB
	MOVLW       255
	MOVWF       LATB+0 
;LedBlinking.c,108 :: 		LATC = 0xFF;       // Turn ON LEDs on PORTC
	MOVLW       255
	MOVWF       LATC+0 
;LedBlinking.c,109 :: 		LATD = 0xFF;       // Turn ON LEDs on PORTD
	MOVLW       255
	MOVWF       LATD+0 
;LedBlinking.c,110 :: 		LATE = 0xFF;       // Turn ON LEDs on PORTE
	MOVLW       255
	MOVWF       LATE+0 
;LedBlinking.c,111 :: 		Delay_ms(1000);    // 1 second delay
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
;LedBlinking.c,112 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;LedBlinking.c,113 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
