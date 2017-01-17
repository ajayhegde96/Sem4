+data segment
 +a dd 00004567h
 +b db 00ffh
 +res dw ?,?
 +data ends
 +code segment
 +assume cs:code,ds:data
 +start: mov ax,data
 +mov ds,ax
 +lea si,res
 +lea di,a
 +mov dx,[di+2]
 +mov ax,[di]
 +div b
 +mov [si],ax
 +mov [si+2],dx
 +mov ah,4ch
 +int 21h
 +code ends
 +end start