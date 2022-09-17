.model small
.stack
.data

;Nombre
nom db 'Martinez Perez Genaro Damian - 19211680$'
;Menu principal
msg  db '---- M E N U -----$'
men1 db '1. Tablas de Multiplicar$'
fig1 db '2. Triangulo$'
fig2 db '3. Cuadrado$'
fig3 db '4. Rectangulo$'
fig4 db '5. Circulo$'
fig5 db '6. Rombo$'
fig6 db '7. Pentagono$'
fig7 db '8. Hexagono$'
fig8 db '9. Trapecio$'
fig9 db '0. Paralelogramo$'
men2 db 'ESC. Salir$'
opc db 'Seleccione una opcion: $'
;Menu 1
ini   db '------- Tablas de Multiplicar -------$'
tab1  db '1. Tabla del 1$'
tab2  db '2. Tabla del 2$'
tab3  db '3. Tabla del 3$'
tab4  db '4. Tabla del 4$'
tab5  db '5. Tabla del 5$'
tab6  db '6. Tabla del 6$'
tab7  db '7. Tabla del 7$'
tab8  db '8. Tabla del 8$'
tab9  db '9. Tabla del 9$'
tab10 db '0. Volver al menu anterior$'
tab11 db 'Desea volver al Menu anterior? SI(0) NO(ESC): $'
;Menu 2
per db '1. Perimetro$'
are db '2. Area$'
vol db '3. Volver al menu anterior$'
per2 db 'El perimetro es: $'
are2 db 'El area es: $'
;triangulo
tri db '------- TRIANGULO -------$'
trip db 'Ingrese un lado del triangulo: $'
trib db 'Ingrese la base del triangulo: $'
trih db 'Ingrese la altura del triangulo: $'
;cuadrado
cua db '------- CUADRADO -------$'
cual db 'Ingrese un lado del cuadrado: $'
;rectangulo
rec db '------- RECTANGULO -------$'
rech db 'Ingrese la altura del rectangulo: $'
recb db 'Ingrese la base del rectangulo: $'
;circulo
cir db '------- CIRCULO -------$'
cird db 'Ingrese el diametro del circulo: $'
cirr db 'Ingrese radio del circulo:  $'
;rombo
rom db '------- ROMBO -------$'
roma db 'Ingrese el largo del rombo: $'
romd1 db 'Ingrese la diagonal menor:  $'
romd2 db 'Ingrese la diagonal mayor:  $'
;pentagono
penta db '------- PENTAGONO -------$'
penl db 'Ingrese el largo del pentagono: $'
penp db 'Ingrese el valor de P:  $'
pena db 'Ingrese el valor de a:  $'
;hexagono
hexa db '------- HEXAGONO -------$'
hexl db 'Ingrese el largo del pentagono: $'
hexp db 'Ingrese el valor de P:  $'
hexa1 db 'Ingrese el valor de a:  $'
;trapecio
trap  db '------- TRAPECIO -------$'
trap1 db 'Ingrese el largo del trapecio: $'
trap2 db 'Ingrese la base mayor:  $'
trap3 db 'Ingrese la base menor:  $'
trap4 db 'Ingrese la altura: $'
;paralelogramo
parale  db '------- PARALELOGRAMO -------$'
parale1 db 'Ingrese el valor de a: $'
parale2 db 'Ingrese el valor de b:  $'
parale3 db 'Ingrese la altura:  $'
;Variables tabla de multiplicar
n db 0
r db 0
conta db 0
;Variables que puedo reutilizar
l db 0
b1 db 0
h db 0
a db 0
d1 db 0
d2 db 0
b2 db 0 
p db 0
pi db 3
resu1 db 0
resu2 db 0
resu3 db 0
;Respuesta menus
resp  db 1 dup(' '), '$'
.code
mov ax, seg @data
mov ds, ax

inicio:
	call limpiap
	call nombre
	;Mover texto
	mov ah,02h 
	mov dh, 0 ; direccionamiento para la fila
	mov dl, 30 ; direccionamiento para la columna
	int 10h

	;msg inicial
	mov ah, 09h
	lea dx, msg
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 1 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc1
	mov ah, 09h
	lea dx, men1
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 2 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc2
	mov ah, 09h
	lea dx, fig1
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 3 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc2
	mov ah, 09h
	lea dx, fig2
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 4 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc4
	mov ah, 09h
	lea dx, fig3
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 5 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc5
	mov ah, 09h
	lea dx, fig4
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 6 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc6
	mov ah, 09h
	lea dx, fig5
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 7 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc7
	mov ah, 09h
	lea dx, fig6
	int 21h
	;Mover texto
	mov ah,02h 
	mov dh, 8 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc8
	mov ah, 09h
	lea dx, fig7
	int 21h
	;Mover texto
	mov ah,02h 
	mov dh, 9 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc9
	mov ah, 09h
	lea dx, fig8
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 10 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc10
	mov ah, 09h
	lea dx, fig9
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 11; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc11|
	mov ah, 09h
	lea dx, men2
	int 21h

	;direccionamiento de texto
	mov ah,02h 
	mov dh, 14 ; direccionamiento para la fila
	mov dl, 0; direccionamiento para la columna
	int 10h
		
	mov ah, 09h
	lea dx, opc
	int 21h
		
	;Captura
	mov ah, 3fh
	mov bx, 00
	mov cx, 100
	mov dx, offset [resp]
	int 21h	

	cmp resp, '1'
	jz tablas
	cmp resp, '2'
	je triangulo
	cmp resp, '3'
	je cuadrado
	cmp resp, '4'
	je rectangulo
	cmp resp, '5'
	je circulo
	cmp resp, '6'
	je rombo
	cmp resp, '7'
	je pentagono
	cmp resp, '8'
	je hexagono
	cmp resp, '9'
	je trapecio
	cmp resp, '0'
	je paralelogramo
	cmp resp, 27
	je final

tablas:
	call limpiap
	call nombre
	;Mover texto
	mov ah,02h 
	mov dh, 0 ; direccionamiento para la fila
	mov dl, 20 ; direccionamiento para la columna
	int 10h

	;msg inicial
	mov ah, 09h
	lea dx, ini
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 1 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc1
	mov ah, 09h
	lea dx, tab1
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 2 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc2
	mov ah, 09h
	lea dx, tab2
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 3 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc2
	mov ah, 09h
	lea dx, tab3
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 4 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc4
	mov ah, 09h
	lea dx, tab4
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 5 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc5
	mov ah, 09h
	lea dx, tab5
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 6 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc6
	mov ah, 09h
	lea dx, tab6
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 7 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc7
	mov ah, 09h
	lea dx, tab7
	int 21h
	;Mover texto
	mov ah,02h 
	mov dh, 8 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc8
	mov ah, 09h
	lea dx, tab8
	int 21h
	;Mover texto
	mov ah,02h 
	mov dh, 9 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc9
	mov ah, 09h
	lea dx, tab9
	int 21h

	;Mover texto
	mov ah,02h 
	mov dh, 10 ; direccionamiento para la fila
	mov dl, 27 ; direccionamiento para la columna
	int 10h

	;opc11|
	mov ah, 09h
	lea dx, tab10
	int 21h

	;direccionamiento de texto
	mov ah,02h 
	mov dh, 14 ; direccionamiento para la fila
	mov dl, 0; direccionamiento para la columna
	int 10h
		
	mov ah, 09h
	lea dx, opc
	int 21h

	;Captura
	mov ah, 01h ;captura del numero 
	int 21h
	sub al, 30h
	mov n, al

	cmp n, 0
	jz inicio

	multi:
		call limpiap
		call nombre
		;direccionamiento de texto
		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 5 ; direccionamiento para la columna
		int 10h

		;msg de captura
		mov ah, 09h
		lea dx, ini
		int 21h

		 ;salto
		 mov ah, 02h
		 mov dx, 010
		 int 21h 

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
		 mov dx, 0Ah
		 int 21h 

		 ;iteración y salida
		cmp conta, 10 ;if conta=3
		 jz limpiavm
		 jmp ciclo

	triangulo:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		mov ah, 09h
		lea dx, tri
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 14 ; direccionamiento para la fila
		mov dl, 0 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je ptriangulo
		cmp resp, '2'
		je atriangulo
		cmp resp, '3'
		je inicio

		ptriangulo:
			call limpiap
			call nombre
			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, tri
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trip
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;suma
			mov al, l
			add al, l ;se hace la suma
			add al, l
			mov resu1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf

		atriangulo:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, tri
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trib
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trih
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;operacion
			mov al, b1
			mov bl, h 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;salto
			mov ah, 02h
			mov dx, 010
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 5 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			xor ax, ax
			mov bl, 2
			mov al, resu1
			div bl ;Se hace la divisiono
			mov resu2, al

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	cuadrado:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, cua
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 16 ; direccionamiento para la fila
		mov dl, 0 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je pcuadrado
		cmp resp, '2'
		je acuadrado
		cmp resp, '3'
		je inicio

		pcuadrado:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cua
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cual
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;suma
			mov al, l
			add al, l ;se hace la suma
			add al, l
			add al, l
			mov resu1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		acuadrado:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cua
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cual
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;salto
			mov ah, 02h
			mov dx, 010
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, l
			mov bl, l 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;msg inicial
			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	rectangulo:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, rec
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je prec
		cmp resp, '2'
		je arec
		cmp resp, '3'
		je inicio
		prec:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rec
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rech
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;suma
			mov al, h
			add al, h ;se hace la suma
			mov resu1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, recb
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al

			;suma
			mov al, b1
			add al, b1 ;se hace la suma
			mov resu2, al

			;suma
			mov al, resu1
			add al, resu2 ;se hace la suma
			mov resu3, al


			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu3
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		arec:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rec
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rech
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, recb
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al
			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h
			;operacion
			mov al, b1
			mov bl, h 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;msg inicial
			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	circulo:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, cir
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je pcirculo
		cmp resp, '2'
		je acirculo
		cmp resp, '3'
		je inicio
		
		pcirculo:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cir
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cird
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov d1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, d1
			mov bl, pi
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		acirculo:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cir
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, cirr
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov r, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, r
			mov bl, r
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			mov al, resu1
			mov bl, pi
			mul bl ;se hace la multi
			mov resu2, al

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	rombo:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, rom
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je prombo
		cmp resp, '2'
		je arombo
		cmp resp, '3'
		je inicio
		prombo:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rom
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, roma
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;suma
			mov al, l
			add al, l ;se hace la suma
			add al, l
			add al, l
			mov resu1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf	
		arombo:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, rom
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, romd1
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov d1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, romd2
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov d2, al
						;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, d1
			mov bl, d2 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			xor ax, ax
			mov bl, 2
			mov al, resu1
			div bl ;Se hace la divisiono
			mov resu2, al

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	pentagono:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, penta
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je ppenta
		cmp resp, '2'
		je apenta
		cmp resp, '3'
		je inicio
		ppenta:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, penta
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, penl
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, l
			mov bl, 5
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		apenta:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, penta
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, penp
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov p, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, pena
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov a, al

			;Mover texto
			mov ah,02h 
			mov dh, 5 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h
			
			;operacion
			mov al, p
			mov bl, a 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			xor ax, ax
			mov bl, 2
			mov al, resu1
			div bl ;Se hace la divisiono
			mov resu2, al

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	hexagono:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, hexa
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je phex
		cmp resp, '2'
		je ahex
		cmp resp, '3'
		je inicio
		phex:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, hexa
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, hexl
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h


			;operacion
			mov al, l
			mov bl, 6
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		ahex:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, hexa
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, hexp
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov p, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, hexa1
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov a, al
			
			;Mover texto
			mov ah,02h 
			mov dh, 5 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, p
			mov bl, a 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			xor ax, ax
			mov bl, 2
			mov al, resu1
			div bl ;Se hace la divisiono
			mov resu2, al

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	trapecio:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, trap
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je ptra
		cmp resp, '2'
		je atra
		cmp resp, '3'
		je inicio
		
		ptra:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap1
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov l, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h


			;operacion
			mov al, l
			mov bl, 4
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf

		atra:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap2
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap3
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b2, al

			;Mover texto
			mov ah,02h 
			mov dh, 5 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, trap4
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;operacion
			mov al, b1
			mov bl, b2
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			mov al, resu1
			mov bl, h
			mul bl ;se hace la multi
			mov resu2, al

			mov al, resu2
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;operacion
			xor ax, ax
			mov bl, 2
			mov al, resu2
			div bl ;Se hace la divisiono
			mov resu3, al

			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu3
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
	paralelogramo:
		call limpiap
		call nombre

		mov ah,02h 
		mov dh, 0 ; direccionamiento para la fila
		mov dl, 26 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, parale
		int 21h

		mov ah,02h 
		mov dh, 2 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, per
		int 21h

		mov ah,02h 
		mov dh, 3 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, are
		int 21h

		mov ah,02h 
		mov dh, 4 ; direccionamiento para la fila
		mov dl, 24 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, vol
		int 21h

		mov ah,02h 
		mov dh, 6 ; direccionamiento para la fila
		mov dl, 2 ; direccionamiento para la columna
		int 10h

		;msg inicial
		mov ah, 09h
		lea dx, opc
		int 21h

		;Captura
		mov ah, 3fh
		mov bx, 00
		mov cx, 100
		mov dx, offset [resp]
		int 21h	

		cmp resp, '1'
		je ppar
		cmp resp, '2'
		je apar
		cmp resp, '3'
		je inicio

		ppar:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale1
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;suma
			mov al, h
			add al, h ;se hace la suma
			mov resu1, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale2
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al

			;suma
			mov al, b1
			add al, b1 ;se hace la suma
			mov resu2, al

			;suma
			mov al, resu1
			add al, resu2 ;se hace la suma
			mov resu3, al

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, per2
			int 21h

			mov al, resu3
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
		apar:
			call limpiap
			call nombre

			;Mover texto
			mov ah,02h 
			mov dh, 0 ; direccionamiento para la fila
			mov dl, 27 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale
			int 21h

			;Mover texto
			mov ah,02h 
			mov dh, 3 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale3
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov h, al

			;Mover texto
			mov ah,02h 
			mov dh, 4 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h

			;msg inicial
			mov ah, 09h
			lea dx, parale2
			int 21h

			mov ah, 01h
			int 21h
			sub al, 30h
			mov b1, al

			;Mover texto
			mov ah,02h 
			mov dh, 6 ; direccionamiento para la fila
			mov dl, 2 ; direccionamiento para la columna
			int 10h
			
			;operacion
			mov al, b1
			mov bl, h 
			mul bl ;se hace la multi
			mov resu1, al

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx

			;msg inicial
			mov ah, 09h
			lea dx, are2
			int 21h

			mov al, resu1
			aam ;empaquetado y desempacado para mostrar resultado de dos digitos
			mov bx, ax ;mover todo lo que se encuentra dentro del registro ax a dx
			mov ah, 02h ;Desplega un caractre
			mov dl, bh
			add dl, 30h
			int 21h
			mov ah, 02h
			mov dl, bl
			add dl, 30h
			int 21h

			call limpiavf
limpiavf:
	mov l, 0
	mov b1, 48
	mov h,0
	mov a, 0
	mov d1, 48
	mov d2,0
	mov b2, 0
	mov p, 48
	mov resu1, 0
	mov resu2, 48
	mov resu3,0

	;salto
	mov ah, 02h
	mov dx, 010
	int 21h 

	;salto
	mov ah, 02h
	mov dx, 010
	int 21h 

	;direccionamiento de texto
	mov ah,02h 
	mov dh, 19; direccionamiento para la fila
	mov dl, 1 ; direccionamiento para la columna
	int 10h

	mov ah, 09h
	lea dx, tab11
	int 21h

	;Captura
	mov ah, 3fh
	mov bx, 00
	mov cx, 100
	mov dx, offset [resp]
	int 21h	

	;Condicion
	cmp resp, '0'
	je inicio
	cmp resp, 27
	je final

limpiavm:
	mov conta, 0
	mov r, 48
	mov n,0

	;salto
	mov ah, 02h
	mov dx, 010
	int 21h 

	;salto
	mov ah, 02h
	mov dx, 010
	int 21h 

	;direccionamiento de texto
	mov ah,02h 
	mov dh, 15; direccionamiento para la fila
	mov dl, 1 ; direccionamiento para la columna
	int 10h

	mov ah, 09h
	lea dx, offset tab11
	int 21h

	;Captura
	mov ah, 3fh
	mov bx, 00
	mov cx, 100
	mov dx, offset [resp]
	int 21h	

	;Condicion
	cmp resp, '0'
	jz tablas
	cmp resp, 27
	je final

limpiap:
	mov ah, 00 
	mov al, 03h
	int 10h
	ret

nombre:
	;direccionamiento de texto
	mov ah,02h 
	mov dh, 23 ; direccionamiento para la fila
	mov dl, 38 ; direccionamiento para la columna
	int 10h

	;msg inicial
	mov ah, 09h
	lea dx, nom
	int 21h
	ret

final:
	mov ax, 4c00h
	int 21h

.exit
end