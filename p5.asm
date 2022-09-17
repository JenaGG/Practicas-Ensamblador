;Genaro Damian Martinez Perez
;Impresion de operaciones


.stack
.data
n1 db 0
n2 db 0
n3 db 0 ;suma
n4 db 0 ;resta
n5 db 0 ;Mulit
n6 db 0 ;division


msg  db 10,13, 'Ingresar un numero: $'
msg1 db 10,13, 'El numero 1 es: $'
msg2 db 10,13, 'El numero 2 es: $'
msg3 db 10,13, 'El suma es: $'
msg4 db 10,13, 'El resta es: $'
msg5 db 10,13, 'El multi es: $'
msg6 db 10,13, 'El division es: $'

.code

mov ax, seg @data
mov ds, ax

mov ah, 09h
lea dx, msg
int 21h

;Capturar numero 1
mov ah, 01h
int 21h
sub al, 30h
mov n1, al

mov ah, 09h
lea dx, msg
int 21h

;Capturar numero 2
mov ah, 01h
int 21h
sub al, 30h
mov n2, al


;suma
mov al, n1
add al, n2 ;se hace la suma
mov n3, al

mov ah, 09h
lea dx, msg3
int 21h

mov al, n3
aam ;empaquetado y desempacado para mostrar resultado de dos digitos
mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h ;Desplega un caractre
mov dl, bh
add dl, 30h
int 21h
mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

;resta
mov al, n1
sub al, n2 ;se hace la resta
mov n4, al

mov ah, 09h
lea dx, msg4
int 21h

mov al, n4
aam ;empaquetado y desempacado para mostrar resultado de dos digitos
mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h ;Desplega un caractre
mov dl, bh
add dl, 30h
int 21h
mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

;multi
mov al, n1
mov bl, n2 
mul bl ;se hace la multi
mov n5, al

mov ah, 09h
lea dx, msg5
int 21h

mov al, n5
aam ;empaquetado y desempacado para mostrar resultado de dos digitos
mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h ;Desplega un caractre
mov dl, bh
add dl, 30h
int 21h
mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

;division
xor ax, ax
mov bl, n2
mov al, n1
div bl ;Se hace la divisiono
mov n6, al

mov ah, 09h
lea dx, msg6
int 21h

mov al, n6
aam ;empaquetado y desempacado para mostrar resultado de dos digitos
mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h ;Desplega un caractre
mov dl, bh
add dl, 30h
int 21h
mov ah, 02h
mov dl, bl
add dl, 30h
int 21h

