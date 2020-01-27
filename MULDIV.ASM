data segment
a dw 2222h
b dw 0002h
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
mul bx
mov c,ax
div bx
mov d,ax
int 3
ends code
end start

