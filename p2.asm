;Genaro Damian Martinez Perez 
;Realizar un programa en lenguaje ensamblador que imprima una letra de una canción.


.stack
.data

cn db  ' Solamente quiero amarte$'
cn1 db 'Y todo mi calor brindarte$'
cn2 db 'Te hare olvidar esa penas que te hacen mal$'
cn3 db 'Hay que dar el sentimiento$'
cn4 db 'Y cada momento vivirlo$'
cn5 db 'Te hare olvidar esas penas que te hacen mal$'
cn6 db 'Con el amor$'
cn7 db 'Se puede siempre alcanzar lo mejor$'
cn8 db 'Con el amor$'
cn9 db 'Los suenos que tengas se van a cumplir$'
cn10 db 'Si tu lo deseas puedes volar$'
cn11 db 'Solo tienes que confiar$'
cn12 db 'Mucho en ti y seguir$'
cn13 db 'Puedes contar conmigo te doy todo mi apoyo$'
cn14 db 'Si tu lo deseas puedes volar$'
cn15 db 'Si tu quieres el cielo alcanzar$'
cn16 db 'Y las estrellas tocar$'
cn17 db 'Digimon$'
.code

;inicializacion de variables
mov ax, @data
mov ds, ax

;Limpiar pantalla
mov ah, 00h
mov al, 03h
int 10h

;Imprimir cadena
mov ah, 09h
lea dx, cn
int 21h

;Salto de renglon
mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn1
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn2
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn3
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn4
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn5
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn6
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn7
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn8
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn9
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn10
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn11
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn12
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn13
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn14
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn15
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn16
int 21h

mov ah, 02h
mov dx, 010
int 21h

mov ah, 09h
lea dx, cn17
int 21h

mov ah, 02h
mov dx, 010
int 21h

