; Hello_world.asm
;
; Author: Sasindu shamika
;
; Date: 04-April-2021

global _start

section .text:

_start:
	mov eax, 0x4			;Use write syscalls
	mov ebx, 1				;Use stdout as the file discriptor
	mov ecx, message		;Use the message as a buffer
	mov edx, message_length ;and supply the message_length
	int 0x80				;invoke syscall
		
	;--now gracefully exit		

	mov eax, 0x1
	mov ebx, 0
	int 0x80

section .data:
	message: db "Hello_world_!", 0xA
	message_length equ $-message