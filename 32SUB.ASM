data segment
a dd 12345h
b dd 11111h
res dd ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,ds:word ptr a
sbb ax,ds:word ptr b
mov bx,ds:word ptr a+2
sub bx,ds:word ptr [b+2]
mov ds:word ptr res,ax
mov ds:word ptr [res+2],bx
mov ax,4ch
int 21h
code ends
end start

