				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------                                     
                                ; CODE FOR READ UNTIL A BLANK CHARACTER IS READ. 
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "BLANK CHARACTER OR A SPACE IS READED. $"
.CODE
    MAIN PROC
        
        MOV AX , @DATA
        MOV DS , AX 
    
    input:
        MOV AH,1   ; INPUT ONE VALUE.
        INT 21H 
        
        CMP AL,20H ; ALWAYS DATA STORE IN 'AL' 
        JE END     ; 'JUMP EQUAL' OCCURED TO END FUNCTION
        
        
        JMP input  ; OTHERWISE 'input' LEBEL OCCURED.
    
    
    END:
        ; NEW Line      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
    
        ; String Print
        MOV AH , 9
        LEA DX , MSG      ; LEA - Load effective address
        INT 21H
        
        MOV AH,4CH
        INT 21H
            
        
    MAIN ENDP
    
END MAIN