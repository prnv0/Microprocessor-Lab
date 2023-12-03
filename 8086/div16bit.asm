
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

DATA SEGMENT
N1 DW 0000H
N2 DW 1234H
DATA ENDS
CODE SEGMENT
START:
MOV AX, 3000h
MOV DS, AX
MOV DX, N1 ; HIGHER BITS IN DX
MOV AX, N2 ; LOWER BITS IN AX
MOV BX, 1234H
DIV BX ; OUTPUT REMAINDER IN DX AND QUOTIENT IN AX
STOP:
MOV AH, 4CH
INT 21H
CODE ENDS
END START

ret




