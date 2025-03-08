.model small
.stack 100h
.data
count db ?
str1 db 'Enter a sequence of character: $'
str2 db 'Capital Letters: $' 
.code
main proc
    mov ax, @data
    mov ds, ax
    mov count, 0
    
    mov ah, 09
    lea dx, str1
    int 21h
    
    mov cx, 0
    
    L1:
        mov ah, 01
        int 21h
        mov bl, al
    
    cmp bl, 13
    je print
    
    cmp bl, '+'
    je plus
    
    cmp bl, '-'
    je minus
    
    cmp bl,'*'
    je multi
    
    cmp bl, '/'
    je divide
    jmp end
    
    
    plus:
    inc count
    jmp end
    
    minus:
    inc count
    jmp end
    
    multi:
    inc count
    jmp end
    
    divide:
    inc count
    jmp end
    
    end:
        Loop L1
                
        print:
        mov ah, 02
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
        
        add count, 48
        
        mov ah, 09
        lea dx, str2
        int 21h
        
        mov ah, 02
        mov dl, count
        int 21h
        
        mov ah, 4ch
        int 21h
        
        main endp
end main
         
    
    
    
    
    
    
     
    