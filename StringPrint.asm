 .model small
.stack 100h
.data 

.code

main proc 
    
   mov cx, 10
   mov dx, 48
   
   Test:
   
      mov ah, 2
      int 21h
      
      inc dx
      
      Loop Test
         
         
    mov ah, 4ch
    int 21h
    
    main endp
  end main