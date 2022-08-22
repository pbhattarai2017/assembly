section .data
	text db "Hello, World!",10,0
	intro db "My name is Prakash Bhattarai",10,0

section .text
	global _start
	
_start:
	mov rax, text
	call _printString
	
	mov rax, intro
	call _printString
	
	mov rax, 60
	mov rdi, 0
	syscall


;input: rax as pointer to string
;output: print string at rax
_printString:
	push rax
	mov rbx, 0
_printLoop:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _printLoop
	
	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret
