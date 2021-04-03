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
        
        MOV CX, 3
        
        CALL FACTORIAL   
   
        MOV DX, AX
        
        ADD DX , 30H
        
        ; PRINT VALUE
        
        MOV AH , 2                              
        INT 21H
        
    ; RETURN 0
        
    MOV AH,4CH
    INT 21H    
                                        
    MAIN ENDP  
       
    ; INPUT IS IN 'N' = CX AS WELL AS DX.
    ; OUTPUT = AX (EASY)  ACTUALLY IT IS RESULT. 
    ; WHAT IS HAPPENING HERE ?
    ; LOOP MULTIPLICATION MEANS CX'S VALUE TIMES THE MULTIPLICATIONS WILL 
    ; BE HAPPENED. BECAUSE CX IS COUNT REGISTER.
    ; IF WE DECLEARE 'CX' VALUE IS 5, SO AFTER EVERY LOOP 1 DECREASE.                             
    
    FACTORIAL PROC
        
        MOV AX,1
         
         MULTIPLICATION:
             MUL CX               ; AX = CX * AX
             
             LOOP MULTIPLICATION  
             
             RET     
    FACTORIAL ENDP     
    

END MAIN    