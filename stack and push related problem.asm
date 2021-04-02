				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_stack_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
                        	; USER INPUT STORE IN STACK PUSH AND POP SHOW IN SCREEN.   
.MODEL SMALL
.STACK 100H
.DATA
.CODE  
    MAIN PROC 
        MOV AH,1    ; FIRST TIME PUSH
        INT 21H     ; INPUT IN AL
        MOV AH,0    ; LOWER PART IN USER INPUT AND HIGHER PART FORSED 0
        PUSH AX
        
        MOV AH,1    ; SECOND TIME PUSH
        INT 21H      ; INPUT IN AL
        MOV AH,0    ; LOWER PART IN USER INPUT AND HIGHER PART FORSED 0
        PUSH AX
        
        MOV AH,1    ; THIRD TIME PUSH
        INT 21H      ; INPUT IN AL
        MOV AH,0    ; LOWER PART IN USER INPUT AND HIGHER PART FORSED 0
        PUSH AX        
        
        POP DX      ; FIRST POP        
        MOV AH,2    ; OUTPUT IN DL
        INT 21H
       
        POP DX      ; SECOND POP
        
        MOV AH,2    ; OUTPUT IN DL
        INT 21H                                                 
        
        POP DX      ; THIRD POP 
        
        MOV AH,2    ; OUTPUT IN DL
        INT 21H
  
        ; RETURN 0
        
        MOV AH , 4CH
        INT 21H
        
    MAIN ENDP
    
END MAIN
                                             
