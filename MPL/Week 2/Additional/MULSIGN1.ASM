data segment
n1 dw -114
n2 db -2
res dw ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov ax,n1
imul n2
lea si,res
mov [si],ax
mov [si+2],dx
mov ah,4ch
int 21h
code ends
end start
