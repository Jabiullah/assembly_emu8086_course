				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem(power_function)
				; -----------------------------------------------------
				; Question Plot
				; -------------
				; X^Y VALUE PRINT.                                     

.MODEL SMALL
.STACK 100H
.DATA    
.CODE    

    MAIN PROC
        
        ;INPUT X VALUE
        
        MOV AH , 1
        INT 21H       ; AL VALUE IN X
        
        
        MOV AH, 0     ; CONCEPT OF 8 BIT TO 16 BIT REG VALUE
        
        MOV BX, AX    ; BECAUSE AFTER SOMETIME WE WILL INPUT Y VALUE , THEN PROBLEM OCCURED. BECUASE ANY INPUT WILL STORE IN 'AL'. SO ITS IMPORTANT TO STORE TOTAL 'AX' IN 'BX' REG. 
        
        
        
        MOV AH,1      ; NOW INPUT Y VALUE AND STORE IN 'AL'.
        INT 21H 
        
        MOV CL,AL     ; Y VALUE IN 'CL' REG.
        
         
        ; HERE IS IMPOORTANT THING, I AM INPUTING THE VALUE 
        ; IN ASCII FORMAT. SO IF I MULTIPLY OR ADD THE VALUE 
        ; ACTUALLY THE ASCII VALUE IS CONVERTING. 
        
        ; BUT
        ; WE NEED THE VALUE OF NUMBER FORMAT.
        
        ; THATS WHY WE NEED TO 'SUB' FUNCTION FROM 'BX' AND 'CL'
        ; 30H.  
        
        ; INPUT VALUE IS CONVERT IN NUMERIC VALUE.
        
             
   
        
        SUB BX, 30H
        SUB CL, 30H
        MOV AX,1      ; INITAIALLY PRODUCT IS 1.
        
        LOOP_POWER:
            CMP CL,1
            JL END
        
          
            MUL BX     ; AX = AX * BX   INITIALLY AX = 1 
            DEC CL     ; DECREASE Y VALUE
            
            JMP LOOP_POWER
        
        
        
        
        
        
        
        
        ;RETURN 0 CODE HERE
        END:
        
        ;RESULT MOVEMENT IS IMPORTANT BECAUSE END IS HAPPENING IN  "AH , 4CH"
        MOV CX,AX
        
        
        MOV AH, 4CH
        INT 21H
        
        
    MAIN ENDP
    
END MAIN    