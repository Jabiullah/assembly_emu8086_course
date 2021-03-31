				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_nested_loop_related_problem
				; --------------------------------------------
				; Question Plot
				; -------------
				; 1+(1+3)+(1+3+5)+......+(1+3+5+......+(2n-1))
.MODEL SMALL  
.STACK 100H     
.DATA
    ;DECLEARE ALL THE VARIABLES HERE 
    
    N DB 7                          ;Declare the variable n
    SUM DB 0
    TEMP DB 1
    
.CODE  
;CODE SEGMENT
    MAIN PROC     
        
        ;STATEMENT 
        MOV AX , @DATA
        MOV DS , AX
        
        MOV BH , 1
        
        OUTER_LOOP:                 ;Calculate the outer series
        
        CMP BH , N
        
        JG EXIT
        
        MOV BL , 1
        
        INNER_LOOP:                 ;Calculate the inner series
        
        CMP BL , BH
        
        JG EXIT_INNER
        
        MOV CH , BL
        
        ADD CH , CH
        SUB CH , TEMP  
        
        ADD SUM , CH
        
        INC BL
        
        JMP INNER_LOOP
        
        EXIT_INNER:
        
        INC BH
        
        JMP OUTER_LOOP
        
        EXIT:
        MOV BH , 0
        MOV BL , SUM               
        
        MOV AX , BX                 ;Store result in AX
        
        
        ;MOV AH , 4CH  
        ;INT 21H
        
    MAIN ENDP        
END MAIN   
        