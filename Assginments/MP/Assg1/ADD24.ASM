data segment
n1 dd 654321h
n2 dd 123456h
diff dd ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
lea si,n1
lea di,n2
mov  ax,[si]
sub  ax,[di]
mov word ptr diff,ax
mov  ax,[si+2]
sbb  ax,[di+2]
mov word ptr diff+2,ax
sbb word ptr diff+2,0
add word ptr diff,666h
mov ah,4ch
int 21h
code ends
end start
