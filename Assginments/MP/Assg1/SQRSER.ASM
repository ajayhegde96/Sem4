data segment
sqrs dw ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov bl,0h
lea si,sqrs
mov cx,0Ah
up:mov al,bl
mul bl
aam
mov [si],ax
inc bl
inc si
inc si
loop up
mov ah,4ch
int 21h
code ends
end start
