;Genaro Damian Martinez Perez
;Impresion de dos variables

.model small
.stack
.data
n1 db 0
n2 db 0
n3 db 0
r1 db 0
r2 db 0

msg  db 10,13, 'Ingresar un numero: $'
msg2 db 10,13, 'El resta de los 2 primeros es: $'
msg3 db 10,13, 'El resultado es: $'

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

mov ah, 09h
lea dx, msg
int 21h

;Capturar numero 3
mov ah, 01h
int 21h
sub al, 30h
mov n3, al

;operacion
mov al, n1
sub al, n2 
mov r1, al

mov ah, 09h
lea dx, msg2
int 21h

mov al, r1
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

;operacion
mov al, r1
add al, n3 
mov r2, al

mov ah, 09h
lea dx, msg3
int 21h

mov al, r2
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

.exit
end