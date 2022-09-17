;Genaro Damian Martinez Perez
;Boleta 


.stack
.data

bl1  db'Datos del alumno: $'
bl2  db'............................................................  ..............$'
bl3  db'   Primer Apellido    Segundo Apellido      Nombre(S) $'
bl4  db'Datos de la escuela: $'
bl5  db'..............................  ...............  ............  .............$'
bl6  db'   Nombre de la escuela             Grupo            Turno          CCT     $'
bl7  db'|------------------------------------------------| |-----------------------|$'
bl8  db'|                |Periodos de evaluacion|        | |      Asistencia       |$'
bl9  db'|Asignatura/areas|----------------------|Promedio| |------------------|----|$'
bl10 db'|                |  1er  |  2do  |  3er |        | |Calendario Escolar|    |$'
bl11 db'|----------------|-------|-------|------|--------| |------------------|----|$'
bl12 db'|    Espanol     |       |       |      |        | |    Asistencias   |    |$'
bl13 db'|------------------------------------------------| |-----------------------|$'
bl14 db'|   Matematicas  |       |       |      |        | |  % De asistencia |    |$'
bl15 db'|------------------------------------------------| |-----------------------|$'
bl16 db'| Segunda Lengua |       |       |      |        |  *Asistencia minima para$'
bl17 db'|------------------------------------------------|   ser promovido: 80%    $'
bl18 db'|-----------------------|$'
bl19 db'|Promedio final de grado|$'
bl20 db'|-----------------------|$'
bl21 db'|                       |$'
bl22 db'|-----------------------|$'
bl23 db'|---------|---|  |------------|---|$'
bl24 db'|Promovido|   |  |No promovido|   |$'
bl25 db'|---------|---|  |------------|---|$'
.code

;Inicializacion de variables
mov ax, @data
mov ds, ax

;Limpiar pantall
mov ah, 00h
mov al, 03h
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl1
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 1  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl2
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 2  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl3
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 3  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl4
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 4  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl5
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 5  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl6
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 6 ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl7
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 7  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl8
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 8  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl9
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl10
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 10  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl11
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 11  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl12
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 12  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl13
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 13  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl14
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 14 ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl15
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 15  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl16
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 16  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl17
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 17  ;Direccion para la fila
mov dl, 52 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl18
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 18  ;Direccion para la fila
mov dl, 52 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl19
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 19 ;Direccion para la fila
mov dl, 52 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl20
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 20  ;Direccion para la fila
mov dl, 52 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl21
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 21  ;Direccion para la fila
mov dl, 52 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl22
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 19  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl23
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 20  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl24
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 21  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, bl25
int 21h

;Mover texto en la pantalla
mov ah, 02h
mov dh, 22  ;Direccion para la fila
mov dl, 1 ;Direccion para la columna
int 10h

