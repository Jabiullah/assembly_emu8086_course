				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; PROGRAM FOR 1    THIS PATTERN
				;             12
				;             123
				;             1234
				;             12345  
.MODEL SMALL
.STACK 100H
.DATA 
.CODE
    MAIN PROC
        MOV CH,0                ; CH = i
        OUTER_LOOP:
            CMP CH,5
            JE END
            
            INC CH              ; CH = CH + 1
            
            MOV CL,0            ; CL = j  
            
            INNER_LOOP:
                CMP CL, CH
                JE after_inner_loop
                
                INC CL          ; CL = Cl + 1 / j = j + 1
                MOV AH,2
                MOV DL,CL 
                ADD DL,30H
                INT 21H
           JMP INNER_LOOP
            
            
          after_inner_loop:       
                
                
                MOV AH,2        ; NEW LINE
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