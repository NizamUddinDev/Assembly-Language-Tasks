.model small
.stack 100h
.data
count db ?
str1 db "Enter a sequence of character: $"
Str2 db "Number of Integers in Sequence of character is  :$"
val db ?
.code
main proc
    mov ax, @data
    mov ds,ax	
    mov val,0
	
    mov ah,09
    lea dx, str1
    int 21h
    mov count, 0
    mov cx, 0
    
    L1:
    mov ah, 01
    int 21h 
    mov bl, al
    cmp bl,13
    je Block1
   
   Push ax
   inc count
   
   loop l1
   Block1:
    sub cx, cx
    mov ah, 02
    mov dl, 0dh
    int 21h
	    mov dl, 0ah
    int 21h
             
    mov ah, 09
    lea dx, str2
    int 21h
    
    mov cl, count 
    l3:
		pop ax
		CMP al,48
		JGE check
		jmp rmv
	
	check:
		CMP al,57
		JLE check2
		jmp rmv
		
	check2:
		INC val
		jmp rmv
	rmv:	
		loop l3
             

    exit:
		add val,48
		MOV ah,02
		MOV dl,val
		INT 21H
		
		mov ah, 4ch
		int 21h
 main endp
end main