				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				; assembly_emu8086_special_problem
				; ---------------------------------
				; Question Plot
				; -------------   
                		; LEAP YEAR CODE                 
.MODEL SMALL
.STACK 100H
.DATA
  A DW 2321 
  MSG1 DB "YES LEAP YEAR $"
  MSG2 DB "NOT LEAP YEAR $"
  
.CODE

    MAIN PROC
       
       ; DATA READ
       MOV AX,@DATA
       MOV DS,AX
       
       MOV AX,A
       
       MOV BX,400
       
       DIV BX       ; RESULT IS 
                    ; REMAINDER IS DX 
        
        
       CMP DX,0
       
       JE LEAP_YEAR
       
       MOV AX,A     ; BECAUSE A CHANGED PRIVIOUSLY
       
       CWD          ; CONVERT BYTE TO WORD IS THE SOLVE OF DIVISON OVERFLOW
       
       MOV BX,4     ; MIGHT BE OVERFLOW HAPPENING . SOLUTION IS ABOVE ^ 
                    ;                                                 |
       
       
       DIV BX       ; 
        
       CMP DX, 0
       
       JNE NOT_LEAP_YEAR
       
       
       ; THE YEAR IS DIVISIBLE BY 4 NOW TIME TO 100
        
       MOV AX,A
       
       CWD
       
       MOV BX,100
       DIV BX
       
       CMP DX,0
       
       JE NOT_LEAP_YEAR
       
       ; THE YEAR IS LEAP YEAR
        
       LEAP_YEAR:
       
       
        MOV AH , 9
        LEA DX , MSG1      ; LEA - Load effective address
        INT 21H 
        
        JMP FINISH 
        
       NOT_LEAP_YEAR:
        
        MOV AH , 9
        LEA DX , MSG2      ; LEA - Load effective address
        INT 21H
 
        FINISH:
        ;RETUNR 0
        MOV AH,4CH
        INT 21H    
        
    MAIN ENDP

END MAIN    