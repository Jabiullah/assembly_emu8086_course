				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; CALCULATE GCD (GREATEST COMMON DIVISOR)
.MODEL SMALL
.STACK 100H
.DATA
     num1 db 10   ; X VALUE
     num2 db 11   ; Y VALUE  
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX    ; DATA VARIABLE ADDRESS STORE.
        
        MOV BL,num1   ; BL = X
        MOV BH,num2   ; BH = Y
        
        gcd_loop: 
            CMP BL,BH ; CHECK X == Y?
            JE END
            
            CMP BL,BH ; X IS GREATER THAN Y OR NOT ?
            JG greater
            
            SUB BH,BL ; Y = Y - X
            
            JMP gcd_loop
        
        
        greater:       ; X = X - Y 
            SUB BL,BH
            JMP gcd_loop       
        
        END:
            ADD BL,30H ; HEXA VALUE ADD
            
            MOV AH,2   ; PRINT X VALUE WHICH IS GCD.
            MOV DL,BL
            INT 21H
            
            MOV AH, 4CH
            INT 21H            
       MAIN ENDP
    END MAIN          