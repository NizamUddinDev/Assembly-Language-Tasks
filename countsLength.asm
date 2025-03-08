.model small
.stack 100h
.data
count db ?        
countVowel db ?
countNum db ?
countCons db ?
length db ?

msg1 db "Enter a sequence of character: $"
msg2 db "Number Letters: $"
msg3 db "Number vowels: $"
msg4 db "Numbe digits: $"
msg5 db "Number constants: $"
msg6 db "Number Length: $"

temp1 db 'a'
temp2 db 'z'

.code
main proc
mov ax,@DATA
mov ds,ax

mov count,0
mov countNum,0
mov countVowel,0
mov ah,09
lea dx, msg1
int 21h

mov cx,0
Loop1:
mov ah,01
int 21h
mov bl,al

cmp bl,13
je print

cmp bl,'0'
jge Num
jmp end

Num:
cmp bl,'9'

jle number
jmp EE

number:
inc countNum



EE:
;cmp bl,91
;jge notchar
cmp bl,'a'
je a

cmp bl,'e'
je e

cmp bl,'i'
je i

cmp bl,'o'
je o

cmp bl,'u'
je u


cmp bl,temp1
jge temp

jmp end

;notchar:
; cmp bl,96
; jle end

temp:
cmp bl,temp2
jle str2


str2:
inc count
jmp end



a:
inc countVowel
inc count
jmp end
e:
inc countVowel
inc count
jmp end
i:
inc countVowel
inc count
jmp end
o:
inc countVowel
inc count
jmp end
u:
inc countVowel
inc count
jmp end

end:
loop Loop1

print:
mov ah,02
mov dl,0dh
int 21h

mov dl,0ah
int 21h

add count,48
mov ah,09
lea dx,msg2
int 21h

mov ah,02
mov dl,count
int 21h

mov ah,02
mov dl,0dh
int 21h

mov dl,0ah
int 21h

add countVowel,48
mov ah,09
lea dx,msg3
int 21h

mov ah,02
mov dl,countVowel
int 21h

mov ah,02
mov dl,0dh
int 21h

mov dl,0ah
int 21h

add countNum,48
mov ah,09
lea dx,msg4
int 21h

mov ah,02
mov dl,countNum
int 21h


mov ah,02
mov dl,0dh
int 21h

mov dl,0ah
int 21h


mov cl,count
mov bl,countVowel
sub cl,bl
add cl,48


mov ah,09
lea dx, msg5
int 21h

mov ah,02
mov dl,cl
int 21h


mov ah,02
mov dl,0dh
int 21h

mov dl,0ah
int 21h


mov cl,count
mov bl,countNum
add cl,bl
sub cl,48


mov ah,09
lea dx,msg6
int 21h

mov ah,02
mov dl,cl
int 21h

mov ah,4ch
int 21h
main endp
end main

