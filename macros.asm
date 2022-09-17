iniciar MACRO
	mov ax, seg @data
	mov ds, ax
ENDM
mover MACRO y, x
	mov ah,02h 
	mov dh, y ; mover para la fila
	mov dl, x ; mover para la columna
	int 10h
ENDM
salto MACRO
	mov ah, 02h
	mov dx, 010
	int 21h
ENDM
imprimir MACRO t
	lea dx, t
	mov ah, 9
	int 21h
ENDM
imprimirN MACRO n
	mov ah, 02h
	mov dl, n
	add dl, 30h
	int 21h 
ENDM
respuestas MACRO r
	mov ah, 09h
	mov dx, offset [r] ;desplazamiento
	int 21h
ENDM
limpiar MACRO
	mov ah, 00h
	mov al, 03h
	int 10h
ENDM
limpiarVar MACRO
	mov r, 48
	mov n1,0
	mov n2,0
	mov n,0
	mov conta, 0
	mov sum, 0
	mov res, 0
	mov multi, 0
	mov divi, 0
ENDM
capturaVal MACRO v
	mov ah, 3fh
	mov bx, 00
	mov cx, 50
	mov dx, offset [v]
	int 21h
ENDM
capturaN MACRO n
	mov ah, 01h
	int 21h
	sub al, 30h
	mov n, al
ENDM
opciones MACRO
	cmp res, '1'
	je programa1
	cmp res, '2'
	je programa2
	cmp res, '3'
	je programa3
	cmp res, '4'
	je programa4
	cmp res, '5'
	je programa5
	cmp res, '6'
	je programa6
	cmp res, '7'
	je final
ENDM
opcionesS MACRO
	cmp res, '1'
	je menu
	cmp res, '0'
	je final
ENDM
opcionesS2 MACRO
	cmp res, '1'
	je programa6
	cmp res, '2'
	je final
	cmp res, '3'
	je menu	
ENDM
suma MACRO n1, n2
	mov al, n1
	add al, n2  
	mov sum, al

	mov al, sum
	aam ; empaquetado y desempaquetado para mostrar operacion de dos dígitos
	mov bx, ax ;mover todo lo que se encuentra dentro del registro az a dx

	;impresión de operacion
	mov ah, 02h 
	mov dl, bh
	add dl, 30h
	int 21h 

	mov ah, 02h
	mov dl, bl
	add dl, 30h 
	int 21h
ENDM
resta MACRO n1, n2
	mov al, n1
	sub al, n2  
	mov re, al

	mov al, re

	aam ; empaquetado y desempaquetado para mostrar operacion de dos dígitos
	mov bx, ax ;mover todo lo que se encuentra dentro del registro az a dx

	;impresión de operacion
	mov ah, 02h 
	mov dl, bh
	add dl, 30h
	int 21h 

	mov ah, 02h
	mov dl, bl
	add dl, 30h 
	int 21h
ENDM
multiplicacion MACRO n1, n2
	mov al, n1
	mov bl, n2  
	mul bl
	mov multi, al

	mov al, multi
	aam ; empaquetado y desempaquetado para mostrar operacion de dos dígitos
	mov bx, ax ;mover todo lo que se encuentra dentro del registro az a dx

	;impresión de operacion
	mov ah, 02h 
	mov dl, bh
	add dl, 30h
	int 21h 

	mov ah, 02h
	mov dl, bl
	add dl, 30h 
	int 21h
ENDM
division MACRO n1, n2
	xor ax, ax
	mov al, n1
	mov bl, n2  
	div bl
	mov divi, al

	mov al, divi
	aam ; empaquetado y desempaquetado para mostrar operacion de dos dígitos
	mov bx, ax ;mover todo lo que se encuentra dentro del registro az a dx

	;impresión de operacion
	mov ah, 02h 
	mov dl, bh
	add dl, 30h
	int 21h 

	mov ah, 02h
	mov dl, bl
	add dl, 30h 
	int 21h
ENDM
tablas MACRO n
	ciclo:
		inc conta ;incremento de contador
		;multiplicacion
		mov al, n
		mov bl, conta
		mul bl
		mov r, al

		;impresión de la tabla        
		mov dl, conta
		add dl, 30h
		mov ah, 02h
		int 21h

		mov ah, 02h 
		mov dx, 000 ; espacio
		int 21h

		mov ah, 02h 
		mov dx, 120 ; x
		int 21h

		mov ah, 02h 
		mov dx, 000 ; espacio
		int 21h

		mov dl, n
		add dl, 30h
		mov ah, 02h
		int 21h

		mov ah, 02h 
		mov dx, 000 ; espacio
		int 21h

		mov ah, 02h 
		mov dx, 061 ; =
		int 21h

		mov ah, 02h 
		mov dx, 000 ; espacio
		int 21h

		;operación
		mov al,r
		aam
		mov bx,ax
		mov ah,02h
		mov dl,bh
		add dl,30h
		int 21h

		mov ah,02h
		mov dl,bl
		add dl,30h
		int 21h

		;salto
		mov ah, 02h
		mov dx, 010
		int 21h 

		;iteración y salida
		cmp conta, 10 ;if conta=3
		jz acaba
		jmp ciclo
ENDM
