data segment
arr db 1,2,3,4,5,6
count dw 6
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov cx,count
dec cx
l1:mov bl,cl
lea si,arr
l2:mov al,[si]
mov dl,[si+1]
cmp al,dl
jnc noswp
mov [si],dl
mov [si+1],al
noswp:inc si
dec bl
jnz l2
loop l1
mov ah,4ch
int 21h
code ends
end start


