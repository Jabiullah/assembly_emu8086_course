				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot(Left Pyramid)
				; ---------------------------
				; PROGRAM FOR *     THIS PATTERN.
        			;             **
        			;             ***
        			;             ****
        			;             *****
.MODEL SMALL
.STACK 100H
.DATA         
.CODE
    MAIN PROC        
        MOV CH,0                    ; CH = i
        OUTER_LOOP:            
            CMP CH,5
            JE END
                   
            INC CH                  ; CH = CH + 1 IN PREVIOUS CODE IT WAS IN THE 'AFTER INNER LOOP' .
            
            MOV CL,0                ; CL = j  
            
            INNER_LOOP:
                
                CMP CL, CH          ; IN PREVIOUS CODE WE FORCELY INPUT THE VALUE HERE , BUT NOW IT IS DYNAMIC WAY FOR THE PRINT
                                    ; ACTUALLY WE ARE CONTINUING THHE INNER LOOP ACCORDING TO THE OUTER LOOP.
                JE after_inner_loop
            
                MOV AH,2
                MOV DL,"*"
                INT 21H
                
                INC CL              ; CL = Cl + 1 / j = j + 1
                
                JMP INNER_LOOP         
            after_inner_loop:       
                                           
                MOV AH,2            ; NEW LINE
                MOV DL,0DH
                INT 21H
                MOV DL,0AH
                INT 21H            
            
            JMP OUTER_LOOP          
        END:
            MOV AH,4CH
            INT 21H
    MAIN ENDP     
END MAIN