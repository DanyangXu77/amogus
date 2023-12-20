section	.text
	global _start

section	.data
	txt db 'done', 0xa
	len equ $ - txt
	
_start:	
	mov ecx, 1000000000

l:
	loop l
	mov	eax, 4
	mov ebx, 1
	mov	edx, len
	mov	ecx, txt
	int 0x80
	
	int 0x80
	mov	eax, 1
	mov ebx, 0
	int	0x80