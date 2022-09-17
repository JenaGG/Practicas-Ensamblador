
 .model small
 .stack
 .data

 text00 db "Programa de captura una cadena y un caracter para imprimirlos despues.$"
 text01 db "Ejericio clase 22 de marzo 2022$"
 text02 db "Profesor: Lic. Rodrigo Canes Valle$"
 text03 db "Capture la cadena que desea imprimir: $"
text04 db "Capture el caracter que desea imprimir: $"

 var00 db 0 ; Caracter a imprimir
 var01 db 16 dup(" "),"$" ; Cadena de caracteres a imprimir


 conta db 0

 .code
;Inicializar variables
 mov ax,@data
 mov ds,ax

;Limpia la pantalla
 mov ah, 00h
 mov al, 03h
 int 10h

;Imprime cadena de texto
 mov ah, 09h
 mov dx, offset text00
 int 21h
 
 ;Salto de renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h 
 
 ;Imprime la cadena de texto
 mov ah, 09h
 mov dx, offset text01
 int 21h
 
 ;Salta renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h
 
 ;Imprime cadena de texto
 mov ah, 09h
 mov dx, offset text02
 int 21h
 
 ;Salta renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h
 
 ;Salta renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h

;Salta renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h

;Imprime cadena de texto
 mov ah, 09h
 mov dx, offset text03
 int 21h

;Captura la cadena de texto
 mov ah, 3fh
 mov bx, 00
 mov cx, 100
 mov dx, offset [var01]
 int 21h
 
 ;Salta renglon
 mov ah, 02h
 mov dx, 0Ah
 int 21h
 

;Imprime la cadena de texto
 mov ah, 09h
 mov dx, offset text04
 int 21h
 
 ;lee un caracter que entra desde el teclado
 mov ah, 01h
 int 21h
 mov var00, al
 
 ;Limpia la pantalla
 mov ah, 00h
 mov al, 03h
 int 10h


 ciclo: ;Etiqueta

 inc conta ;Incremento, suma 1 a el contenido de un registro

 mov ah,02h ; peticion para color el cursor
 mov dh, conta ; direccionamiento para la fila
 mov dl, conta ; direccionamiento para la columna
 int 10h ; interuppcion ejecuta la instruccion

;Impresion
 mov ah, 02h
 mov dl, var00
 int 21h
 
;Imprime un espacio
 mov dx, 000
 mov ah, 02h
 int 21h

;Imprime lo que esta guardado en la variable
 mov ah, 09h
 lea dx, var01
 int 21h

;Compara si la variable conta ya llego a 23 cmp es la comparacion si llega a 23 jz salta al final, si no nos manda a ciclo y suma 1 con el inc asi hasta llegar a 23
cmp conta, 23 ;if conta=23
jz fin ;Finaliza el ciclo
 jmp ciclo ;Nos regresa al inicio

 fin:

 .exit
 end