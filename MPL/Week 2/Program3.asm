+data segment
 +a dd 00001234h
 +b dd 00000019h
 +res dw 0,0,0,0
 +data ends
 +code segment
 +assume cs:code,ds:data
 +start: mov ax,data
 +mov ds,ax
 +lea si,a
 +lea di,b
 +lea bx,res
 +mov bx,[si]
 +mul word ptr[di]
 +mov [bx],ax
 +mov [bx+2],dx
 +mov ax,[si+2]
 +mul word ptr[di]
 +add [bx+2],ax
 +adc [bx+4],dx
 +mov ax,[si]
 +mul word ptr[di+2]
 +add [bx+2],ax
 +adc [bx+4],dx
 +adc word ptr [bx+6],0
 +mov ax,[si+2]
 +mul word ptr[di+2]
 +add [bx+4],ax
 +adc [bx+6],dx
 +mov ah,4ch
 +int 21h
 +code ends
 +end start