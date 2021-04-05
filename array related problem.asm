				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_array_related_problem
				; --------------------------------------
				; Question Plot
				; -------------
				; 10TH LENGTH ARRAY ADD ALL ELEMENTS
.MODEL SMALL
.STACK 100H
.DATA
                        
                           
   W DW 1,2,3,4,5,6,7,8,9,1 
   
   ; 46 IN HEXA, OCTA VALUE IS 2E 
        
.CODE
    MAIN PROC 
        ;DATA ASSIGN         
        MOV AX, @DATA
        MOV DS, AX  
        
        
        XOR AX,AX ;AX HOLDS THE SUM
        
        LEA SI,W  ;SI POINTS TO ARRAY W
        
        ;LOAD EFFECTIVE ADDRESS
        
        MOV CX,10 ;CX HAS NUMBER OF ELEMENTS
        
        ADDNOS:
        
        ADD AX,[SI] ;SUM = SUM+ ELEMENT
        ADD SI,2    ;MOVE POINTER TO THE NEXT ELEMENT, 2 BEACAUSE IT IS WORD ARRAY
        
        LOOP ADDNOS ; LOOP UNTIL DONE.      
        
        
        ;RETURN 0 
        
        MOV BX,AX
        
        
        MOV AH,4CH
        INT 21H
        
        
        
    MAIN ENDP
        
END MAIN