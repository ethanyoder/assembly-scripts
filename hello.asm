; Ethan Yoder
; September 20, 2016
; This is my first program in Assembly.  It is Hello World
; of course...

section .text
	global_start

_start:			;tells linker entry point
	mov edx, len	;message length
	mov ecx, msg	;message to write
	mov ebx, 1	;file descriptor (stdout)
	mov eax, 4	;system call number (sys_write)
	int 0x80	;calls kernel

	mov eax,1	;system call number (sys_exit)
	int 0x80	;call kernel

section .data
msg db 'Hello, world!', 0xa ;string to be printed
len equ $ - msg		    ;length of the string
