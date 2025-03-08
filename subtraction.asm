;subtraction of two number by immediate addressing mode
.model small
.stack 100h
.data
.code
main proc

	mov bl, 7
	sub bl, 2
	add bl, 48
	mov dl, bl
	mov ah, 2
	int 21h

	mov ah,4ch
	int 21h
	main endp
   end main
