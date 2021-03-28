				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; CODE FOR FIBONACCI SERIES.  

.MODEL SMALL
.STACK 100H
.DATA 
   num db 6        ; HERE N IS 6 , HIEGEST VALUE FOR ONE DIGIT FIBONACCI NUMBER.   
.CODE
    MAIN PROC
        
        ; VARIABLE ADDRESS
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AL,1   ; FIRST  VALUE
        MOV BL,1   ; SECOND VALUE
        MOV CL,1   ; THIRD  VALUE , NO NEED TO INITIAL THE VALUE IS 1. BUT IT IS GOOD PRACTISE.
                   
                   ; ANOTHER REASON IS 2 NO TERM FIND OUT. THEN CL VALUE IS 1 NEEDED. BECAUSE WE KNOW IN FIBONNACI SERIES FIRST AND SECOND VALUE IS 1 & 1 . SO NEED TO GO LOOP
                   
                   ; IF CL VALUE IS NOT DECLEARE A GARBAGGE VALUE IS STORE IN REG.  
                   
        MOV DL,3   ; THIS IS THE COUNTER.
        
        FIB_LOOP:
        
            CMP DL,num
            JG END         ; IF THE GREATER THAN OCCURE THEN THE LOOP BREAK. YOU ARE TRING TO BREAK THE LOOP FOR 6 SO WE HAVE TO GO FOR 1 TO 6 , THEN THE LOOP WILL BREAK.
            
            MOV AH,AL
            ADD AH,BL      ; AH = AL + BL
            MOV CL,AH      ; CL IS THIRD VALUE.
            
            MOV AL,BL      ; UPDATE 
            MOV BL,CL 
            
            INC DL
            JMP FIB_LOOP     
            
        END:
            
            ADD CL,30H
            
            ;PRINT VALUE 
            
            MOV AH,2
            MOV DL,CL
            INT 21H
            
            MOV AH,4CH
            INT 21H
        
    MAIN ENDP 
    
END MAIN