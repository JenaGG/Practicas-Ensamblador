;T5
;Genaro Damian Martinez Perez

include macro4.asm

.model small
.stack
.data
include cadena4.asm

.code
inicia
inicio:
	menu:
	call limpiar
	mover 0,30
	call imprimeM
	mover 1, 25
	call imprime1
	mover 2,25
	call imprime2
	mover 3,25
	call imprime3
	mover 4,25
	call imprime4
	mover 5,25
	call imprime5
	mover 6,25
	call imprime6
	mover 7,25
	call imprime7
	mover 8,25
	call imprime8
	mover 9,25
	call imprime9
	mover 10,25
	call imprime10
	mover 11,25
	call imprime11
	mover 13,0
	call opci1
	capturaVal res
	opciones
	c1:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade1
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c2:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade2
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c3:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade3
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c4:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade4
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c5:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade5
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c6:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade6
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c7:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade7
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c8:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade8
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c9:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade9
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
	c10:
	call limpiar 
	mover 0, 30
	call cadena
	mover 1, 25
	call cade10
	mover 13, 0
	call opci
	capturaVal res
	opcionesS
salir:
mov ah,04ch
int 21h

imprimeM proc near
	mov ah,09h
	mov dx,offset men
	int 21h
	ret
imprimeM endp
imprime1 proc near
	mov ah,09h
	mov dx,offset men1
	int 21h
	ret
imprime1 endp
imprime2 proc near
	mov ah,09h
	mov dx,offset men2
	int 21h
	ret
imprime2 endp
imprime3 proc near
	mov ah,09h
	mov dx,offset men3
	int 21h
	ret
imprime3 endp
imprime4 proc near
	mov ah,09h
	mov dx,offset men4
	int 21h
	ret
imprime4 endp
imprime5 proc near
	mov ah,09h
	mov dx,offset men5
	int 21h
	ret
imprime5 endp
imprime6 proc near
	mov ah,09h
	mov dx,offset men6
	int 21h
	ret
imprime6 endp
imprime7 proc near
	mov ah,09h
	mov dx,offset men7
	int 21h
	ret
imprime7 endp
imprime8 proc near
	mov ah,09h
	mov dx,offset men8
	int 21h
	ret
imprime8 endp
imprime9 proc near
	mov ah,09h
	mov dx,offset men9
	int 21h
	ret
imprime9 endp
imprime10 proc near
	mov ah,09h
	mov dx,offset men10
	int 21h
	ret
imprime10 endp
imprime11 proc near
	mov ah,09h
	mov dx,offset men11
	int 21h
	ret
imprime11 endp
opci proc near
	mov ah,09h
	mov dx,offset opc
	int 21h
	ret
opci endp
opci1 proc near
	mov ah,09h
	mov dx,offset opc1
	int 21h
	ret
opci1 endp
cadena proc near
	mov ah,09h
	mov dx,offset cad0
	int 21h
	ret
cadena endp
cade1 proc near
	mov ah,09h
	mov dx,offset cad1
	int 21h
	ret
cade1 endp
cade2 proc near
	mov ah,09h
	mov dx,offset cad2
	int 21h
	ret
cade2 endp
cade3 proc near
	mov ah,09h
	mov dx,offset cad3
	int 21h
	ret
cade3 endp
cade4 proc near
	mov ah,09h
	mov dx,offset cad4
	int 21h
	ret
cade4 endp
cade5 proc near
	mov ah,09h
	mov dx,offset cad5
	int 21h
	ret
cade5 endp
cade6 proc near
	mov ah,09h
	mov dx,offset cad6
	int 21h
	ret
cade6 endp
cade7 proc near
	mov ah,09h
	mov dx,offset cad7
	int 21h
	ret
cade7 endp
cade8 proc near
	mov ah,09h
	mov dx,offset cad8
	int 21h
	ret
cade8 endp
cade9 proc near
	mov ah,09h
	mov dx,offset cad9
	int 21h
	ret
cade9 endp
cade10 proc near
	mov ah,09h
	mov dx,offset cad10
	int 21h
	ret
cade10 endp

limpiar proc near
	mov ah, 00h
	mov al, 03h
	int 10h
	ret
limpiar endp
end