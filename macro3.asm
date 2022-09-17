iniciar MACRO
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
imprimir MACRO t
	lea dx, t
	mov ah, 9
	int 21h
ENDM
limpiar MACRO
	mov ah, 00h
	mov al, 03h
	int 10h
ENDM
capturaVal MACRO v
	mov ah, 3fh
	mov bx, 00
	mov cx, 50
	mov dx, offset [v]
	int 21h
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
	je programa7	
	cmp res, '8'
	je final
ENDM
espacio MACRO 
	mov ah, 02h 
	mov dx, 000 
	int 21h
ENDM
opcionesS MACRO
	cmp res, '1'
	je menu
	cmp res, '0'
	je final
ENDM
