.model small
.stack 100h
.data 
msg db 'The Entered Number is 5: $'
msg1 db 'Enter Number: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    lea dx, msg1
    mov ah, 09
    int 21h
    
    mov dl, '5'
    mov ah, 1
    int 21h
    
    cmp dl, al
    je l1
    lea dx, msg
    mov ah, 09
    int 21h
    l1:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main