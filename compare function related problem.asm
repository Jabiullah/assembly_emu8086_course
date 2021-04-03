				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_compare_function(JMP,JGE,JLE,JE)_related_problem
				; -----------------------------------------------------------------
				; Question Plot
				; -------------                                     
                                ; Suppose the mark of an exam is stored in AX. Print the corresponding grade letter in the console. 
                                     
                                     

.MODEL SMALL  
.STACK 100H     
.DATA 
    ;Declare all the variables 
    MSG1 DB " A $"
    MSG2 DB " A- $"
    MSG3 DB " B+ $"
    MSG4 DB " B $"
    MSG5 DB " B- $"
    MSG6 DB " C+ $"
    MSG7 DB " C $"
    MSG8 DB " C- $"
    MSG9 DB " D $"
    MSG10 DB " F $"
    
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC     ; INT MAIN
        
        MOV AX , @DATA                   ; CMP = COMPARE  , SUPPOSE IT MEANS SUB. 
        
        MOV DS , AX                      ; JMP = JUMP
                                         ; JGE = JUMP IF EQUAL OR GREATER THAN 
                                         ; JLE = JUMP IF EQUAL OR LESS THAN
                                         ; JE  = JUMP IF EQUAL 
        ;STATEMENT  
        MOV CX,78
        
        CMP CX,85                        ; NEGATIVE FOR CX 78
        JGE A
        
        CMP CX,80                        ; NEGATIVE FOR CX 78
        JGE AMIN 
        
        CMP CX,75                        ; POSITVE FOR CX 78
        JGE BPLUS                         
        
        CMP CX,70
        JGE B
        
        CMP CX,65
        JGE BMIN
        
        CMP CX,61
        JGE CPLUS
        
        
        
        CMP CX,58
        JGE C 
        
        CMP CX,55
        JGE CMIN
        
        CMP CX,50
        JGE D
         
        ; String Print
        MOV AH , 9
        LEA DX , MSG10      ; LEA - Load effective address
        INT 21H 
        
        JMP END 
        
        
        
        A: 
        MOV AH , 9
        LEA DX , MSG1      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        AMIN:
        MOV AH , 9
        LEA DX , MSG2      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        BPLUS:
        MOV AH , 9
        LEA DX , MSG3      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        B:
        MOV AH , 9
        LEA DX , MSG4      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        BMIN:
        MOV AH , 9
        LEA DX , MSG5      ; LEA - Load effective address
        INT 21H 
        
        JMP END 
        
        CPLUS:
        MOV AH , 9
        LEA DX , MSG6      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        C:
        MOV AH , 9
        LEA DX , MSG7      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        CMIN:
        MOV AH , 9
        LEA DX , MSG8      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        D:
        MOV AH , 9
        LEA DX , MSG9      ; LEA - Load effective address
        INT 21H 
        
        JMP END
        
        END:
        MOV AH , 4CH  ; RETURN 0
        INT 21H
        
    MAIN ENDP     
    
END MAIN
    
    
