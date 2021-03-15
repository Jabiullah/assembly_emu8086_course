
        ; Rabius Sani Jabiullah
        ; United International University
	; -----------------------------------------------------------------------------------------------------------------------------
	
	; assembly_emu8086_condition_if_else_related_problem
	; ----------------------------------------------------
	; Question Plot
	; -------------

	; You will have to take 5 numbers between 0-9 as input and calculate their sum. Keep in mind that the input you ; are taking is a character. You somehow have 		; to convert it to the corresponding number. Then you will print strings based on the value of the sum you calculated.  
	; You will have to follow the pseudo-code given belowing 
	
	; if (0 <= sum < 15){
	;   print ( ” The sum is between 0 and 15 ” )
	;   }
	; else if (15 <= sum < 30){
	;   print ( ” The sum is between 15 and 30 ”)
	;   }
	; else {
	;   print ( ” The sum is greater than or equal to 30 ” )
	;   }
	; 
	; While taking the inputs, you will have to print appropriate input prompts. You will first print ”Enter the first ; ;number: ” (there is a space after colon) 		; and take the input in the same line. Then in the next line you will print ”Enter the second number: ” and take the second number ;as 
	; input in the same line. You will do the same for third, fourth and fifth numbers.

.MODEL SMALL  
.STACK 100H     
.DATA			
     
    ;DECLEARE ALL THE VARIABLES HERE  
    MSG DB "Enter the first number: $"
    MSG1 DB "Enter the second number: $"
    MSG2 DB "Enter the third number: $"
    MSG3 DB "Enter the fourth number: $"
    MSG4 DB "Enter the fifth number: $"  
    MSG5 DB "The sum is between 0 and 15 $"
    MSG6 DB "The sum is between 15 and 30 $"
    MSG7 DB "The sum is greater than or equal to 30 $"
       
.CODE
    ;CODE SEGMENT
    MAIN PROC     
        
        ;STATEMENT 
        MOV AX , @DATA
        MOV DS , AX
              
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG      ; LEA - Load effective address
        INT 21H
        
              
        ; INPUT FIRST NUMBER     
        MOV AH , 1
        INT 21H    ; THE INPUT WILL STORED IN 'AL' REGISTER.
        
        ; DATA MOVE FROM 'AL' TO 'BL'
        MOV BL , AL
        
        ; WE NEED THHE ACTUAL VALUE THAT'S WHY WE HAVE TO SUBSTRACT 30H FROM 'BL'
        SUB BL , 30H
        
        
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG1      ; LEA - Load effective address
        INT 21H
        
              
        ; INPUT SECOND NUMBER     
        MOV AH , 1
        INT 21H    ; THE INPUT WILL STORED IN 'AL' REGISTER.
        
        ; WE NEED THHE ACTUAL VALUE THAT'S WHY WE HAVE TO SUBSTRACT 30H FROM 'AL'
        
        SUB AL , 30H
        
        ; ADD FIRST AND SECOND NUMBER
        
        ADD BL,AL
        
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG2      ; LEA - Load effective address
        INT 21H
        
              
        ; INPUT THIRD NUMBER     
        MOV AH , 1
        INT 21H    ; THE INPUT WILL STORED IN 'AL' REGISTER.
        
        ; WE NEED THHE ACTUAL VALUE THAT'S WHY WE HAVE TO SUBSTRACT 30H FROM 'AL'
        
        SUB AL , 30H
        
        ; ADD FIRST , SECOND AND THIRD NUMBER
        
        ADD BL , AL
        
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG3      ; LEA - Load effective address
        INT 21H
        
              
        ; INPUT FOURTH NUMBER     
        MOV AH , 1
        INT 21H    ; THE INPUT WILL STORED IN 'AL' REGISTER.
        
        ; WE NEED THHE ACTUAL VALUE THAT'S WHY WE HAVE TO SUBSTRACT 30H FROM 'AL'
        
        SUB AL , 30H
        
        ; ADD FIRST , SECOND , THIRD AND FOURTH NUMBER
        
        ADD BL , AL
        
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG4      ; LEA - Load effective address
        INT 21H
        
              
        ; INPUT FIFTH NUMBER     
        MOV AH , 1
        INT 21H    ; THE INPUT WILL STORED IN 'AL' REGISTER.
        
        ; WE NEED THHE ACTUAL VALUE THAT'S WHY WE HAVE TO SUBSTRACT 30H FROM 'AL'
        
        SUB AL , 30H
        
        ; ADD FIRST , SECOND , THIRD , FOURTH AND FIFTH NUMBER
        
        ADD BL , AL                                  ; FINAL RESULT IN 'BL' REG.
        
        
        ; --------------------------IF CHECK PART----------------------------------
        
        MOV AL , 0FH     ; 0F IS HEXADECIMAL VALUE OF 15 (DECIMAL)
        MOV AH , 1EH     ; 1E IS HEXADECIMAL VALUE OF 30 (DECIMAL)
        
        CMP BL , AL
        JGE CON2         ; GREATER THAN 15 CONDITION
        
        CMP BL , AL
        JL CON1          ; LESS THAN 15 CONDITION
        
        CON1:
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG5      ; LEA - Load effective address
        INT 21H
        
        JMP EXIT
        
        CON2:
        CMP BL , AH
        JL CON3            ; BETWEEN 15 T0 30 CONDITION
        
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG7      ; LEA - Load effective address
        INT 21H
        
        JMP EXIT
        
        CON3:
        ; NEW LINE      
        MOV AH , 2
        MOV DL, 0AH
        INT 21H  
        MOV DL, 0DH
        INT 21H
        
        ; STRING PRINT
        MOV AH , 9
        LEA DX , MSG6      ; LEA - Load effective address
        INT 21H
        
        JMP EXIT
        
        EXIT:
        MOV AH , 4CH  
        INT 21H
        
    MAIN ENDP        
END MAIN       
