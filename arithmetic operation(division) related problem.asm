        
    ; Rabius Sani Jabiullah
    ; United International University
    ; -----------------------------------------------------------------------------------------------------------------------------
	
    ; assembly_emu8086_arithmetic_(operation)_Division
    ; ---------------------------------------------------------------------------      


.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC
          
        MOV AL,6
        MOV BL,3
        DIV BL   ; AL = AL / BL , Result in AL ,
    
    
        ;Print
        
        MOV AH,2
        MOV DL,AL   ;DL = 2 
        ;ADD DL,30H ;FOR HEXA VALUE
        ADD DL,48   ;FOR ASCII VALUE         
        INT 21H
    
    
    
        ;Return
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    
    
END MAIN
