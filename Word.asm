	.model small
	.stack 100h
	.data 
	
	ap db 'annonymous$'
	ba db 'Bold$'
	ca db 'Cat$'
	do db 'Delight$'   
	el db 'Elephent$'
	 
	str1 db 'Enter a sequence of character: $'
	str2 db 'word is: $'
	.code
	main proc                    
	    mov ax,@data
	    mov ds,ax
	                   
	    lea dx,str1
    mov ah,9
	    int 21h
	    mov cx,0
	    
	    mov ah,1
	    int 21h
	    mov bl,al
	                             
    cmp bl,'a'
	    je apple     
	    
	    cmp bl,'b'
	    je ball
    
	    cmp bl,'c'
	    je cat
	    
	    cmp bl,'d'
	    je dog      
	    
	    cmp bl,'e'
	    je ele
	    jmp end
	    
	    apple:    
	      mov ah,2
	     mov dl,0dh
	     int 21h
	     mov dl,0ah
	     int 21h  
	     
	     lea dx,ap
	    mov ah,9
	    int 21h
	    jmp end  
	    
	    ball:    
	     mov ah,2
	     mov dl,0dh
	     int 21h
	     mov dl,0ah
     int 21h
	     
	    lea dx,ba
	    mov ah,9
	    int 21h
	    jmp end  
	    
	    cat:    
	     mov ah,2
	     mov dl,0dh
	     int 21h
	     mov dl,0ah
	     int 21h
	     
	    lea dx,ca
	    mov ah,9
	    int 21h
	    jmp end  
	              
	    dog:    
     mov ah,2
	     mov dl,0dh
	     int 21h
	     mov dl,0ah
	     int 21h
	     
	    lea dx,do
	    mov ah,9
	    int 21h
	    jmp end    
	    
	    ele:    
	     mov ah,2
	     mov dl,0dh
	     int 21h
	     mov dl,0ah
	     int 21h
	     
	    lea dx,el
	    mov ah,9
	    int 21h
	    jmp end       
	      
	      end:

	     
	     mov ah,4ch
	     int 21h
	     
	     main endp
	end main
