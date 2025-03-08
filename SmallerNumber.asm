include emu8086.inc
.model small
.stack 100h
.data  
msg1 db 'Enter number1: $'
msg2 db 'Enter Number2: $'
msg3 db 'Enter Number3: $'
msg4 db 'Smaller num is: $'
num2 db ? 
num1 db ? 
num3 db ?
.code
main proc
    
           mov ax, @data
           mov ds, ax
           
           mov ah, 09
           lea dx, msg1
           int 21h
           
          
           mov ah, 1
           int 21h
           mov num1,al
           
           printn 
           
           mov ah, 09
           lea dx, msg2
           int 21h
           
           
           mov ah, 1
           int 21h   
           mov num2,al
      
           printn 
           
            mov ah, 09
           lea dx, msg3
           int 21h
           
          
           mov ah, 1
           int 21h
           mov num3,al
           
           printn    
                 
           cmp num1, al
           JL L1
           jmp l2 
           

           
           
           
             L1:
                mov ah, 09
                lea dx, msg4
                int 21h 
                
                mov dl, num1
                mov ah, 2
                int 21h  
                    
                mov ah, 4ch
                int 21h
    
                                        
            l2:
                
                mov ah, 09
                lea dx, msg4
                int 21h 
                
                mov dl, num2
                mov ah, 2
                int 21h  
                
                
           cmp num2, al
           JL L3
           jmp l4 
           

           
           
           
             L3:
                mov ah, 09
                lea dx, msg4
                int 21h 
                
                mov dl, num2
                mov ah, 2
                int 21h  
                    
                mov ah, 4ch
                int 21h
    
                                        
            l4:
                
                mov ah, 09
                lea dx, msg4
                int 21h 
                
                mov dl, num3
                mov ah, 2
                int 21h
                         
             
                      
              
                  
             
    mov ah, 4ch
    int 21h
    
    main endp
end main
