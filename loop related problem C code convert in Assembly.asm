				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------          
				; int start = 1 ;
				; int end = 10 ;
				; int sum = 0 ;
				; int i = start ;
				; while ( i <= end ){
				; sum += i ;
				; i++;
				; }
				; convert in Assembly
.MODEL SMALL
.STACK 100H
.DATA 
.CODE
    MAIN PROC     
    
    MOV AH,1        ; START
    MOV AL,10       ; END
    
    MOV BH,0        ; SUM
    MOV BL,0        ; INT I
    MOV BL,BH       ; I = START
    MOV CL,1
    
    ADD AL,CL       ; AL INCREASE TO 10 TO 11.
    
    LOOP:
    CMP BL,AL       ; I<=END
    JE EXIT
    
    ADD BH,BL       ; SUM = SUM+I
    ADD BL,CL       ; I++
    
    JMP LOOP
    
        
    
    EXIT:           ; 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 +10 = 55
    
                    ; END OF THE CODE BH WILL STORE "37" OR 55
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
        
END MAIN