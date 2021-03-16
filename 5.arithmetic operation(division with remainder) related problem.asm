.MODEL SMALL
.STACK 100H
.DATA   
.CODE
    MAIN PROC
                
    	; Rabius Sani Jabiullah
    	; United International University
    	; -----------------------------------------------------------------------------------------------------------------------------
	
    	; assembly_emu8086_arithmetic_(operation)_Division_with_REMAINDER
    	; ---------------------------------------------------------------------------      


        
    	;DIVITION CODE WITH REMAINDER 
          
        MOV AL,9
        MOV BL,2
        DIV BL     ; AL = AL / BL , Result in AL , REMAINDER IN AH
    
        MOV CH,AH  ; REMAINDER STORE HERE.
        
    
        ;Print RESULT
        
        MOV AH,2
        MOV DL,AL      ;DL = 4 
        ;ADD DL,30H    ;FOR HEXA VALUE
        ADD DL,48      ;FOR ASCII VALUE         
        INT 21H   
        
        ; NEW Line      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        
        ;Print REMAINDER
        
        MOV AH,2
        MOV DL,CH       ;DL = 1 
        ;ADD DL,30H     ;FOR HEXA VALUE
        ADD DL,48       ;FOR ASCII VALUE         
        INT 21H
    
       
        ;Return 0
        
        MOV AH,4CH
        INT 21H
    
    MAIN ENDP
    
    
END MAIN
