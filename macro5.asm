inicia MACRO
	mov ax, seg @data
	mov ds, ax
ENDM
salto MACRO
    mov ah, 02h
    mov dx, 010
    int 21h
ENDM
mover MACRO y, x
	mov ah,02h 
	mov dh, y ; mover para la fila
	mov dl, x ; mover para la columna
	int 10h
ENDM
respuestas MACRO r
	mov ah, 09h
	mov dx, offset [r] ;desplazamiento
	int 21h
ENDM
capturaVal MACRO v
	mov ah, 3fh
	mov bx, 00
	mov cx, 50
	mov dx, offset [v]
	int 21h
ENDM
espacio MACRO 
	mov ah, 02h 
	mov dx, 000 
	int 21h
ENDM
capturaN MACRO n
	mov ah, 01h
	int 21h
	sub al, 30h
	mov n, al
ENDM
suma MACRO n1, n2
	mov al, n1
	add al, n2  
	mov r, al

	mov al, r
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
limpiarVar MACRO
	mov r, 48
	mov n1,0
	mov n2,0
ENDM
multiplicacion MACRO n3, n4
	mov al, n3
	mov bl, n4  
	mul bl
	mov r2, al

	mov al, r2
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