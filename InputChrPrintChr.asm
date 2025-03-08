include emu8086.inc
.model small
.stack 100h
.data 
 msg db 'Enter input as a character: $'
.code

main proc  
    
    mov ax, @data
    mov ds, ax
    
    
    lea ax, msg 
    mov ah, 09
    int 21h
    
    mov ah, 01
    int 21h
            
    call printchar
           
    mov ah, 4ch
    int 21h
    
    main endp

printchar proc
      mov ah, 02
      mov dl, al
      int 21h
    
    
    ret
    
    printchar endp
end main