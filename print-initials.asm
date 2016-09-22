; Ethan Yoder
; September 21, 2016
; This script will print my ASCII initials! Don't
; judge, this is pretty big for me right now.  It
; is Assembly after all...

section .text
	global_start

_start:
	;prints out first layer
	mov edx,len1
	mov ecx,layer1
	mov ebx,1
	mov eax,4
	int 0x80

	;prints out second layer
	mov edx,len2
	mov ecx,layer2
	mov ebx,1
	mov eax,4

	;prints out third layer
	mov edx,len3
	mov ecx,layer3
	mov ebx,1
	mov eax,4

	;exits program
	mov eax,1
	int 0x80

section .data
layer1 db '---- \  /',0xa
len1 equ $ - layer1
layer2 db '|_    \/ ',0xa
len2 equ $ - layer2
layer3 db '|___   | ',0xa
len3 equ $ - layer3
