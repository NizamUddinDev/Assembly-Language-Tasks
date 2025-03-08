;addition of two number by rigster addressing mode
.model small
.stack 100h
.data
.code
main proc

	mov bl, 7
	mov cl, 3
	add bl, cl
	add bl, 48
	mov dl, bl
	mov ah, 2
	int 21h

	mov ah,4ch
	int 21h
	main endp
   end main
