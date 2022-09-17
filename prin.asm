;Martinez Perez Genaro Damian
;T3

include macros.asm

.model small
.stack
.data

include cadenas.asm

.code

iniciar
menu:
	limpiar
	limpiarVar
	mover 0, 28
	imprimir m
	mover 2, 20
	imprimir m1
	mover 3, 20
	imprimir m2
	mover 4, 20
	imprimir m3
	mover 5, 20
	imprimir m4
	mover 6,20
	imprimir m5
	mover 7, 20
	imprimir m6
	mover 8, 20
	imprimir m7
	mover 10, 0
	imprimir opc1
	capturaVal res
	opciones
	programa1:
		limpiar
		mover 0, 28
		imprimir ti1
		mover 2, 2
		imprimir msg
		mover 3, 2
		imprimir msg1
		mover 4, 2
		imprimir msg2
		mover 5, 2
		imprimir msg3
		mover 6, 2
		imprimir msg4
		mover 7, 2
		imprimir msg5
		mover 8, 2
		imprimir msg6
		mover 9, 2
		imprimir msg7
		mover 10, 2
		imprimir msg8
		mover 11, 2
		imprimir msg9
		mover 12, 2
		imprimir msg10
		mover 13, 2
		imprimir msg11
		mover 14, 2
		imprimir msg12
		mover 15, 2
		imprimir msg13
		mover 16, 2
		imprimir msg14
		mover 17, 2
		imprimir msg15
		mover 18, 2
		imprimir msg16
		mover 19, 2
		imprimir msg17
		mover 21, 2
		imprimir opc
		capturaVal res
		opcionesS
	programa2:
	limpiar
		mover 0, 27
		imprimir ti2
		mover 2, 0
		imprimir msgPregunta1
		capturaVal resPregunta1
		imprimir msgPregunta2
		capturaVal resPregunta2
		imprimir msgPregunta3
		capturaVal resPregunta3
		imprimir msgPregunta4
		capturaVal resPregunta4
		imprimir msgPregunta5
		capturaVal resPregunta5
		imprimir msgPregunta6
		capturaVal resPregunta6
		imprimir msgPregunta7
		capturaVal resPregunta7
		imprimir msgPregunta8
		capturaVal resPregunta8
		imprimir msgPregunta9
		capturaVal resPregunta9
		imprimir msgPregunta10
		capturaVal resPregunta10
		limpiar
		mover 0, 27
		imprimir ti2
		salto
		imprimir resmsgPregunta1
		respuestas resPregunta1
		salto
		imprimir resmsgPregunta2
		respuestas resPregunta2
		salto
		imprimir resmsgPregunta3
		respuestas resPregunta3
		salto
		imprimir resmsgPregunta4
		respuestas resPregunta4
		salto
		imprimir resmsgPregunta5
		respuestas resPregunta5
		salto
		imprimir resmsgPregunta6
		respuestas resPregunta6
		salto
		imprimir resmsgPregunta7
		respuestas resPregunta7
		salto
		imprimir resmsgPregunta8
		respuestas resPregunta8
		salto
		imprimir resmsgPregunta9
		respuestas resPregunta9
		salto
		imprimir resmsgPregunta10
		respuestas resPregunta10
		salto
		imprimir opc
		capturaVal res
		opcionesS
	programa3:
		Limpiar
		call formato
		mover 1, 41
		capturaVal re01
		mover 3, 12
		capturaVal re02
		mover 3, 50
		capturaVal re03
		mover 5, 12
		capturaVal re04
		mover 5, 50
		capturaVal re05
		mover 7, 12
		capturaVal re06
		mover 7, 50
		capturaVal re07
		mover 9, 14
		capturaVal re08
		mover 9, 34
		capturaVal re09
		mover 9, 43
		capturaVal re10
		mover 9, 60
		capturaVal re11
		mover 11, 12
		capturaVal re12
		mover 11, 36
		capturaVal re13
		mover 11, 65
		capturaVal re14
		mover 13, 13
		capturaVal re15
		mover 15, 13
		capturaVal re16
		mover 17, 13
		capturaVal re17
		mover 19, 15
		capturaVal re18
		salto
		imprimir opc
		capturaVal res
		opcionesS
	programa4:
		limpiar
		mover 0, 28
		imprimir ti4
		mover 2,24
		imprimir gt0
		mover 3, 24
		imprimir gt1
		mover 4, 24
		imprimir gt2
		mover 5, 24
		imprimir gt3
		mover 6, 24
		imprimir gt4
		mover 7, 24
		imprimir gt5
		mover 8, 31
		imprimir gt6
		mover 9, 29
		imprimir gt7
		mover 10, 29
		imprimir gt8
		mover 11, 32
		imprimir gt9
		mover 12, 29
		imprimir gt10
		mover 13, 29
		imprimir gt11
		mover 14, 29
		imprimir gt12
		mover 15, 32
		imprimir gt13
		mover 16, 04
		imprimir gt14
		mover 17, 04
		imprimir gt15
		mover 18, 04
		imprimir gt16
		mover 19, 44
		imprimir gt17
		mover 20, 44
		imprimir gt18
		mover 21, 44
		imprimir gt19
		mover 22, 44
		imprimir gt20
		salto
		imprimir opc
		capturaVal res
		opcionesS
	programa5:
		limpiar
		mover 0, 26
		imprimir ti5
		salto
		imprimir s0
		capturaN n1
		salto
		imprimir s0
		capturaN n2
		salto
		imprimir s1
		suma n1, n2
		salto
		imprimir s2
		resta n1, n2
		salto
		imprimir s3
		multiplicacion n1, n2
		salto
		imprimir s4
		division n1, n2
		mover 20, 0
		imprimir opc
		capturaVal res
		opcionesS
	programa6:
	limpiarVar
	limpiar
	mover 0, 22
	imprimir ti6
	mover 2, 0
	imprimir t0
	capturaN n
	salto
	tablas n
	acaba:
		mover 20, 0
		imprimir opc2
		capturaVal res
		opcionesS2
formato:
	imprimir rec
	salto
	imprimir rec1
	salto
	imprimir rec2
	salto
	imprimir rec3
	salto
	imprimir rec4
	salto
	imprimir rec5
	salto
	imprimir rec6
	salto
	imprimir rec7
	salto
	imprimir rec8
	salto
	imprimir rec9
	salto
	imprimir rec10
	salto
	imprimir rec11
	salto
	imprimir rec12
	salto
	imprimir rec13
	salto
	imprimir rec14
	salto
	imprimir rec15
	salto
	imprimir rec16
	salto
	imprimir rec17
	salto
	imprimir rec18
	salto
	imprimir rec19
	salto
	imprimir rec20
	ret
final:
	mov ax, 4c00h
	int 21h

.exit
end