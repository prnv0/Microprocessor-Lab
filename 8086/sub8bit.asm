
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,3000h
MOV DS,AX
MOV AX,2356H
MOV BX,12FCH
SUB AX,BX
MOV [2345h],AX
MOV AH,4CH
INT 21h

ret




