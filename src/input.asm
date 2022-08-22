section .data
	prompt db "What is your name? "
	greet db "Hello, "

section .bss
	name resb 16

section .text
	global _start
	
_start:
	call _printPrompt
	call _getName
	call _printGreet
	call _printName
	
	mov rax, 60
	mov rdi, 0
	syscall

_getName:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	ret

_printPrompt:
	mov rax, 1
	mov rdi, 1
	mov rsi, prompt
	mov rdx, 19
	syscall
	ret
	
_printGreet:
	mov rax, 1
	mov rdi, 1
	mov rsi, greet
	mov rdx, 7
	syscall
	ret

_printName:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 16
	syscall
	ret
