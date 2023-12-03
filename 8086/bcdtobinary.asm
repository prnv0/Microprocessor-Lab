
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,3000h
MOV DS,AX
XOR AX,AX
MOV AL,[1000h]
MOV BL,AL
AND BL,0FH
SHR AL,04H
MOV CL,0AH
MUL CL
ADD AL,BL
MOV [1002h],AL

ret




