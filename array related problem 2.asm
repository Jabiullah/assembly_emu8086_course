				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
	
				; assembly_emu8086_array_related_problem
				; --------------------------------------
				; Question Plot
				; -------------
				; 10TH LENGTH ARRAY ADD ODD INDEX ELEMENTS
.MODEL SMALL
.STACK 100H
.DATA                                                                   
   W DW 10,0,10,0,10,0,10,0,10,0  
   ; 10+10+10+10+10 =50 , OCTA VALUE IS 32.
        
.CODE
    MAIN PROC 
        ;DATA ASSIGN         
        MOV AX, @DATA
        MOV DS, AX  
        
        
        XOR AX,AX ;AX HOLDS THE SUM
        
        LEA SI,W  ;SI POINTS TO ARRAY W
        
                  ;LOAD EFFECTIVE ADDRESS
        
        MOV CX,5  ;CX HAS NUMBER OF ELEMENTS  
                  
                  ;ACTUALLY WHAT HAPPENEDS HERE ?
                  ;WE POINT THE INDEX AT 'SI IN 4' PREVIOUSLY IT WAS 2 FOR WORD. BUT WE TO ACCESS ONLY THE ODD INDEXES.
                  ;AND WE COUNT FOR 5 TIMES ONLY "MOV CX,5". PRIVIOUSLY IT WAS 10 "MOV CX,10". IF WE DONT CHANGE HERE THE VALUE WILL BE CHANGE.
                    
        
        ADDNOS:
        
        ADD AX,[SI] ;SUM = SUM+ ELEMENT
        ADD SI,4    ;MOVE POINTER TO THE NEXT ELEMENT, 2 BEACAUSE IT IS WORD ARRAY
        
        LOOP ADDNOS ; LOOP UNTIL DONE.      
        
        MOV BX,AX
        
        
        ;RETURN 0
        MOV AH,4CH
        INT 21H
        
        
        
    MAIN ENDP
        
END MAIN