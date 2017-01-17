+data segment
 +a dw 0016h
 +b db 04h
 +res db ?,?
 +data ends
 +code segment
 +assume cs:code,ds:data
 +start: mov ax,data
 +mov ds,ax
 +lea bx,res
 +mov ax,a
 +div b
 +mov [bx],al
 +mov [bx+2],ah
 +mov ah,4ch
 +int 21h
 +code ends
 +end start