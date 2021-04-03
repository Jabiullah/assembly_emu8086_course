         
    ; Rabius Sani Jabiullah
    ; United International University
    ; -----------------------------------------------------------------------------------------------------------------------------
    ; assembly_emu8086_arithmetic_(operation)_Addition_Subtraction_Multiplication
    ; ---------------------------------------------------------------------------                           
    
    ; QUESTION A^2 + A^3B - AB^3 + B^2
    ; WHERE A = 3, B = 2 
    ; SOLUTION IN SIGNED VALUE IS 43, HEXA IS 2B AND ASCII IS +       

.MODEL SMALL  
.STACK 100H     
.DATA     
.CODE
    ;CODE SEGMENT
    
    MAIN PROC ; INT MAIN
        
        
        
        MOV AL, 3
        MOV BL, 3   
        ;AH ;AL
        ;BH ;BL
        ;CH ;CL
        ;DH ;DL
                   
        ; MUL BH ; AH = AH * BH 
        ; MUL CH ; BH = BH * CH
        
        
        MUL BL      ; AL = AL * BL = 3*3 = 9
        MUL BL      ; AL = AL * BL = 9*3 = 27
        
        MOV BL, 2
        MUL BL      ; AL = AL * BL = 27 * 2 = 54 "HEXA VALUE IS 36 , AXCII VALUE IS 6"
        
        MOV CL, AL  ; PART 1 STORE HERE
        
        
        MOV AL, 2
        MOV BL, 2
        
        MUL BL      ; AL = AL * BL = 2*2 = 4
        MUL BL      ; AL = AL * BL = 4*2 = 8
        
        MOV BL, 3
        MUL BL      ; AL = AL * BL = 8*3 = 24   "HEXA VALUE IS 18 , AXCII VALUE IS  "  
        
        MOV CH, AL  ; PART 2 STORE HERE.
        
        SUB CL, CH  ; CL - CH = 54-24 = 30      "HEXA VALUE IS 1E , AXCII VALUE IS  " 
        
        
        MOV AL,0    ; CLEANING
        MOV AL,3
        MOV BL,3    ; MUL BL
        ADD AL,AL   ; 3+3 = 6     "HEXA VALUE IS 6 , AXCII VALUE IS  "
        ADD AL,BL   ; 6+3 = 9     "HEXA VALUE IS 9 , AXCII VALUE IS '	'(TAB)  "
        
        ADD CL,AL   ; 30+9=39     "HEXA VALUE IS 27 , AXCII VALUE IS  (') "
        
        
        MOV AL,0    ;  CLEANING
        MOV AL,2
        
        ADD AL,AL   ;  2+2  = 4
        
        ADD CL,AL   ;  39+4 = 43  "HEXA VALUE IS 2B , AXCII VALUE IS + "
        
        
        
        ;PRINT CODE 
        MOV AH, 2
        MOV DL, CL
        INT 21H
        
        MOV AH , 4CH  ; RETURN 0
        INT 21H
        
    MAIN ENDP     
    
END MAIN
    
    
