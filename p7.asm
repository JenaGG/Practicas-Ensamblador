;Genaro Damian Martinez Perez
;Impresion de boleta


.stack
.data
          
rm   db '+----------+---------------------------+------------------------+------------+$'
rm1  db '|          |Consulta ficha del paciente|                        |            |$'
rm2  db '+----------+---------------------------+-------------------------------------+$'
rm3  db '|Apellidos |                           |Nombres  |                           |$'
rm4  db '+----------+---------------------------+---------+---------------------------+$'
rm5  db '|Direccion |                           |C.Postal |                           |$'
rm6  db '+----------+---------------------------+---------+---------------------------+$'
rm7  db '|Localidad |                           |provincia|                           |$'
rm8  db '+----------------------------------------------------------------------------+$'
rm9  db '|F.Nacimiento|              |Sexo|    |NSS|           |TEL.|                 |$'
rm10 db '+----------------------------------------------------------------------------+$'
rm11 db '|F.Consulta|                |F.Alta|           |Duracion Proceso|            |$'
rm12 db '+----------------------------------------------------------------------------+$'
rm13 db '|Diagnostico|                                                                |$'
rm14 db '+----------------------------------------------------------------------------+$'
rm15 db '|Tratamiento|                                                                |$'
rm16 db '+----------------------------------------------------------------------------+$'
rm17 db '|Otros datos|                                                                |$'
rm18 db '+----------------------------------------------------------------------------+$'
rm19 db '|Observaciones|                                                              |$'
rm20 db '+----------------------------------------------------------------------------+$'
;Declarar captura
res1  db 50 dup(' '),'$'
res2  db 50 dup(' '),'$'
res3  db 50 dup(' '),'$'
res4  db 50 dup(' '),'$'
res5  db 50 dup(' '),'$'
res6  db 50 dup(' '),'$'
res7  db 50 dup(' '),'$'
res8  db 50 dup(' '),'$'
res9  db 50 dup(' '),'$'
res10 db 50 dup(' '),'$'
res11 db 50 dup(' '),'$'
res12 db 50 dup(' '),'$'
res13 db 50 dup(' '),'$'
res14 db 50 dup(' '),'$'
res15 db 50 dup(' '),'$'
res16 db 50 dup(' '),'$'
res17 db 50 dup(' '),'$'
res18 db 50 dup(' '),'$'
.code

;Inicializacion de variables
mov ax, @data
mov ds, ax

;Limpiar pantalla
mov ah, 00h
mov al, 03h
int 10h

;Imprimimos formato
mov ah, 09h
lea dx, rm
int 21h
 
;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm1
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm2
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm3
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm4
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm5
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm6
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm7
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm8
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm9
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm10
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm11
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm12
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm13
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm14
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm15
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm16
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm17
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm18
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm19
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, rm20
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 1  ;Direccion para la fila
mov dl, 41 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res1] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 3  ;Direccion para la fila
mov dl, 12 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res2] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 3  ;Direccion para la fila
mov dl, 50 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res3] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 5  ;Direccion para la fila
mov dl, 12 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res4] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 5  ;Direccion para la fila
mov dl, 50 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res5] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 7  ;Direccion para la fila
mov dl, 12 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res6] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 7  ;Direccion para la fila
mov dl, 50 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res7] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 14 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res8] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 34 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res9] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 43 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res10] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 9  ;Direccion para la fila
mov dl, 60 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res11] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 11 ;Direccion para la fila
mov dl, 12 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res12] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 11 ;Direccion para la fila
mov dl, 36 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res13] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 11 ;Direccion para la fila
mov dl, 65 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res14] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 13  ;Direccion para la fila
mov dl, 13 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res15] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 15  ;Direccion para la fila
mov dl, 13 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res6] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 17  ;Direccion para la fila
mov dl, 13 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res17] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h

;Capturamos datos
;Mover texto en la pantalla
mov ah, 02h
mov dh, 19  ;Direccion para la fila
mov dl, 15 ;Direccion para la columna
int 10h
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 50 ;Espacio
mov dx, offset [res18] ;Desplazamiento desde el inicio hasta donde se encientra la cadena
int 21h



