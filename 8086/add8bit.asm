
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
MOV AX,3000h
MOV DS,AX
MOV AX,4f32H
MOV BX,2ECAH
ADD AX,BX
MOV [2000h],AX
MOV AX,4CH
INT 21H


ret




