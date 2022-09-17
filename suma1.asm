;Genaro Damian Martinez Perez
;2.-Sumar 3 variables y obtener un resultado.

.model small
.stack
.data
n1 db 0
n2 db 0
n3 db 0
suma db 0


msg  db 10,13, 'Ingresar un numero: $'

msg2 db 10,13, 'El suma es: $'

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

;suma
mov al, n1
add al, n2 ;se hace la suma
add al, n3
mov suma, al

mov ah, 09h
lea dx, msg2
int 21h

mov al, suma
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