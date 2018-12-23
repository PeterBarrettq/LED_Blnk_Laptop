
_main:

;LedBlinking.c,80 :: 		void main() {
;LedBlinking.c,83 :: 		my.settings.age =21;
	MOVLW       21
	MOVWF       _my+19 
	MOVLW       0
	MOVWF       _my+20 
;LedBlinking.c,85 :: 		strcpy (my.settings.NOR,"NOR");
	MOVLW       _my+21
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_my+21)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       ?lstr1_LedBlinking+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(?lstr1_LedBlinking+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,86 :: 		his.letter ='f';
	MOVLW       102
	MOVWF       _his+0 
;LedBlinking.c,87 :: 		his.number =123;
	MOVLW       123
	MOVWF       _his+1 
	MOVLW       0
	MOVWF       _his+2 
;LedBlinking.c,88 :: 		my.letter ='p';
	MOVLW       112
	MOVWF       _my+0 
;LedBlinking.c,89 :: 		temp.years =120;
	MOVLW       120
	MOVWF       _temp+18 
	MOVLW       0
	MOVWF       _temp+19 
;LedBlinking.c,90 :: 		time = cast [0].years;
	MOVF        _cast+18, 0 
	MOVWF       _time+0 
	MOVF        _cast+19, 0 
	MOVWF       _time+1 
;LedBlinking.c,91 :: 		strcpy (input, cast [1].role);
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _cast+56
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_cast+56)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,94 :: 		total = his.number *6;
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
;LedBlinking.c,95 :: 		total = total +1;
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       _total+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       _total+1 
;LedBlinking.c,96 :: 		total = RNS.age;
	MOVF        _RNS+16, 0 
	MOVWF       _total+0 
	MOVF        _RNS+17, 0 
	MOVWF       _total+1 
;LedBlinking.c,97 :: 		strcpy (input,RNS.name);//cant use = sign for copying text string to another string variable eg input [10]
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+0
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+0)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,99 :: 		strcpy (input,RNS.NOR);  //this is my changed comment an next line
	MOVLW       _input+0
	MOVWF       FARG_strcpy_to+0 
	MOVLW       hi_addr(_input+0)
	MOVWF       FARG_strcpy_to+1 
	MOVLW       _RNS+18
	MOVWF       FARG_strcpy_from+0 
	MOVLW       hi_addr(_RNS+18)
	MOVWF       FARG_strcpy_from+1 
	CALL        _strcpy+0, 0
;LedBlinking.c,100 :: 		TRISA =1;
	MOVLW       1
	MOVWF       TRISA+0 
;LedBlinking.c,101 :: 		vEEPROM_Store ();
	CALL        _vEEPROM_Store+0, 0
;LedBlinking.c,125 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;LedBlinking.c,126 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;LedBlinking.c,127 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;LedBlinking.c,128 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;LedBlinking.c,129 :: 		TRISE = 0;           // set direction to be output
	CLRF        TRISE+0 
;LedBlinking.c,131 :: 		do {
L_main0:
;LedBlinking.c,132 :: 		LATA = 0x00;       // Turn OFF LEDs on PORTA
	CLRF        LATA+0 
;LedBlinking.c,133 :: 		LATB = 0x00;       // Turn OFF LEDs on PORTB
	CLRF        LATB+0 
;LedBlinking.c,134 :: 		LATC = 0x00;       // Turn OFF LEDs on PORTC
	CLRF        LATC+0 
;LedBlinking.c,135 :: 		LATD = 0x00;       // Turn OFF LEDs on PORTD
	CLRF        LATD+0 
;LedBlinking.c,136 :: 		LATE = 0x00;       // Turn OFF LEDs on PORTE
	CLRF        LATE+0 
;LedBlinking.c,137 :: 		Delay_ms(3000);    // 1 second delay
	MOVLW       61
	MOVWF       R11, 0
	MOVLW       225
	MOVWF       R12, 0
	MOVLW       63
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;LedBlinking.c,139 :: 		LATA = 0xFF;       // Turn ON LEDs on PORTA
	MOVLW       255
	MOVWF       LATA+0 
;LedBlinking.c,140 :: 		LATB = 0xFF;       // Turn ON LEDs on PORTB
	MOVLW       255
	MOVWF       LATB+0 
;LedBlinking.c,141 :: 		LATC = 0xFF;       // Turn ON LEDs on PORTC
	MOVLW       255
	MOVWF       LATC+0 
;LedBlinking.c,142 :: 		LATD = 0xFF;       // Turn ON LEDs on PORTD
	MOVLW       255
	MOVWF       LATD+0 
;LedBlinking.c,143 :: 		LATE = 0xFF;       // Turn ON LEDs on PORTE
	MOVLW       255
	MOVWF       LATE+0 
;LedBlinking.c,144 :: 		Delay_ms(3000);    // 1 second delay
	MOVLW       61
	MOVWF       R11, 0
	MOVLW       225
	MOVWF       R12, 0
	MOVLW       63
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;LedBlinking.c,145 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;LedBlinking.c,147 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_vEEPROM_Store:

;LedBlinking.c,149 :: 		void vEEPROM_Store () {
;LedBlinking.c,159 :: 		do {
L_vEEPROM_Store5:
;LedBlinking.c,160 :: 		if ( mins == 5.5){
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       48
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	MOVF        _mins+0, 0 
	MOVWF       R0 
	MOVF        _mins+1, 0 
	MOVWF       R1 
	MOVF        _mins+2, 0 
	MOVWF       R2 
	MOVF        _mins+3, 0 
	MOVWF       R3 
	CALL        _Equals_Double+0, 0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_vEEPROM_Store8
;LedBlinking.c,161 :: 		mins =0;
	CLRF        _mins+0 
	CLRF        _mins+1 
	CLRF        _mins+2 
	CLRF        _mins+3 
;LedBlinking.c,162 :: 		}
L_vEEPROM_Store8:
;LedBlinking.c,164 :: 		tmins_i = mins;
	MOVF        _mins+0, 0 
	MOVWF       R0 
	MOVF        _mins+1, 0 
	MOVWF       R1 
	MOVF        _mins+2, 0 
	MOVWF       R2 
	MOVF        _mins+3, 0 
	MOVWF       R3 
	CALL        _double2word+0, 0
	MOVF        R0, 0 
	MOVWF       vEEPROM_Store_tmins_i_L0+0 
	MOVF        R1, 0 
	MOVWF       vEEPROM_Store_tmins_i_L0+1 
;LedBlinking.c,165 :: 		use1_min =  (unsigned int)EEPROM_read (0x01) <<8;
	MOVLW       1
	MOVWF       FARG_Eeprom_Read_address+0 
	MOVLW       0
	MOVWF       FARG_Eeprom_Read_address+1 
	CALL        _Eeprom_Read+0, 0
	MOVF        R0, 0 
	MOVWF       vEEPROM_Store_use1_min_L0+0 
	MOVLW       0
	MOVWF       vEEPROM_Store_use1_min_L0+1 
	MOVF        vEEPROM_Store_use1_min_L0+0, 0 
	MOVWF       vEEPROM_Store_use1_min_L0+1 
	CLRF        vEEPROM_Store_use1_min_L0+0 
;LedBlinking.c,166 :: 		Delay_ms (25);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_vEEPROM_Store9:
	DECFSZ      R13, 1, 1
	BRA         L_vEEPROM_Store9
	DECFSZ      R12, 1, 1
	BRA         L_vEEPROM_Store9
	NOP
	NOP
;LedBlinking.c,167 :: 		use2_min =   EEPROM_read (0x00);
	CLRF        FARG_Eeprom_Read_address+0 
	CLRF        FARG_Eeprom_Read_address+1 
	CALL        _Eeprom_Read+0, 0
	MOVF        R0, 0 
	MOVWF       vEEPROM_Store_use2_min_L0+0 
	MOVLW       0
	MOVWF       vEEPROM_Store_use2_min_L0+1 
;LedBlinking.c,168 :: 		Delay_ms (25);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_vEEPROM_Store10:
	DECFSZ      R13, 1, 1
	BRA         L_vEEPROM_Store10
	DECFSZ      R12, 1, 1
	BRA         L_vEEPROM_Store10
	NOP
	NOP
;LedBlinking.c,169 :: 		if (tmins_i == 0){                                   // so at start as EEPROM value at ea address is FF.
	MOVLW       0
	XORWF       vEEPROM_Store_tmins_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__vEEPROM_Store16
	MOVLW       0
	XORWF       vEEPROM_Store_tmins_i_L0+0, 0 
L__vEEPROM_Store16:
	BTFSS       STATUS+0, 2 
	GOTO        L_vEEPROM_Store11
;LedBlinking.c,170 :: 		tmins_i =1;
	MOVLW       1
	MOVWF       vEEPROM_Store_tmins_i_L0+0 
	MOVLW       0
	MOVWF       vEEPROM_Store_tmins_i_L0+1 
;LedBlinking.c,171 :: 		}
L_vEEPROM_Store11:
;LedBlinking.c,172 :: 		Total_Use_Min =   use1_min + use2_min + tmins_i;
	MOVF        vEEPROM_Store_use2_min_L0+0, 0 
	ADDWF       vEEPROM_Store_use1_min_L0+0, 0 
	MOVWF       vEEPROM_Store_Total_Use_min_L0+0 
	MOVF        vEEPROM_Store_use2_min_L0+1, 0 
	ADDWFC      vEEPROM_Store_use1_min_L0+1, 0 
	MOVWF       vEEPROM_Store_Total_Use_min_L0+1 
	MOVF        vEEPROM_Store_tmins_i_L0+0, 0 
	ADDWF       vEEPROM_Store_Total_Use_min_L0+0, 1 
	MOVF        vEEPROM_Store_tmins_i_L0+1, 0 
	ADDWFC      vEEPROM_Store_Total_Use_min_L0+1, 1 
;LedBlinking.c,174 :: 		Total_Use_Min = 40000;                                 //test word to str
	MOVLW       64
	MOVWF       vEEPROM_Store_Total_Use_min_L0+0 
	MOVLW       156
	MOVWF       vEEPROM_Store_Total_Use_min_L0+1 
;LedBlinking.c,175 :: 		WordToStr (Total_Use_Min,txt_tmin);                   //level_r = reading of level.
	MOVLW       64
	MOVWF       FARG_WordToStr_input+0 
	MOVLW       156
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _txt_tmin+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_txt_tmin+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;LedBlinking.c,179 :: 		low_byte = (Total_Use_Min & 0x00FF);
	MOVLW       255
	ANDWF       vEEPROM_Store_Total_Use_min_L0+0, 0 
	MOVWF       vEEPROM_Store_low_byte_L0+0 
;LedBlinking.c,180 :: 		high_byte = (Total_Use_Min & 0xFF00) >>8;
	MOVLW       0
	ANDWF       vEEPROM_Store_Total_Use_min_L0+0, 0 
	MOVWF       R3 
	MOVF        vEEPROM_Store_Total_Use_min_L0+1, 0 
	ANDLW       255
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       R0 
	CLRF        R1 
;LedBlinking.c,182 :: 		EEPROM_Write (0x01,(unsigned short) high_byte);
	MOVLW       1
	MOVWF       FARG_Eeprom_Write_address+0 
	MOVLW       0
	MOVWF       FARG_Eeprom_Write_address+1 
	MOVF        R0, 0 
	MOVWF       FARG_Eeprom_Write_data_+0 
	CALL        _Eeprom_Write+0, 0
;LedBlinking.c,183 :: 		Delay_ms (25);                         //need this delay between read and write
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_vEEPROM_Store12:
	DECFSZ      R13, 1, 1
	BRA         L_vEEPROM_Store12
	DECFSZ      R12, 1, 1
	BRA         L_vEEPROM_Store12
	NOP
	NOP
;LedBlinking.c,184 :: 		EEPROM_Write (0x00,(unsigned short) low_byte);
	CLRF        FARG_Eeprom_Write_address+0 
	CLRF        FARG_Eeprom_Write_address+1 
	MOVF        vEEPROM_Store_low_byte_L0+0, 0 
	MOVWF       FARG_Eeprom_Write_data_+0 
	CALL        _Eeprom_Write+0, 0
;LedBlinking.c,185 :: 		Delay_ms (25);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_vEEPROM_Store13:
	DECFSZ      R13, 1, 1
	BRA         L_vEEPROM_Store13
	DECFSZ      R12, 1, 1
	BRA         L_vEEPROM_Store13
	NOP
	NOP
;LedBlinking.c,186 :: 		my.settings.age =22;
	MOVLW       22
	MOVWF       _my+19 
	MOVLW       0
	MOVWF       _my+20 
;LedBlinking.c,187 :: 		mins =35;
	MOVLW       0
	MOVWF       _mins+0 
	MOVLW       0
	MOVWF       _mins+1 
	MOVLW       12
	MOVWF       _mins+2 
	MOVLW       132
	MOVWF       _mins+3 
;LedBlinking.c,188 :: 		} while (mins !=6);
	GOTO        L_vEEPROM_Store5
;LedBlinking.c,190 :: 		}
L_end_vEEPROM_Store:
	RETURN      0
; end of _vEEPROM_Store
