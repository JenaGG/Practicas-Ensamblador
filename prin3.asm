;T4
;Genaro Damian Martinez Perez
include macro3.asm

.model small
.stack
.data

include cadena3.asm

.code

iniciar

menu:
	limpiar
	mover 0, 29
	imprimir men
	mover 2, 20
	imprimir men1
	mover 3, 20
	imprimir men2
	mover 4, 20
	imprimir men3
	mover 5, 20
	imprimir men4
	mover 6, 20
	imprimir men5
	mover 7, 20
	imprimir men6
	mover 8, 20
	imprimir men7
	mover 9, 20
	imprimir men8
	mover 12, 0
	imprimir opc1
	capturaVal res
	opciones
	programa1:
		limpiar
		include p1.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa2:
		limpiar
		include p2.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa3:
		limpiar
		include p3.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa4:
		limpiar
		include p4.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa5:
		limpiar
		include p5.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa6:
		limpiar
		include p6.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa7:
		limpiar
		include p7.asm
		mover 23, 0
		imprimir opc
		capturaVal res
		opcionesS
final:
	mov ax, 4c00h
	int 21h

.exit
end