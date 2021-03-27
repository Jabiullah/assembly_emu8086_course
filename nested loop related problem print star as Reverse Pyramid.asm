				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot(Reverse Pyramid)
				; ------------------------------
				; PROGRAM FOR *****  THIS PATTERN.
        			;             ****
        			;             ***
        			;             **
        			;             *
.MODEL SMALL
.STACK 100H
.DATA     
.CODE
    MAIN PROC
        MOV CH,5                    ; CH = i  HERE IS THE CHANGE 
        
        OUTER_LOOP:
            CMP CH,0
            
            JE END           
            MOV CL,0                ; CL = j  
            
            INNER_LOOP:
                CMP CL,CH
                JE after_inner_loop
            
                MOV AH,2
                MOV DL,"*"
                INT 21H
                
                INC CL              ; CL = Cl + 1 OR WE CAN SAY IT j = j + 1
                JMP INNER_LOOP
                
            after_inner_loop:       
                
                ;NEW LINE
                MOV AH,2
                MOV DL,0DH
                INT 21H
                MOV DL,0AH
                INT 21H 
                               
            DEC CH                  ; CH = CH - 1  OR WE CAN SAY i = i -1 
            
            JMP OUTER_LOOP            
        END:
            MOV AH,4CH
            INT 21H        
    MAIN ENDP     
END MAIN