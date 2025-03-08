include emu8086.inc
.model small
.stack 100h
.data 
;var1 db 'Number of rows: $'
;var2 db 'Number of columns: $'
;temp db ?
;temp1 db ?

.code
main proc  
    
    mov bx, 1
    mov dl, 65
    
    
    mov cx, 5
    
    L1:
    push cx
   
    mov cx, bx
    L2: 
    mov ah, 2
    int 21h
    inc dl       
  
    Loop L2
    printn
    
    inc bx
    pop cx
    Loop L1 
            
    
    mov ah, 4ch
    int 21h
    
    main endp
end main