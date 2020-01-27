data segment
a dw 1234h
b dw 1123h
c dw ?
d dw ?
ends data
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx
mov c,ax
sub ax,bx
mov d,ax
int 3
ends code
end start

