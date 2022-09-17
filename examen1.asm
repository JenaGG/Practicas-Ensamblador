;Genaro Damian Martinez Perez 19211680
;Examen 1

.model small
.stack
.data

n1 db 0
n2 db 0
r db 0

msg  db ' Examen$'
msg1 db 'Escribe tu nombre: $'
msg2 db 'Suma$'
msg3 db 'Ingresa un numero: $'
msg4 db 'La suma es: $'

;Declara la captura
nom db 50 dup(' '),'$'

;Desplegar respuesta
nom1 db 'Tu nombre es: ', '$'
.code

mov ax, seg @data
mov ds, ax

;Limpiar pantalla
mov ah, 00h
mov al, 03h
int 10h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 1 	 ;Direccion para la fila
mov dl, 34 ;Direccion para la columna
int 10h

mov ah, 02h
mov dx, 049 ;Caracter 1
int 21h

mov ah, 09h
lea dx, msg
int 21h

;Pregunta
;Mover texto en la pantalla
mov ah, 02h
mov dh, 4 	 ;Direccion para la fila
mov dl, 25 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, msg1
int 21h
;Captura
mov ah, 3fh
mov bx, 00 
mov cx, 50
mov dx, offset[nom]
int 21h

;Responder
mov ah, 02h
mov dh, 6
mov dl, 27
int 10h

mov ah, 09h
lea dx, nom1
int 21h
mov ah, 09h
mov dx, offset[nom]
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 8 	 ;Direccion para la fila
mov dl, 36 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, msg2
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 9 	 ;Direccion para la fila
mov dl, 28 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, msg3
int 21h

;captura 1
mov ah, 01h
int 21h
sub al, 30h
mov n1, al

;Mover texto en la pantalla
mov ah, 02h
mov dh, 10 	 ;Direccion para la fila
mov dl, 28 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, msg3
int 21h

;Capturar numero 2
mov ah, 01h
int 21h
sub al, 30h
mov n2, al

;suma
mov al, n1
add al, n2 ;se hace la suma
mov r, al

;Mover texto en la pantalla
mov ah, 02h
mov dh, 11 	 ;Direccion para la fila
mov dl, 32 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, msg4
int 21h

mov al, r
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