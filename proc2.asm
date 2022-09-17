;T5
;Genaro Damian Martinez Perez

include macro5.asm

.model small
.stack
.data
include cadena5.asm

.code
inicia
inicio:
	call limpiar
	call imp
	capturaN n1
	salto
	call imp
	capturaN n2
	salto
	salto
	call imp 
	capturaN n3
	salto
	call imp
	capturaN n4
	salto
	call imp3
	capturaVal resp1
	salto
	call imp4
	capturaVal resp2
	salto
	call imp5
	capturaVal resp3
	salto
	call imp6
	capturaVal resp4
	salto
	call imp7
	capturaVal resp5
	salto
	call limpiar
	call imp13
	suma n1, n2
	salto
	call imp14
	multiplicacion n3, n4
	salto
	call imp2
	salto
	call imp8
	respuestas resp1
	salto
	call imp9
	respuestas resp2
	salto
	call imp10
	respuestas resp3
	salto
	call imp11
	respuestas resp4
	salto
	call imp12
	respuestas resp5
	salto
	
	
	
salir:
mov ah,04ch
int 21h

imp proc near
	mov ah,09h
	mov dx,offset ope
	int 21h
	ret
imp endp
imp2 proc near
	mov ah,09h
	mov dx,offset pre
	int 21h
	ret
imp2 endp
imp3 proc near
	mov ah,09h
	mov dx,offset pre1
	int 21h
	ret
imp3 endp
imp4 proc near
	mov ah,09h
	mov dx,offset pre2
	int 21h
	ret
imp4 endp
imp5 proc near
	mov ah,09h
	mov dx,offset pre3
	int 21h
	ret
imp5 endp
imp6 proc near
	mov ah,09h
	mov dx,offset pre4
	int 21h
	ret
imp6 endp
imp7 proc near
	mov ah,09h
	mov dx,offset pre5
	int 21h
	ret
imp7 endp
imp8 proc near
	mov ah,09h
	mov dx,offset rpre1
	int 21h
	ret
imp8 endp
imp9 proc near
	mov ah,09h
	mov dx,offset rpre2
	int 21h
	ret
imp9 endp
imp10 proc near
	mov ah,09h
	mov dx,offset rpre3
	int 21h
	ret
imp10 endp
imp11 proc near
	mov ah,09h
	mov dx,offset rpre4
	int 21h
	ret
imp11 endp
imp12 proc near
	mov ah,09h
	mov dx,offset rpre5
	int 21h
	ret
imp12 endp
imp13 proc near
	mov ah,09h
	mov dx,offset ope1
	int 21h
	ret
imp13 endp
imp14 proc near
	mov ah,09h
	mov dx,offset ope2
	int 21h
	ret
imp14 endp


limpiar proc near
	mov ah, 00h
	mov al, 03h
	int 10h
	ret
limpiar endp
end