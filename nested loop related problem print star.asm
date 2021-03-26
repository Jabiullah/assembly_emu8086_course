				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; PRINT 5 ROW AND 3 COL * PRINT.   
.MODEL SMALL
.STACK 100H
.DATA 

.CODE
    MAIN PROC
        MOV CH,0            		; CH = i
        OUTER_LOOP:
            CMP CH,5        		; OUTER LOOP WILL GO FOR 5 LINE.
            JE END
            MOV CL,0        		; CL = j              
            INNER_LOOP:
                CMP CL,3
                
                JE after_inner_loop
            
                MOV AH,2
                MOV DL,"*"     		; DIRECT CHARACTER PRINT.
                INT 21H
                
                INC CL         		; CL = Cl + 1 / j = j + 1
                JMP INNER_LOOP
            
                after_inner_loop:       
                
                    ;NEW LINE
                    MOV AH,2
                    MOV DL,0DH
                    INT 21H
                    MOV DL,0AH
                    INT 21H               
                
                    INC CH         	;CH = CH + 1
            
            JMP OUTER_LOOP
            
        END:
            MOV AH,4CH
            INT 21H        
    MAIN ENDP     
END MAIN