
DATA SEGMENT
    STRING1 DB 0AH,0DH,"ENTER STRING $"
    STRING2 DB 6,0,6 DUP(?)
DATA ENDS
CODE SEGMENT
START:
    MOV AX,DATA
    MOV DS,AX
    LEA DX,STRING1
    MOV AH,09H
    INT 21H
    LEA DX,STRING2
    MOV AH,0AH
    INT 21H
    LEA SI,STRING2+2
    MOV CX,05H
LOOP:
    MOV AX,[SI]
    SUB AX, 'A'
    ADD AX,'a'
    MOV [SI],AX
    CMP CX,00H
    INC SI
    DEC CX
    JNZ LOOP
    MOV [SI],'$'
EXIT:  
    LEA DX,STRING2+2
    MOV AH,09H
    INT 21H
    MOV AH,4CH
    INT 21H       
    
END START    
CODE ENDS  




