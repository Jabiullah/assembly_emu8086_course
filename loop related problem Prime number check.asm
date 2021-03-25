				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------  
				; DEFAULT VALUE PRIME NUMBER CODE IN ASSEMBLY. 
.MODEL SMALL
.STACK 100H
.DATA 
    msg_prime DB "IT IS Prime NUMBER $"
    msg_notprime DB "IT IS Not Prime NUMBER $"
    num DW 43    ; DEFAULT VALUE STORE HERE.

.CODE
    MAIN PROC
        ; VARIABLE PART READY
        MOV AX,@DATA
        MOV DS,AX
        
        ; VALUE IS STORE IN REG.
        MOV AX,num 
        MOV CX,2  
        
        
        prime_loop: 
             
             MOV AX,num      ; AX = num , BECAUSE EVERY DIVISION AX IS CHANGING. AFTER DEVISION AX IS NOW RESULT VALUE.
             CMP AX,CX       ; COMPARE WILL BE START FROM 2 AND END WILL NUMBER VALUE.
             JE prime        ; IF EQUAL THEN MUST PRIME.
             
             
             MOV DX,0        ; OTHERWISE  REMAINDER CLEAN DONE.
             DIV CX          ; AX = AX / CX , REMAINDER IN DX.
             CMP DX,0
             JE not_prime 
             INC CX          ; CX = CX + 1
             JMP prime_loop
        
        prime:
            MOV AH,9
            LEA DX,msg_prime
            INT 21H
            JMP END 
            
        not_prime:
            MOV AH,9
            LEA DX,msg_notprime
            INT 21H
            JMP END            ; NOT NECESSARY.
            
        END:
            MOV AH,4CH
            INT 21H
        
    MAIN ENDP 
    
END MAIN