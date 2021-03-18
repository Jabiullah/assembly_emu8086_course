				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------                                     
                                ; Print 0 TO 9 VALUE 

.MODEL SMALL
.STACK 100H
.DATA
     MSG DB " 0 TO 9 VALUE IS PRINTED SUCCESSFULLY USING LOOP $"
.CODE 

    MAIN PROC
         
    ; PRINTING 0 - 9 VALUE USING LOOP  
    
    ;DATA ADDRESS ADDED.
    MOV AX , @DATA
    MOV DS , AX 
    
    
    MOV CL,0        ; 'CL' INTIALIZATION 
    
    repeat:
        MOV AH,2
        MOV DL,CL   ; PRINT VALUE STORE IN 'DL'.
        ADD DL,30H  ; ADD FOR VALUE SHOW IN DECIMAL
        INT 21H 
        INC CL      ; INCREMENT CL VALUE
        
        
        CMP CL, 11  ; COMPARE WITH 11 

        JE END      ; 'JUMP EQUAL' END.
        
        ;NEW LINE 
        MOV AH,2
        MOV DL, 0DH
        INT 21H
        MOV DL,0AH
        INT 21H    
        
        JMP repeat   ; OTHERWISE 'REPEAT' FUNCTION JUMP.
    
    
    
    END:
        ;NEW LINE 
        
	MOV AH,2
        MOV DL, 0DH
        INT 21H
        ;MOV DL,0AH
        ;INT 21H
    
        ; String Print
        
        MOV AH , 9
        LEA DX , MSG      ; LEA - Load effective address
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
        
    MAIN ENDP
    
END MAIN