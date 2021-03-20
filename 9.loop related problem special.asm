				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------                                     
                                ; Print from A to Z
.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC 
    
    MOV CX,26    ; TOTAL TARGET OF PRINTING
    MOV DL,"A"   ; INPPUT THE VALUE WHICH IS 'A'
    
      
    repeat:
        
	;PRINT THE VALUE    
        MOV AH,2
        INT 21H

        INC DL           ; INCREASE THE VALUE BY 1
         
        LOOP repeat      ; LOOP
    
    
    MOV AH,4CH
    INT 21H    
        
    MAIN ENDP
    
END MAIN
