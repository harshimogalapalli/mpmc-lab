data segment
ten DW ?
n dw 153
ends data
code SEGMENT
	ASSUME cs:code, ds:data
start:	mov ax, data
	mov ds, ax
	mov ax,n
	mov cx, 00h
	mov ten, 10
next:	cmp ax, 0
	jz quit
	cwd
	idiv ten;
	add cx, dx;
	jmp next
	
quit:
 	int 3h
code ENDS
END start