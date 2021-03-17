				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------                                     
                                ; Print 10 start 	


.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC 
    
    ;PRINT 10 STAR
    
    MOV CX,10  			;CX store the total number of printing star
     
      
    repeat:    
        MOV AH,2
        MOV DL,"*"
        INT 21H  
        LOOP repeat
    
    
    MOV AH,4CH
    INT 21H
        
        
    MAIN ENDP
    
END MAIN