.model small
.stack 100h
.data 
.code
main proc
    
    mov ah, 1
    int 21h
    mov bl, al 
    mov ah, 1       
    int 21h
     
    add bl, al
    sub bl, 48
              
    MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h
              
    mov dl,bl
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main