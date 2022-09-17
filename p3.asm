;Genaro Damian Martinez Perez
;Realizar un programa en lenguaje ensamblador que imprima la portada de la escuela.


.stack
.data

pt   db 'TECNOLOGICO NACIONAL DE MEXICO$'
pt1  db 'INSTITUTO TECNOLOGICO DE TIJUANA$'
pt2  db 'SUBDIRECCION ACADEMICA$'
pt3  db 'DEPARTAMENTO DE SISTEMAS Y COMPUTACION$'
pt4  db 'INGENIERIA EN SISTEMAS COMPUTACINALES$'
pt5  db 'MAESTRO:$'
pt6  db 'CAÑEZ VALLE RODRIGO$'
pt7  db 'MATERIA:$'
pt8  db 'LENGUAJEZ DE INTERFAZ$'
pt9  db 'T3: PROGRAMAS CON IMPRESION EN CADENA$'
pt10 db 'ALUMNO:$'
pt11 db 'MARTINEZ PEREZ GENARO DAMIAN - 19211680$'
pt12 db 'TIJUANA B.C A 15 DE FEBRERO DEL 2022$'
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
mov dh, 0  ;Direccion para la fila
mov dl, 24 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, pt
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 1  ;Direccion para la fila
mov dl, 23 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt1
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 2  ;Direccion para la fila
mov dl, 28 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt2
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 3  ;Direccion para la fila
mov dl, 20 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt3
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 4  ;Direccion para la fila
mov dl, 21 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt4
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 5  ;Direccion para la fila
mov dl, 35 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt5
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 6  ;Direccion para la fila
mov dl, 30 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt6
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 7  ;Direccion para la fila
mov dl, 35 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt7
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 8  ;Direccion para la fila
mov dl, 28 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt8
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 20 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt9
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 10  ;Direccion para la fila
mov dl, 35 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt10
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 11  ;Direccion para la fila
mov dl, 20 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt11
int 21h

mov ah, 02h
mov dx, 010
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 12  ;Direccion para la fila
mov dl, 21 ;Direccion para la columna
int 10h

mov ah, 09h
lea dx, pt12
int 21h

mov ah, 02h
mov dx, 010
int 21h
