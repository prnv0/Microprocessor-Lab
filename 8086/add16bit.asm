
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,3000H
MOV DS,AX
MOV AX,4F32H
MOV BX,0FECAH
ADD AX,BX
MOV [2000h],AX
MOV AX,7255h
MOV BX,2210h
ADC AX,BX
MOV [2002h],AX
MOV AX,4CH
INT 21h

ret




