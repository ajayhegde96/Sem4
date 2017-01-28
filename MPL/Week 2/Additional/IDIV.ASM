data segment
n1 dw -900
n2 dw -700
q dw ?
r dw ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov ax,n1
cwd
idiv n2
mov q,ax
mov r,dx
mov ah,4ch
int 21h
code ends
end start
