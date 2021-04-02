				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_procedure_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
                                ; PROCEDURE CODE 
.MODEL SMALL
.STACK 100H
.DATA
.CODE

    MAIN PROC
        
        
        MOV AX,2
        MOV BX,3
        
        CALL M1 
        
        MOV DX , AX
        ADD DX , 30H  ; HEXA VALUE ADD
        
        ;PRINT VALUE
        MOV AH , 2
        INT 21H
             
        
    ; RETURN 0
        
    MOV AH,4CH
    INT 21H    
                                        
    MAIN ENDP  
     
    M1  PROC
        
        MUL BX           ; AX = AX * BX
        
        RET
    
    M1 ENDP    
        
    

END MAIN    