				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; PRINTNG 5 ROW * AND 1 COLUMN.    
.MODEL SMALL
.STACK 100H
.DATA 
.CODE     
    MAIN PROC        
        MOV CH,0        ; CH = i          
        F_LOOP:        
            CMP CH,5    ; COMPARE VALUE CH WITH 5.
            JE END      ; JUMP IF EQUAL TO END.
            
            MOV AH,2    ; PRINT THE STAR VALUE.
            MOV DL,"*"
            INT 21H
                                ; NEW LINE
            MOV AH,2
            MOV DL,0DH
            INT 21H
            MOV DL,0AH
            INT 21H 
        
            INC CH      ; INCREASINT THE VALUE. 
            
            JMP F_LOOP

        END:
            MOV AH,4CH
            INT 21H        
    MAIN ENDP     
END MAIN        