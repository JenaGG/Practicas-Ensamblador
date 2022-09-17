;Genaro Damian Martinez Perez
;Realizar un programa en lenguaje ensamblador que imprima la siguiente imagen


.stack
.data

gt0  db 'EL JUEGO DEL$'
gt1  db '####  ####  ####  ####$'
gt2  db '#     #  #   ##   #  #$'
gt3  db '# ##  ####   ##   #  #$'
gt4  db '#  #  #  #   ##   #  #$'
gt5  db '####  #  #   ##   ####$'
gt6  db ' |   |$'
gt7  db ' 1 | 2 | 3 $'
gt8  db '---+---+---$'
gt9  db '|   |$'
gt10 db ' 4 | 5 | 6 $'
gt11 db '---+---+---$'
gt12 db ' 7 | 8 | 9 $'
gt13 db '|   |$'
gt14 db 'Jugadores$'
gt15 db '==> X -Genaro$'
gt16 db '==> O -Damian$'
gt17 db ' ------------- $'
gt18 db '| Bienvenidos |$'
gt19 db ' -------------  |$'
gt20 db '   ------------  $'
.code

;Inicializacion de variables
mov ax, @data
mov ds, ax

;Limpiar pantalla
mov ah, 00h
mov al, 03h
int 10h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 2  	 ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, gt0
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 3  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt1
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 4  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt2
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 5  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt3
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 6  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt4
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 7  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt5
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 8  ;Direccion para la fila
mov dl, 31 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt6
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 29 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt7
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 10  ;Direccion para la fila
mov dl, 29 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt8
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 11 ;Direccion para la fila
mov dl, 32 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt9
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 12 ;Direccion para la fila
mov dl, 29 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt10
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 13  ;Direccion para la fila
mov dl, 29 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt11
int 21h


;Mover texto en la pantalla
mov ah, 02h
mov dh, 14  ;Direccion para la fila
mov dl, 29 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt12
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 15 ;Direccion para la fila
mov dl, 32 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt13
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 16 ;Direccion para la fila
mov dl, 04 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt14
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 17 ;Direccion para la fila
mov dl, 04 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt15
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 18 ;Direccion para la fila
mov dl, 04 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt16
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 19 ;Direccion para la fila
mov dl, 44 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt17
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 20 ;Direccion para la fila
mov dl, 44 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt18
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 21 ;Direccion para la fila
mov dl, 44 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt19
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 22 ;Direccion para la fila
mov dl, 44 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, gt20
int 21h

