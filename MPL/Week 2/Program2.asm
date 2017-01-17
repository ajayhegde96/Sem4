+data segment
 +a dd 00234560h
 +b dw 1000h
 +res dw 0,0,0
 +data ends
 +code segment
 +assume cs:code,ds:data
 +start: mov ax,data
 +mov ds,ax
 +lea si,a
 +lea bx,res
 +mov ax,[si]
 +mul b
 +mov [bx],ax
 +mov [bx+2],dx
 +mov ax,[si+2]
 +mul b
 +add [bx+2],ax
 +adc [bx+4],dx
 +mov ah,4ch
 +int 21h
 +code ends
 +end start