				; Rabius Sani Jabiullah
    				; United International University
				; -----------------------------------------------------------------------------------------------------------------------------
				
				; assembly_emu8086_loop_related_problem
				; -------------------------------------
				; Question Plot
				; -------------        
				; Write a program to count the number of vowels read until a 'q' or 'Q' is pressed 

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB " IS COUNTED , Q OR q PRESSED . CODE TERMINATED. $"
.CODE
    MAIN PROC
        
        MOV AX , @DATA
        MOV DS , AX
         
        MOV CL,0
        
        MOV AH,1
        INT 21H
          
        WHILE:  
            CMP AL,81     ;Check "Q", Q ASCII VALUE IS 81
            JE END_WHILE  
            
            CMP AL,113    ;Check "q", q ASCII VALUE IS 113
            JE END_WHILE 
            
            CMP AL,65	  ;'A'
            INC CL  
            
            CMP AL,69	  ;'E'	
            INC CL
            
            CMP AL,73	  ;'I'	
            INC CL 
            
            CMP AL,79	  ;'O'
            INC CL 
            
            CMP AL,86	  ;'U'
            INC CL
            
            
            MOV AH,1
            INT 21H
            
            JMP WHILE 
        
        END_WHILE:
        
            ; QUESTION 
	    ; -------------------------- 	    
	    ; CAN WE PRINT THE COUNT ? 
	    ; YES HERE IS THE CODE.	
            
	    ;ADD CL , 44     ; HEXADECIMAL VALUE ADDED.    
            ;MOV AH , 2
            ;MOV DL , CL   ; PRINT THE COUNT
            ;INT 21H
            
            
            ; String Print
            
            MOV AH , 9
            LEA DX , MSG      ; LEA - Load effective address
            INT 21H

            MOV AH,4CH
            INT 21H
               
    MAIN ENDP
   
END MAIN
